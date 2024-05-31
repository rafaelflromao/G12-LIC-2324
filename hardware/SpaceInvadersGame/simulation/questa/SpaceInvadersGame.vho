-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "05/31/2024 07:36:15"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SerialController IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	nSS : IN std_logic;
	sdx : IN std_logic;
	sclk : IN std_logic;
	wr : OUT std_logic;
	Dout : OUT std_logic_vector(8 DOWNTO 0)
	);
END SerialController;

-- Design Ports Information
-- wr	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[7]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSS	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdx	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SerialController IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_nSS : std_logic;
SIGNAL ww_sdx : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_Dout : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|U2|process_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|Din_b[8]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \wr~output_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Dout[6]~output_o\ : std_logic;
SIGNAL \Dout[7]~output_o\ : std_logic;
SIGNAL \Dout[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sclk~input_o\ : std_logic;
SIGNAL \sclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sdx~input_o\ : std_logic;
SIGNAL \U0|U1|q~0_combout\ : std_logic;
SIGNAL \U0|U2|CurrentState.RECEIVING~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \nSS~input_o\ : std_logic;
SIGNAL \U0|U2|process_1~0_combout\ : std_logic;
SIGNAL \U0|U2|process_1~0clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|count[0]~3_combout\ : std_logic;
SIGNAL \U0|U0|count[1]~2_combout\ : std_logic;
SIGNAL \U0|U0|count[2]~1_combout\ : std_logic;
SIGNAL \U0|U0|count[3]~0_combout\ : std_logic;
SIGNAL \U0|U2|NextState.IDLE~0_combout\ : std_logic;
SIGNAL \U0|U2|NextState.IDLE~1_combout\ : std_logic;
SIGNAL \U0|U2|NextState.IDLE~2_combout\ : std_logic;
SIGNAL \U0|U2|nEnRx_reg~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|U2|nEnRx_reg~q\ : std_logic;
SIGNAL \U1|process_1~0_combout\ : std_logic;
SIGNAL \U1|CurrentState.ACK~q\ : std_logic;
SIGNAL \U0|U2|NextState.IDLE~3_combout\ : std_logic;
SIGNAL \U0|U2|NextState.IDLE~4_combout\ : std_logic;
SIGNAL \U0|U2|NextState.RECEIVING_INIT~0_combout\ : std_logic;
SIGNAL \U0|U2|CurrentState.RECEIVING~q\ : std_logic;
SIGNAL \U0|U2|CurrentState.RECEIVED~q\ : std_logic;
SIGNAL \U0|U2|NextState.IDLE~6_combout\ : std_logic;
SIGNAL \U0|U2|CurrentState.IDLE~feeder_combout\ : std_logic;
SIGNAL \U0|U2|NextState.IDLE~5_combout\ : std_logic;
SIGNAL \U0|U2|CurrentState.IDLE~q\ : std_logic;
SIGNAL \U0|U2|CurrentState.RECEIVING_INIT~0_combout\ : std_logic;
SIGNAL \U0|U2|CurrentState.RECEIVING_INIT~q\ : std_logic;
SIGNAL \U0|U1|q~q\ : std_logic;
SIGNAL \U0|U2|NextState.SEND_WAIT~0_combout\ : std_logic;
SIGNAL \U0|U2|CurrentState.SEND_WAIT~q\ : std_logic;
SIGNAL \U1|dval_reg~feeder_combout\ : std_logic;
SIGNAL \U1|dval_reg~q\ : std_logic;
SIGNAL \U1|Selector0~0_combout\ : std_logic;
SIGNAL \U1|CurrentState.IDLE~feeder_combout\ : std_logic;
SIGNAL \U1|CurrentState.IDLE~q\ : std_logic;
SIGNAL \U1|Din_b[8]~0_combout\ : std_logic;
SIGNAL \U1|CurrentState.SEND~q\ : std_logic;
SIGNAL \U0|U3|data_b[6]~feeder_combout\ : std_logic;
SIGNAL \U0|U3|data_b[5]~feeder_combout\ : std_logic;
SIGNAL \U0|U3|data_b[2]~feeder_combout\ : std_logic;
SIGNAL \U1|Din_b[8]~1_combout\ : std_logic;
SIGNAL \U1|Din_b[8]~1clkctrl_outclk\ : std_logic;
SIGNAL \U0|U3|data_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U0|U0|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|Din_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|U2|ALT_INV_process_1~0clkctrl_outclk\ : std_logic;
SIGNAL \U0|U2|ALT_INV_CurrentState.RECEIVING_INIT~q\ : std_logic;
SIGNAL \U1|ALT_INV_process_1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_nSS <= nSS;
ww_sdx <= sdx;
ww_sclk <= sclk;
wr <= ww_wr;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U0|U2|process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|U2|process_1~0_combout\);

