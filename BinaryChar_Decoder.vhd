LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY BinaryChar_Decoder IS
	PORT(
		A_less_B_in : IN std_logic;
		A_equals_B_in : IN std_logic;
		A_greater_B_in : IN std_logic;
		char_display : OUT std_logic_vector(6 DOWNTO 0)
	);
end BinaryChar_Decoder;

ARCHITECTURE BinaryChar_Decoder_Behavior OF BinaryChar_Decoder IS
	BEGIN
	char_display(0) <= A_greater_B_in;
	char_display(1) <= '1';
	char_display(2) <= not A_less_B_in;
	char_display(3) <= '0';
	char_display(4) <= '0';
	char_display(5) <= '0';
	char_display(6) <= not A_equals_B_in;
END BinaryChar_Decoder_Behavior;