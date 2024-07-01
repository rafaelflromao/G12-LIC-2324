library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RingBuffer is
   port(
		clk, dav, cts, reset	: in std_logic;		
		D						: in std_logic_vector(3 downto 0);
		w_reg, dac			: out std_logic;
		Q						: out std_logic_vector(3 downto 0)
   );
end RingBuffer;

architecture Structural of RingBuffer is
	
	component rbc is
	 Port (reset, DAV, full, empty, CTS, CLK: in STD_LOGIC;
		 Wr, selPG, Wreg, DAC, incPut, incGet: out STD_LOGIC
	 );
	end component rbc;
	
	component mac is
	port(	putGet, incPut, incGet, mclk, reset: in std_logic;
		full, empty: out std_logic;
		A: out std_logic_vector(2 downto 0)
	);
	end component mac;
	
	component RAM is
		generic(
			ADDRESS_WIDTH : natural := 3;
			DATA_WIDTH : natural := 4
		);
		port(
			address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
			wr: in std_logic;
			din: in std_logic_vector(DATA_WIDTH - 1 downto 0);
			dout: out std_logic_vector(DATA_WIDTH - 1 downto 0)
		);
	end component RAM;
	
	signal full, empty, selPG, Wr, incPut, incGet, nclk : std_logic;
	signal A : std_LOGIC_vector(2 downto 0);

begin
	U0: rbc Port map (
		reset => reset, DAV => dav, full => full, empty => empty, CTS => cts, CLK => clk,
		Wr => wr, selPG => selPG, Wreg => W_REg, DAC => dac, incPut => incput, incGet => incGet
	 );
	U1: mac port map (
		putGet => selPG, incPut => incPut, incGet => incGet, mclk => clk, reset => '0', full => full, empty => empty, A => A
	);
	U2: ram port map (
		address => A, wr => wr, din => D, dout => Q
	);
	nclk <= not clk;
end Structural;