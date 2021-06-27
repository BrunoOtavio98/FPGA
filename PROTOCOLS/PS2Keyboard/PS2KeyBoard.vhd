LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--	A KeyBoard PS2 controller.
--	
--	 - Just a basic set of commands will be implemented to send from host (FPGA) to device:
--		Set numlock and capslock commands.
--		
--	- The set of make and break codes can be found at: https://techdocs.altium.com/display/FPGA/PS2+Keyboard+Scan+Codes
	
Entity PS2Keyboard is
	port(
		
		segmentos: out std_logic_vector(7 downto 0);
		seg_select: out std_logic_vector(3 downto 0);
		
		debug_signal1: out std_logic;
		debug_signal2: out std_logic;
		debug_signal3: out std_logic;
		debug_signal4: out std_logic;
		
		board_clk: in std_logic;
		sample_clk: inout std_logic;
		
		clk: in std_logic;
		data:  in std_logic;
		rst: in std_logic;
		key_pressed: inout std_logic_vector(7 downto 0);
		new_data: inout std_logic
		
	);
end PS2Keyboard; 

architecture ps2 of PS2Keyboard is
	
	type state is (idle, bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7, parity, stop);
	signal new_data_arrive: bit := '0';
	signal keyboard_data: std_logic_vector(7 downto 0);
	signal pr_state: state;
	signal parse_package: std_logic;
	signal period_count: integer range 0 to 200;			
	signal clk_changed : std_logic := '0';
	signal capsLockPressed: std_logic := '0';
	signal numLockPressed: std_logic := '0';
	
		
	COMPONENT FREQUENCYDIVIDER IS 	--When a host to device communication needs to be performed, its necessary to hold the clock
	GENERIC(N: INTEGER := 32);			--line for a specific time, therefore to mantain a time reference when the board holds the clock, 
												--its necessary another clock reference
	PORT(
		clk_in: IN STD_LOGIC;
		clk_out: OUT STD_LOGIC;
		T: IN STD_LOGIC

	);
	end component;
	
	begin
	
	seg_select <= "0000";	
	
	
	SampleCirc: FrequencyDivider PORT MAP( clk_in => board_clk,
														clk_out => sample_clk,
														T => '1');
	
