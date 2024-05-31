library IEEE;
use IEEE.std_logic_1164.all;

entity KeyControl_tb is
end entity KeyControl_tb;

architecture Behavioral of KeyControl_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;  -- Clock period
	 
    -- Signals
    signal K_press : std_logic := '0';
    signal K_ack : std_logic := '0';
    signal CLK : std_logic := '0';
    signal reset : std_logic := '0';
    signal K_val : std_logic;
    signal K_scan : std_logic;

    -- Instantiate the Unit Under Test (UUT)
    component KeyControl is
        port(
            K_press, K_ack, CLK, reset : in std_logic;
            K_val, K_scan : out std_logic
        );
    end component;

begin
    -- Instantiate the UUT
    uut: KeyControl port map (
        K_press => K_press,
        K_ack => K_ack,
        CLK => CLK,
        reset => reset,
        K_val => K_val,
        K_scan => K_scan
    );

    -- Clock generation process
    clk_process : process
    begin
        while True loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize inputs
        reset <= '1';
        K_press <= '0';
        K_ack <= '0';
        wait for CLK_PERIOD;
        
        reset <= '0';
        wait for CLK_PERIOD;
        
        -- Simulate key press
        K_press <= '1';
        wait for CLK_PERIOD * 2;
        
        K_press <= '0';
        K_ack <= '1';
        wait for CLK_PERIOD * 2;
        
        K_ack <= '0';
        wait for CLK_PERIOD * 2;
        
        -- Simulate another key press
        K_press <= '1';
        wait for CLK_PERIOD * 2;
        
        K_press <= '0';
        K_ack <= '1';
        wait for CLK_PERIOD * 2;
        
        K_ack <= '0';
        wait for CLK_PERIOD * 2;
        
        -- End simulation
        wait;
    end process;
end architecture Behavioral;
