library ieee;
use ieee.std_logic_1164.all;

entity ParityCheck is
	port(
		data, clk, init : in std_logic;
		err : out std_logic
	);
end ParityCheck;

architecture behavioral of ParityCheck is
	signal q : std_logic := '0';
begin
	process(clk, init)
	begin
		if (init = '1') then
			q <= '0';
		elsif (rising_edge(clk)) then
			q <= q xor data;
		end if;
	end process;
	err <= q;
end behavioral;