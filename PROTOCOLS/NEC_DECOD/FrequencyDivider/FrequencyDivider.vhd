LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FREQUENCYDIVIDER IS 
GENERIC(N: INTEGER := 32);

PORT(
	clk_in: IN STD_LOGIC;
	clk_out: OUT STD_LOGIC;
--	ctefd: IN STD_LOGIC_VECTOR(N -1 DOWNTO 0);
	T: IN STD_LOGIC

);

END FREQUENCYDIVIDER;



ARCHITECTURE BEHAVE OF FREQUENCYDIVIDER IS 
signal ContadorToComparadorInput: std_LOGIC_VECTOR(N-1 DOWNTO 0);
signal ComparadorToContadorClear: STD_LOGIC; 
signal ComparadorToDffEnable: STD_LOGIC;
signal InverterDffOutput: STD_LOGIC;
signal SecondInverter: STD_LOGIC;
signal ctefd: STD_LOGIC_VECTOR(N -1 DOWNTO 0);


Component CONTADOR IS
Generic(n :integer := 32);

PORT(
clk_en: in std_logic;
clr: in std_logic;
t_in: in std_logic;
output: inout std_logic_vector(n - 1 downto 0)

);
END Component;


Component COMPARADOR IS 
GENERIC(N: INTEGER := 32);

PORT(

INPUT: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
CTE: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);

OUTPUT_EQUAL: OUT STD_LOGIC;
OUTPUT_GREATER: OUT STD_LOGIC

);
END Component;



Component myDFF IS

PORT(
CLK: IN STD_LOGIC;
D: INOUT STD_LOGIC;
ENABLE: IN STD_LOGIC;
OUTPUT: INOUT STD_LOGIC

);

END Component;



BEGIN

ctefd <= x"00000AFB";								--5334 Hz 
SecondInverter <= not(inverterDffOutput);

P1:Contador PORT MAP(clk_in,ComparadorToContadorClear, T, ContadorToComparadorInput);
P2:Comparador PORT MAP(ContadorToComparadorInput, ctefd,ComparadorToDffEnable, ComparadorToContadorClear);	
P3:myDFF PORT MAP(clk_in, SEcondInverter, ComparadorToDffEnable, inverterDffOutput);

clk_out <= inverterDffOutput;

END;