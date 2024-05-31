library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity KeyDecode_tb is
end entity KeyDecode_tb;

architecture Behavioral of KeyDecode_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;  -- Clock period
	 
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal k_ack : std_logic := '0';
    signal KEYPAD_LIN : std_logic_vector(3 downto 0) := (others => '1');
    signal KEYPAD_COL : std_logic_vector(2 downto 0);
    signal K : std_logic_vector(3 downto 0);
    signal K_val : std_logic;

    -- Instantiate the Unit Under Test (UUT)
    component KeyDecode is
        port(
            clk, reset, k_ack : in std_logic;
            KEYPAD_LIN : in std_logic_vector(3 downto 0);
            KEYPAD_COL : out std_logic_vector(2 downto 0);
            K : out std_logic_vector(3 downto 0);
            K_val : out std_logic
        );
    end component;

begin
    -- Instantiate the UUT
    uut: KeyDecode port map (
        clk => clk,
        reset => reset,
        k_ack => k_ack,
        KEYPAD_LIN => KEYPAD_LIN,
        KEYPAD_COL => KEYPAD_COL,
        K => K,
        K_val => K_val
    );

    -- Clock generation process
    clk_process : process
    begin
        while True loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize inputs
        reset <= '1';
        k_ack <= '0';
        KEYPAD_LIN <= "1111";
        wait for CLK_PERIOD;
        
        reset <= '0';
        wait for CLK_PERIOD;

        -- Simulate key press (low level)
        KEYPAD_LIN <= "1011";  -- Example row signal indicating key press
        wait for CLK_PERIOD;
        
        KEYPAD_LIN <= "1111";  -- Release key
        wait for CLK_PERIOD * 2;
        
        assert K_val = '1' report "Error: expected K_val = '1'" severity error;
        k_ack <= '1';          -- Acknowledge key press
        wait for CLK_PERIOD;
        
        assert K_val = '0' report "Error: expected K_val = '0'" severity error;
        k_ack <= '0';
        wait for CLK_PERIOD * 2;
        
        -- Simulate another key press (low level)
        KEYPAD_LIN <= "0111";  -- Example row signal indicating key press
        wait for CLK_PERIOD;
        
        KEYPAD_LIN <= "1111";  -- Release key
        wait for CLK_PERIOD * 2;
        
        assert K_val = '1' report "Error: expected K_val = '1'" severity error;
        k_ack <= '1';          -- Acknowledge key press
        wait for CLK_PERIOD;
        
        assert K_val = '0' report "Error: expected K_val = '0'" severity error;
        k_ack <= '0';
        wait for CLK_PERIOD * 2;
        
        -- End simulation
        wait;
    end process;
end architecture Behavioral;
