library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegister_tb is
end ShiftRegister_tb;

architecture Behavioral of ShiftRegister_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;

    -- Signals
    signal clk, data, en : std_logic := '0';
    signal O : std_logic_vector(8 downto 0);

    -- Component instantiation
    component ShiftRegister is
        generic(
            data_width : integer := 9
        ); 
        port(
            data, en, clk : in std_logic;
            O : out std_logic_vector(data_width - 1 downto 0)
        );
    end component;

begin
    -- Instantiate the UUT
    UUT : ShiftRegister
        generic map (
            data_width => 9
        )
        port map (
            data => data,
            en => en,
            clk => clk,
            O => O
        );

    -- Clock process
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Initialize inputs
        data <= '0';
        en <= '0';
        wait for 20 ns;

        -- Enable shifting
        en <= '1';

        -- Apply data inputs
        data <= '1';
        wait for CLK_PERIOD;
        data <= '0';
        wait for CLK_PERIOD;
        data <= '1';
        wait for CLK_PERIOD;
        data <= '1';
        wait for CLK_PERIOD;
        data <= '0';
        wait for CLK_PERIOD;
        data <= '1';
        wait for CLK_PERIOD;
        data <= '0';
        wait for CLK_PERIOD;
        data <= '0';
        wait for CLK_PERIOD;
        data <= '1';
        wait for CLK_PERIOD;

        -- Disable shifting
        en <= '0';

        -- Check output
		assert O = "100101101" report "Error: expected O = 100101101" severity error;

        wait;
    end process;
end Behavioral;
