library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity KeyDecode is
   port(
		clk, reset, k_ack		: in std_logic;		
		KEYPAD_LIN				: in std_logic_vector(3 downto 0);
		KEYPAD_COL				: out std_logic_vector(2 downto 0);
		K							: out std_logic_vector(3 downto 0);
      K_val						: out std_logic
   );
end KeyDecode;

architecture Structural of KeyDecode is
	
	component KeyScan is
   port(
		clk, K_scan, reset	: in std_logic;		
		KEYPAD_LIN				: in std_logic_vector(3 downto 0);
		KEYPAD_COL				: out std_logic_vector(2 downto 0);
		K							: out std_logic_vector(3 downto 0);
      K_press					: out std_logic
   );
	end component KeyScan;
	
	component KeyControl is
    port(
        K_press, K_ack, clk, reset : in std_logic;
        K_val, K_scan : out std_logic
    );
	end component KeyControl;
	
	signal K_press, K_scan 				: std_logic;

begin
	U0: KeyScan port map(
		clk => clk, K_scan => K_scan, reset => reset, KEYPAD_LIN => KEYPAD_LIN, KEYPAD_COL => KEYPAD_COL, K => K, K_press => K_press
   );
	U1: KeyControl port map(
		K_press => k_press, K_ack => k_ack, clk => clk, reset => reset, K_val => k_val, K_scan => k_scan
   );
end Structural;