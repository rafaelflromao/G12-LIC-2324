library IEEE;
use IEEE.std_logic_1164.all;

entity KeyControl is
    port(
        K_press, K_ack, CLK, reset : in std_logic;
        K_val, K_scan : out std_logic
    );
end entity KeyControl;

architecture Behavioral of KeyControl is

    type STATE_TYPE is (PRESSED, NOT_PRESSED);
    signal CurrentState, NextState : STATE_TYPE := NOT_PRESSED;
	 
begin

    -- State Transition Process
    process (CLK, reset)
    begin
        if reset = '1' then
            CurrentState <= NOT_PRESSED;
        elsif rising_edge(CLK) then
            CurrentState <= NextState;
        end if;
    end process;

    -- Next State Logic
    process (CurrentState, K_ack, K_press)
    begin
		  NextState <= CurrentState;
        case CurrentState is
            when NOT_PRESSED =>
                if K_press = '1' then
                    NextState <= PRESSED;
                end if;
                
            when PRESSED =>
                if K_ack = '1' and K_press = '0' then
                    NextState <= NOT_PRESSED;  
                end if;
                
            when others =>
                NextState <= NOT_PRESSED;
        end case;
    end process;

    -- Output Logic
    K_scan <= '1' when CurrentState = NOT_PRESSED else '0';
    K_val <= '1' when CurrentState = PRESSED else '0';

end architecture Behavioral;