\U1|Din_b[8]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|Din_b[8]~1_combout\);

\sclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sclk~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\U0|U2|ALT_INV_process_1~0clkctrl_outclk\ <= NOT \U0|U2|process_1~0clkctrl_outclk\;
\U0|U2|ALT_INV_CurrentState.RECEIVING_INIT~q\ <= NOT \U0|U2|CurrentState.RECEIVING_INIT~q\;
\U1|ALT_INV_process_1~0_combout\ <= NOT \U1|process_1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X40_Y0_N2
\wr~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|CurrentState.SEND~q\,
	devoe => ww_devoe,
	o => \wr~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Din_b\(0),
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\Dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Din_b\(1),
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\Dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Din_b\(2),
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Din_b\(3),
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\Dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Din_b\(4),
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\Dout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Din_b\(5),
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\Dout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Din_b\(6),
	devoe => ww_devoe,
	o => \Dout[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\Dout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Din_b\(7),
	devoe => ww_devoe,
	o => \Dout[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Dout[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Din_b\(8),
	devoe => ww_devoe,
	o => \Dout[8]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y0_N1
\sclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sclk,
	o => \sclk~input_o\);

-- Location: CLKCTRL_G18
\sclk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sclk~inputclkctrl_outclk\);

-- Location: IOIBUF_X40_Y0_N8
\sdx~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdx,
	o => \sdx~input_o\);

-- Location: LCCOMB_X38_Y4_N20
\U0|U1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|q~0_combout\ = \U0|U1|q~q\ $ (\sdx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|q~q\,
	datad => \sdx~input_o\,
	combout => \U0|U1|q~0_combout\);

-- Location: LCCOMB_X39_Y4_N10
\U0|U2|CurrentState.RECEIVING~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|CurrentState.RECEIVING~feeder_combout\ = \U0|U2|CurrentState.RECEIVING_INIT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U2|CurrentState.RECEIVING_INIT~q\,
	combout => \U0|U2|CurrentState.RECEIVING~feeder_combout\);

-- Location: IOIBUF_X31_Y0_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\nSS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nSS,
	o => \nSS~input_o\);

-- Location: LCCOMB_X41_Y4_N6
\U0|U2|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|process_1~0_combout\ = (\reset~input_o\) # (\nSS~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \nSS~input_o\,
	combout => \U0|U2|process_1~0_combout\);

-- Location: CLKCTRL_G15
\U0|U2|process_1~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|U2|process_1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|U2|process_1~0clkctrl_outclk\);

-- Location: LCCOMB_X38_Y4_N10
\U0|U0|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|count[0]~3_combout\ = !\U0|U0|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|count\(0),
	combout => \U0|U0|count[0]~3_combout\);

-- Location: FF_X38_Y4_N11
\U0|U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	d => \U0|U0|count[0]~3_combout\,
	clrn => \U0|U2|ALT_INV_CurrentState.RECEIVING_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|count\(0));

