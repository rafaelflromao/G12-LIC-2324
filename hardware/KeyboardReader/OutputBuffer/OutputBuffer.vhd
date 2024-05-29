library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OutputBuffer is
	 Port (reset, Load, Ack, clk: in STD_LOGIC;
		 D					: in STD_logic_vector(3 downto 0);
		 Q					: out STD_logic_vector(3 downto 0);
		 OB_free, D_val: out STD_LOGIC
	 );
end OutputBuffer;

architecture Structural of OutputBuffer is
	
	component OutputRegister is
   port(
      CLK				: in std_logic;
		D              : in std_logic_vector(3 downto 0);
      Q              : out std_logic_vector(3 downto 0)
   );
	end component OutputRegister;
	
	component BufferControl is
	 Port (
		reset, load, Ack, clk: in STD_LOGIC;
		W_reg, OB_free, D_val: out STD_LOGIC
	 );
	end component BufferControl;
	
	signal w_reg 				: std_logic;

begin
	U0: OutputRegister port map(
		clk => w_reg, D => D, Q => Q
   );
	
	U1: BufferControl port map(
		reset => reset,load => load, ob_free => ob_free, d_val => d_val, ack => ack, clk => clk, w_reg => w_reg
   );
	
end Structural;