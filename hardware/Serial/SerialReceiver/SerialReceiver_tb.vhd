library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SerialReceiver_tb is
end SerialReceiver_tb;

architecture Behavioral of SerialReceiver_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;
    constant SCLK_PERIOD : time := CLK_PERIOD * 100;
    
    -- Signals
    signal clk, reset, sdx, sclk, nSS, accept : std_logic := '0';
    signal DX_val : std_logic;
    signal D : std_logic_vector(8 downto 0);  -- Assuming data_width = 9
    
    -- Component instantiation
    component SerialReceiver is
        generic(
            data_width : integer := 9
        ); 
        port(
            clk, reset, sdx, sclk, nSS, accept : in std_logic;
            DX_val : out std_logic;
            D : out std_logic_vector(data_width - 1 downto 0)
        );
    end component;

begin
    -- Instantiate the UUT
    UUT : SerialReceiver
        generic map (
            data_width => 9
        )
        port map (
            clk => clk,
            reset => reset,
            sdx => sdx,
            sclk => sclk,
            nSS => nSS,
            accept => accept,
            DX_val => DX_val,
            D => D
        );

    -- Clock process for clk
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Clock process for sclk
    sclk_process : process
    begin
        while true loop
            sclk <= '0';
            wait for SCLK_PERIOD / 2;
            sclk <= '1';
            wait for SCLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Reset the system
        reset <= '1';
        wait for CLK_PERIOD;
        reset <= '0';
        wait for CLK_PERIOD;

        -- Test scenario: Enable Reception
        nSS <= '1';
        wait for CLK_PERIOD;
        nSS <= '0';
        wait for CLK_PERIOD;
        
        -- Simulate receiving data
        sdx <= '1';  -- Bit 0
        wait for SCLK_PERIOD;
        sdx <= '1';  -- Bit 1
        wait for SCLK_PERIOD;
        sdx <= '0';  -- Bit 2
        wait for SCLK_PERIOD;
        sdx <= '1';  -- Bit 3
        wait for SCLK_PERIOD;
        sdx <= '0';  -- Bit 4
        wait for SCLK_PERIOD;
        sdx <= '1';  -- Bit 5
        wait for SCLK_PERIOD;
        sdx <= '0';  -- Bit 6
        wait for SCLK_PERIOD;
        sdx <= '1';  -- Bit 7
        wait for SCLK_PERIOD;
        sdx <= '0';  -- Bit 8
        wait for SCLK_PERIOD;
        sdx <= '1';  -- Bit 9 (parity bit)
        wait for SCLK_PERIOD;
        
		  assert dx_val = '1' report "Error: expected dx_val = '1'" severity error;
		  assert D = "010101011" report "Error: expected D = 010101011" severity error;
		  
        -- Simulate data acceptance
        accept <= '1';
        wait for SCLK_PERIOD;
        accept <= '0';
        wait for SCLK_PERIOD*2;
        assert dx_val = '0' report "Error: expected dx_val = '0'" severity error;
		  
        wait;
    end process;
end Behavioral;