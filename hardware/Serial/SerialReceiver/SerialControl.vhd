library IEEE;
use IEEE.std_logic_1164.all;

entity SerialControl is
    port(
        clk, reset, nEnRx, accept, pFlag, dFlag, RX_err : in std_logic;
        wr, init, dx_val : out std_logic
    );
end entity SerialControl;

architecture Behavioral of SerialControl is
	signal nEnRx_reg : std_logic;

    type STATE_TYPE is (IDLE, RECEIVING_INIT, RECEIVING, RECEIVED, SEND_WAIT);
    signal CurrentState, NextState : STATE_TYPE := IDLE;
begin

	 process (clk, reset)
    begin
        if reset = '1' then
            nEnRx_reg <= '1';
        elsif rising_edge(clk) then
            nEnRx_reg <= nEnRx;
        end if;
    end process;
    -- State Transition Process
    process (clk, reset, nEnRx)
    begin
        if nEnRx = '1' or reset = '1' then
            CurrentState <= IDLE;
        elsif rising_edge(clk) then
            CurrentState <= NextState;
        end if;
    end process;

    -- Next State Logic
    process (CurrentState, nEnRx, accept, pFlag, dFlag, RX_err)
    begin
        NextState <= CurrentState;
        if nEnRx = '0' then
            case CurrentState is
					when RECEIVING_INIT =>
						NextState <= RECEIVING;
					
					when RECEIVING =>
						if dFlag = '1' then
							NextState <= RECEIVED;
						end if;
					
					when RECEIVED =>
						if pFlag = '1' then
							if RX_err = '0' then
								NextState <= SEND_WAIT;
							else
								NextState <= IDLE;
							end if;
						end if;
					
					when SEND_WAIT =>
						if accept = '1' then
							NextState <= IDLE;
						end if;
					
					when IDLE =>
						if nEnRx_reg = '1' then
							NextState <= RECEIVING_INIT;
						end if;
						
					when others =>
						NextState <= IDLE;
				end case;
			end if;
    end process;

    -- Output Logic
    init   <= '1' when CurrentState = RECEIVING_INIT else '0';
    wr     <= '1' when CurrentState = RECEIVING else '0';
    dx_val <= '1' when CurrentState = SEND_WAIT else '0';

end architecture Behavioral;