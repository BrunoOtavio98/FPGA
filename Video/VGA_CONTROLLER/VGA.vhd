LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--	This project is a driver control for the vga monitor
--	This driver works for a 1440 x 900 monitor with a pixel clock of 106MHZ 
--	With this driver a small square is drawn on the screen and its controlled with
--	buttons, cause my board has a 50Mhz a IP Pll was used to increase the clock
--

ENTITY VGA IS
port(

	clk: in std_logic;
	rst: in std_logic;
	h_sync: out std_logic;		--indicates when the line ends
	v_sync: out std_logic;		--indicates when the frame ends
	clk100Mhz: inout std_logic;
--Mix this three color and generate any desired color 
--red: out std_logic_vector(1 downto 0);
--green: out std_logic_vector(1 downto 0);
--blue: out std_logic_vector(1 downto 0)
	
	btn_up: in std_logic;
	btn_down: in std_logic;
	btn_left: in std_logic;
	btn_right: in std_logic;
		
	btn_change_color: in integer range 0 to 4;
	
	red: out std_logic;
	green: out std_logic;
	cont1: inout integer range 0 to 2000;
	cont2: inout integer range 0 to 2000;
	blue: out std_logic

);
End Vga;


architecture behave of VGA is

COMPONENT PLL IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC
	);
END COMPONENT;


--signal clk100MHz: std_logic;
signal hblank: std_logic := '1';				--when the front porch period start, this signal will be assigned with 0
signal vblank: std_logic := '1';				--when a frame end, and front period start, this signal will be assigned with 0
signal endline: std_logic;									--this will trigger the v_sync, will be 1 when one line ends
signal vcont: integer range 0 to 932 := 0;
signal hcont: integer range 0 to 1904 := 0;

signal vez: integer range 0 to 181;

signal l_upx:integer range 0 to 800;
signal l_upy: integer range 0 to 1340;

signal l_downx: integer range 100 to 900; 
signal l_downy: integer range 0 to 1340;

signal r_upx: integer range 0 to 800;
signal r_upy: integer range 100 to 1440;

signal r_downx: integer range 100 to 900;
signal r_downy: integer range 100 to 1440;

signal color: integer range 0 to 9;
begin 

clk_100_Mhz: pll PORT MAP ( inclk0 => clk, 
									 c0 => clk100Mhz
									 );


												  
h_cont: process(clk100MHz, rst)
		begin
			
			if(rst = '1')then
				h_sync <= '1';
				hcont <= 0;

			elsif(rising_edge(clk100MHz))then
				
				
				if(hcont < 1440) then								--after that, is time for front porch period, 
				endline <= '0';
				
				h_sync <= '1';
				hcont <= hcont + 1;
				cont1 <= cont1 + 1;										--simulation purpose
				
				elsif(hcont >= 1440 and hcont < 1520)then		--front porch period 16 pixels time, or, 16 clk_pulses
					
				--blank period
				h_sync <= '1';				
				hcont <= hcont + 1;
				cont1 <= cont1 + 1;										--simulation purpose
				
				elsif(hcont >= 1520 and hcont <  1672)then		--sync period
				
				--blank period
				h_sync <= '0';	
				hcont <= hcont + 1;
				cont1 <= cont1 + 1;										--simulation purpose
				
				elsif(hcont >= 1672 and hcont < 1904)then			--back porch period
				
				--blank period
				h_sync <= '1';
				hcont <= hcont + 1;
				cont1 <= cont1 + 1;										--simulation purpose
				else 
					hcont <= 0;
					endline <= '1';									--now the v_cont process can increment the vcont
					cont1 <= 0;											--simulation purpose
			end if;
			end if;
end process;

