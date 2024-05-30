library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity counter4 is
   port(
      CE, down, clk, reset : in std_logic;
      O              : out std_logic_vector(3 downto 0)
   );
end counter4;

architecture Behavioral of counter4 is
    signal count : unsigned(3 downto 0) := "0000";
begin
    process(reset, clk)
    begin
        if reset = '1' then
            count <= (others => '0'); -- Reset count to 0000
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