-- Location: LCCOMB_X38_Y4_N24
\U0|U0|count[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|count[1]~2_combout\ = \U0|U0|count\(1) $ (\U0|U0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|count\(1),
	datad => \U0|U0|count\(0),
	combout => \U0|U0|count[1]~2_combout\);

-- Location: FF_X38_Y4_N25
\U0|U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	d => \U0|U0|count[1]~2_combout\,
	clrn => \U0|U2|ALT_INV_CurrentState.RECEIVING_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|count\(1));

-- Location: LCCOMB_X38_Y4_N6
\U0|U0|count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|count[2]~1_combout\ = \U0|U0|count\(2) $ (((\U0|U0|count\(1) & \U0|U0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|count\(1),
	datac => \U0|U0|count\(2),
	datad => \U0|U0|count\(0),
	combout => \U0|U0|count[2]~1_combout\);

-- Location: FF_X38_Y4_N7
\U0|U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	d => \U0|U0|count[2]~1_combout\,
	clrn => \U0|U2|ALT_INV_CurrentState.RECEIVING_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|count\(2));

-- Location: LCCOMB_X38_Y4_N28
\U0|U0|count[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|count[3]~0_combout\ = \U0|U0|count\(3) $ (((\U0|U0|count\(2) & (\U0|U0|count\(1) & \U0|U0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|count\(2),
	datab => \U0|U0|count\(1),
	datac => \U0|U0|count\(3),
	datad => \U0|U0|count\(0),
	combout => \U0|U0|count[3]~0_combout\);

-- Location: FF_X38_Y4_N29
\U0|U0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	d => \U0|U0|count[3]~0_combout\,
	clrn => \U0|U2|ALT_INV_CurrentState.RECEIVING_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|count\(3));

-- Location: LCCOMB_X39_Y4_N12
\U0|U2|NextState.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|NextState.IDLE~0_combout\ = (!\U0|U0|count\(2) & \U0|U0|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|count\(2),
	datad => \U0|U0|count\(3),
	combout => \U0|U2|NextState.IDLE~0_combout\);

-- Location: LCCOMB_X39_Y4_N6
\U0|U2|NextState.IDLE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|NextState.IDLE~1_combout\ = (\U0|U2|CurrentState.RECEIVED~q\ & ((\U0|U0|count\(0)) # ((!\U0|U2|NextState.IDLE~0_combout\) # (!\U0|U0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|count\(0),
	datab => \U0|U0|count\(1),
	datac => \U0|U2|CurrentState.RECEIVED~q\,
	datad => \U0|U2|NextState.IDLE~0_combout\,
	combout => \U0|U2|NextState.IDLE~1_combout\);

-- Location: LCCOMB_X40_Y4_N10
\U0|U2|NextState.IDLE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|NextState.IDLE~2_combout\ = (\U0|U2|CurrentState.RECEIVING~q\ & (((\U0|U0|count\(1)) # (!\U0|U2|NextState.IDLE~0_combout\)) # (!\U0|U0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|CurrentState.RECEIVING~q\,
	datab => \U0|U0|count\(0),
	datac => \U0|U0|count\(1),
	datad => \U0|U2|NextState.IDLE~0_combout\,
	combout => \U0|U2|NextState.IDLE~2_combout\);

-- Location: LCCOMB_X40_Y4_N30
\U0|U2|nEnRx_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|nEnRx_reg~0_combout\ = !\nSS~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nSS~input_o\,
	combout => \U0|U2|nEnRx_reg~0_combout\);

-- Location: CLKCTRL_G17
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X40_Y4_N1
\U0|U2|nEnRx_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U0|U2|nEnRx_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|nEnRx_reg~q\);

-- Location: LCCOMB_X41_Y4_N30
\U1|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|process_1~0_combout\ = (\reset~input_o\) # (!\U0|U2|CurrentState.SEND_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \U0|U2|CurrentState.SEND_WAIT~q\,
	combout => \U1|process_1~0_combout\);

-- Location: FF_X41_Y4_N23
\U1|CurrentState.ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|CurrentState.SEND~q\,
	clrn => \U1|ALT_INV_process_1~0_combout\,
	sload => VCC,
	ena => \U0|U2|CurrentState.SEND_WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CurrentState.ACK~q\);

-- Location: LCCOMB_X40_Y4_N0
\U0|U2|NextState.IDLE~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|NextState.IDLE~3_combout\ = (\U0|U2|CurrentState.SEND_WAIT~q\ & (\U1|CurrentState.ACK~q\ & ((\U0|U2|CurrentState.IDLE~q\) # (!\U0|U2|nEnRx_reg~q\)))) # (!\U0|U2|CurrentState.SEND_WAIT~q\ & ((\U0|U2|CurrentState.IDLE~q\) # ((!\U0|U2|nEnRx_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|CurrentState.SEND_WAIT~q\,
	datab => \U0|U2|CurrentState.IDLE~q\,
	datac => \U0|U2|nEnRx_reg~q\,
	datad => \U1|CurrentState.ACK~q\,
	combout => \U0|U2|NextState.IDLE~3_combout\);

-- Location: LCCOMB_X40_Y4_N26
\U0|U2|NextState.IDLE~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|NextState.IDLE~4_combout\ = (!\nSS~input_o\ & \U0|U2|NextState.IDLE~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nSS~input_o\,
	datad => \U0|U2|NextState.IDLE~3_combout\,
	combout => \U0|U2|NextState.IDLE~4_combout\);

-- Location: LCCOMB_X39_Y4_N30
\U0|U2|NextState.RECEIVING_INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|NextState.RECEIVING_INIT~0_combout\ = (!\U0|U2|NextState.IDLE~2_combout\ & (\U0|U2|NextState.IDLE~4_combout\ & ((\U0|U2|CurrentState.SEND_WAIT~q\) # (!\U0|U2|NextState.IDLE~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|NextState.IDLE~1_combout\,
	datab => \U0|U2|CurrentState.SEND_WAIT~q\,
	datac => \U0|U2|NextState.IDLE~2_combout\,
	datad => \U0|U2|NextState.IDLE~4_combout\,
	combout => \U0|U2|NextState.RECEIVING_INIT~0_combout\);

-- Location: FF_X39_Y4_N11
\U0|U2|CurrentState.RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|U2|CurrentState.RECEIVING~feeder_combout\,
	clrn => \U0|U2|ALT_INV_process_1~0clkctrl_outclk\,
	ena => \U0|U2|NextState.RECEIVING_INIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|CurrentState.RECEIVING~q\);

-- Location: FF_X39_Y4_N7
\U0|U2|CurrentState.RECEIVED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U0|U2|CurrentState.RECEIVING~q\,
	clrn => \U0|U2|ALT_INV_process_1~0clkctrl_outclk\,
	sload => VCC,
	ena => \U0|U2|NextState.RECEIVING_INIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|CurrentState.RECEIVED~q\);

-- Location: LCCOMB_X41_Y4_N26
\U0|U2|NextState.IDLE~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|NextState.IDLE~6_combout\ = (\U0|U2|CurrentState.RECEIVED~q\ & ((!\U0|U1|q~q\))) # (!\U0|U2|CurrentState.RECEIVED~q\ & (!\U0|U2|CurrentState.SEND_WAIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|CurrentState.RECEIVED~q\,
	datab => \U0|U2|CurrentState.SEND_WAIT~q\,
	datac => \U0|U1|q~q\,
	combout => \U0|U2|NextState.IDLE~6_combout\);

-- Location: LCCOMB_X40_Y4_N28
\U0|U2|CurrentState.IDLE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|CurrentState.IDLE~feeder_combout\ = \U0|U2|NextState.IDLE~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U2|NextState.IDLE~6_combout\,
	combout => \U0|U2|CurrentState.IDLE~feeder_combout\);

-- Location: LCCOMB_X40_Y4_N16
\U0|U2|NextState.IDLE~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|NextState.IDLE~5_combout\ = (!\U0|U2|NextState.IDLE~1_combout\ & (\U0|U2|NextState.IDLE~4_combout\ & ((!\U0|U2|NextState.IDLE~2_combout\) # (!\U0|U2|CurrentState.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|CurrentState.IDLE~q\,
	datab => \U0|U2|NextState.IDLE~1_combout\,
	datac => \U0|U2|NextState.IDLE~4_combout\,
	datad => \U0|U2|NextState.IDLE~2_combout\,
	combout => \U0|U2|NextState.IDLE~5_combout\);

-- Location: FF_X40_Y4_N29
\U0|U2|CurrentState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|U2|CurrentState.IDLE~feeder_combout\,
	clrn => \U0|U2|ALT_INV_process_1~0clkctrl_outclk\,
	ena => \U0|U2|NextState.IDLE~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|CurrentState.IDLE~q\);

-- Location: LCCOMB_X38_Y4_N22
\U0|U2|CurrentState.RECEIVING_INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|CurrentState.RECEIVING_INIT~0_combout\ = !\U0|U2|CurrentState.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U2|CurrentState.IDLE~q\,
	combout => \U0|U2|CurrentState.RECEIVING_INIT~0_combout\);

-- Location: FF_X38_Y4_N23
\U0|U2|CurrentState.RECEIVING_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|U2|CurrentState.RECEIVING_INIT~0_combout\,
	clrn => \U0|U2|ALT_INV_process_1~0clkctrl_outclk\,
	ena => \U0|U2|NextState.RECEIVING_INIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|CurrentState.RECEIVING_INIT~q\);

-- Location: FF_X38_Y4_N21
\U0|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	d => \U0|U1|q~0_combout\,
	clrn => \U0|U2|ALT_INV_CurrentState.RECEIVING_INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|q~q\);

-- Location: LCCOMB_X41_Y4_N14
\U0|U2|NextState.SEND_WAIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|NextState.SEND_WAIT~0_combout\ = (!\U0|U1|q~q\ & \U0|U2|CurrentState.RECEIVED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|q~q\,
	datad => \U0|U2|CurrentState.RECEIVED~q\,
	combout => \U0|U2|NextState.SEND_WAIT~0_combout\);

-- Location: FF_X41_Y4_N15
\U0|U2|CurrentState.SEND_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \U0|U2|NextState.SEND_WAIT~0_combout\,
	clrn => \U0|U2|ALT_INV_process_1~0clkctrl_outclk\,
	ena => \U0|U2|NextState.IDLE~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|CurrentState.SEND_WAIT~q\);

