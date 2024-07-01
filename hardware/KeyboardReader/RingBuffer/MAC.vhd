Library IEEE;
Use IEEE.std_logic_1164.ALL;

Entity mac is
	port(	putGet, incPut, incGet, mclk, reset: in std_logic;
		full, empty: out std_logic;
		A: out std_logic_vector(2 downto 0)
	);
end mac;

ARCHITECTURE Structural OF mac IS

	component counter is
		   generic (data_width : integer := 4);
			port(
				CE, down, clk, reset : in std_logic;
				O              : out std_logic_vector(data_width - 1 downto 0)
			);
	end component counter;
	
	signal idxPut, idxGet: std_logic_vector(2 downto 0);
	signal sRCount: std_logic_vector(3 downto 0);
	signal sizeCE, putCE, getCE, sFull, sEmpty: std_logic;

begin
	putCE <= incPut and not sFull;
	getCE <= incGet and not sEmpty;
	
	sizeCE <= putCE or getCE;
	U0: counter generic map(data_width => 3) port map(CE => putCE, down => '0', reset => reset, clk => mclk, O => idxPut);
	U1: counter generic map(data_width => 3) port map(CE => getCE, down => '0', reset => reset, clk => mclk, O => idxGet);
	U2: counter port map(CE => sizeCE, down => getCE, reset => reset, clk => mclk, O => sRCount);

	
	sFull <= '1' when sRCount = "1000" else '0';
	sEmpty <= '1' when sRCount = "0000" else '0';
	
	A <= idxPut when putGet = '1' else idxGet;
	full <= sFull;
	empty <= sEmpty;
	
end architecture;