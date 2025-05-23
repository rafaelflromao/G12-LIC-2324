library IEEE;
use IEEE.std_logic_1164.all;

entity dec2_4 is
	port (
	S : in std_logic_vector(1 downto 0);
	Y	: out std_logic_vector(3 downto 0)
	);
end dec2_4;

architecture Behavioral of dec2_4 is
begin

	with S select
		Y <= "0001" when "00",
			"0010" when "01",
			"0100" when "10",
			"1000" when others;

end Behavioral;