-- Location: LCCOMB_X42_Y4_N22
\U1|dval_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|dval_reg~feeder_combout\ = \U0|U2|CurrentState.SEND_WAIT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U2|CurrentState.SEND_WAIT~q\,
	combout => \U1|dval_reg~feeder_combout\);

-- Location: FF_X42_Y4_N23
\U1|dval_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \U1|dval_reg~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|dval_reg~q\);

-- Location: LCCOMB_X41_Y4_N22
\U1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Selector0~0_combout\ = (!\U1|CurrentState.ACK~q\ & ((\U1|CurrentState.IDLE~q\) # (!\U1|dval_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|dval_reg~q\,
	datac => \U1|CurrentState.ACK~q\,
	datad => \U1|CurrentState.IDLE~q\,
	combout => \U1|Selector0~0_combout\);

-- Location: LCCOMB_X41_Y4_N28
\U1|CurrentState.IDLE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|CurrentState.IDLE~feeder_combout\ = \U1|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Selector0~0_combout\,
	combout => \U1|CurrentState.IDLE~feeder_combout\);

-- Location: FF_X41_Y4_N29
\U1|CurrentState.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|CurrentState.IDLE~feeder_combout\,
	clrn => \U1|ALT_INV_process_1~0_combout\,
	ena => \U0|U2|CurrentState.SEND_WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CurrentState.IDLE~q\);

