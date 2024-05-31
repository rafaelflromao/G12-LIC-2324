library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SerialController_tb is
end SerialController_tb;

architecture Behavioral of SerialController_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;
    constant SCLK_PERIOD : time := CLK_PERIOD * 100;
    
    -- Signals
    signal clk, reset, nSS, sdx, sclk : std_logic := '0';
    signal wr : std_logic;
    signal Dout : std_logic_vector(8 downto 0);  -- Assuming data_width = 9

    -- Component instantiation
    component SerialController is
        generic(
            data_width : integer := 9
        ); 
        port(
            clk, reset, nSS, sdx, sclk : in std_logic;
            wr : out std_logic;
            Dout : out std_logic_vector(data_width - 1 downto 0)
        );
    end component;

begin
    -- Instantiate the UUT
    UUT : SerialController
        generic map (
            data_width => 9
        )
        port map (
            clk => clk,
            reset => reset,
            nSS => nSS,
            sdx => sdx,
            sclk => sclk,
            wr => wr,
            Dout => Dout
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
        -- Reset
        reset <= '1';
        wait for SCLK_PERIOD;
        reset <= '0';
        wait for SCLK_PERIOD;

        -- Enable Reception
        nSS <= '1';
        wait for CLK_PERIOD * 2;
        nSS <= '0';
        wait for CLK_PERIOD * 2;

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

        -- Simulate data acceptance
        wait for CLK_PERIOD * 2;
        nSS <= '1';

        wait;
    end process;
end Behavioral;
