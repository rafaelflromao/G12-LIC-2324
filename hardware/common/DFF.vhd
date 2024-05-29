library IEEE;
use IEEE.std_logic_1164.all;

entity DFF is
   port(
		Clk, reset, D	: in std_logic;
      Q					: out std_logic
   );
end DFF;

architecture Behavioral of DFF is
begin
	process(reset,clk)
	begin
		if(reset='1') then
			Q <= '0';
		elsif(rising_edge(clk)) then
			Q <= D;
		end if;
	end process;
end Behavioral;