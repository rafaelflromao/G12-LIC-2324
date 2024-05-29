library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OutputRegister is
   port(
      CLK				: in std_logic;
		D              : in std_logic_vector(3 downto 0);
      Q              : out std_logic_vector(3 downto 0)
   );
end OutputRegister;

architecture Behavioral of OutputRegister is
    signal buff : std_logic_vector(3 downto 0);
begin
    process(clk)
    begin
        if rising_edge(clk) then
			buff <= D;
		  end if;
    end process;
    Q <= buff;
end Behavioral;