decod_state: process(clk, rst)
		
		variable parity_check: std_logic;
		variable error_flag: std_logic;
		variable i: integer range 0 to 7;
		
		begin
		
			if(rst = '0')then
				pr_state <= idle;
						
			elsif(falling_edge(clk)) then
			
								
				case pr_state is
					
					when idle =>
						if(data = '0')then						--represents start bit
							pr_state <= bit0;
						end if;
						debug_signal1 <= '0';
						debug_signal2 <= '1';
						debug_signal3 <= '1';
						debug_signal4 <= '1';
						new_data <= '0';
					
					when bit0 =>
						keyboard_data(i) <= data;
						i := i + 1;
						pr_state <= bit1;
						debug_signal1 <= '1';
						debug_signal2 <= '0';
						debug_signal3 <= '0';
						debug_signal4 <= '0';
						
					when bit1 =>
						keyboard_data(i) <= data;
						i := i + 1;
						pr_state <= bit2;
						debug_signal1 <= '1';
						debug_signal2 <= '1';
						debug_signal3 <= '0';
						debug_signal4 <= '0';
										
					when bit2 =>
						keyboard_data(i) <= data;
						i := i + 1;
						pr_state <= bit3;
						debug_signal1 <= '1';
						debug_signal2 <= '0';
						debug_signal3 <= '1';
						debug_signal4 <= '0';
					
					when bit3 =>
						keyboard_data(i) <= data;
						i := i + 1;
						pr_state <= bit4;
						debug_signal1 <= '1';
						debug_signal2 <= '1';
						debug_signal3 <= '1';
						debug_signal4 <= '0';
										
					when bit4 =>
						keyboard_data(i) <= data;
						i := i + 1;
						pr_state <= bit5;
						debug_signal1 <= '1';
						debug_signal2 <= '0';
						debug_signal3 <= '0';
						debug_signal4 <= '1';
									
					when bit5 =>
						keyboard_data(i) <= data;
						i := i + 1;
						pr_state <= bit6;
						debug_signal1 <= '1';
						debug_signal2 <= '1';
						debug_signal3 <= '0';
						debug_signal4 <= '1';
						
					when bit6 =>
						keyboard_data(i) <= data;
						i := i + 1;
						pr_state <= bit7;
						debug_signal1 <= '1';
						debug_signal2 <= '0';
						debug_signal3 <= '1';
						debug_signal4 <= '1';
										
					when bit7 =>
						keyboard_data(i) <= data;
						pr_state <= parity;
						debug_signal1 <= '1';
						debug_signal2 <= '1';
						debug_signal3 <= '1';
						debug_signal4 <= '1';
										
					when parity =>
						
						--Parity checker
				
						parity_check := keyboard_data(0) xnor keyboard_data(1) xnor keyboard_data(2) xnor keyboard_data(3) xnor 
											 keyboard_data(4) xnor keyboard_data(5) xnor keyboard_data(6) xnor keyboard_data(7);  
										
						if(parity_check = data) then
							error_flag := '0';			
						else
							error_flag := '1';
							
						end if;
						i := 0;
						pr_state <= stop;
						
						debug_signal1 <= '0';
						debug_signal2 <= '1';
						debug_signal3 <= '0';
						debug_signal4 <= '1';
									
					when stop =>
			
						pr_state <= idle;
			
						if(error_flag = '0')then
							key_pressed <= keyboard_data;
							new_data <= '1';
						
						end if;
				end case;
			
					
			end if;
		end process;
		
		
		decod_key: process(new_data)
			
			--Perform the desired action if any key is pressed, here just the numbers have been decoded, for debugging purposes
			
			begin
		
			if(rising_edge(new_data))then
			
			
				--7 segment display decodification
				if(key_pressed = x"45")then
					segmentos <= "11000000";
			
				elsif(key_pressed = x"16")then
					segmentos <= "11111001";
				
				elsif(key_pressed = x"1E")then
					segmentos <= "10100100";
				
				elsif(key_pressed = x"26")then
					segmentos <= "10110000";
				
				elsif(key_pressed = x"25")then
					segmentos <= "10011001";
				
				elsif(key_pressed = x"2E")then
					segmentos <= "10010010";
				
				elsif(key_pressed = x"36")then
					segmentos <= "10000010";
				
				elsif(key_pressed = x"3D")then
					segmentos <= "11111000";
				
				elsif(key_pressed = x"3E")then
					segmentos <= "10000000";
				
				elsif(key_pressed = x"46")then
					segmentos <= "10010000";
	
				elsif(key_pressed = x"58")then							--CapsLock
					capsLockPressed <= not(capsLockPressed);
					
				elsif(key_pressed = x"77")then							--NumLock
					numLockPressed <= not(numLockPressed);

				else
					segmentos <= key_pressed;
		
				end if;
			end if;
		end process;
		
		send_cmd: process(sample_clk)
			variable numLockState: std_logic := '0';
			variable capsLockState: std_logic := '0';
			constant holdClockTemp: integer := 123;					--To perform a host to device communication, the host must 
																					--hold the clock line for at least 100 usec (Ref.: https://www.avrfreaks.net/sites/default/files/PS2%20Keyboard.pdf)
																					--Converting this time in clock ticks gives holdClockTemp ticks
			begin
			
			if(falling_edge(sample_clk))then
			
				if(capsLockPressed /= capsLockstate)then
				
				
				end if;
				
				if(numLockPressed /= numLockstate)then
				
				end if;
				
			end if;
			
		end process;
				
		
end ps2;