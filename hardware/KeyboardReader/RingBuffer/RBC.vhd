library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rbc is
	 Port (reset, DAV, full, empty, CTS, CLK: in STD_LOGIC;
		 Wr, selPG, Wreg, DAC, incPut, incGet: out STD_LOGIC
	 );
end rbc;

architecture behavioral of rbc is
    type STATE_TYPE is (
        STATE_IDLE,         
        STATE_STORING_STAGE1,
		  STATE_STORING_STAGE2,		  
        STATE_STORED_WAIT,  
        STATE_RETRIEVING,
        STATE_RETRIEVED
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
    process (CurrentState, DAV, empty, full, CTS)
    begin
		  NextState <= CurrentState;
        case CurrentState is
            when STATE_STORING_STAGE1 =>
                NextState <= STATE_STORING_STAGE2;
					 
            when STATE_STORING_STAGE2 =>
                NextState <= STATE_STORED_WAIT;                
            when STATE_STORED_WAIT =>
                if (DAV = '0') then
                    NextState <= STATE_IDLE;
					 else
						NextState <= STATE_STORED_WAIT;
                end if;
                
            when STATE_RETRIEVING =>
					 if (CTS = '0') then
						NextState <= STATE_RETRIEVED;
					 else
						NextState <= STATE_RETRIEVING;
					 end if;
					 
            when STATE_RETRIEVED =>
                NextState <= STATE_IDLE;
                
            when STATE_IDLE =>
                if (empty = '0' and CTS = '1') then
                    NextState <= STATE_RETRIEVING;
                elsif (DAV = '1' and full = '0') then
                    NextState <= STATE_STORING_STAGE1;
                else
                    NextState <= STATE_IDLE;
                end if;
				when others =>
					NextState <= STATE_IDLE;
        end case;
    end process;
    
    -- Generate Outputs 
    Wr     <= '1' when (CurrentState = STATE_STORING_STAGE2) else '0';
    selPG  <= '1' when (CurrentState = STATE_STORING_STAGE1 OR currentState = STATE_STORING_STAGE2) else '0';
    Wreg   <= '1' when (CurrentState = STATE_RETRIEVING) else '0';
    DAC    <= '1' when (CurrentState = STATE_STORED_WAIT) else '0';
    incPut <= '1' when (CurrentState = STATE_STORING_STAGE2) else '0';
    incGet <= '1' when (CurrentState = STATE_RETRIEVED) else '0';
        
end behavioral;
