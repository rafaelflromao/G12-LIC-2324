Library IEEE;
Use IEEE.std_logic_1164.ALL;

Entity mac is
	port(	putGet, incPut, incGet, mclk, reset: in std_logic;
		full, empty: out std_logic;
		A: out std_logic_vector(2 downto 0)
	);
end mac;

ARCHITECTURE Structural OF mac IS

	component counter4 is
		port(
			CE, down, clk, reset	: in std_logic;
			O					: out std_logic_vector(3 downto 0) 
		);
	end component counter4;
	
	signal idxPut, idxGet : std_logic_vector(2 downto 0);
	signal sRCount: std_logic_vector(3 downto 0);
	signal sizeCE, putCE, getCE, sFull, sEmpty: std_logic;

begin
	sFull <= '1' when sRCOunt = "1000" else '0';
	sEmpty <= '1' when sRCOunt = "0000" else '0';

	putCE <= incPut and not sFull;
	getCE <= incGet and not sEmpty;
	
	sizeCE <= putCE or getCE;
	U0: counter4 port map(CE => incPut, down => '0', reset => reset, clk => mclk, O(2 downto 0) => idxPut);
	U1: counter4 port map(CE => incGet, down => '0', reset => reset, clk => mclk, O(2 downto 0) => idxGet);
	U2: counter4 port map(CE => sizeCE, down => getCE, reset => reset, clk => mclk, O => sRCount);


	A <= idxPut when putGet = '1' else idxGet;
	full <= sFull;
	empty <= sEmpty;
	
end architecture;