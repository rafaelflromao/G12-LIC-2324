library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity KeyboardReader is
   port(
		clk, reset, ack		: in std_logic;		
		KEYPAD_LIN				: in std_logic_vector(3 downto 0);
		KEYPAD_COL				: out std_logic_vector(2 downto 0);
		Q							: out std_logic_vector(3 downto 0);
      D_val						: out std_logic
   );
end KeyboardReader;

architecture Structural of KeyboardReader is
	
	component KeyDecode is
		port(
			clk, reset, k_ack		: in std_logic;		
			KEYPAD_LIN				: in std_logic_vector(3 downto 0);
			KEYPAD_COL				: out std_logic_vector(2 downto 0);
			K							: out std_logic_vector(3 downto 0);
			K_val						: out std_logic
		);
	end component KeyDecode;
	
	component RingBuffer is
		port(
			clk, reset, dav, cts		: in std_logic;		
			D								: in std_logic_vector(3 downto 0);
			w_reg, dac					: out std_logic;
			Q								: out std_logic_vector(3 downto 0)
		);
	end component RingBuffer;
	
	component OutputBuffer is
		Port (
			clk, reset, Load, Ack 	: in STD_LOGIC;
			D								: in STD_logic_vector(3 downto 0);
			Q								: out STD_logic_vector(3 downto 0);
			OB_free, D_val				: out STD_LOGIC
		);
	end component OutputBuffer;
	
	component ClockDivider is
		generic (div : integer := 1000);
		port ( clk,reset: in std_logic;
			clock_out: out std_logic);
	end component ClockDivider;
	
	signal dclk, DAC, OB_free, w_reg, k_val	: std_logic;
	signal k, q_0										: std_logic_vector(3 downto 0);

begin
	U0: KeyDecode port map(
		clk => dclk, reset => reset, k_ack => DAC, KEYPAD_LIN => KEYPAD_LIN, KEYPAD_COL => KEYPAD_COL, K => k, k_val => k_val
   );
	U1: RingBuffer port map(
		clk => clk, reset => reset, dav => k_val, cts => ob_free, D => k, Q => q_0, w_reg => w_reg, dac => dac
   );
	U2: OutputBuffer port map(
		clk => clk, reset => reset, load => w_reg, ack => ack, D => q_0, Q => q, OB_free => OB_free, d_val => d_val
   );
	U3: ClockDivider
	generic map (div => 1000)
	port map (
		clk => clk, reset => reset, clock_out => dclk
	);
end Structural;