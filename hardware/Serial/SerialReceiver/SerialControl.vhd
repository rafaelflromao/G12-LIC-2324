library IEEE;
use IEEE.std_logic_1164.all;

entity SerialControl is
    port(
        clk, reset, nEnRx, accept, pFlag, dFlag, RX_err : in std_logic;
        wr, init, dx_val : out std_logic
    );
end entity SerialControl;

architecture Behavioral of SerialControl is
    type STATE_TYPE is (IDLE, RECEIVING_INIT, RECEIVING, RECEIVED, SEND_WAIT);
    signal CurrentState, NextState : STATE_TYPE := IDLE;
begin

    -- State Transition Process
    process (clk, reset)
    begin
        if reset = '1' then
            CurrentState <= IDLE;
        elsif rising_edge(clk) then
            CurrentState <= NextState;
        end if;
    end process;

    -- Next State Logic
    process (CurrentState, nEnRx, accept, pFlag, dFlag, RX_err)
    begin
            case CurrentState is
					when RECEIVING =>
						if nEnRx = '1' then
							NextState <= IDLE;
						elsif dFlag = '1' then
							NextState <= RECEIVED;
						else
							NextState <= RECEIVING;
						end if;
					
					when RECEIVED =>
						if nEnRx = '1' then
							NextState <= IDLE;
						elsif pFlag = '1' then
							if RX_err = '0' then
								NextState <= SEND_WAIT;
							else
								NextState <= IDLE;
							end if;
						else
							NextState <= RECEIVED;
						end if;
					
					when SEND_WAIT =>
						if nEnRx = '1' then
							NextState <= IDLE;
						elsif accept = '1' then
							NextState <= IDLE;
						else
							NextState <= SEND_WAIT;
						end if;
					
					when IDLE =>
						if nEnRx = '0' then
							NextState <= RECEIVING;
						else
							NextState <= IDLE;
						end if;
						
					when others =>
						NextState <= IDLE;
				end case;
    end process;

    -- Output Logic
    init   <= '1' when CurrentState = IDLE else '0';
    wr     <= '1' when CurrentState = RECEIVING else '0';
    dx_val <= '1' when CurrentState = SEND_WAIT else '0';

end architecture Behavioral;