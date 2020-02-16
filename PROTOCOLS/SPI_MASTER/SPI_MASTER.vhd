LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity SPI_MASTER is 
	port(

		clk_50_Mhz: in std_logic;
		register_in: in std_logic_vector(7 downto 0);				
		register_out: out std_logic_vector(7 downto 0);
		SPI_MODE: IN std_logic_vector(1 downto 0);				
		SCLK: inout std_logic;
		ss: in std_logic_vector(3 downto 0);						--can attach 4 slaves 		
		MOSI: out std_Logic;
		MISO: in std_logic

	);
END SPI_MASTER;

architecture behave of SPI_MASTER is

	COMPONENT FREQUENCYDIVIDER IS 
		GENERIC(N: INTEGER := 32);

		PORT(
			clk_in: IN STD_LOGIC;
			clk_out: OUT STD_LOGIC;
			T: IN STD_LOGIC
		);
		END COMPONENT;
 
	signal clk_enable_sel: std_logic := '0';
	signal temp_clk: std_logic;
	SIGNAL generate_data_Clk: std_logic;
	type state is (IDLE,DATA8, DATA7, DATA6, DATA5, DATA4, DATA3, DATA2, DATA1);
	signal pr_state, nx_state, temp_state1, temp_state2: state;

	begin 

	clk_5_Mhz:FREQUENCYDIVIDER port map(clk_in => clk_50_Mhz,	
													 clk_out => temp_clk,					--5 Mhz of output clock
													 T => '1');

	process(clk_50_Mhz)																		--the clock will trigger when one and only one slave has been selected
		begin
			if(rising_edge(clk_50_Mhz))then
				
				if(ss(0) = '0' xor ss(1) = '0' xor ss(2) = '0' xor ss(3) = '0')then
					clk_enable_sel <= '1';
				else 
					clk_enable_sel <= '0';
				end if;
			end if;
	end process;

	process(clk_50_Mhz)
	variable cont: integer range 0 to 161;					--this var is because, in this design that i made, i need something that run in the same clock that 
		begin															--my FPGA clock, cause i have two different clock frequencies generating data, 
																		--if the count variable and your if part is removed (cont < 160), run the simulation and see 
			cont := cont + 1;										--what happens
			
			if(SPI_MODE = "00")then
				generate_data_Clk <= temp_clk;
			
				if(clk_enable_sel = '1' and pr_state /= IDLE and cont < 160)then
					SCLK <= temp_clk;
				
				else 
					SCLK <= '0';
					cont := 0;
				end if;
					
			elsif(SPI_MODE = "01")then
				generate_data_Clk <= not(temp_clk);
				
				if(clk_enable_sel = '1' and pr_state /= IDLE and cont < 160)then
						SCLK <= not(temp_clk);
				else 
					cont := 0;
					SCLK <= '0';
				end if;
			
			elsif(SPI_MODE = "10")then
				generate_data_Clk <= not(temp_clk);
					
				if(clk_enable_sel = '1' and pr_state /= IDLE and cont < 160)then
					SCLK <= not(temp_clk);
				else 
					SCLK <= '1';
					cont := 0;
				end if;
				
			else
				generate_data_Clk <= temp_clk;
				
				if(clk_enable_sel = '1' and pr_state /= IDLE and cont < 160)then
						SCLK <= temp_clk;
				else 
					cont := 0;
					SCLK <= '1';
				end if;	
	
		end if;
	end process;

	--data tranmission 
	process(generate_data_Clk)
	begin 
		if(SPI_MODE = "00" or SPI_MODE = "11")then
			if(falling_edge(generate_data_Clk))then
				temp_state1 <= nx_state;
			end if;		
		end if;
	end process;

	process(generate_data_Clk)
	begin 
		if(SPI_MODE = "01" or SPI_MODE = "10")then 
			if( rising_edge(generate_data_Clk) )then
				temp_state2 <= nx_state;
			end if;
		end if;
	end process;

	pr_state <= temp_state1 when (SPI_MODE = "00" or SPI_MODE = "11")else
					temp_state2;

	process(pr_state)
	begin
		case pr_state is 
			when IDLE =>
				MOSI <= '1';
				nx_state <= DATA8;

			when DATA8 =>
				MOSI <= register_in(7);
				register_out(7) <= MISO;
				nx_state <= DATA7;
				
			when DATA7 =>
				MOSI <= register_in(6); 
				register_out(6) <= MISO;
				nx_state <= DATA6;

			when DATA6 =>
				MOSI <= register_in(5); 
				register_out(5) <= MISO;	
				nx_state <= DATA5;

			when DATA5 =>
				MOSI <= register_in(4); 
				register_out(4) <= MISO;	
				nx_state <= DATA4;

			when DATA4 =>
				MOSI <= register_in(3);
				register_out(3) <= MISO;		
				nx_state <= DATA3;

			when DATA3 =>
				MOSI <= register_in(2); 	
				register_out(2) <= MISO;
				nx_state <= DATA2;

			when DATA2 =>
				MOSI <= register_in(1);
				register_out(1) <= MISO;		
				nx_state <= DATA1;

			when DATA1 =>
				MOSI <= register_in(0); 
				register_out(0) <= MISO;	
				nx_state <= IDLE;
			

		end case;
	end process;
	
end behave;