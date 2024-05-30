library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SerialController is
	generic(
	 data_width : integer := 9
	); 
   port(
      clk, reset, nSS, sdx, sclk : in std_logic;
		wr : out std_logic;
      Dout : out std_logic_vector(data_width - 1 downto 0)
   );
end SerialController;

architecture Structural of SerialController is
	component SerialReceiver is
		generic(
		 data_width : integer := 9
		); 
		port(
			clk, reset, sdx, sclk, nSS, accept : in std_logic;
			DX_val : out std_logic;
			D : out std_logic_vector(data_width - 1 downto 0)
		);
	end component SerialReceiver;
		
	component SerialDispatcher is
		generic(
		 data_width : integer := 9
		);
		port(
		  clk, reset, D_val : in std_logic;
		  Din : in std_logic_vector(data_width - 1 downto 0);
		  done, wrD : out std_logic;
		  Dout : out std_logic_vector(data_width - 1 downto 0)
		);
	end component SerialDispatcher;
	
	signal D : std_logic_vector(data_width - 1 downto 0);
	signal done, dx_val : std_logic;
begin
	U0: SerialReceiver
	generic map (
            data_width => data_width
    )
	port map(
		clk => clk, reset => reset, sdx => sdx, sclk => sclk, nSS => nss, accept => done, DX_val => dx_val, D => D
   );
	
	U1: SerialDispatcher
	generic map (
			data_width => data_width
	)
	port map(
		clk => clk, reset => reset, D_val => Dx_val, Din => D, done =>  done, wrd => wr, Dout => Dout
   );
end Structural;