v_cont: process(endline, rst, clk100MHz)

	begin
	
		if(rst = '1')then
			v_sync <= '0';
			vcont <= 0;
			
		elsif(rising_edge(endline))then

			if(vcont < 900)then
				
				v_sync <= '0';
				vcont <= vcont + 1;											
				cont2 <= cont2 + 1;											--simulation purpose
								
			elsif(vcont >= 900 and vcont < 901)then					--front porch
			
				v_sync <= '0';
				vcont <= vcont + 1;
				--blank period
				cont2 <= cont2 + 1;											--simulation purpose
			elsif(vcont >= 901 and vcont < 904)then					--sync pulse
				
				v_sync <= '1';
				vcont <= vcont + 1;
				cont2 <= cont2 + 1;											--simulation purpose
			elsif(vcont >= 904 and vcont < 932)then					--back porch
			
				v_sync <= '0';
				vcont <= vcont + 1;
				cont2 <= cont2 + 1;											--simulation purpose
			else
				vcont <= 0;														--end of one frame
				cont2 <= 0;														--simulation purpose
				vez <= vez + 1;
				color <= color + 1;
				
			if(vez = 3) then
					vez <= 0;
					
					if(color = 9)then
						color <= 0;
					end if;
					
					if(r_downx  >= 900 and btn_down = '0')then
						r_downx <= 100;	
						r_upx <= 0;
						
						l_downx <= 100;
						l_upx <= 0;
					
					elsif(r_upx <= 0 and btn_up = '0')then
						l_upx <= 800;
						l_downx <= 900;
						
						r_upx <= 800;
						r_downx <= 900;
					
					elsif(r_downy >= 1440 and btn_right = '0')then 
						l_upy <= 0;
						l_downy <= 0;
						
						r_upy <= 100;
						r_downy <= 100;
					
					elsif(r_downy <= 0 and btn_left = '0')then
						l_upy <= 1340;
						l_downy <= 1340;
						
						r_upy <= 1440;
						r_downy <= 1440;
						
					elsif(btn_up = '0')then
						l_upx <= l_upx - 100;
						l_downx <= l_downx - 100;
						
						r_upx <= r_upx - 100;
						r_downx <= r_downx - 100;
					
					elsif(btn_down = '0')then
						l_upx <= l_upx + 100;
						l_downx <= l_downx + 100;
						
						r_upx <= r_upx + 100;
						r_downx <= r_downx + 100;
				
					elsif(btn_left = '0')then
						l_upy <= l_upy - 100;
						l_downy <= l_downy - 100;
						
						r_upy <= r_upy - 100;
						r_downy <= r_downy - 100;
				
					elsif(btn_right = '0')then
						l_upy <= l_upy + 100;
						l_downy <= l_downy + 100;
						
						r_upy <= r_upy + 100;
						r_downy <= r_downy + 100;
	 
					end if;
				end if;
			end if;
	end if;	
end process;


display_img: process(hcont, vcont)	
	begin	
		if(hcont < 1440 and vcont < 900)then												--the area that a pixel will be 
			
			if(hcont >= l_upy and hcont <= r_upy)then
				if(vcont >= l_upx and vcont <= l_downx)then
					
					
					if(color = 0)then					
						red <= '0';
						green <= '0';
						blue <= '1';
					
					elsif(color = 1)then
						red <= '0';
						green <= '1';
						blue <= '0';
					elsif(color = 2)then
						red <= '1';
						green <= '0';
						blue <= '0';
					elsif(color = 3)then
						red <= '0';
						green <= '1';
						blue <= '1';
					elsif(color = 4)then
						red <= '1';
						green <= '0';
						blue <= '1';
					elsif(color = 5)then
						red <= '1';
						green <= '1';
						blue <= '1';
					elsif(color = 6)then
						red <= '1';
						green <= '1';
						blue <= '0';
					elsif(color = 7)then
						red <= '1';
						green <= '1';
						blue <= '1';
					
					end if;
				end if;
			
			else 
				red <= '0';
				green <= '0';
				blue <= '0';
		
			end if;
					
			
		else 
			
			red <= '0';
			blue <= '0';
			green <= '0';
			
		end if;
	
	end process;				  								  
end behave;