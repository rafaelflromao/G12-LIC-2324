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
        STATE_SEND_WAIT_STAGE1,
		  STATE_SEND_WAIT_STAGE2
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
	     NextState <= CurrentState;
        case CurrentState is
            when STATE_RECEIVING =>
					NextState <= STATE_SEND_WAIT_sTAGE1;
				
				when STATE_SEND_WAIT_sTAGE1 =>
					if (ack = '1') then
						NextState <= STATE_SEND_WAIT_STAGE2;
					else
						NextState <= STATE_SEND_WAIT_STAGE1;
					end if;
					
				when STATE_SEND_WAIT_STAGE2 =>
					if (ack = '0') then
						NextState <= STATE_IDLE;
					else
						NextState <= STATE_SEND_WAIT_STAGE2;
					end if;
					
            when others =>
					if (Load = '1') then
                    NextState <= STATE_RECEIVING;
					end if;
        end case;
    end process;
    
    -- Generate Outputs 
    OB_free <= '1' when CurrentState = STATE_IDLE or CurrentState = STATE_RECEIVING else '0';
	 D_val <= '1' when CurrentState = STATE_SEND_WAIT_sTAGE1 else '0';
	 W_reg <= '1' when CurrentState = STATE_RECEIVING else '0';
        
end behavioral;
