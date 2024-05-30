library IEEE;
use IEEE.std_logic_1164.all;

entity SerialDispatcher is
	generic(
	 data_width : integer := 9
	);
	port(
	  clk, reset, D_val : in std_logic;
	  Din : in std_logic_vector(data_width - 1 downto 0);
	  done, wrD : out std_logic;
	  Dout : out std_logic_vector(data_width - 1 downto 0)
	);
end entity SerialDispatcher;

architecture Behavioral of SerialDispatcher is
	signal Din_b : std_logic_vector(data_width - 1 downto 0);
	signal dval_reg : std_logic;
	type STATE_TYPE is (IDLE, SEND, ACK);
	signal CurrentState, NextState : STATE_TYPE := IDLE;
begin

	 process (clk, reset)
    begin
        if reset = '1' then
            dval_reg <= '0';
        elsif rising_edge(clk) then
            dval_reg <= d_val;
        end if;
    end process;
    -- State Transition Process
    process (clk, reset, d_val)
    begin
        if d_val = '0' or reset = '1' then
            CurrentState <= IDLE;
        elsif rising_edge(clk) then
            CurrentState <= NextState;
        end if;
    end process;

    -- Next State Logic
    process (CurrentState, d_val)
    begin
        NextState <= CurrentState;
        if d_val = '1' then
            case CurrentState is
					when SEND =>
						NextState <= ACK;
					
					when ACK =>
						NextState <= IDLE;
					
					when IDLE =>
						if dval_reg = '1' then
							Din_b <= Din;
							NextState <= SEND;
						end if;
					
					when others =>
						NextState <= IDLE;
				end case;
			end if;
    end process;

    -- Output Logic
    wrD  <= '1' when CurrentState = SEND else '0';
    Dout <= Din_b;
	 done <= '1' when CurrentState = ACK else '0';

end architecture Behavioral;