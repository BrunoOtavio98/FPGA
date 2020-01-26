LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CONTADOR IS
Generic(n :integer := 32);

PORT(
clk_en: in std_logic;
clr: in std_logic;
t_in: in std_logic;
output: inout std_logic_vector(n - 1 downto 0)

);
END CONTADOR;




ARCHITECTURE BEHAVE OF CONTADOR IS
signal internal: std_logic_vector(n - 1 downto 0);

COMPONENT T_TRIGGER IS 

PORT(
CLK, T: IN STD_LOGIC;
CLEAR: IN STD_LOGIC;
S1: INOUT STD_LOGIC;
S2: INOUT STD_LOGIC

);
END COMPONENT;


BEGIN

T: T_TRIGGER PORT MAP(clk_en, t_in, clr, output(0), internal(0));

G1: FOR i in 0 to N-2 GENERATE

T: T_TRIGGER PORT MAP(internal(i), t_in, clr, output(i+1), internal(i+1));

end GENERATE G1;


END BEHAVE;