library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity KeyScan is
   port(
		clk, K_scan, reset	: in std_logic;		
		KEYPAD_LIN				: in std_logic_vector(3 downto 0);
		KEYPAD_COL				: out std_logic_vector(2 downto 0);
		K							: out std_logic_vector(3 downto 0);
      K_press					: out std_logic
   );
end KeyScan;

architecture Structural of KeyScan is
	
	component counter is
		generic (data_width : integer := 4);
		port(
			CE, down, clk, reset : in std_logic;
			O              : out std_logic_vector(data_width - 1 downto 0)
		);
	end component counter;
	
	component mux4 is
		port (
		I	: in std_logic_vector(3 downto 0);
		S	: in std_logic_vector(1 downto 0);
		Y	: out std_logic
		);
	end component mux4;
	
	component dec2_4 is
		port (
		S	: in std_logic_vector(1 downto 0);
		Y	: out std_logic_vector(3 downto 0)
		);
	end component dec2_4;
	
	signal Q 				: std_logic_vector(3 downto 0);
	signal Y 				: std_logic;
	signal KEYPAD_COL_b 	: std_logic_vector(3 downto 0);

begin
	U0: counter port map(CE => K_scan, down => '0', reset => reset, clk => clk, O => Q);
	U1: mux4 port map(I => KEYPAD_LIN, S => Q(1 downto 0), Y => Y);
	U2: dec2_4 port map(S => Q(3 downto 2), Y => KEYPAD_COL_b);
	
	KEYPAD_COL <= not KEYPAD_COL_b(2 downto 0);
	K_press <= not Y;
	K <= Q;
end Structural;