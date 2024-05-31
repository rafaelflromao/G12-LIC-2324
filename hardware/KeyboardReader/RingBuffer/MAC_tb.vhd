library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mac_tb is
end entity mac_tb;

architecture Behavioral of mac_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;  -- Clock period
	 
	 -- Signals
    signal putGet, incPut, incGet, mclk, reset : std_logic;
    signal full, empty : std_logic;
    signal A : std_logic_vector(2 downto 0);

    -- Instantiate the Unit Under Test (UUT)
    component mac is
        port(
            putGet, incPut, incGet, mclk, reset : in std_logic;
            full, empty : out std_logic;
            A : out std_logic_vector(2 downto 0)
        );
    end component;

begin

    -- Instantiate the UUT
    uut: mac port map (
        putGet => putGet,
        incPut => incPut,
        incGet => incGet,
        mclk => mclk,
        reset => reset,
        full => full,
        empty => empty,
        A => A
    );

    -- Clock generation process
    clk_process : process
    begin
        while True loop
            mclk <= '0';
            wait for CLK_PERIOD / 2;
            mclk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize inputs
        reset <= '1';
        putGet <= '0';
        incPut <= '0';
        incGet <= '0';
        wait for CLK_PERIOD;

        reset <= '0';
        wait for CLK_PERIOD;

        -- Test put operation
        putGet <= '1';
        incPut <= '1';
        wait for CLK_PERIOD*2;
        incPut <= '0';
        wait for CLK_PERIOD;

        -- Test get operation
        putGet <= '0';
        incGet <= '1';
        wait for CLK_PERIOD*2;
        incGet <= '0';
        wait for CLK_PERIOD;

        -- Fill up the buffer
        for i in 0 to 7 loop
            incPut <= '1';
            wait for CLK_PERIOD;
            incPut <= '0';
            wait for CLK_PERIOD;
        end loop;

        -- Check if full
        assert full = '1' report "Buffer is not full" severity error;
        wait for CLK_PERIOD*2;

        -- Empty the buffer
        for i in 0 to 7 loop
            incGet <= '1';
            wait for CLK_PERIOD;
            incGet <= '0';
            wait for CLK_PERIOD;
        end loop;

        -- Check if empty
        assert empty = '1' report "Buffer is not empty" severity error;
        wait for CLK_PERIOD*2;

        -- End simulation
        wait;
    end process;
end architecture Behavioral;
