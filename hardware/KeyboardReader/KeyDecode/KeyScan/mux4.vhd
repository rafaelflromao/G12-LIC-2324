library IEEE;
use IEEE.std_logic_1164.all;

entity mux4 is
	port (
	I : in std_logic_vector(3 downto 0);
	S	: in std_logic_vector(1 downto 0);
	Y	: out std_logic
	);
end mux4;

architecture Behavioral of mux4 is
begin

	with S select
		Y <= I(0) when "00",
			I(1) when "01",
			I(2) when "10",
			I(3) when others;

end Behavioral;