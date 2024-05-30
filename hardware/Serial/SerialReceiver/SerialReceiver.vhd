library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SerialReceiver is
	generic(
	 data_width : integer := 9
	); 
   port(
      clk, reset, sdx, sclk, nSS, accept : in std_logic;
		DX_val : out std_logic;
      D : out std_logic_vector(data_width - 1 downto 0)
   );
end SerialReceiver;

architecture Structural of SerialReceiver is
	component SerialControl is
    port(
        clk, reset, nEnRx, accept, pFlag, dFlag, RX_err : in std_logic;
        wr, init, dx_val : out std_logic
    );
	end component SerialControl;
		
	component ShiftRegister is
		generic(
		 data_width : integer := 9
		); 
		port(
			data, en, clk : in std_logic;
			O             : out std_logic_vector(data_width - 1 downto 0)
		);
	end component ShiftRegister;
	
	component ParityCheck is
		port(
			data, clk, init : in std_logic;
			err : out std_logic
		);
	end component ParityCheck;
	
	component counter4 is
		port(
			CE, down, clk, reset : in std_logic;
			O              : out std_logic_vector(3 downto 0)
		);
	end component counter4;
	
	signal count_b : std_logic_vector(3 downto 0);
	signal O_b : std_logic_vector(data_width - 1 downto 0);
	signal wr, init, dFlag, pFlag, RXerror : std_logic;
begin
	U0: counter4 port map(
		clk => sclk, reset => init, down => '0', CE => '1', O => count_b
   );
	
	pFlag <= '1' when count_b = std_logic_vector(to_unsigned(data_width + 1, 4)) else '0';
	dFlag <= '1' when count_b = std_logic_vector(to_unsigned(data_width, 4)) else '0';
	
	U1: ParityCheck port map(
		clk => sclk, init => init, data => sdx, err => rxerror
   );
	
	U2: SerialControl port map(
		clk => clk, reset => reset, init => init, nEnRx => nSS, accept => accept, pFlag => pFlag, dFlag => dFlag, RX_err => rxerror, wr => wr, dx_val => dx_val
   );
	
	U3: ShiftRegister generic map (
            data_width => data_width
        ) 
		port map(
		clk => sclk, en => wr, data => sdx, O => D
		);
end Structural;
