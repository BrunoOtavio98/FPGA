LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--   ------------------
-- NEC protocol is used
--
--  The word that is sent by the control is 2 bytes of address ,the first byte is 0h00, and the second is 
--	 its complement, i.e 0hFF, after that, is sent 1 byte of information and then more one byte which  
--	 is its  complement (MSB)
--  For example, if the button '1' is press, so the 0hFF is the control address, the 0h30 is the code of number '1'
--	 and the 0hCF is the not(0h30) for error check 

--	IR carrier frequency: 38KHz
-- /                    \
--|  CH-    CH     CH+   |
--| FFA25D FF629D FFE21D |
--|                      |
--|  |<<     >>|   |>||  |
--| FF22DD FF02FD FFC23D |
--|                      |
--|   -       +     EQ   |
--| FFE01F FFA857 FF906F |
--|                      |
--|   0      100+  200+  |
--| FF6897 FF9867 FFB04F |
--|                      |
--|   1       2     3    |
--| FF30CF FF18E7 FF7A85 |
--|                      |
--|   4       5     6    |
--| FF10EF FF38C7 FF5AA5 |
--|                      |
--|   7       8     9    |
--| FF42BD FF4AB5 FF52AD |
--|                      |
--|         Car          |
--|         mp3          |
-- \                    /
--  ------------------
--(FFFFFFFF for repeat when a button is held)

-- This project, capture the IR information, make a decodification of the NEC code, and then, display the number in a 7 segment
--
--Instead of running at 583us ~ 1778Hz, i put the clock at 1778*5, to decrease the number of packet lost,
--With a small counter, the sample is made when the counter reaches 2, and count untill 4 and restart the counter again
--in this way we will decrease the period of sample, to meet setup and hold time, and clock and data sincronization 
--With the control tested, this project are losing 3 packets on average

Entity IRDecod is 
	port(
	
	board_clk: in std_logic;
	sample_clk: inout std_logic;
	ir_input: in std_logic;		
	segmentos: out std_logic_vector(7 downto 0);

	no_address: out std_logic;						--when there is no address match, this bit will be set to 1
	error_in_address: out std_logic;				--when the address and the address complement dont match this bit will be set to 1
	error_in_data: out std_logic;					--when the data and data complement dont match this bit will bet set to 1
	
	seg_select: out std_logic_vector(3 downto 0)
	
	
	);
End IRDecod;


Architecture behave of IRDecod is
	

	constant remote_control: std_logic_vector(7 downto 0) := x"00";			--remote control address
		
	signal buffered_input: std_logic;					--reverse logic of IR input
	signal packet: std_logic_vector(31 downto 0);
	signal end_frame: std_logic;
		
	signal control_sample: integer range 0 to 4;
		
	COMPONENT FREQUENCYDIVIDER IS 		
	GENERIC(N: INTEGER := 32);					

	PORT(
		clk_in: IN STD_LOGIC;
		clk_out: OUT STD_LOGIC;
		T: IN STD_LOGIC

	);
	end component;
	
	begin 
	
	buffered_input <= not(ir_input);	--in my board, the word is the complement of the real protocol message
												--so i invert it once again to have the real message
													
												
	SampleCirc: FrequencyDivider PORT MAP( clk_in => board_clk,
														clk_out => sample_clk,
														T => '1');
	seg_select <= "0000";	
	

	
	frame_read: process(sample_clk) 
	
	variable i: integer range 32 downto 0;
	variable init_protocol: integer range 0 to 1;
		
	variable counter: integer range 0 to 57 := 0; 	
	variable number_of_zeros: integer range 0 to 4;		
		
	begin
	
	if(rising_edge(sample_clk))then
		
		if(control_sample = 2)then
		
			end_frame <= '0';
			control_sample <= control_sample + 1;
			
			if(counter < 16)then
				
				if(buffered_input = '1')then 
				
					counter := counter + 1;				--HIGH period of the start protocol has 562us*16 ~ 9ms
				end if;
				
			elsif(counter >= 16 and counter <= 24)then
				counter := counter + 1;				--LOW period of the start protocol has  562us*8  ~ 4.5ms 
		
			elsif(counter > 24 and counter <= 56)then			--address, address complement, data and data complement has
																			--the same format	
				if(buffered_input = '1')then
					
					if(init_protocol = 1)then
						init_protocol := 0;
					
					else
						counter := counter + 1;
				
						if(number_of_zeros = 1)then
							packet(i-1) <= '0';
							number_of_zeros := 0;
							i := i - 1;
						else 
							packet(i-1) <= '1';
							number_of_zeros := 0;
							i := i-1;
						end if;
						
					end if;
					
				else
					number_of_zeros := number_of_zeros + 1;
					
					if(number_of_zeros = 4)then
						
						packet(i-1) <= '1';
						counter := counter + 1;
						number_of_zeros := 0;
						
					end if;
					
				end if;
						
			else
				counter := 0;
				i := 32;
				end_frame <= '1';
				
			end if;
		
		else
				
			if(control_sample = 4)then
				control_sample <= 0;	
			
			elsif(control_sample < 2 OR control_sample > 2)then
				control_sample <= control_sample + 1;
		
			end if;
	
		end if;
		
	end if;
	
	end process frame_read;
	
	error_check: process(end_frame)
		
		variable addr: std_logic_vector(7 downto 0);
		variable addr_cmplt: std_logic_vector(7 downto 0);
		variable data: std_logic_vector(7 downto 0);
		variable data_cmplt: std_logic_vector(7 downto 0);
		
		begin
		
		if(rising_edge(end_frame))then
			data_cmplt 	:= packet(7 downto 0);
			data			:= packet(15 downto 8);
			addr_cmplt 	:= packet(23 downto 16);
			addr 			:= packet(31 downto 24);
			packet_debug <= packet;
			
			if(end_frame = '1')then
			
				if(addr /= remote_control)then
					no_address <= '1';
					
				elsif(addr /= not(addr_cmplt))then
					error_in_address <= '1';
					
				elsif(data /= not(data_cmplt))then
					error_in_data <= '1';
					
				else
					no_address <= '0';
					error_in_address <= '0';
					error_in_data <= '0';
					
					--7 segment display decodification
					if(data = x"68")then
						segmentos <= "11000000";
				
					elsif(data = x"30")then
						segmentos <= "11111001";
					
					elsif(data = x"18")then
						segmentos <= "10100100";
					
					elsif(data = x"7A")then
						segmentos <= "10110000";
					
					elsif(data = x"10")then
						segmentos <= "10011001";
					
					elsif(data = x"38")then
						segmentos <= "10010010";
					
					elsif(data = x"5A")then
						segmentos <= "10000010";
					
					elsif(data = x"42")then
						segmentos <= "11111000";
					
					elsif(data = x"4A")then
						segmentos <= "10000000";
					
					elsif(data = x"52")then
						segmentos <= "10010000";
			
					end if;
							
				end if;
				
			end if;
		end if;
		end process error_check;
	
end behave;