-- Location: LCCOMB_X41_Y4_N20
\U1|Din_b[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b[8]~0_combout\ = (!\U1|CurrentState.IDLE~q\ & !\U1|dval_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CurrentState.IDLE~q\,
	datab => \U1|dval_reg~q\,
	combout => \U1|Din_b[8]~0_combout\);

-- Location: FF_X41_Y4_N31
\U1|CurrentState.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|Din_b[8]~0_combout\,
	clrn => \U1|ALT_INV_process_1~0_combout\,
	sload => VCC,
	ena => \U0|U2|CurrentState.SEND_WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CurrentState.SEND~q\);

-- Location: FF_X39_Y4_N15
\U0|U3|data_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	asdata => \sdx~input_o\,
	sload => VCC,
	ena => \U0|U2|CurrentState.RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U3|data_b\(8));

-- Location: FF_X39_Y4_N25
\U0|U3|data_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	asdata => \U0|U3|data_b\(8),
	sload => VCC,
	ena => \U0|U2|CurrentState.RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U3|data_b\(7));

-- Location: LCCOMB_X39_Y4_N2
\U0|U3|data_b[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U3|data_b[6]~feeder_combout\ = \U0|U3|data_b\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U3|data_b\(7),
	combout => \U0|U3|data_b[6]~feeder_combout\);

