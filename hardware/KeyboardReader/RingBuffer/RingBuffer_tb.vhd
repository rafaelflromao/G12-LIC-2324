library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity RingBuffer_tb is
end RingBuffer_tb;

architecture Behavioral of RingBuffer_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns;  -- Clock period
	 
	 
	 -- Signals
    signal clk, dav, cts, reset : std_logic;
    signal D : std_logic_vector(3 downto 0);
    signal w_reg, dac : std_logic;
    signal Q : std_logic_vector(3 downto 0);

    -- Instantiate the Unit Under Test (UUT)
    component RingBuffer is
        port(
            clk, dav, cts, reset : in std_logic;
            D : in std_logic_vector(3 downto 0);
            w_reg, dac : out std_logic;
            Q : out std_logic_vector(3 downto 0)
        );
    end component;

begin

    -- Instantiate the UUT
    uut: RingBuffer port map(
        clk => clk,
        dav => dav,
        cts => cts,
        reset => reset,
        D => D,
        w_reg => w_reg,
        dac => dac,
        Q => Q
    );

    -- Clock generation process
    clk_process : process
    begin
        while True loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize inputs
        reset <= '1';
        dav <= '0';
        cts <= '0';
        D <= "0000";
        wait for CLK_PERIOD*2;

        reset <= '0';
        wait for CLK_PERIOD;

        -- Test inserting data into the ring buffer
        dav <= '1';
        D <= "0001";
        wait for CLK_PERIOD;

        dav <= '0';
        wait for CLK_PERIOD*2;

        D <= "0010";
        dav <= '1';
        wait for CLK_PERIOD;

        dav <= '0';
        wait for CLK_PERIOD*2;

        -- Test retrieving data from the ring buffer
        cts <= '1';
        wait for CLK_PERIOD;

        cts <= '0';
        wait for CLK_PERIOD*2;
		  
        cts <= '1';
        wait for CLK_PERIOD;

        cts <= '0';
        wait for CLK_PERIOD*2;

        -- Test full condition
        -- Continue to add more values to fill the buffer
		  for i in 0 to 7 loop
            -- Insert data into the ring buffer
            dav <= '1';
            D <= std_logic_vector(to_unsigned(i, D'length));
            wait for CLK_PERIOD;
            dav <= '0';
            wait for CLK_PERIOD*2;
        end loop;
		  
		  dav <= '1';
        D <= "1000";
        wait for CLK_PERIOD;
        dav <= '0';
        wait for CLK_PERIOD*2;
		  
        -- Test empty condition
        -- Retrieving more values until the buffer is empty
		  for i in 0 to 7 loop
            -- Retrieve data from the ring buffer
			  cts <= '1';
			  wait for CLK_PERIOD;
			  cts <= '0';
			  wait for CLK_PERIOD*2;
        end loop;
        -- End simulation
		  
		  cts <= '1';
		  wait for CLK_PERIOD;
		  cts <= '0';
		  wait for CLK_PERIOD*2;
		  
        wait;
    end process;

end Behavioral;
