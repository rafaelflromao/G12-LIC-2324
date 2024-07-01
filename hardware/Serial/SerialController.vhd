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
	
	component ClockDivider is
		generic (div : integer := 12);
		port ( clk,reset: in std_logic;
			clock_out: out std_logic);
	end component ClockDivider;
	
	signal D : std_logic_vector(data_width - 1 downto 0);
	signal done, dx_val, dclk : std_logic;
	signal sclkSync, nssSync, sdxSync  : std_logic;
begin
	process (clk)
    begin
		  if rising_edge(clk) then
            sclkSync <= sclk;
				nssSync <= nss;
				sdxSync <= sdx;
        end if;
    end process;

	U0: SerialReceiver
	generic map (
            data_width => data_width
    )
	port map(
		clk => clk, reset => reset, sdx => sdxSync, sclk => sclkSync, nSS => nssSync, accept => done, DX_val => dx_val, D => D
   );
	
	U1: SerialDispatcher
	generic map (
			data_width => data_width
	)
	port map(
		clk => dclk, reset => reset, D_val => Dx_val, Din => D, done =>  done, wrd => wr, Dout => Dout
   );
	
	U2: ClockDivider
	port map (
		clk => clk, reset => reset, clock_out => dclk
	);
	
end Structural;
