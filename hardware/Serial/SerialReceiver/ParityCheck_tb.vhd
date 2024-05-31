library ieee;
use ieee.std_logic_1164.all;

entity ParityCheck_tb is
end ParityCheck_tb;

architecture behavioral of ParityCheck_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;

    -- Signals
    signal clk : std_logic := '0';
    signal data, init : std_logic := '0';
    signal err : std_logic;

    -- Component instantiation
    component ParityCheck is
        port(
            data, clk, init : in std_logic;
            err : out std_logic
        );
    end component;

begin
    -- Instantiate the UUT (Unit Under Test)
    UUT : ParityCheck
        port map (
            data => data,
            clk => clk,
            init => init,
            err => err
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
        -- Initialize
        init <= '1';
        wait for CLK_PERIOD;
        init <= '0';

        -- Test vector: send a sequence of bits and check parity
        data <= '1';
        wait for CLK_PERIOD;
        assert err = '1' report "Error: expected err = '1'" severity error;

        data <= '0';
        wait for CLK_PERIOD;
        assert err = '1' report "Error: expected err = '1'" severity error;

        data <= '1';
        wait for CLK_PERIOD;
        assert err = '0' report "Error: expected err = '0'" severity error;

        data <= '1';
        wait for CLK_PERIOD;
        assert err = '1' report "Error: expected err = '1'" severity error;

        data <= '0';
        wait for CLK_PERIOD;
        assert err = '1' report "Error: expected err = '1'" severity error;

        data <= '0';
        wait for CLK_PERIOD;
        assert err = '1' report "Error: expected err = '1'" severity error;

        data <= '1';
        wait for CLK_PERIOD;
        assert err = '0' report "Error: expected err = '0'" severity error;

        -- Reinitialize
        init <= '1';
        wait for CLK_PERIOD;
        init <= '0';
        assert err = '0' report "Error: expected err = '0' after reinitialization" severity error;

        wait;
    end process;
end behavioral;
