library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity comparator is
   generic (data_width : integer := 4);
   port(
      A, B              : in std_logic_vector(data_width - 1 downto 0);
		Eq						: out std_logic
   );
end comparator;

architecture Behavioral of comparator is
begin
    Eq <= '1' when A = B else '0';
end Behavioral;
