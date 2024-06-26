library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity KeyboardReader_tb is
end KeyboardReader_tb;

architecture Behavioral of KeyboardReader_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;

    -- Signals
    signal clk, reset, ack : std_logic := '0';
    signal KEYPAD_LIN : std_logic_vector(3 downto 0) := (others => '1');
    signal KEYPAD_COL : std_logic_vector(2 downto 0);
    signal Q : std_logic_vector(3 downto 0);
    signal D_val : std_logic;

    -- Component instantiation
    component KeyboardReader is
        port(
            clk, reset, ack : in std_logic;      
            KEYPAD_LIN : in std_logic_vector(3 downto 0);
            KEYPAD_COL : out std_logic_vector(2 downto 0);
            Q : out std_logic_vector(3 downto 0);
            D_val : out std_logic
        );
    end component;

begin
    -- Instantiate the UUT
    UUT : KeyboardReader
        port map (
            clk => clk,
            reset => reset,
            ack => ack,
            KEYPAD_LIN => KEYPAD_LIN,
            KEYPAD_COL => KEYPAD_COL,
            Q => Q,
            D_val => D_val
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
        -- Reset the system
        reset <= '1';
        wait for CLK_PERIOD*2;
        reset <= '0';
        wait for CLK_PERIOD*2;
        assert D_val = '0' report "Error: expected D_val = '0'" severity error;
        assert Q = "0000" report "Error: expected Q = 0000" severity error;
        
        -- Simulate key press on KEYPAD_LIN
        KEYPAD_LIN <= "0111"; -- Key press
        wait for CLK_PERIOD*10;
		  KEYPAD_LIN <= "1111"; -- Unhold key
		  wait for CLK_PERIOD*20;
		  
		  -- Simulate key press on KEYPAD_LIN
        KEYPAD_LIN <= "1011"; -- Key press
        wait for CLK_PERIOD*20;
		  KEYPAD_LIN <= "1111"; -- Unhold key
		  wait for CLK_PERIOD*20;

        assert D_val = '1' report "Error: expected D_val = '1'" severity error;
        -- Simulate ack signal
        ack <= '1';
        wait for CLK_PERIOD*6;
        ack <= '0';
        wait for CLK_PERIOD*14;
		  
		  assert D_val = '1' report "Error: expected D_val = '1'" severity error;
		  -- Simulate ack signal
        ack <= '1';
        wait for CLK_PERIOD*6;
        ack <= '0';
        wait for CLK_PERIOD*14;

        assert D_val = '0' report "Error: expected D_val = '0'" severity error;

        wait;
    end process;
end Behavioral;
