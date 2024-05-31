library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity counter is
   generic (data_width : integer := 4);
   port(
      CE, down, clk, reset : in std_logic;
      O              : out std_logic_vector(data_width - 1 downto 0)
   );
end counter;

architecture Behavioral of counter is
    signal count : unsigned(data_width - 1 downto 0) := (others => '0');
begin
    process(reset, clk)
    begin
        if reset = '1' then
            count <= (others => '0');
        elsif rising_edge(clk) then
            if CE = '1' then
                if down = '1' then
                    count <= count - 1;
					 else
                    count <= count + 1;
					 end if;
            end if;
        end if;
    end process;
    O <= std_logic_vector(count); -- Output the current count
end Behavioral;
