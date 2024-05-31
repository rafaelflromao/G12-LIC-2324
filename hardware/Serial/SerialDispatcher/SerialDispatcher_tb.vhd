library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SerialDispatcher_tb is
end SerialDispatcher_tb;

architecture Behavioral of SerialDispatcher_tb is
    constant data_width : integer := 9;
    constant clk_period : time := 10 ns;

    signal clk, reset, D_val : std_logic := '0';
    signal Din : std_logic_vector(data_width - 1 downto 0) := (others => '0');
    signal done, wrD : std_logic;
    signal Dout : std_logic_vector(data_width - 1 downto 0);

    -- Unit Under Test (UUT) component
    component SerialDispatcher is
        generic(
            data_width : integer := 9
        );
        port(
            clk, reset, D_val : in std_logic;
            Din : in std_logic_vector(data_width - 1 downto 0);
            done, wrD : out std_logic;
            Dout : out std_logic_vector(data_width - 1 downto 0)
        );
    end component;

begin
    -- Instantiate the UUT
    UUT : SerialDispatcher
        generic map (
            data_width => data_width
        )
        port map (
            clk => clk,
            reset => reset,
            D_val => D_val,
            Din => Din,
            done => done,
            wrD => wrD,
            Dout => Dout
        );

    -- Clock generation process
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Initialize inputs
        reset <= '1';
        wait for clk_period;
        reset <= '0';
        wait for clk_period;

        -- Send data
        Din <= "101010101";
        D_val <= '1';
        wait for clk_period;
        -- Check wrD signal
        assert (wrD = '1') report "expected wrD = '1'" severity error;
        wait for clk_period;
        -- Check if data is sent
        assert (done = '1') report "expected done = '1'" severity error;
        assert (Dout = "101010101") report "expected Dout = 101010101" severity error;
        D_val <= '0';
        wait;
    end process;
end Behavioral;