-- Location: FF_X39_Y4_N3
\U0|U3|data_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	d => \U0|U3|data_b[6]~feeder_combout\,
	ena => \U0|U2|CurrentState.RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U3|data_b\(6));

-- Location: LCCOMB_X39_Y4_N8
\U0|U3|data_b[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U3|data_b[5]~feeder_combout\ = \U0|U3|data_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U3|data_b\(6),
	combout => \U0|U3|data_b[5]~feeder_combout\);

-- Location: FF_X39_Y4_N9
\U0|U3|data_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	d => \U0|U3|data_b[5]~feeder_combout\,
	ena => \U0|U2|CurrentState.RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U3|data_b\(5));

-- Location: FF_X39_Y4_N5
\U0|U3|data_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	asdata => \U0|U3|data_b\(5),
	sload => VCC,
	ena => \U0|U2|CurrentState.RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U3|data_b\(4));

-- Location: FF_X39_Y4_N1
\U0|U3|data_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	asdata => \U0|U3|data_b\(4),
	sload => VCC,
	ena => \U0|U2|CurrentState.RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U3|data_b\(3));

-- Location: LCCOMB_X39_Y4_N20
\U0|U3|data_b[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U3|data_b[2]~feeder_combout\ = \U0|U3|data_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U3|data_b\(3),
	combout => \U0|U3|data_b[2]~feeder_combout\);

-- Location: FF_X39_Y4_N21
\U0|U3|data_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	d => \U0|U3|data_b[2]~feeder_combout\,
	ena => \U0|U2|CurrentState.RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U3|data_b\(2));

-- Location: FF_X39_Y4_N23
\U0|U3|data_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	asdata => \U0|U3|data_b\(2),
	sload => VCC,
	ena => \U0|U2|CurrentState.RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U3|data_b\(1));

-- Location: FF_X39_Y4_N17
\U0|U3|data_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~inputclkctrl_outclk\,
	asdata => \U0|U3|data_b\(1),
	sload => VCC,
	ena => \U0|U2|CurrentState.RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U3|data_b\(0));

