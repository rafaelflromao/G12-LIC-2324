library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rbc_tb is
end rbc_tb;

architecture Behavioral of rbc_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;  -- Clock period
	 
    -- Signals
    signal reset, DAV, full, empty, CTS, CLK: std_logic;
    signal Wr, selPG, Wreg, DAC, incPut, incGet: std_logic;

    -- Instantiate the Unit Under Test (UUT)
    component rbc is
        port(
            reset, DAV, full, empty, CTS, CLK: in std_logic;
            Wr, selPG, Wreg, DAC, incPut, incGet: out std_logic
        );
    end component;

begin

    -- Instantiate the UUT
    uut: rbc port map(
        reset => reset,
        DAV => DAV,
        full => full,
        empty => empty,
        CTS => CTS,
        CLK => CLK,
        Wr => Wr,
        selPG => selPG,
        Wreg => Wreg,
        DAC => DAC,
        incPut => incPut,
        incGet => incGet
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
        DAV <= '0';
        full <= '0';
        empty <= '1';
        CTS <= '0';
        wait for CLK_PERIOD * 2;
        
        reset <= '0';
        wait for CLK_PERIOD;

        -- Test storing data
        DAV <= '1';
        wait for CLK_PERIOD;
        DAV <= '0';
        wait for CLK_PERIOD * 2;

        -- Test retrieving data
        CTS <= '1';
        empty <= '0';
        wait for CLK_PERIOD;
        CTS <= '0';
        wait for CLK_PERIOD * 2;

        -- Test the full condition
        full <= '1';
        DAV <= '1';
        wait for CLK_PERIOD;
        DAV <= '0';
        wait for CLK_PERIOD;
        empty <= '0';
		  
        -- Test the empty condition
        empty <= '1';
        CTS <= '1';
        wait for CLK_PERIOD;
        CTS <= '0';
        wait for CLK_PERIOD * 2;
		  empty <= '0';

        -- End simulation
        wait;
    end process;

end Behavioral;