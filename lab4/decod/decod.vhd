LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- 2-to-4 binay decoder

ENTITY decod IS
	PORT (
		w : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		En : IN STD_LOGIC;
		y : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END decod;

ARCHITECTURE Behavior OF decod IS
	SIGNAL Enw : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
	Enw <= En & w;
	WITH Enw SELECT
		y <= "1000" WHEN "100",
			  "0100" WHEN "101",
			  "0010" WHEN "110",
			  "0001" WHEN "111",
			  "0000" WHEN OTHERS;
END Behavior;