-- Location: LCCOMB_X41_Y4_N8
\U1|Din_b[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b[8]~1_combout\ = (!\U1|CurrentState.IDLE~q\ & (\U0|U2|CurrentState.SEND_WAIT~q\ & !\U1|dval_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|CurrentState.IDLE~q\,
	datac => \U0|U2|CurrentState.SEND_WAIT~q\,
	datad => \U1|dval_reg~q\,
	combout => \U1|Din_b[8]~1_combout\);

-- Location: CLKCTRL_G16
\U1|Din_b[8]~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|Din_b[8]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|Din_b[8]~1clkctrl_outclk\);

-- Location: LCCOMB_X39_Y4_N16
\U1|Din_b[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b\(0) = (GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & ((\U0|U3|data_b\(0)))) # (!GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & (\U1|Din_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Din_b\(0),
	datac => \U0|U3|data_b\(0),
	datad => \U1|Din_b[8]~1clkctrl_outclk\,
	combout => \U1|Din_b\(0));

-- Location: LCCOMB_X39_Y4_N22
\U1|Din_b[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b\(1) = (GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & ((\U0|U3|data_b\(1)))) # (!GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & (\U1|Din_b\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Din_b\(1),
	datac => \U0|U3|data_b\(1),
	datad => \U1|Din_b[8]~1clkctrl_outclk\,
	combout => \U1|Din_b\(1));

-- Location: LCCOMB_X39_Y4_N26
\U1|Din_b[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b\(2) = (GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & (\U0|U3|data_b\(2))) # (!GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & ((\U1|Din_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U3|data_b\(2),
	datab => \U1|Din_b\(2),
	datad => \U1|Din_b[8]~1clkctrl_outclk\,
	combout => \U1|Din_b\(2));

-- Location: LCCOMB_X39_Y4_N0
\U1|Din_b[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b\(3) = (GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & ((\U0|U3|data_b\(3)))) # (!GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & (\U1|Din_b\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Din_b\(3),
	datac => \U0|U3|data_b\(3),
	datad => \U1|Din_b[8]~1clkctrl_outclk\,
	combout => \U1|Din_b\(3));

-- Location: LCCOMB_X39_Y4_N4
\U1|Din_b[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b\(4) = (GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & ((\U0|U3|data_b\(4)))) # (!GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & (\U1|Din_b\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Din_b\(4),
	datac => \U0|U3|data_b\(4),
	datad => \U1|Din_b[8]~1clkctrl_outclk\,
	combout => \U1|Din_b\(4));

-- Location: LCCOMB_X39_Y4_N18
\U1|Din_b[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b\(5) = (GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & (\U0|U3|data_b\(5))) # (!GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & ((\U1|Din_b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U3|data_b\(5),
	datab => \U1|Din_b\(5),
	datad => \U1|Din_b[8]~1clkctrl_outclk\,
	combout => \U1|Din_b\(5));

-- Location: LCCOMB_X39_Y4_N28
\U1|Din_b[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b\(6) = (GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & (\U0|U3|data_b\(6))) # (!GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & ((\U1|Din_b\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U3|data_b\(6),
	datac => \U1|Din_b\(6),
	datad => \U1|Din_b[8]~1clkctrl_outclk\,
	combout => \U1|Din_b\(6));

-- Location: LCCOMB_X39_Y4_N24
\U1|Din_b[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b\(7) = (GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & ((\U0|U3|data_b\(7)))) # (!GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & (\U1|Din_b\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Din_b\(7),
	datac => \U0|U3|data_b\(7),
	datad => \U1|Din_b[8]~1clkctrl_outclk\,
	combout => \U1|Din_b\(7));

-- Location: LCCOMB_X39_Y4_N14
\U1|Din_b[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Din_b\(8) = (GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & ((\U0|U3|data_b\(8)))) # (!GLOBAL(\U1|Din_b[8]~1clkctrl_outclk\) & (\U1|Din_b\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Din_b\(8),
	datac => \U0|U3|data_b\(8),
	datad => \U1|Din_b[8]~1clkctrl_outclk\,
	combout => \U1|Din_b\(8));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_wr <= \wr~output_o\;

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Dout(6) <= \Dout[6]~output_o\;

ww_Dout(7) <= \Dout[7]~output_o\;

ww_Dout(8) <= \Dout[8]~output_o\;
END structure;


