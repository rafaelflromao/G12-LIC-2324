library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
 
entity ClockDivider is
	generic (div : integer := 12);
	port ( clk,reset: in std_logic;
		clock_out: out std_logic);
end ClockDivider;
 
architecture bhv of ClockDivider is
 
signal count: integer:=1;
signal tmp : std_logic := '0';
 
begin
	process(clk,reset)
	begin
		if(reset='1') then
			count<=1;
			tmp<='0';
		elsif(clk'event and clk='1') then
			count <=count+1;
		if (count = div ) then
			tmp <= NOT tmp;
			count <= 1;
			end if;
		end if;
		clock_out <= tmp;
	end process;
end bhv;
