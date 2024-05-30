library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegister is
	generic(
	 data_width : integer := 9
	); 
   port(
      data, en, clk : in std_logic;
      O             : out std_logic_vector(data_width - 1 downto 0)
   );
end ShiftRegister;

architecture Behavioral of ShiftRegister is
    signal data_b : unsigned(data_width - 1 downto 0);
begin
    process(clk)
    begin
		if rising_edge(clk) then
			if en = '1' then
				data_b <= shift_right(data_b, 1);
				data_b(data_width - 1) <= data;
			end if;
		end if;
	end process;
	O <= std_logic_vector(data_b);
end Behavioral;
