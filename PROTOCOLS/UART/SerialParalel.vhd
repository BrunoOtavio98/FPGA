LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SERIALPARALEL is 
generic (n :integer := 8);
port(
clk: in std_logic; 
data_in: in std_Logic;														--o dado de entrada
rst: in std_logic;
data: out std_logic_vector(0 to n-1)									--são 8 bits de dados mais dois, um bit de stop e um de start
);

end SerialParalel;

architecture behave of SerialParalel is
signal start_enable: bit;													--para controlar quando os dados vão para a memória
signal enable: bit;

begin 
process(clk, rst)
	
	variable cont: integer range 0 to 12;								--para classificar o bit que foi mandado
	begin
	
	if(rst = '1')then
		data <= (others => '0');

	elsif(rising_edge(clk))then
	
	if(cont = 0 and data_in = '0')then						--se cont = 0 significa que é o primeiro bit, sendo esse bit o bit de start
		start_enable <= '1';					--então os dados podem ser passados para a memória
	
	end if;
	
	if(start_enable = '1')then
	data(cont) <= data_in;
	cont := cont + 1;
	
	end if;
	
	if(cont = n)then					--extrapolou o tamanho da palavra
		cont := 0;							--zero para a próxima palavra ser recebida 
		start_enable <= '0';				--colo start_enable em 0 para não ser recebido mais nada
	end if;
	
end if;
end process;
end behave;