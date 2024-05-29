library IEEE;
use IEEE.std_logic_1164.all;

entity KeyControl is
    port(
        K_press, K_ack, CLK, reset : in std_logic;
        K_val, K_scan : out std_logic
    );
end entity KeyControl;

architecture asm of KeyControl is

    type STATE_TYPE is (STATE_PRESSED, STATE_NPRESSED);
    signal CurrentState, NextState : STATE_TYPE := STATE_NPRESSED;

begin
    -- State Transition Process
    process (CLK, reset)
    begin
        if reset = '1' then
            CurrentState <= STATE_NPRESSED;
        elsif rising_edge(CLK) then
            CurrentState <= NextState;
        end if;
    end process;

    -- Next State Logic
    process (CurrentState, K_ack, K_press)
    begin
        case CurrentState is
            when STATE_NPRESSED =>
                if K_press = '1' then
                    NextState <= STATE_PRESSED;
                else
                    NextState <= STATE_NPRESSED;
                end if;
                
            when STATE_PRESSED =>
                if K_ack = '0' and K_press = '0' then
                    NextState <= STATE_NPRESSED;
                else
                    NextState <= STATE_PRESSED;
                end if;
                
            when others =>
                NextState <= STATE_NPRESSED;
        end case;
    end process;

    -- Output Logic
    K_scan <= '1' when CurrentState = STATE_NPRESSED else '0';
    K_val <= '1' when CurrentState = STATE_PRESSED else '0';

end architecture asm;