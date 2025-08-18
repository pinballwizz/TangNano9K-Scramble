-------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-------------------------------------------------------------
ENTITY MULT18X18 IS
	Port
	(
		A		: IN STD_LOGIC_VECTOR  (17 DOWNTO 0);
		B		: IN STD_LOGIC_VECTOR  (17 DOWNTO 0);
		P		: OUT STD_LOGIC_VECTOR (35 DOWNTO 0)
	);
END MULT18X18;
-------------------------------------------------------------
ARCHITECTURE rtl of mult18x18 is

component Integer_Multiplier_Top
	port (
		mul_a: in std_logic_vector(17 downto 0);
		mul_b: in std_logic_vector(17 downto 0);
		product: out std_logic_vector(35 downto 0)
	);
end component;
-------------------------------------------------------------
begin

-------------------------------------------------------------
go_mult: Integer_Multiplier_Top
	port map (
		mul_a   => a,
		mul_b   => b,
		product => p
	);
-------------------------------------------------------------
END rtl;
-------------------------------------------------------------