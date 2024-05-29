library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BufferControl is
	 Port (reset, Load, Ack, clk: in STD_LOGIC;
		 W_reg, OB_free, D_val: out STD_LOGIC
	 );
end BufferControl;

architecture behavioral of BufferControl is
    type STATE_TYPE is (
        STATE_IDLE,         
        STATE_RECEIVING, 
        STATE_SEND_WAIT
    );
 
    signal CurrentState, NextState : STATE_TYPE := STATE_IDLE;
    
begin 
    -- State Transition Process
    process (CLK, reset)
    begin
		if reset = '1' then
			CurrentState <= STATE_IDLE;
		elsif rising_edge(CLK) then
         CurrentState <= NextState;
      end if;
    end process;
    
    -- Generate Next State
    GenerateNextState:
    process (CurrentState,	Load, Ack)
    begin
        case CurrentState is
            when STATE_RECEIVING =>
					NextState <= STATE_SEND_WAIT;
				
				when STATE_SEND_WAIT =>
					if (ack = '1') then
						NextState <= STATE_IDLE;
					else
						NextState <= STATE_SEND_WAIT;
					end if;
					
            when others =>
					if (Load = '1') then
                    NextState <= STATE_RECEIVING;
					else
                    NextState <= STATE_IDLE;
					end if;
        end case;
    end process;
    
    -- Generate Outputs 
    OB_free <= '1' when CurrentState = STATE_IDLE or CurrentState = STATE_RECEIVING else '0';
	 D_val <= '1' when CurrentState = STATE_SEND_WAIT else '0';
	 W_reg <= '1' when CurrentState = STATE_RECEIVING else '0';
        
end behavioral;
