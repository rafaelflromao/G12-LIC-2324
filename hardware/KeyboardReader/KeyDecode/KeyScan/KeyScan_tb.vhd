library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KeyScan_tb is
--  Testbench entity does not have ports
end KeyScan_tb;

architecture behavior of KeyScan_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component KeyScan
    port(
        clk         : in std_logic;
        K_scan      : in std_logic;
        reset       : in std_logic;
        KEYPAD_LIN  : in std_logic_vector(3 downto 0);
        KEYPAD_COL  : out std_logic_vector(2 downto 0);
        K           : out std_logic_vector(3 downto 0);
        K_press     : out std_logic
    );
    end component;

    -- Inputs
    signal clk        : std_logic := '0';
    signal K_scan     : std_logic := '0';
    signal reset      : std_logic := '0';
    signal KEYPAD_LIN : std_logic_vector(3 downto 0) := (others => '1');

    -- Outputs
    signal KEYPAD_COL : std_logic_vector(2 downto 0);
    signal K          : std_logic_vector(3 downto 0);
    signal K_press    : std_logic;

    -- Clock period definitions
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: KeyScan
    port map (
        clk => clk,
        K_scan => K_scan,
        reset => reset,
        KEYPAD_LIN => KEYPAD_LIN,
        KEYPAD_COL => KEYPAD_COL,
        K => K,
        K_press => K_press
    );

    -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- hold reset state for 20 ns
        reset <= '1';
        wait for 20 ns;
        
        reset <= '0';
        wait for clk_period;

        -- Start Key Scan
        K_scan <= '1';
        KEYPAD_LIN <= "1110";
        wait for 30 ns;

        KEYPAD_LIN <= "1101";
        wait for 30 ns;

        KEYPAD_LIN <= "1011";
        wait for 30 ns;

        KEYPAD_LIN <= "0111";
        wait for 30 ns;

        K_scan <= '0';
        wait for 50 ns;

        -- Reset again to observe behavior
        reset <= '1';
        wait for 20 ns;

        reset <= '0';
        wait for clk_period;

        -- Another sequence
        K_scan <= '1';
        KEYPAD_LIN <= "1010";
        wait for 30 ns;

        KEYPAD_LIN <= "0101";
        wait for 30 ns;

        -- Stop simulation
        wait;
    end process;

end behavior;
