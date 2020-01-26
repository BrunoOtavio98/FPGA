LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY I2C_Master is
port(
clk1: in std_logic;
clk: inout std_logic;
rst: in std_logic;
RW: in std_logic;
data: in std_logic_vector(7 downto 0);
count: inout integer range 7 downto 0;
i2c_sda: out std_logic;
i2c_sclk: inout std_logic
);
End I2C_Master;



architecture behave of I2C_Master is 

signal addr: std_logic_vector(6 downto 0);
type state is (IDLE_STATE, START, ADDR_DECOD6, ADDR_DECOD5, ADDR_DECOD4, ADDR_DECOD3, ADDR_DECOD2, ADDR_DECOD1, ADDR_DECOD0,
					OP, WAIT_ACK, DATA_IN7,DATA_IN6,DATA_IN5, DATA_IN4, DATA_IN3, DATA_IN2, DATA_IN1, DATA_IN0 ,WAIT_ACK2, STOP);


signal pr_state, nx_state: state;
signal i2c_sclk_enable: std_Logic;

COMPONENT FREQUENCYDIVIDER IS 
GENERIC(N: INTEGER := 32);

PORT(
	clk_in: IN STD_LOGIC;
	clk_out: OUT STD_LOGIC;
	T: IN STD_LOGIC

);
END COMPONENT;


begin

addr <= "0000001";								--the slave's address, I put it arbitrarily

CLK100KHZ:FrequencyDivider PORT MAP(clk1,clk,'1');

i2c_sclk <= '1' when i2c_sclk_enable = '0' else
				 not(clk);

process(clk, rst)
begin

	if(rst = '1') then
		i2c_sclk_enable <= '0';
	
	elsif(falling_edge(clk))then
	
		if( (nx_state = WAIT_ACK2) or (nx_state = START) or (nx_state = STOP)  )	then
			i2c_sclk_enable <= '0';
		
		else
			i2c_sclk_enable <= '1';
		end if;
	
	end if;

end process;


process(clk, rst)
begin
	if(rst = '1') then
		pr_state <= IDLE_STATE;
		
	elsif(rising_edge(clk)) then
		pr_state <= nx_state;
	
	end if;
end process;

process(pr_state)
	
begin
	
case pr_state is 

when IDLE_STATE =>	
		i2c_sda <= '1';
		nx_state <= START;

when START =>
		i2c_sda <= '0';
		count <= 6;
		nx_state <= ADDR_DECOD6;
		
	
when ADDR_DECOD6 =>
		i2c_sda <= addr(6);	
		nx_state <= ADDR_DECOD5;		
	
		
when ADDR_DECOD5 =>
		i2c_sda <= addr(5);
		nx_state <= ADDR_DECOD4;		
		
when ADDR_DECOD4 =>
		i2c_sda <= addr(4);
		nx_state <= ADDR_DECOD3;		
	
		
when ADDR_DECOD3 =>
		i2c_sda <= addr(3);
		nx_state <= ADDR_DECOD2;		
		
	
when ADDR_DECOD2 =>
		i2c_sda <= addr(2);
		nx_state <= ADDR_DECOD1;		
		
when ADDR_DECOD1 =>
		i2c_sda <= addr(1);
		nx_state <= ADDR_DECOD0;		
		
when ADDR_DECOD0 =>
		i2c_sda <= addr(0);
		nx_state <= OP;		
		
when OP => 
		i2c_sda <= RW;
		nx_state <= WAIT_ACK;
		
when WAIT_ACK =>
		nx_state <= DATA_IN7;
		count <= 7;
		
when DATA_IN7 =>
		i2c_sda <= data(7);
		nx_state <= DATA_IN6;
		
when DATA_IN6 =>
		i2c_sda <= data(6);
		nx_state <= DATA_IN5;		

		
when DATA_IN5 =>
		i2c_sda <= data(5);
		nx_state <= DATA_IN4;
		
		
when DATA_IN4 =>
		i2c_sda <= data(4);
		nx_state <= DATA_IN3;
		
		
when DATA_IN3 =>
		i2c_sda <= data(3);
		nx_state <= DATA_IN2;
		
		
when DATA_IN2 =>
		i2c_sda <= data(2);
		nx_state <= DATA_IN1;
		
		
when DATA_IN1 =>
		i2c_sda <= data(1);
		nx_state <= DATA_IN0;
	
	
when DATA_IN0 =>
		i2c_sda <= data(0);
		nx_state <= WAIT_ACK2;
	
when WAIT_ACK2 =>		
		nx_state <= STOP;
	
when STOP =>
		nx_state <= IDLE_STATE;
		
end case;

end process;

end behave;
