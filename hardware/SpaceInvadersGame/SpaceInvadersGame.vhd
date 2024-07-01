library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SpaceInvadersGame is
    port(
        CLK : in std_logic;
        inputPort : in std_logic_vector(7 downto 0);
        outputPort, LCD_DATA, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(7 downto 0);
        LCD_RS, LCD_EN : out std_logic;
        KEYPAD_LIN : in std_logic_vector(3 downto 0);
        KEYPAD_COL : out std_logic_vector(2 downto 0)
    );
end SpaceInvadersGame;

architecture Structural of SpaceInvadersGame is

    COMPONENT UsbPort IS 
        PORT
        (
            inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT UsbPort;

    component SerialController is
        generic(
            data_width : integer := 9
        ); 
        port(
            clk, reset, nSS, sdx, sclk : in std_logic;
            wr : out std_logic;
            Dout : out std_logic_vector(data_width - 1 downto 0)
        );
    end component SerialController;

    component KeyboardReader is
        port(
            clk, reset, ack : in std_logic;        
            KEYPAD_LIN : in std_logic_vector(3 downto 0);
            KEYPAD_COL : out std_logic_vector(2 downto 0);
            Q : out std_logic_vector(3 downto 0);
            D_val : out std_logic
        );
    end component KeyboardReader;

    component scoreDisplay is
        port(
            set : in std_logic;
            cmd : in std_logic_vector(2 downto 0);
            data : in std_logic_vector(3 downto 0);
            HEX0 : out std_logic_vector(7 downto 0);
            HEX1 : out std_logic_vector(7 downto 0);
            HEX2 : out std_logic_vector(7 downto 0);
            HEX3 : out std_logic_vector(7 downto 0);
            HEX4 : out std_logic_vector(7 downto 0);
            HEX5 : out std_logic_vector(7 downto 0)
        );
    end component scoreDisplay;

    constant LCD_WIDTH : integer := 9;
    constant SCORE_WIDTH : integer := 7;

    signal lcd_buf : std_logic_vector(LCD_WIDTH - 1 downto 0);
    signal score_data : std_logic_vector(SCORE_WIDTH - 1 downto 0);
    signal inputBuf, outputBuf : std_logic_vector(7 downto 0);
    signal set_score : std_logic;
    signal kbd_output : std_logic_vector(7 downto 0);
begin

    UsbPortC: UsbPort port map ( 
        inputPort => outputBuf, 
        outputPort => inputBuf 
    );

    SLCDC: SerialController generic map ( 
        data_width => LCD_WIDTH 
    ) port map(
        clk => clk, 
        reset => '0', 
        nSS => inputBuf(0), 
        sdx => inputBuf(3), 
        sclk => inputBuf(4), 
        wr => LCD_EN, 
        Dout => lcd_buf
    );

    LCD_RS <= lcd_buf(0);
    LCD_DATA <= lcd_buf(LCD_WIDTH - 1 downto 1);

    SSC: SerialController generic map ( 
        data_width => SCORE_WIDTH 
    ) port map(
        clk => clk, 
        reset => '0', 
        nSS => inputBuf(1), 
        sdx => inputBuf(3), 
        sclk => inputBuf(4), 
        wr => set_score, 
        Dout => score_data
    );

    Score: scoreDisplay port map(
        set => set_score, 
        cmd => score_data(2 downto 0), 
        data => score_data((SCORE_WIDTH - 1) downto 3), 
        HEX0 => HEX0, 
        HEX1 => HEX1, 
        HEX2 => HEX2, 
        HEX3 => HEX3, 
        HEX4 => HEX4, 
        HEX5 => HEX5
    );

    KBD: KeyboardReader port map (
        clk => clk, 
        reset => '0', 
        ack => inputBuf(7),
        KEYPAD_LIN => KEYPAD_LIN,
        KEYPAD_COL => KEYPAD_COL,
        Q => kbd_output(3 downto 0),
        D_val => kbd_output(4)
    );

    outputPort <= inputBuf;
    outputBuf <= (kbd_output and "00011111") or (inputPort(1 downtO 0) & "000000" and "11000000");

end Structural;
