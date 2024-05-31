library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BufferControl_tb is
end BufferControl_tb;

architecture Behavioral of BufferControl_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;  -- Clock period
    
    -- Signals
    signal CLK, reset, Load, Ack : std_logic := '0';  -- Control signals
    signal W_reg, OB_free, D_val : std_logic;          -- Output signals
    
    -- Instantiate the UUT (Unit Under Test)
    component BufferControl
        port (
            reset, Load, Ack, clk : in std_logic;
            W_reg, OB_free, D_val : out std_logic
        );
    end component;
    
begin
    -- Instantiate the UUT
    UUT : BufferControl
        port map (
            reset => reset,
            Load => Load,
            Ack => Ack,
            clk => CLK,
            W_reg => W_reg,
            OB_free => OB_free,
            D_val => D_val
        );

    -- Clock process (generate clock signal)
    CLK_process : process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process CLK_process;

    -- Stimulus process (generate input signals)
    stimulus_process : process
    begin
        reset <= '1';  -- Reset active
        wait for CLK_PERIOD;
        reset <= '0';  -- De-assert reset
        wait for CLK_PERIOD;
        Load <= '1';   -- Load data
        wait for 2*CLK_PERIOD;
        Ack <= '1';    -- Acknowledge
        wait for CLK_PERIOD;
        Load <= '0';   -- De-assert load
        Ack <= '0';    -- De-assert acknowledge
        wait;
    end process stimulus_process;

end Behavioral;
