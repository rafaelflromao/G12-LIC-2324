library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OutputRegister_tb is
end OutputRegister_tb;

architecture Behavioral of OutputRegister_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;  -- Clock period
    
    -- Signals
    signal CLK : std_logic := '0';        -- Clock signal
    signal D : std_logic_vector(3 downto 0) := "0000";  -- Input data
    signal Q : std_logic_vector(3 downto 0);           -- Output data
    
    -- Instantiate the UUT (Unit Under Test)
    component OutputRegister
        port (
            CLK : in std_logic;
            D : in std_logic_vector(3 downto 0);
            Q : out std_logic_vector(3 downto 0)
        );
    end component;
    
begin
    -- Instantiate the UUT
    UUT : OutputRegister
        port map (
            CLK => CLK,
            D => D,
            Q => Q
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

    -- Stimulus process (generate input data)
    stimulus_process : process
    begin
        D <= "0000";  -- Initial input data
        wait for CLK_PERIOD;
        assert Q = "0000" report "Error: expected Q = 0000" severity error;
        D <= "1111";  -- Change input data
        wait for CLK_PERIOD;
        assert Q = "1111" report "Error: expected Q = 1111" severity error;
        D <= "0101";  -- Change input data
        wait for CLK_PERIOD;
        assert Q = "0101" report "Error: expected Q = 0101" severity error;
        D <= "1000";  -- Change input data
        wait for CLK_PERIOD;
        assert Q = "1000" report "Error: expected Q = 1000" severity error;
        
        wait;
    end process stimulus_process;

end Behavioral;
