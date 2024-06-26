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

-- DATE "06/25/2024 19:52:56"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SpaceInvadersGame IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	CLK : IN std_logic;
	inputPort : IN std_logic_vector(7 DOWNTO 0);
	outputPort : OUT std_logic_vector(7 DOWNTO 0);
	LCD_DATA : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	HEX5 : OUT std_logic_vector(7 DOWNTO 0);
	LCD_RS : OUT std_logic;
	LCD_EN : OUT std_logic;
	KEYPAD_LIN : IN std_logic_vector(3 DOWNTO 0);
	KEYPAD_COL : OUT std_logic_vector(2 DOWNTO 0)
	);
END SpaceInvadersGame;

-- Design Ports Information
-- inputPort[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputPort[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputPort[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputPort[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputPort[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputPort[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputPort[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputPort[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputPort[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputPort[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputPort[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputPort[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputPort[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputPort[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputPort[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputPort[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[6]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[7]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_COL[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEYPAD_LIN[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SpaceInvadersGame IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_inputPort : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outputPort : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_KEYPAD_LIN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEYPAD_COL : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SSC|U1|Din_b[6]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SSC|nSSsync~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SLCDC|nSSsync~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SSC|U1|CurrentState.SEND~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SLCDC|U1|Din_b[8]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KBD|U2|U1|CurrentState.STATE_RECEIVING~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KBD|U3|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SLCDC|U2|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SSC|U2|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \inputPort[0]~input_o\ : std_logic;
SIGNAL \inputPort[1]~input_o\ : std_logic;
SIGNAL \inputPort[2]~input_o\ : std_logic;
SIGNAL \inputPort[3]~input_o\ : std_logic;
SIGNAL \inputPort[4]~input_o\ : std_logic;
SIGNAL \inputPort[5]~input_o\ : std_logic;
SIGNAL \inputPort[6]~input_o\ : std_logic;
SIGNAL \inputPort[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \KBD|U1|U1|getCE~0_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~0_combout\ : std_logic;
SIGNAL \SLCDC|U2|count[0]~2_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~1\ : std_logic;
SIGNAL \SLCDC|U2|Add0~2_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~1_cout\ : std_logic;
SIGNAL \KBD|U3|Add0~2_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~3\ : std_logic;
SIGNAL \KBD|U3|Add0~4_combout\ : std_logic;
SIGNAL \KBD|U3|count~5_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~5\ : std_logic;
SIGNAL \KBD|U3|Add0~6_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~7\ : std_logic;
SIGNAL \KBD|U3|Add0~8_combout\ : std_logic;
SIGNAL \KBD|U3|count~4_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~9\ : std_logic;
SIGNAL \KBD|U3|Add0~10_combout\ : std_logic;
SIGNAL \KBD|U3|count~3_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~11\ : std_logic;
SIGNAL \KBD|U3|Add0~12_combout\ : std_logic;
SIGNAL \KBD|U3|count~2_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~13\ : std_logic;
SIGNAL \KBD|U3|Add0~14_combout\ : std_logic;
SIGNAL \KBD|U3|count~1_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~15\ : std_logic;
SIGNAL \KBD|U3|Add0~16_combout\ : std_logic;
SIGNAL \KBD|U3|count~0_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~17\ : std_logic;
SIGNAL \KBD|U3|Add0~18_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~19\ : std_logic;
SIGNAL \KBD|U3|Add0~20_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~21\ : std_logic;
SIGNAL \KBD|U3|Add0~22_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~23\ : std_logic;
SIGNAL \KBD|U3|Add0~24_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~25\ : std_logic;
SIGNAL \KBD|U3|Add0~26_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~27\ : std_logic;
SIGNAL \KBD|U3|Add0~28_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~29\ : std_logic;
SIGNAL \KBD|U3|Add0~30_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~31\ : std_logic;
SIGNAL \KBD|U3|Add0~32_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~33\ : std_logic;
SIGNAL \KBD|U3|Add0~34_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~35\ : std_logic;
SIGNAL \KBD|U3|Add0~36_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~37\ : std_logic;
SIGNAL \KBD|U3|Add0~38_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~39\ : std_logic;
SIGNAL \KBD|U3|Add0~40_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~41\ : std_logic;
SIGNAL \KBD|U3|Add0~42_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~43\ : std_logic;
SIGNAL \KBD|U3|Add0~44_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~45\ : std_logic;
SIGNAL \KBD|U3|Add0~46_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~47\ : std_logic;
SIGNAL \KBD|U3|Add0~48_combout\ : std_logic;
SIGNAL \KBD|U3|Equal0~2_combout\ : std_logic;
SIGNAL \KBD|U3|Equal0~3_combout\ : std_logic;
SIGNAL \KBD|U3|Equal0~4_combout\ : std_logic;
SIGNAL \KBD|U3|Equal0~7_combout\ : std_logic;
SIGNAL \KBD|U3|Equal0~6_combout\ : std_logic;
SIGNAL \KBD|U3|Equal0~5_combout\ : std_logic;
SIGNAL \KBD|U3|Equal0~8_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~49\ : std_logic;
SIGNAL \KBD|U3|Add0~50_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~51\ : std_logic;
SIGNAL \KBD|U3|Add0~52_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~53\ : std_logic;
SIGNAL \KBD|U3|Add0~54_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~55\ : std_logic;
SIGNAL \KBD|U3|Add0~56_combout\ : std_logic;
SIGNAL \KBD|U3|Equal0~0_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~57\ : std_logic;
SIGNAL \KBD|U3|Add0~58_combout\ : std_logic;
SIGNAL \KBD|U3|Add0~59\ : std_logic;
SIGNAL \KBD|U3|Add0~60_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~0_combout\ : std_logic;
SIGNAL \KBD|U3|Equal0~1_combout\ : std_logic;
SIGNAL \KBD|U3|Equal0~9_combout\ : std_logic;
SIGNAL \KBD|U3|tmp~0_combout\ : std_logic;
SIGNAL \KBD|U3|tmp~q\ : std_logic;
SIGNAL \KBD|U3|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U0|U1|CurrentState~0_combout\ : std_logic;
SIGNAL \KEYPAD_LIN[3]~input_o\ : std_logic;
SIGNAL \KBD|U0|U0|U0|count[0]~4_combout\ : std_logic;
SIGNAL \KBD|U0|U0|U0|count[1]~3_combout\ : std_logic;
SIGNAL \KEYPAD_LIN[0]~input_o\ : std_logic;
SIGNAL \KEYPAD_LIN[1]~input_o\ : std_logic;
SIGNAL \KBD|U0|U0|U1|Mux0~0_combout\ : std_logic;
SIGNAL \KEYPAD_LIN[2]~input_o\ : std_logic;
SIGNAL \KBD|U0|U0|U1|Mux0~1_combout\ : std_logic;
SIGNAL \KBD|U0|U1|CurrentState~1_combout\ : std_logic;
SIGNAL \KBD|U0|U1|CurrentState~q\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ : std_logic;
SIGNAL \KBD|U1|U1|Equal0~0_combout\ : std_logic;
SIGNAL \KBD|U1|U1|U2|count[0]~11_combout\ : std_logic;
SIGNAL \KBD|U1|U1|U2|count[1]~4_cout\ : std_logic;
SIGNAL \KBD|U1|U1|U2|count[1]~5_combout\ : std_logic;
SIGNAL \KBD|U1|U1|sizeCE~0_combout\ : std_logic;
SIGNAL \KBD|U1|U1|sizeCE~combout\ : std_logic;
SIGNAL \KBD|U1|U1|U2|count[1]~6\ : std_logic;
SIGNAL \KBD|U1|U1|U2|count[2]~7_combout\ : std_logic;
SIGNAL \KBD|U1|U1|U2|count[2]~8\ : std_logic;
SIGNAL \KBD|U1|U1|U2|count[3]~9_combout\ : std_logic;
SIGNAL \KBD|U1|U1|Equal1~0_combout\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.state_bit_2~0_combout\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.state_bit_2~1_combout\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.state_bit_2~q\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \KBD|U1|U0|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \KBD|U2|U1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \KBD|U2|U1|CurrentState.STATE_SEND_WAIT_STAGE1~0_combout\ : std_logic;
SIGNAL \KBD|U2|U1|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \KBD|U2|U1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \KBD|U2|U1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \KBD|U2|U1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\ : std_logic;
SIGNAL \KBD|U2|U1|CurrentState.STATE_RECEIVING~0clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U1|U1|U1|count[0]~0_combout\ : std_logic;
SIGNAL \KBD|U1|U1|U1|count[1]~1_combout\ : std_logic;
SIGNAL \KBD|U1|U1|U1|count[2]~2_combout\ : std_logic;
SIGNAL \KBD|U1|U1|U0|count[0]~2_combout\ : std_logic;
SIGNAL \KBD|U1|U1|U0|count[1]~3_combout\ : std_logic;
SIGNAL \KBD|U1|U1|U0|count[2]~5_combout\ : std_logic;
SIGNAL \KBD|U1|U1|U0|count[2]~4_combout\ : std_logic;
SIGNAL \KBD|U1|U0|selPG~combout\ : std_logic;
SIGNAL \KBD|U1|U1|A[2]~2_combout\ : std_logic;
SIGNAL \KBD|U1|U1|A[1]~1_combout\ : std_logic;
SIGNAL \KBD|U1|U1|A[0]~0_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U1|U2|ram~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U1|U2|ram~4_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~34_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U1|U2|ram~8_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U1|U2|ram~12_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~35_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U1|U2|ram~20_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U1|U2|ram~28_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U1|U2|ram~24_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U1|U2|ram~16_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~32_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~33_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~36_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~1_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~13_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~5_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~39_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~9_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~40_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~29_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~25_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~17_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~37_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~21_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~38_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~41_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \KBD|U0|U0|U0|count[2]~2_combout\ : std_logic;
SIGNAL \KBD|U0|U0|U0|count[3]~0_combout\ : std_logic;
SIGNAL \KBD|U0|U0|U0|count[3]~1_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~31_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~19_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~27_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~47_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~23_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~48_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~7_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~3_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~49_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~15_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~11_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~50_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~51_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~18_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~26_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~42_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~30_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~22_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~43_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~10_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~2_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~6_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~44_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~14_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~45_combout\ : std_logic;
SIGNAL \KBD|U1|U2|ram~46_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \SLCDC|U2|tmp~0_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~3\ : std_logic;
SIGNAL \SLCDC|U2|Add0~4_combout\ : std_logic;
SIGNAL \SLCDC|U2|count~1_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~5\ : std_logic;
SIGNAL \SLCDC|U2|Add0~6_combout\ : std_logic;
SIGNAL \SLCDC|U2|count~0_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~7\ : std_logic;
SIGNAL \SLCDC|U2|Add0~8_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~9\ : std_logic;
SIGNAL \SLCDC|U2|Add0~10_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~11\ : std_logic;
SIGNAL \SLCDC|U2|Add0~12_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~13\ : std_logic;
SIGNAL \SLCDC|U2|Add0~14_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~15\ : std_logic;
SIGNAL \SLCDC|U2|Add0~16_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~17\ : std_logic;
SIGNAL \SLCDC|U2|Add0~18_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~19\ : std_logic;
SIGNAL \SLCDC|U2|Add0~20_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~21\ : std_logic;
SIGNAL \SLCDC|U2|Add0~22_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~23\ : std_logic;
SIGNAL \SLCDC|U2|Add0~24_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~25\ : std_logic;
SIGNAL \SLCDC|U2|Add0~26_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~27\ : std_logic;
SIGNAL \SLCDC|U2|Add0~28_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~29\ : std_logic;
SIGNAL \SLCDC|U2|Add0~30_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~31\ : std_logic;
SIGNAL \SLCDC|U2|Add0~32_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~33\ : std_logic;
SIGNAL \SLCDC|U2|Add0~34_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~35\ : std_logic;
SIGNAL \SLCDC|U2|Add0~36_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~37\ : std_logic;
SIGNAL \SLCDC|U2|Add0~38_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~39\ : std_logic;
SIGNAL \SLCDC|U2|Add0~40_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~41\ : std_logic;
SIGNAL \SLCDC|U2|Add0~42_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~43\ : std_logic;
SIGNAL \SLCDC|U2|Add0~44_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~45\ : std_logic;
SIGNAL \SLCDC|U2|Add0~46_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~47\ : std_logic;
SIGNAL \SLCDC|U2|Add0~48_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~49\ : std_logic;
SIGNAL \SLCDC|U2|Add0~50_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~51\ : std_logic;
SIGNAL \SLCDC|U2|Add0~52_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~53\ : std_logic;
SIGNAL \SLCDC|U2|Add0~54_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~55\ : std_logic;
SIGNAL \SLCDC|U2|Add0~56_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~57\ : std_logic;
SIGNAL \SLCDC|U2|Add0~58_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~1_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~59\ : std_logic;
SIGNAL \SLCDC|U2|Add0~60_combout\ : std_logic;
SIGNAL \SLCDC|U2|Add0~61\ : std_logic;
SIGNAL \SLCDC|U2|Add0~62_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~2_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~3_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~4_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~8_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~6_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~5_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~7_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~9_combout\ : std_logic;
SIGNAL \SSC|U2|Equal0~10_combout\ : std_logic;
SIGNAL \SLCDC|U2|tmp~q\ : std_logic;
SIGNAL \SLCDC|U2|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \SLCDC|U1|dval_reg~q\ : std_logic;
SIGNAL \SLCDC|U1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \SLCDC|U1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \SLCDC|U1|CurrentState.SEND~0_combout\ : std_logic;
SIGNAL \SLCDC|U1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_2~0_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \SLCDC|nSSsync~q\ : std_logic;
SIGNAL \SLCDC|nSSsync~clkctrl_outclk\ : std_logic;
SIGNAL \SLCDC|U0|U0|count[0]~3_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.IDLE~1_combout\ : std_logic;
SIGNAL \SLCDC|U0|U0|count[1]~0_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\ : std_logic;
SIGNAL \SLCDC|U0|U0|count[2]~2_combout\ : std_logic;
SIGNAL \SLCDC|U0|U0|count[3]~1_combout\ : std_logic;
SIGNAL \SLCDC|U0|comb~0_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|nEnRx_reg~q\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_0~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~clkctrl_outclk\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \SLCDC|U0|U1|q~0_combout\ : std_logic;
SIGNAL \SLCDC|U0|U1|q~q\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_1~4_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.IDLE~0_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_2~1_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|CurrentState.state_bit_2~q\ : std_logic;
SIGNAL \SLCDC|U1|Din_b[8]~0_combout\ : std_logic;
SIGNAL \SLCDC|U1|Din_b[8]~0clkctrl_outclk\ : std_logic;
SIGNAL \SSC|U2|tmp~0_combout\ : std_logic;
SIGNAL \SSC|U2|tmp~q\ : std_logic;
SIGNAL \SSC|U2|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \SSC|U1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \SSC|U1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \SSC|nSSsync~q\ : std_logic;
SIGNAL \SSC|nSSsync~clkctrl_outclk\ : std_logic;
SIGNAL \SSC|U0|U0|count[0]~3_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.IDLE~1_combout\ : std_logic;
SIGNAL \SSC|U0|U0|count[1]~2_combout\ : std_logic;
SIGNAL \SSC|U0|U0|count[2]~1_combout\ : std_logic;
SIGNAL \SSC|U0|U0|count[3]~0_combout\ : std_logic;
SIGNAL \SSC|U0|comb~0_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \SSC|U0|U1|q~0_combout\ : std_logic;
SIGNAL \SSC|U0|U1|q~q\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_1~4_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \SSC|U0|comb~1_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.IDLE~0_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_2~0_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_2~1_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.state_bit_2~q\ : std_logic;
SIGNAL \SSC|U1|dval_reg~q\ : std_logic;
SIGNAL \SSC|U1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \SSC|U1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \SSC|U1|CurrentState.SEND~0_combout\ : std_logic;
SIGNAL \SSC|U1|CurrentState.SEND~0clkctrl_outclk\ : std_logic;
SIGNAL \SSC|U0|U3|data_b[6]~feeder_combout\ : std_logic;
SIGNAL \SSC|U0|U2|CurrentState.RECEIVING~0_combout\ : std_logic;
SIGNAL \SSC|U0|U3|data_b[5]~feeder_combout\ : std_logic;
SIGNAL \SSC|U0|U3|data_b[4]~feeder_combout\ : std_logic;
SIGNAL \SSC|U0|U3|data_b[3]~feeder_combout\ : std_logic;
SIGNAL \SSC|U1|Din_b[6]~0_combout\ : std_logic;
SIGNAL \SSC|U1|Din_b[6]~0clkctrl_outclk\ : std_logic;
SIGNAL \Score|clear_reg|q~0_combout\ : std_logic;
SIGNAL \Score|clear_reg|q~1_combout\ : std_logic;
SIGNAL \Score|clear_reg|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:0:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:in_reg|u0|q~q\ : std_logic;
SIGNAL \Score|decoder|dout[6]~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:out_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:0:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:in_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:0:out_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:0:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:in_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:0:out_reg|u3|q~feeder_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:out_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:0:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:in_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:0:out_reg|u2|q~feeder_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:out_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \Score|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \Score|decoder|dout[1]~1_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:in_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:1:out_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:1:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:in_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:1:out_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:1:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:in_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:1:out_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:1:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:in_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:1:out_reg|u3|q~feeder_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:out_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \Score|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \Score|decoder|dout[2]~2_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:in_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:2:out_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:2:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:in_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:2:out_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:2:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:in_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:2:out_reg|u2|q~feeder_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:out_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:2:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:in_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:2:out_reg|u3|q~feeder_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:out_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \Score|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \Score|decoder|dout[3]~3_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:in_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:3:out_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:3:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:in_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:3:out_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:3:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:in_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:3:out_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:3:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:in_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:3:out_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \Score|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \Score|decoder|dout[4]~4_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:in_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:4:out_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:4:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:in_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:4:out_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:4:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:in_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:4:out_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:4:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:in_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:4:out_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \Score|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:in_reg|u1|q~0_combout\ : std_logic;
SIGNAL \Score|decoder|dout[5]~5_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:in_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:5:out_reg|u1|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:5:in_reg|u3|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:in_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:5:out_reg|u3|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:5:in_reg|u0|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:in_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:5:out_reg|u0|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:5:in_reg|u2|q~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:in_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:5:out_reg|u2|q~q\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \Score|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \KBD|U0|U0|U2|Mux3~0_combout\ : std_logic;
SIGNAL \KBD|U0|U0|U2|Mux2~0_combout\ : std_logic;
SIGNAL \KBD|U0|U0|U2|Mux1~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KBD|U1|U1|U2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KBD|U1|U1|U0|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SLCDC|U0|U0|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KBD|U0|U0|U0|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SLCDC|U0|U3|data_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SLCDC|U2|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \KBD|U2|U0|buff\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SLCDC|U1|Din_b\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Score|decoder|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KBD|U1|U1|U1|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SSC|U0|U3|data_b\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \KBD|U3|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SSC|U0|U0|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SSC|U1|Din_b\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~clkctrl_outclk\ : std_logic;
SIGNAL \KBD|U3|ALT_INV_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \SSC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\ : std_logic;
SIGNAL \SLCDC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\ : std_logic;
SIGNAL \KBD|U0|U0|U2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \KBD|U0|U0|U2|ALT_INV_Mux2~0_combout\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_CLK <= CLK;
ww_inputPort <= inputPort;
outputPort <= ww_outputPort;
LCD_DATA <= ww_LCD_DATA;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LCD_RS <= ww_LCD_RS;
LCD_EN <= ww_LCD_EN;
ww_KEYPAD_LIN <= KEYPAD_LIN;
KEYPAD_COL <= ww_KEYPAD_COL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\SSC|U1|Din_b[6]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SSC|U1|Din_b[6]~0_combout\);

\SSC|nSSsync~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SSC|nSSsync~q\);

\SLCDC|nSSsync~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SLCDC|nSSsync~q\);

\SSC|U1|CurrentState.SEND~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SSC|U1|CurrentState.SEND~0_combout\);

\SLCDC|U1|Din_b[8]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SLCDC|U1|Din_b[8]~0_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\KBD|U2|U1|CurrentState.STATE_RECEIVING~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\KBD|U3|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KBD|U3|tmp~q\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\SLCDC|U2|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SLCDC|U2|tmp~q\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\SSC|U2|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SSC|U2|tmp~q\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~clkctrl_outclk\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~clkctrl_outclk\;
\KBD|U3|ALT_INV_tmp~clkctrl_outclk\ <= NOT \KBD|U3|tmp~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\SSC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\ <= NOT \SSC|U0|U2|CurrentState.IDLE~1_combout\;
\SLCDC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\ <= NOT \SLCDC|U0|U2|CurrentState.IDLE~1_combout\;
\KBD|U0|U0|U2|ALT_INV_Mux1~0_combout\ <= NOT \KBD|U0|U0|U2|Mux1~0_combout\;
\KBD|U0|U0|U2|ALT_INV_Mux2~0_combout\ <= NOT \KBD|U0|U0|U2|Mux2~0_combout\;

-- Location: FF_X42_Y30_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X42_Y30_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X42_Y30_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X42_Y30_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X42_Y30_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X42_Y30_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y50_N8
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

-- Location: IOOBUF_X46_Y54_N2
\outputPort[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	devoe => ww_devoe,
	o => ww_outputPort(0));

-- Location: IOOBUF_X46_Y54_N23
\outputPort[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	devoe => ww_devoe,
	o => ww_outputPort(1));

-- Location: IOOBUF_X51_Y54_N16
\outputPort[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\,
	devoe => ww_devoe,
	o => ww_outputPort(2));

-- Location: IOOBUF_X46_Y54_N9
\outputPort[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	devoe => ww_devoe,
	o => ww_outputPort(3));

-- Location: IOOBUF_X56_Y54_N30
\outputPort[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	devoe => ww_devoe,
	o => ww_outputPort(4));

-- Location: IOOBUF_X58_Y54_N23
\outputPort[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\,
	devoe => ww_devoe,
	o => ww_outputPort(5));

-- Location: IOOBUF_X66_Y54_N23
\outputPort[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	devoe => ww_devoe,
	o => ww_outputPort(6));

-- Location: IOOBUF_X56_Y54_N9
\outputPort[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	devoe => ww_devoe,
	o => ww_outputPort(7));

-- Location: IOOBUF_X54_Y0_N30
\LCD_DATA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLCDC|U1|Din_b\(1),
	devoe => ww_devoe,
	o => ww_LCD_DATA(0));

-- Location: IOOBUF_X46_Y0_N2
\LCD_DATA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLCDC|U1|Din_b\(2),
	devoe => ww_devoe,
	o => ww_LCD_DATA(1));

-- Location: IOOBUF_X40_Y0_N16
\LCD_DATA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLCDC|U1|Din_b\(3),
	devoe => ww_devoe,
	o => ww_LCD_DATA(2));

-- Location: IOOBUF_X36_Y0_N2
\LCD_DATA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLCDC|U1|Din_b\(4),
	devoe => ww_devoe,
	o => ww_LCD_DATA(3));

-- Location: IOOBUF_X36_Y0_N9
\LCD_DATA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLCDC|U1|Din_b\(5),
	devoe => ww_devoe,
	o => ww_LCD_DATA(4));

-- Location: IOOBUF_X34_Y0_N2
\LCD_DATA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLCDC|U1|Din_b\(6),
	devoe => ww_devoe,
	o => ww_LCD_DATA(5));

-- Location: IOOBUF_X20_Y0_N2
\LCD_DATA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLCDC|U1|Din_b\(7),
	devoe => ww_devoe,
	o => ww_LCD_DATA(6));

-- Location: IOOBUF_X20_Y0_N9
\LCD_DATA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLCDC|U1|Din_b\(8),
	devoe => ww_devoe,
	o => ww_LCD_DATA(7));

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:0:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:0:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:0:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:0:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:0:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:0:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:0:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:1:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:1:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:1:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:1:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:1:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:1:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:1:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:2:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:2:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:2:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:2:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:2:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:2:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:2:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:3:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:3:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:3:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:3:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:3:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:3:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:3:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:4:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:4:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:4:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:4:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:4:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:4:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:4:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(7));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:5:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:5:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:5:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:5:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:5:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:5:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Score|circuit_gen:5:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(7));

-- Location: IOOBUF_X24_Y0_N2
\LCD_RS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLCDC|U1|Din_b\(0),
	devoe => ww_devoe,
	o => ww_LCD_RS);

-- Location: IOOBUF_X14_Y0_N9
\LCD_EN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SLCDC|U1|CurrentState.SEND~0_combout\,
	devoe => ww_devoe,
	o => ww_LCD_EN);

-- Location: IOOBUF_X38_Y0_N9
\KEYPAD_COL[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KBD|U0|U0|U2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_KEYPAD_COL(0));

-- Location: IOOBUF_X38_Y0_N16
\KEYPAD_COL[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KBD|U0|U0|U2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_KEYPAD_COL(1));

-- Location: IOOBUF_X34_Y0_N23
\KEYPAD_COL[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KBD|U0|U0|U2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_KEYPAD_COL(2));

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X41_Y30_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X41_Y30_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X41_Y30_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X41_Y30_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X41_Y30_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X41_Y30_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X41_Y30_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X41_Y30_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X41_Y30_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X41_Y30_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X41_Y30_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X41_Y30_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X41_Y30_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X41_Y30_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X41_Y30_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X42_Y30_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X42_Y31_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X41_Y30_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X41_Y30_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X40_Y34_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X40_Y34_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X40_Y34_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X40_Y34_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X41_Y30_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X41_Y30_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LCCOMB_X41_Y30_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X41_Y30_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X41_Y30_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X41_Y30_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X42_Y30_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X42_Y30_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X42_Y30_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X42_Y30_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X41_Y30_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X41_Y30_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X41_Y30_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X41_Y30_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X41_Y30_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X41_Y30_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X42_Y30_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X42_Y30_N30
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X43_Y31_N6
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X43_Y31_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: LCCOMB_X40_Y30_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: FF_X40_Y30_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X40_Y30_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X40_Y30_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X40_Y30_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X40_Y30_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X40_Y30_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X40_Y30_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X40_Y30_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X40_Y30_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X40_Y30_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X40_Y30_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X40_Y30_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X40_Y30_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X40_Y30_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X40_Y30_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X40_Y30_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X40_Y30_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X40_Y30_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y30_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y30_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X40_Y30_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X43_Y31_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X41_Y31_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X43_Y31_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: LCCOMB_X43_Y31_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: LCCOMB_X42_Y30_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X43_Y30_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X43_Y31_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X44_Y19_N22
\KBD|U1|U0|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U0|CurrentState.state_bit_0~1_combout\ = (!\KBD|U1|U0|CurrentState.state_bit_0~q\ & (!\KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\ & ((\KBD|U2|U1|CurrentState.state_bit_0~q\) # (\KBD|U2|U1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datab => \KBD|U2|U1|CurrentState.state_bit_0~q\,
	datac => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\,
	datad => \KBD|U2|U1|CurrentState.state_bit_1~q\,
	combout => \KBD|U1|U0|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X44_Y19_N0
\KBD|U1|U1|getCE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|getCE~0_combout\ = (\KBD|U1|U0|CurrentState.state_bit_0~q\ & (\KBD|U1|U0|CurrentState.state_bit_2~q\ & !\KBD|U1|U1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datab => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	datac => \KBD|U1|U1|Equal1~0_combout\,
	combout => \KBD|U1|U1|getCE~0_combout\);

-- Location: LCCOMB_X46_Y34_N0
\SLCDC|U2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~0_combout\ = \SLCDC|U2|count\(0) $ (GND)
-- \SLCDC|U2|Add0~1\ = CARRY(!\SLCDC|U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(0),
	datad => VCC,
	combout => \SLCDC|U2|Add0~0_combout\,
	cout => \SLCDC|U2|Add0~1\);

-- Location: LCCOMB_X47_Y33_N0
\SLCDC|U2|count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|count[0]~2_combout\ = !\SLCDC|U2|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SLCDC|U2|Add0~0_combout\,
	combout => \SLCDC|U2|count[0]~2_combout\);

-- Location: FF_X47_Y33_N1
\SLCDC|U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(0));

-- Location: LCCOMB_X46_Y34_N2
\SLCDC|U2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~2_combout\ = (\SLCDC|U2|count\(1) & (!\SLCDC|U2|Add0~1\)) # (!\SLCDC|U2|count\(1) & ((\SLCDC|U2|Add0~1\) # (GND)))
-- \SLCDC|U2|Add0~3\ = CARRY((!\SLCDC|U2|Add0~1\) # (!\SLCDC|U2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(1),
	datad => VCC,
	cin => \SLCDC|U2|Add0~1\,
	combout => \SLCDC|U2|Add0~2_combout\,
	cout => \SLCDC|U2|Add0~3\);

-- Location: FF_X46_Y34_N3
\SLCDC|U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(1));

-- Location: LCCOMB_X46_Y32_N2
\KBD|U3|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~1_cout\ = CARRY((!\SLCDC|U2|count\(0) & \SLCDC|U2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(0),
	datab => \SLCDC|U2|count\(1),
	datad => VCC,
	cout => \KBD|U3|Add0~1_cout\);

-- Location: LCCOMB_X46_Y32_N4
\KBD|U3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~2_combout\ = (\KBD|U3|count\(2) & (!\KBD|U3|Add0~1_cout\)) # (!\KBD|U3|count\(2) & ((\KBD|U3|Add0~1_cout\) # (GND)))
-- \KBD|U3|Add0~3\ = CARRY((!\KBD|U3|Add0~1_cout\) # (!\KBD|U3|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(2),
	datad => VCC,
	cin => \KBD|U3|Add0~1_cout\,
	combout => \KBD|U3|Add0~2_combout\,
	cout => \KBD|U3|Add0~3\);

-- Location: FF_X46_Y32_N5
\KBD|U3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(2));

-- Location: LCCOMB_X46_Y32_N6
\KBD|U3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~4_combout\ = (\KBD|U3|count\(3) & (\KBD|U3|Add0~3\ $ (GND))) # (!\KBD|U3|count\(3) & (!\KBD|U3|Add0~3\ & VCC))
-- \KBD|U3|Add0~5\ = CARRY((\KBD|U3|count\(3) & !\KBD|U3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(3),
	datad => VCC,
	cin => \KBD|U3|Add0~3\,
	combout => \KBD|U3|Add0~4_combout\,
	cout => \KBD|U3|Add0~5\);

-- Location: LCCOMB_X47_Y32_N18
\KBD|U3|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|count~5_combout\ = (!\KBD|U3|Equal0~9_combout\ & \KBD|U3|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|Equal0~9_combout\,
	datac => \KBD|U3|Add0~4_combout\,
	combout => \KBD|U3|count~5_combout\);

-- Location: FF_X47_Y32_N19
\KBD|U3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(3));

-- Location: LCCOMB_X46_Y32_N8
\KBD|U3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~6_combout\ = (\KBD|U3|count\(4) & (!\KBD|U3|Add0~5\)) # (!\KBD|U3|count\(4) & ((\KBD|U3|Add0~5\) # (GND)))
-- \KBD|U3|Add0~7\ = CARRY((!\KBD|U3|Add0~5\) # (!\KBD|U3|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(4),
	datad => VCC,
	cin => \KBD|U3|Add0~5\,
	combout => \KBD|U3|Add0~6_combout\,
	cout => \KBD|U3|Add0~7\);

-- Location: FF_X46_Y32_N9
\KBD|U3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(4));

-- Location: LCCOMB_X46_Y32_N10
\KBD|U3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~8_combout\ = (\KBD|U3|count\(5) & (\KBD|U3|Add0~7\ $ (GND))) # (!\KBD|U3|count\(5) & (!\KBD|U3|Add0~7\ & VCC))
-- \KBD|U3|Add0~9\ = CARRY((\KBD|U3|count\(5) & !\KBD|U3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(5),
	datad => VCC,
	cin => \KBD|U3|Add0~7\,
	combout => \KBD|U3|Add0~8_combout\,
	cout => \KBD|U3|Add0~9\);

-- Location: LCCOMB_X47_Y31_N14
\KBD|U3|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|count~4_combout\ = (\KBD|U3|Add0~8_combout\ & !\KBD|U3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|Add0~8_combout\,
	datad => \KBD|U3|Equal0~9_combout\,
	combout => \KBD|U3|count~4_combout\);

-- Location: FF_X47_Y31_N15
\KBD|U3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(5));

-- Location: LCCOMB_X46_Y32_N12
\KBD|U3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~10_combout\ = (\KBD|U3|count\(6) & (!\KBD|U3|Add0~9\)) # (!\KBD|U3|count\(6) & ((\KBD|U3|Add0~9\) # (GND)))
-- \KBD|U3|Add0~11\ = CARRY((!\KBD|U3|Add0~9\) # (!\KBD|U3|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(6),
	datad => VCC,
	cin => \KBD|U3|Add0~9\,
	combout => \KBD|U3|Add0~10_combout\,
	cout => \KBD|U3|Add0~11\);

-- Location: LCCOMB_X47_Y31_N18
\KBD|U3|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|count~3_combout\ = (\KBD|U3|Add0~10_combout\ & !\KBD|U3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KBD|U3|Add0~10_combout\,
	datad => \KBD|U3|Equal0~9_combout\,
	combout => \KBD|U3|count~3_combout\);

-- Location: FF_X47_Y31_N19
\KBD|U3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(6));

-- Location: LCCOMB_X46_Y32_N14
\KBD|U3|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~12_combout\ = (\KBD|U3|count\(7) & (\KBD|U3|Add0~11\ $ (GND))) # (!\KBD|U3|count\(7) & (!\KBD|U3|Add0~11\ & VCC))
-- \KBD|U3|Add0~13\ = CARRY((\KBD|U3|count\(7) & !\KBD|U3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(7),
	datad => VCC,
	cin => \KBD|U3|Add0~11\,
	combout => \KBD|U3|Add0~12_combout\,
	cout => \KBD|U3|Add0~13\);

-- Location: LCCOMB_X47_Y31_N16
\KBD|U3|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|count~2_combout\ = (\KBD|U3|Add0~12_combout\ & !\KBD|U3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KBD|U3|Add0~12_combout\,
	datad => \KBD|U3|Equal0~9_combout\,
	combout => \KBD|U3|count~2_combout\);

-- Location: FF_X47_Y31_N17
\KBD|U3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(7));

-- Location: LCCOMB_X46_Y32_N16
\KBD|U3|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~14_combout\ = (\KBD|U3|count\(8) & (!\KBD|U3|Add0~13\)) # (!\KBD|U3|count\(8) & ((\KBD|U3|Add0~13\) # (GND)))
-- \KBD|U3|Add0~15\ = CARRY((!\KBD|U3|Add0~13\) # (!\KBD|U3|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(8),
	datad => VCC,
	cin => \KBD|U3|Add0~13\,
	combout => \KBD|U3|Add0~14_combout\,
	cout => \KBD|U3|Add0~15\);

-- Location: LCCOMB_X47_Y31_N22
\KBD|U3|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|count~1_combout\ = (\KBD|U3|Add0~14_combout\ & !\KBD|U3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|Add0~14_combout\,
	datad => \KBD|U3|Equal0~9_combout\,
	combout => \KBD|U3|count~1_combout\);

-- Location: FF_X47_Y31_N23
\KBD|U3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(8));

-- Location: LCCOMB_X46_Y32_N18
\KBD|U3|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~16_combout\ = (\KBD|U3|count\(9) & (\KBD|U3|Add0~15\ $ (GND))) # (!\KBD|U3|count\(9) & (!\KBD|U3|Add0~15\ & VCC))
-- \KBD|U3|Add0~17\ = CARRY((\KBD|U3|count\(9) & !\KBD|U3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(9),
	datad => VCC,
	cin => \KBD|U3|Add0~15\,
	combout => \KBD|U3|Add0~16_combout\,
	cout => \KBD|U3|Add0~17\);

-- Location: LCCOMB_X47_Y31_N12
\KBD|U3|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|count~0_combout\ = (\KBD|U3|Add0~16_combout\ & !\KBD|U3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|Add0~16_combout\,
	datad => \KBD|U3|Equal0~9_combout\,
	combout => \KBD|U3|count~0_combout\);

-- Location: FF_X47_Y31_N13
\KBD|U3|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(9));

-- Location: LCCOMB_X46_Y32_N20
\KBD|U3|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~18_combout\ = (\KBD|U3|count\(10) & (!\KBD|U3|Add0~17\)) # (!\KBD|U3|count\(10) & ((\KBD|U3|Add0~17\) # (GND)))
-- \KBD|U3|Add0~19\ = CARRY((!\KBD|U3|Add0~17\) # (!\KBD|U3|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(10),
	datad => VCC,
	cin => \KBD|U3|Add0~17\,
	combout => \KBD|U3|Add0~18_combout\,
	cout => \KBD|U3|Add0~19\);

-- Location: FF_X46_Y32_N21
\KBD|U3|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(10));

-- Location: LCCOMB_X46_Y32_N22
\KBD|U3|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~20_combout\ = (\KBD|U3|count\(11) & (\KBD|U3|Add0~19\ $ (GND))) # (!\KBD|U3|count\(11) & (!\KBD|U3|Add0~19\ & VCC))
-- \KBD|U3|Add0~21\ = CARRY((\KBD|U3|count\(11) & !\KBD|U3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(11),
	datad => VCC,
	cin => \KBD|U3|Add0~19\,
	combout => \KBD|U3|Add0~20_combout\,
	cout => \KBD|U3|Add0~21\);

-- Location: FF_X46_Y32_N23
\KBD|U3|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(11));

-- Location: LCCOMB_X46_Y32_N24
\KBD|U3|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~22_combout\ = (\KBD|U3|count\(12) & (!\KBD|U3|Add0~21\)) # (!\KBD|U3|count\(12) & ((\KBD|U3|Add0~21\) # (GND)))
-- \KBD|U3|Add0~23\ = CARRY((!\KBD|U3|Add0~21\) # (!\KBD|U3|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(12),
	datad => VCC,
	cin => \KBD|U3|Add0~21\,
	combout => \KBD|U3|Add0~22_combout\,
	cout => \KBD|U3|Add0~23\);

-- Location: FF_X46_Y32_N25
\KBD|U3|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(12));

-- Location: LCCOMB_X46_Y32_N26
\KBD|U3|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~24_combout\ = (\KBD|U3|count\(13) & (\KBD|U3|Add0~23\ $ (GND))) # (!\KBD|U3|count\(13) & (!\KBD|U3|Add0~23\ & VCC))
-- \KBD|U3|Add0~25\ = CARRY((\KBD|U3|count\(13) & !\KBD|U3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(13),
	datad => VCC,
	cin => \KBD|U3|Add0~23\,
	combout => \KBD|U3|Add0~24_combout\,
	cout => \KBD|U3|Add0~25\);

-- Location: FF_X46_Y32_N27
\KBD|U3|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(13));

-- Location: LCCOMB_X46_Y32_N28
\KBD|U3|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~26_combout\ = (\KBD|U3|count\(14) & (!\KBD|U3|Add0~25\)) # (!\KBD|U3|count\(14) & ((\KBD|U3|Add0~25\) # (GND)))
-- \KBD|U3|Add0~27\ = CARRY((!\KBD|U3|Add0~25\) # (!\KBD|U3|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(14),
	datad => VCC,
	cin => \KBD|U3|Add0~25\,
	combout => \KBD|U3|Add0~26_combout\,
	cout => \KBD|U3|Add0~27\);

-- Location: FF_X46_Y32_N29
\KBD|U3|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(14));

-- Location: LCCOMB_X46_Y32_N30
\KBD|U3|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~28_combout\ = (\KBD|U3|count\(15) & (\KBD|U3|Add0~27\ $ (GND))) # (!\KBD|U3|count\(15) & (!\KBD|U3|Add0~27\ & VCC))
-- \KBD|U3|Add0~29\ = CARRY((\KBD|U3|count\(15) & !\KBD|U3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(15),
	datad => VCC,
	cin => \KBD|U3|Add0~27\,
	combout => \KBD|U3|Add0~28_combout\,
	cout => \KBD|U3|Add0~29\);

-- Location: FF_X46_Y32_N31
\KBD|U3|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(15));

-- Location: LCCOMB_X46_Y31_N0
\KBD|U3|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~30_combout\ = (\KBD|U3|count\(16) & (!\KBD|U3|Add0~29\)) # (!\KBD|U3|count\(16) & ((\KBD|U3|Add0~29\) # (GND)))
-- \KBD|U3|Add0~31\ = CARRY((!\KBD|U3|Add0~29\) # (!\KBD|U3|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(16),
	datad => VCC,
	cin => \KBD|U3|Add0~29\,
	combout => \KBD|U3|Add0~30_combout\,
	cout => \KBD|U3|Add0~31\);

-- Location: FF_X46_Y31_N1
\KBD|U3|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(16));

-- Location: LCCOMB_X46_Y31_N2
\KBD|U3|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~32_combout\ = (\KBD|U3|count\(17) & (\KBD|U3|Add0~31\ $ (GND))) # (!\KBD|U3|count\(17) & (!\KBD|U3|Add0~31\ & VCC))
-- \KBD|U3|Add0~33\ = CARRY((\KBD|U3|count\(17) & !\KBD|U3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(17),
	datad => VCC,
	cin => \KBD|U3|Add0~31\,
	combout => \KBD|U3|Add0~32_combout\,
	cout => \KBD|U3|Add0~33\);

-- Location: FF_X46_Y31_N3
\KBD|U3|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(17));

-- Location: LCCOMB_X46_Y31_N4
\KBD|U3|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~34_combout\ = (\KBD|U3|count\(18) & (!\KBD|U3|Add0~33\)) # (!\KBD|U3|count\(18) & ((\KBD|U3|Add0~33\) # (GND)))
-- \KBD|U3|Add0~35\ = CARRY((!\KBD|U3|Add0~33\) # (!\KBD|U3|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(18),
	datad => VCC,
	cin => \KBD|U3|Add0~33\,
	combout => \KBD|U3|Add0~34_combout\,
	cout => \KBD|U3|Add0~35\);

-- Location: FF_X46_Y31_N5
\KBD|U3|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(18));

-- Location: LCCOMB_X46_Y31_N6
\KBD|U3|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~36_combout\ = (\KBD|U3|count\(19) & (\KBD|U3|Add0~35\ $ (GND))) # (!\KBD|U3|count\(19) & (!\KBD|U3|Add0~35\ & VCC))
-- \KBD|U3|Add0~37\ = CARRY((\KBD|U3|count\(19) & !\KBD|U3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(19),
	datad => VCC,
	cin => \KBD|U3|Add0~35\,
	combout => \KBD|U3|Add0~36_combout\,
	cout => \KBD|U3|Add0~37\);

-- Location: FF_X46_Y31_N7
\KBD|U3|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(19));

-- Location: LCCOMB_X46_Y31_N8
\KBD|U3|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~38_combout\ = (\KBD|U3|count\(20) & (!\KBD|U3|Add0~37\)) # (!\KBD|U3|count\(20) & ((\KBD|U3|Add0~37\) # (GND)))
-- \KBD|U3|Add0~39\ = CARRY((!\KBD|U3|Add0~37\) # (!\KBD|U3|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(20),
	datad => VCC,
	cin => \KBD|U3|Add0~37\,
	combout => \KBD|U3|Add0~38_combout\,
	cout => \KBD|U3|Add0~39\);

-- Location: FF_X46_Y31_N9
\KBD|U3|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(20));

-- Location: LCCOMB_X46_Y31_N10
\KBD|U3|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~40_combout\ = (\KBD|U3|count\(21) & (\KBD|U3|Add0~39\ $ (GND))) # (!\KBD|U3|count\(21) & (!\KBD|U3|Add0~39\ & VCC))
-- \KBD|U3|Add0~41\ = CARRY((\KBD|U3|count\(21) & !\KBD|U3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(21),
	datad => VCC,
	cin => \KBD|U3|Add0~39\,
	combout => \KBD|U3|Add0~40_combout\,
	cout => \KBD|U3|Add0~41\);

-- Location: FF_X46_Y31_N11
\KBD|U3|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(21));

-- Location: LCCOMB_X46_Y31_N12
\KBD|U3|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~42_combout\ = (\KBD|U3|count\(22) & (!\KBD|U3|Add0~41\)) # (!\KBD|U3|count\(22) & ((\KBD|U3|Add0~41\) # (GND)))
-- \KBD|U3|Add0~43\ = CARRY((!\KBD|U3|Add0~41\) # (!\KBD|U3|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(22),
	datad => VCC,
	cin => \KBD|U3|Add0~41\,
	combout => \KBD|U3|Add0~42_combout\,
	cout => \KBD|U3|Add0~43\);

-- Location: FF_X46_Y31_N13
\KBD|U3|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(22));

-- Location: LCCOMB_X46_Y31_N14
\KBD|U3|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~44_combout\ = (\KBD|U3|count\(23) & (\KBD|U3|Add0~43\ $ (GND))) # (!\KBD|U3|count\(23) & (!\KBD|U3|Add0~43\ & VCC))
-- \KBD|U3|Add0~45\ = CARRY((\KBD|U3|count\(23) & !\KBD|U3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(23),
	datad => VCC,
	cin => \KBD|U3|Add0~43\,
	combout => \KBD|U3|Add0~44_combout\,
	cout => \KBD|U3|Add0~45\);

-- Location: FF_X46_Y31_N15
\KBD|U3|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(23));

-- Location: LCCOMB_X46_Y31_N16
\KBD|U3|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~46_combout\ = (\KBD|U3|count\(24) & (!\KBD|U3|Add0~45\)) # (!\KBD|U3|count\(24) & ((\KBD|U3|Add0~45\) # (GND)))
-- \KBD|U3|Add0~47\ = CARRY((!\KBD|U3|Add0~45\) # (!\KBD|U3|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(24),
	datad => VCC,
	cin => \KBD|U3|Add0~45\,
	combout => \KBD|U3|Add0~46_combout\,
	cout => \KBD|U3|Add0~47\);

-- Location: FF_X46_Y31_N17
\KBD|U3|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(24));

-- Location: LCCOMB_X46_Y31_N18
\KBD|U3|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~48_combout\ = (\KBD|U3|count\(25) & (\KBD|U3|Add0~47\ $ (GND))) # (!\KBD|U3|count\(25) & (!\KBD|U3|Add0~47\ & VCC))
-- \KBD|U3|Add0~49\ = CARRY((\KBD|U3|count\(25) & !\KBD|U3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(25),
	datad => VCC,
	cin => \KBD|U3|Add0~47\,
	combout => \KBD|U3|Add0~48_combout\,
	cout => \KBD|U3|Add0~49\);

-- Location: FF_X46_Y31_N19
\KBD|U3|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(25));

-- Location: LCCOMB_X47_Y31_N30
\KBD|U3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Equal0~2_combout\ = (!\KBD|U3|count\(23) & (!\KBD|U3|count\(25) & (!\KBD|U3|count\(24) & !\KBD|U3|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(23),
	datab => \KBD|U3|count\(25),
	datac => \KBD|U3|count\(24),
	datad => \KBD|U3|count\(22),
	combout => \KBD|U3|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y31_N0
\KBD|U3|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Equal0~3_combout\ = (!\KBD|U3|count\(21) & (!\KBD|U3|count\(19) & (!\KBD|U3|count\(18) & !\KBD|U3|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(21),
	datab => \KBD|U3|count\(19),
	datac => \KBD|U3|count\(18),
	datad => \KBD|U3|count\(20),
	combout => \KBD|U3|Equal0~3_combout\);

-- Location: LCCOMB_X47_Y31_N10
\KBD|U3|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Equal0~4_combout\ = (!\KBD|U3|count\(17) & (!\KBD|U3|count\(14) & (!\KBD|U3|count\(16) & !\KBD|U3|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(17),
	datab => \KBD|U3|count\(14),
	datac => \KBD|U3|count\(16),
	datad => \KBD|U3|count\(15),
	combout => \KBD|U3|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y32_N0
\KBD|U3|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Equal0~7_combout\ = (!\KBD|U3|count\(4) & (!\KBD|U3|count\(2) & (\KBD|U3|count\(5) & \KBD|U3|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(4),
	datab => \KBD|U3|count\(2),
	datac => \KBD|U3|count\(5),
	datad => \KBD|U3|count\(3),
	combout => \KBD|U3|Equal0~7_combout\);

-- Location: LCCOMB_X47_Y31_N20
\KBD|U3|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Equal0~6_combout\ = (\KBD|U3|count\(9) & (\KBD|U3|count\(7) & (\KBD|U3|count\(8) & \KBD|U3|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(9),
	datab => \KBD|U3|count\(7),
	datac => \KBD|U3|count\(8),
	datad => \KBD|U3|count\(6),
	combout => \KBD|U3|Equal0~6_combout\);

-- Location: LCCOMB_X47_Y32_N8
\KBD|U3|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Equal0~5_combout\ = (!\KBD|U3|count\(12) & (!\KBD|U3|count\(11) & (!\KBD|U3|count\(13) & !\KBD|U3|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(12),
	datab => \KBD|U3|count\(11),
	datac => \KBD|U3|count\(13),
	datad => \KBD|U3|count\(10),
	combout => \KBD|U3|Equal0~5_combout\);

-- Location: LCCOMB_X47_Y31_N8
\KBD|U3|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Equal0~8_combout\ = (\KBD|U3|Equal0~4_combout\ & (\KBD|U3|Equal0~7_combout\ & (\KBD|U3|Equal0~6_combout\ & \KBD|U3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|Equal0~4_combout\,
	datab => \KBD|U3|Equal0~7_combout\,
	datac => \KBD|U3|Equal0~6_combout\,
	datad => \KBD|U3|Equal0~5_combout\,
	combout => \KBD|U3|Equal0~8_combout\);

-- Location: LCCOMB_X46_Y31_N20
\KBD|U3|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~50_combout\ = (\KBD|U3|count\(26) & (!\KBD|U3|Add0~49\)) # (!\KBD|U3|count\(26) & ((\KBD|U3|Add0~49\) # (GND)))
-- \KBD|U3|Add0~51\ = CARRY((!\KBD|U3|Add0~49\) # (!\KBD|U3|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(26),
	datad => VCC,
	cin => \KBD|U3|Add0~49\,
	combout => \KBD|U3|Add0~50_combout\,
	cout => \KBD|U3|Add0~51\);

-- Location: FF_X46_Y31_N21
\KBD|U3|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(26));

-- Location: LCCOMB_X46_Y31_N22
\KBD|U3|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~52_combout\ = (\KBD|U3|count\(27) & (\KBD|U3|Add0~51\ $ (GND))) # (!\KBD|U3|count\(27) & (!\KBD|U3|Add0~51\ & VCC))
-- \KBD|U3|Add0~53\ = CARRY((\KBD|U3|count\(27) & !\KBD|U3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(27),
	datad => VCC,
	cin => \KBD|U3|Add0~51\,
	combout => \KBD|U3|Add0~52_combout\,
	cout => \KBD|U3|Add0~53\);

-- Location: FF_X46_Y31_N23
\KBD|U3|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(27));

-- Location: LCCOMB_X46_Y31_N24
\KBD|U3|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~54_combout\ = (\KBD|U3|count\(28) & (!\KBD|U3|Add0~53\)) # (!\KBD|U3|count\(28) & ((\KBD|U3|Add0~53\) # (GND)))
-- \KBD|U3|Add0~55\ = CARRY((!\KBD|U3|Add0~53\) # (!\KBD|U3|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(28),
	datad => VCC,
	cin => \KBD|U3|Add0~53\,
	combout => \KBD|U3|Add0~54_combout\,
	cout => \KBD|U3|Add0~55\);

-- Location: FF_X46_Y31_N25
\KBD|U3|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(28));

-- Location: LCCOMB_X46_Y31_N26
\KBD|U3|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~56_combout\ = (\KBD|U3|count\(29) & (\KBD|U3|Add0~55\ $ (GND))) # (!\KBD|U3|count\(29) & (!\KBD|U3|Add0~55\ & VCC))
-- \KBD|U3|Add0~57\ = CARRY((\KBD|U3|count\(29) & !\KBD|U3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(29),
	datad => VCC,
	cin => \KBD|U3|Add0~55\,
	combout => \KBD|U3|Add0~56_combout\,
	cout => \KBD|U3|Add0~57\);

-- Location: FF_X46_Y31_N27
\KBD|U3|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(29));

-- Location: LCCOMB_X47_Y31_N26
\KBD|U3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Equal0~0_combout\ = (!\KBD|U3|count\(26) & (!\KBD|U3|count\(28) & (!\KBD|U3|count\(29) & !\KBD|U3|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(26),
	datab => \KBD|U3|count\(28),
	datac => \KBD|U3|count\(29),
	datad => \KBD|U3|count\(27),
	combout => \KBD|U3|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y31_N28
\KBD|U3|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~58_combout\ = (\KBD|U3|count\(30) & (!\KBD|U3|Add0~57\)) # (!\KBD|U3|count\(30) & ((\KBD|U3|Add0~57\) # (GND)))
-- \KBD|U3|Add0~59\ = CARRY((!\KBD|U3|Add0~57\) # (!\KBD|U3|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U3|count\(30),
	datad => VCC,
	cin => \KBD|U3|Add0~57\,
	combout => \KBD|U3|Add0~58_combout\,
	cout => \KBD|U3|Add0~59\);

-- Location: FF_X46_Y31_N29
\KBD|U3|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(30));

-- Location: LCCOMB_X46_Y31_N30
\KBD|U3|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Add0~60_combout\ = \KBD|U3|count\(31) $ (!\KBD|U3|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|count\(31),
	cin => \KBD|U3|Add0~59\,
	combout => \KBD|U3|Add0~60_combout\);

-- Location: FF_X46_Y31_N31
\KBD|U3|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|count\(31));

-- Location: LCCOMB_X47_Y33_N18
\SSC|U2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~0_combout\ = (!\SLCDC|U2|count\(1) & \SLCDC|U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(1),
	datad => \SLCDC|U2|count\(0),
	combout => \SSC|U2|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y31_N28
\KBD|U3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Equal0~1_combout\ = (\KBD|U3|Equal0~0_combout\ & (!\KBD|U3|count\(31) & (!\KBD|U3|count\(30) & \SSC|U2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|Equal0~0_combout\,
	datab => \KBD|U3|count\(31),
	datac => \KBD|U3|count\(30),
	datad => \SSC|U2|Equal0~0_combout\,
	combout => \KBD|U3|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y31_N2
\KBD|U3|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|Equal0~9_combout\ = (\KBD|U3|Equal0~2_combout\ & (\KBD|U3|Equal0~3_combout\ & (\KBD|U3|Equal0~8_combout\ & \KBD|U3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U3|Equal0~2_combout\,
	datab => \KBD|U3|Equal0~3_combout\,
	datac => \KBD|U3|Equal0~8_combout\,
	datad => \KBD|U3|Equal0~1_combout\,
	combout => \KBD|U3|Equal0~9_combout\);

-- Location: LCCOMB_X47_Y31_N24
\KBD|U3|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U3|tmp~0_combout\ = \KBD|U3|tmp~q\ $ (\KBD|U3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KBD|U3|tmp~q\,
	datad => \KBD|U3|Equal0~9_combout\,
	combout => \KBD|U3|tmp~0_combout\);

-- Location: FF_X47_Y31_N25
\KBD|U3|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U3|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U3|tmp~q\);

-- Location: CLKCTRL_G7
\KBD|U3|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KBD|U3|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KBD|U3|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y18_N8
\KBD|U0|U1|CurrentState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U1|CurrentState~0_combout\ = ((!\KBD|U1|U0|CurrentState.state_bit_0~q\ & (!\KBD|U1|U0|CurrentState.state_bit_2~q\ & \KBD|U1|U0|CurrentState.state_bit_1~q\))) # (!\KBD|U0|U1|CurrentState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datab => \KBD|U0|U1|CurrentState~q\,
	datac => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	datad => \KBD|U1|U0|CurrentState.state_bit_1~q\,
	combout => \KBD|U0|U1|CurrentState~0_combout\);

-- Location: IOIBUF_X40_Y0_N22
\KEYPAD_LIN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(3),
	o => \KEYPAD_LIN[3]~input_o\);

-- Location: LCCOMB_X44_Y18_N24
\KBD|U0|U0|U0|count[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U0|U0|count[0]~4_combout\ = \KBD|U0|U0|U0|count\(0) $ (!\KBD|U0|U1|CurrentState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KBD|U0|U0|U0|count\(0),
	datad => \KBD|U0|U1|CurrentState~q\,
	combout => \KBD|U0|U0|U0|count[0]~4_combout\);

-- Location: FF_X44_Y18_N25
\KBD|U0|U0|U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KBD|U3|tmp~clkctrl_outclk\,
	d => \KBD|U0|U0|U0|count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U0|U0|U0|count\(0));

-- Location: LCCOMB_X43_Y18_N12
\KBD|U0|U0|U0|count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U0|U0|count[1]~3_combout\ = \KBD|U0|U0|U0|count\(1) $ (((\KBD|U0|U0|U0|count\(0) & !\KBD|U0|U1|CurrentState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(0),
	datac => \KBD|U0|U0|U0|count\(1),
	datad => \KBD|U0|U1|CurrentState~q\,
	combout => \KBD|U0|U0|U0|count[1]~3_combout\);

-- Location: FF_X43_Y18_N13
\KBD|U0|U0|U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KBD|U3|tmp~clkctrl_outclk\,
	d => \KBD|U0|U0|U0|count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U0|U0|U0|count\(1));

-- Location: IOIBUF_X14_Y0_N1
\KEYPAD_LIN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(0),
	o => \KEYPAD_LIN[0]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\KEYPAD_LIN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(1),
	o => \KEYPAD_LIN[1]~input_o\);

-- Location: LCCOMB_X44_Y18_N4
\KBD|U0|U0|U1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U0|U1|Mux0~0_combout\ = (\KBD|U0|U0|U0|count\(1) & (\KBD|U0|U0|U0|count\(0))) # (!\KBD|U0|U0|U0|count\(1) & ((\KBD|U0|U0|U0|count\(0) & ((\KEYPAD_LIN[1]~input_o\))) # (!\KBD|U0|U0|U0|count\(0) & (\KEYPAD_LIN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(1),
	datab => \KBD|U0|U0|U0|count\(0),
	datac => \KEYPAD_LIN[0]~input_o\,
	datad => \KEYPAD_LIN[1]~input_o\,
	combout => \KBD|U0|U0|U1|Mux0~0_combout\);

-- Location: IOIBUF_X46_Y0_N8
\KEYPAD_LIN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEYPAD_LIN(2),
	o => \KEYPAD_LIN[2]~input_o\);

-- Location: LCCOMB_X44_Y18_N14
\KBD|U0|U0|U1|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U0|U1|Mux0~1_combout\ = (\KBD|U0|U0|U1|Mux0~0_combout\ & ((\KEYPAD_LIN[3]~input_o\) # ((!\KBD|U0|U0|U0|count\(1))))) # (!\KBD|U0|U0|U1|Mux0~0_combout\ & (((\KEYPAD_LIN[2]~input_o\ & \KBD|U0|U0|U0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEYPAD_LIN[3]~input_o\,
	datab => \KBD|U0|U0|U1|Mux0~0_combout\,
	datac => \KEYPAD_LIN[2]~input_o\,
	datad => \KBD|U0|U0|U0|count\(1),
	combout => \KBD|U0|U0|U1|Mux0~1_combout\);

-- Location: LCCOMB_X44_Y18_N18
\KBD|U0|U1|CurrentState~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U1|CurrentState~1_combout\ = (!\KBD|U0|U0|U1|Mux0~1_combout\) # (!\KBD|U0|U1|CurrentState~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U1|CurrentState~0_combout\,
	datac => \KBD|U0|U0|U1|Mux0~1_combout\,
	combout => \KBD|U0|U1|CurrentState~1_combout\);

-- Location: FF_X44_Y18_N19
\KBD|U0|U1|CurrentState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KBD|U3|ALT_INV_tmp~clkctrl_outclk\,
	d => \KBD|U0|U1|CurrentState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U0|U1|CurrentState~q\);

-- Location: LCCOMB_X44_Y18_N12
\KBD|U1|U0|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U0|CurrentState.state_bit_1~0_combout\ = (\KBD|U1|U0|CurrentState.state_bit_1~q\ & (((!\KBD|U0|U1|CurrentState~q\ & !\KBD|U1|U0|CurrentState.state_bit_2~q\)))) # (!\KBD|U1|U0|CurrentState.state_bit_1~q\ & 
-- (!\KBD|U1|U0|CurrentState.state_bit_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_2~0_combout\,
	datab => \KBD|U0|U1|CurrentState~q\,
	datac => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	datad => \KBD|U1|U0|CurrentState.state_bit_1~q\,
	combout => \KBD|U1|U0|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X44_Y19_N10
\KBD|U1|U0|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U0|CurrentState.state_bit_1~1_combout\ = (\KBD|U1|U0|CurrentState.state_bit_0~q\ & (((!\KBD|U1|U0|CurrentState.state_bit_2~q\)))) # (!\KBD|U1|U0|CurrentState.state_bit_0~q\ & (!\KBD|U1|U0|CurrentState.state_bit_1~0_combout\ & 
-- ((\KBD|U1|U0|CurrentState.state_bit_1~q\) # (!\KBD|U1|U0|CurrentState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datab => \KBD|U1|U0|CurrentState.state_bit_1~0_combout\,
	datac => \KBD|U1|U0|CurrentState.state_bit_1~q\,
	datad => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	combout => \KBD|U1|U0|CurrentState.state_bit_1~1_combout\);

-- Location: FF_X44_Y19_N11
\KBD|U1|U0|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U0|CurrentState.state_bit_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U0|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X44_Y18_N10
\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ = (\KBD|U1|U0|CurrentState.state_bit_0~q\ & (!\KBD|U1|U0|CurrentState.state_bit_2~q\ & \KBD|U1|U0|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datac => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	datad => \KBD|U1|U0|CurrentState.state_bit_1~q\,
	combout => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\);

-- Location: LCCOMB_X45_Y19_N24
\KBD|U1|U1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|Equal0~0_combout\ = (\KBD|U1|U1|U2|count\(3) & (!\KBD|U1|U1|U2|count\(2) & (!\KBD|U1|U1|U2|count\(0) & !\KBD|U1|U1|U2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|U2|count\(3),
	datab => \KBD|U1|U1|U2|count\(2),
	datac => \KBD|U1|U1|U2|count\(0),
	datad => \KBD|U1|U1|U2|count\(1),
	combout => \KBD|U1|U1|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y19_N30
\KBD|U1|U1|U2|count[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U2|count[0]~11_combout\ = \KBD|U1|U1|U2|count\(0) $ (((\KBD|U1|U1|getCE~0_combout\) # ((\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & !\KBD|U1|U1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|getCE~0_combout\,
	datab => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datac => \KBD|U1|U1|U2|count\(0),
	datad => \KBD|U1|U1|Equal0~0_combout\,
	combout => \KBD|U1|U1|U2|count[0]~11_combout\);

-- Location: FF_X45_Y19_N31
\KBD|U1|U1|U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U1|U2|count[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U1|U2|count\(0));

-- Location: LCCOMB_X45_Y19_N0
\KBD|U1|U1|U2|count[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U2|count[1]~4_cout\ = CARRY(\KBD|U1|U1|U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|U2|count\(0),
	datad => VCC,
	cout => \KBD|U1|U1|U2|count[1]~4_cout\);

-- Location: LCCOMB_X45_Y19_N2
\KBD|U1|U1|U2|count[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U2|count[1]~5_combout\ = (\KBD|U1|U1|getCE~0_combout\ & ((\KBD|U1|U1|U2|count\(1) & (\KBD|U1|U1|U2|count[1]~4_cout\ & VCC)) # (!\KBD|U1|U1|U2|count\(1) & (!\KBD|U1|U1|U2|count[1]~4_cout\)))) # (!\KBD|U1|U1|getCE~0_combout\ & 
-- ((\KBD|U1|U1|U2|count\(1) & (!\KBD|U1|U1|U2|count[1]~4_cout\)) # (!\KBD|U1|U1|U2|count\(1) & ((\KBD|U1|U1|U2|count[1]~4_cout\) # (GND)))))
-- \KBD|U1|U1|U2|count[1]~6\ = CARRY((\KBD|U1|U1|getCE~0_combout\ & (!\KBD|U1|U1|U2|count\(1) & !\KBD|U1|U1|U2|count[1]~4_cout\)) # (!\KBD|U1|U1|getCE~0_combout\ & ((!\KBD|U1|U1|U2|count[1]~4_cout\) # (!\KBD|U1|U1|U2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|getCE~0_combout\,
	datab => \KBD|U1|U1|U2|count\(1),
	datad => VCC,
	cin => \KBD|U1|U1|U2|count[1]~4_cout\,
	combout => \KBD|U1|U1|U2|count[1]~5_combout\,
	cout => \KBD|U1|U1|U2|count[1]~6\);

-- Location: LCCOMB_X45_Y19_N12
\KBD|U1|U1|sizeCE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|sizeCE~0_combout\ = (\KBD|U1|U0|CurrentState.state_bit_2~q\ & \KBD|U1|U0|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	datad => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	combout => \KBD|U1|U1|sizeCE~0_combout\);

-- Location: LCCOMB_X45_Y19_N14
\KBD|U1|U1|sizeCE\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|sizeCE~combout\ = (\KBD|U1|U1|Equal1~0_combout\ & (!\KBD|U1|U1|Equal0~0_combout\ & (\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\))) # (!\KBD|U1|U1|Equal1~0_combout\ & ((\KBD|U1|U1|sizeCE~0_combout\) # ((!\KBD|U1|U1|Equal0~0_combout\ 
-- & \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|Equal1~0_combout\,
	datab => \KBD|U1|U1|Equal0~0_combout\,
	datac => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datad => \KBD|U1|U1|sizeCE~0_combout\,
	combout => \KBD|U1|U1|sizeCE~combout\);

-- Location: FF_X45_Y19_N3
\KBD|U1|U1|U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U1|U2|count[1]~5_combout\,
	ena => \KBD|U1|U1|sizeCE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U1|U2|count\(1));

-- Location: LCCOMB_X45_Y19_N4
\KBD|U1|U1|U2|count[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U2|count[2]~7_combout\ = ((\KBD|U1|U1|getCE~0_combout\ $ (\KBD|U1|U1|U2|count\(2) $ (!\KBD|U1|U1|U2|count[1]~6\)))) # (GND)
-- \KBD|U1|U1|U2|count[2]~8\ = CARRY((\KBD|U1|U1|getCE~0_combout\ & ((\KBD|U1|U1|U2|count\(2)) # (!\KBD|U1|U1|U2|count[1]~6\))) # (!\KBD|U1|U1|getCE~0_combout\ & (\KBD|U1|U1|U2|count\(2) & !\KBD|U1|U1|U2|count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|getCE~0_combout\,
	datab => \KBD|U1|U1|U2|count\(2),
	datad => VCC,
	cin => \KBD|U1|U1|U2|count[1]~6\,
	combout => \KBD|U1|U1|U2|count[2]~7_combout\,
	cout => \KBD|U1|U1|U2|count[2]~8\);

-- Location: FF_X45_Y19_N5
\KBD|U1|U1|U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U1|U2|count[2]~7_combout\,
	ena => \KBD|U1|U1|sizeCE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U1|U2|count\(2));

-- Location: LCCOMB_X45_Y19_N6
\KBD|U1|U1|U2|count[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U2|count[3]~9_combout\ = \KBD|U1|U1|getCE~0_combout\ $ (\KBD|U1|U1|U2|count[2]~8\ $ (\KBD|U1|U1|U2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|getCE~0_combout\,
	datad => \KBD|U1|U1|U2|count\(3),
	cin => \KBD|U1|U1|U2|count[2]~8\,
	combout => \KBD|U1|U1|U2|count[3]~9_combout\);

-- Location: FF_X45_Y19_N7
\KBD|U1|U1|U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U1|U2|count[3]~9_combout\,
	ena => \KBD|U1|U1|sizeCE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U1|U2|count\(3));

-- Location: LCCOMB_X45_Y19_N10
\KBD|U1|U1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|Equal1~0_combout\ = (!\KBD|U1|U1|U2|count\(3) & (!\KBD|U1|U1|U2|count\(2) & (!\KBD|U1|U1|U2|count\(0) & !\KBD|U1|U1|U2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|U2|count\(3),
	datab => \KBD|U1|U1|U2|count\(2),
	datac => \KBD|U1|U1|U2|count\(0),
	datad => \KBD|U1|U1|U2|count\(1),
	combout => \KBD|U1|U1|Equal1~0_combout\);

-- Location: LCCOMB_X44_Y19_N4
\KBD|U1|U0|CurrentState.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U0|CurrentState.state_bit_2~0_combout\ = (!\KBD|U1|U1|Equal1~0_combout\ & ((\KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\) # ((!\KBD|U2|U1|CurrentState.state_bit_0~q\ & !\KBD|U2|U1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\,
	datab => \KBD|U2|U1|CurrentState.state_bit_0~q\,
	datac => \KBD|U1|U1|Equal1~0_combout\,
	datad => \KBD|U2|U1|CurrentState.state_bit_1~q\,
	combout => \KBD|U1|U0|CurrentState.state_bit_2~0_combout\);

-- Location: LCCOMB_X44_Y19_N20
\KBD|U1|U0|CurrentState.state_bit_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U0|CurrentState.state_bit_2~1_combout\ = (!\KBD|U1|U0|CurrentState.state_bit_0~q\ & ((\KBD|U1|U0|CurrentState.state_bit_2~q\ & ((\KBD|U1|U0|CurrentState.state_bit_1~q\))) # (!\KBD|U1|U0|CurrentState.state_bit_2~q\ & 
-- (\KBD|U1|U0|CurrentState.state_bit_2~0_combout\ & !\KBD|U1|U0|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datab => \KBD|U1|U0|CurrentState.state_bit_2~0_combout\,
	datac => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	datad => \KBD|U1|U0|CurrentState.state_bit_1~q\,
	combout => \KBD|U1|U0|CurrentState.state_bit_2~1_combout\);

-- Location: FF_X44_Y19_N21
\KBD|U1|U0|CurrentState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U0|CurrentState.state_bit_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U0|CurrentState.state_bit_2~q\);

-- Location: LCCOMB_X44_Y19_N30
\KBD|U1|U0|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U0|CurrentState.state_bit_0~0_combout\ = (\KBD|U1|U0|CurrentState.state_bit_0~q\) # ((\KBD|U0|U1|CurrentState~q\ & (!\KBD|U1|U0|CurrentState.state_bit_2~0_combout\ & !\KBD|U1|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U1|CurrentState~q\,
	datab => \KBD|U1|U0|CurrentState.state_bit_2~0_combout\,
	datac => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datad => \KBD|U1|U1|Equal0~0_combout\,
	combout => \KBD|U1|U0|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X44_Y19_N8
\KBD|U1|U0|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U0|CurrentState.state_bit_0~2_combout\ = (\KBD|U1|U0|CurrentState.state_bit_2~q\ & (\KBD|U1|U0|CurrentState.state_bit_0~1_combout\ & ((\KBD|U1|U0|CurrentState.state_bit_1~q\)))) # (!\KBD|U1|U0|CurrentState.state_bit_2~q\ & 
-- (((\KBD|U1|U0|CurrentState.state_bit_0~0_combout\ & !\KBD|U1|U0|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~1_combout\,
	datab => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	datac => \KBD|U1|U0|CurrentState.state_bit_0~0_combout\,
	datad => \KBD|U1|U0|CurrentState.state_bit_1~q\,
	combout => \KBD|U1|U0|CurrentState.state_bit_0~2_combout\);

-- Location: FF_X44_Y19_N9
\KBD|U1|U0|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U0|CurrentState.state_bit_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U0|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X44_Y19_N18
\KBD|U2|U1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U2|U1|CurrentState.state_bit_0~0_combout\ = (!\KBD|U1|U0|CurrentState.state_bit_0~q\ & (!\KBD|U2|U1|CurrentState.state_bit_0~q\ & (!\KBD|U2|U1|CurrentState.state_bit_1~q\ & \KBD|U1|U0|CurrentState.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datab => \KBD|U2|U1|CurrentState.state_bit_0~q\,
	datac => \KBD|U2|U1|CurrentState.state_bit_1~q\,
	datad => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	combout => \KBD|U2|U1|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X44_Y19_N28
\KBD|U2|U1|CurrentState.STATE_SEND_WAIT_STAGE1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U2|U1|CurrentState.STATE_SEND_WAIT_STAGE1~0_combout\ = (\KBD|U2|U1|CurrentState.state_bit_1~q\ & \KBD|U2|U1|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U2|U1|CurrentState.state_bit_1~q\,
	datad => \KBD|U2|U1|CurrentState.state_bit_0~q\,
	combout => \KBD|U2|U1|CurrentState.STATE_SEND_WAIT_STAGE1~0_combout\);

-- Location: LCCOMB_X44_Y19_N24
\KBD|U2|U1|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U2|U1|CurrentState.state_bit_0~1_combout\ = (\KBD|U2|U1|CurrentState.state_bit_0~0_combout\) # ((\KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\) # 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & 
-- \KBD|U2|U1|CurrentState.STATE_SEND_WAIT_STAGE1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datab => \KBD|U2|U1|CurrentState.state_bit_0~0_combout\,
	datac => \KBD|U2|U1|CurrentState.STATE_SEND_WAIT_STAGE1~0_combout\,
	datad => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\,
	combout => \KBD|U2|U1|CurrentState.state_bit_0~1_combout\);

-- Location: FF_X44_Y19_N25
\KBD|U2|U1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U2|U1|CurrentState.state_bit_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U2|U1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X44_Y19_N2
\KBD|U2|U1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U2|U1|CurrentState.state_bit_1~0_combout\ = (\KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\) # ((\KBD|U2|U1|CurrentState.state_bit_1~q\ & 
-- ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\) # (\KBD|U2|U1|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datab => \KBD|U2|U1|CurrentState.state_bit_0~q\,
	datac => \KBD|U2|U1|CurrentState.state_bit_1~q\,
	datad => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\,
	combout => \KBD|U2|U1|CurrentState.state_bit_1~0_combout\);

-- Location: FF_X44_Y19_N3
\KBD|U2|U1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U2|U1|CurrentState.state_bit_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U2|U1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X44_Y19_N26
\KBD|U2|U1|CurrentState.STATE_RECEIVING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\ = LCELL((!\KBD|U2|U1|CurrentState.state_bit_1~q\ & \KBD|U2|U1|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U2|U1|CurrentState.state_bit_1~q\,
	datad => \KBD|U2|U1|CurrentState.state_bit_0~q\,
	combout => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0_combout\);

-- Location: CLKCTRL_G18
\KBD|U2|U1|CurrentState.STATE_RECEIVING~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0clkctrl_outclk\);

-- Location: LCCOMB_X45_Y19_N16
\KBD|U1|U1|U1|count[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U1|count[0]~0_combout\ = \KBD|U1|U1|U1|count\(0) $ (((\KBD|U1|U0|CurrentState.state_bit_0~q\ & (\KBD|U1|U0|CurrentState.state_bit_2~q\ & !\KBD|U1|U1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datab => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	datac => \KBD|U1|U1|U1|count\(0),
	datad => \KBD|U1|U1|Equal1~0_combout\,
	combout => \KBD|U1|U1|U1|count[0]~0_combout\);

-- Location: FF_X45_Y19_N17
\KBD|U1|U1|U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U1|U1|count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U1|U1|count\(0));

-- Location: LCCOMB_X45_Y19_N22
\KBD|U1|U1|U1|count[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U1|count[1]~1_combout\ = \KBD|U1|U1|U1|count\(1) $ (((\KBD|U1|U1|getCE~0_combout\ & \KBD|U1|U1|U1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|getCE~0_combout\,
	datac => \KBD|U1|U1|U1|count\(1),
	datad => \KBD|U1|U1|U1|count\(0),
	combout => \KBD|U1|U1|U1|count[1]~1_combout\);

-- Location: FF_X45_Y19_N23
\KBD|U1|U1|U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U1|U1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U1|U1|count\(1));

-- Location: LCCOMB_X45_Y19_N26
\KBD|U1|U1|U1|count[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U1|count[2]~2_combout\ = \KBD|U1|U1|U1|count\(2) $ (((\KBD|U1|U1|getCE~0_combout\ & (\KBD|U1|U1|U1|count\(0) & \KBD|U1|U1|U1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|getCE~0_combout\,
	datab => \KBD|U1|U1|U1|count\(0),
	datac => \KBD|U1|U1|U1|count\(2),
	datad => \KBD|U1|U1|U1|count\(1),
	combout => \KBD|U1|U1|U1|count[2]~2_combout\);

-- Location: FF_X45_Y19_N27
\KBD|U1|U1|U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U1|U1|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U1|U1|count\(2));

-- Location: LCCOMB_X44_Y19_N6
\KBD|U1|U1|U0|count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U0|count[0]~2_combout\ = \KBD|U1|U1|U0|count\(0) $ (((\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & !\KBD|U1|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datac => \KBD|U1|U1|U0|count\(0),
	datad => \KBD|U1|U1|Equal0~0_combout\,
	combout => \KBD|U1|U1|U0|count[0]~2_combout\);

-- Location: FF_X44_Y19_N7
\KBD|U1|U1|U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U1|U0|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U1|U0|count\(0));

-- Location: LCCOMB_X44_Y19_N14
\KBD|U1|U1|U0|count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U0|count[1]~3_combout\ = \KBD|U1|U1|U0|count\(1) $ (((\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & (!\KBD|U1|U1|Equal0~0_combout\ & \KBD|U1|U1|U0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datab => \KBD|U1|U1|Equal0~0_combout\,
	datac => \KBD|U1|U1|U0|count\(1),
	datad => \KBD|U1|U1|U0|count\(0),
	combout => \KBD|U1|U1|U0|count[1]~3_combout\);

-- Location: FF_X44_Y19_N15
\KBD|U1|U1|U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U1|U0|count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U1|U0|count\(1));

-- Location: LCCOMB_X44_Y19_N12
\KBD|U1|U1|U0|count[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U0|count[2]~5_combout\ = ((\KBD|U1|U0|CurrentState.state_bit_2~q\) # ((!\KBD|U1|U0|CurrentState.state_bit_1~q\) # (!\KBD|U1|U1|U0|count\(1)))) # (!\KBD|U1|U0|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datab => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	datac => \KBD|U1|U1|U0|count\(1),
	datad => \KBD|U1|U0|CurrentState.state_bit_1~q\,
	combout => \KBD|U1|U1|U0|count[2]~5_combout\);

-- Location: LCCOMB_X45_Y19_N8
\KBD|U1|U1|U0|count[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|U0|count[2]~4_combout\ = \KBD|U1|U1|U0|count\(2) $ (((!\KBD|U1|U1|U0|count[2]~5_combout\ & (\KBD|U1|U1|U0|count\(0) & !\KBD|U1|U1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|U0|count[2]~5_combout\,
	datab => \KBD|U1|U1|U0|count\(0),
	datac => \KBD|U1|U1|U0|count\(2),
	datad => \KBD|U1|U1|Equal0~0_combout\,
	combout => \KBD|U1|U1|U0|count[2]~4_combout\);

-- Location: FF_X45_Y19_N9
\KBD|U1|U1|U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \KBD|U1|U1|U0|count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U1|U1|U0|count\(2));

-- Location: LCCOMB_X45_Y19_N18
\KBD|U1|U0|selPG\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U0|selPG~combout\ = (\KBD|U1|U0|CurrentState.state_bit_0~q\ & ((!\KBD|U1|U0|CurrentState.state_bit_1~q\) # (!\KBD|U1|U0|CurrentState.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.state_bit_0~q\,
	datab => \KBD|U1|U0|CurrentState.state_bit_2~q\,
	datad => \KBD|U1|U0|CurrentState.state_bit_1~q\,
	combout => \KBD|U1|U0|selPG~combout\);

-- Location: LCCOMB_X45_Y19_N20
\KBD|U1|U1|A[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|A[2]~2_combout\ = (\KBD|U1|U0|selPG~combout\ & ((\KBD|U1|U1|U0|count\(2)))) # (!\KBD|U1|U0|selPG~combout\ & (\KBD|U1|U1|U1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|U1|count\(2),
	datac => \KBD|U1|U1|U0|count\(2),
	datad => \KBD|U1|U0|selPG~combout\,
	combout => \KBD|U1|U1|A[2]~2_combout\);

-- Location: LCCOMB_X44_Y19_N16
\KBD|U1|U1|A[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|A[1]~1_combout\ = (\KBD|U1|U0|selPG~combout\ & (\KBD|U1|U1|U0|count\(1))) # (!\KBD|U1|U0|selPG~combout\ & ((\KBD|U1|U1|U1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U1|U0|selPG~combout\,
	datac => \KBD|U1|U1|U0|count\(1),
	datad => \KBD|U1|U1|U1|count\(1),
	combout => \KBD|U1|U1|A[1]~1_combout\);

-- Location: LCCOMB_X45_Y19_N28
\KBD|U1|U1|A[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U1|A[0]~0_combout\ = (\KBD|U1|U0|selPG~combout\ & ((\KBD|U1|U1|U0|count\(0)))) # (!\KBD|U1|U0|selPG~combout\ & (\KBD|U1|U1|U1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U1|U1|U1|count\(0),
	datac => \KBD|U1|U1|U0|count\(0),
	datad => \KBD|U1|U0|selPG~combout\,
	combout => \KBD|U1|U1|A[0]~0_combout\);

-- Location: LCCOMB_X45_Y20_N22
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & (!\KBD|U1|U1|A[2]~2_combout\ & (!\KBD|U1|U1|A[1]~1_combout\ & !\KBD|U1|U1|A[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datab => \KBD|U1|U1|A[2]~2_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G8
\rtl~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X45_Y20_N6
\KBD|U1|U2|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(0))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\KBD|U1|U2|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(0),
	datac => \rtl~2clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~0_combout\,
	combout => \KBD|U1|U2|ram~0_combout\);

-- Location: LCCOMB_X45_Y20_N4
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & (!\KBD|U1|U1|A[2]~2_combout\ & (!\KBD|U1|U1|A[1]~1_combout\ & \KBD|U1|U1|A[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datab => \KBD|U1|U1|A[2]~2_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G17
\rtl~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X44_Y18_N16
\KBD|U1|U2|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(0))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\KBD|U1|U2|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(0),
	datac => \rtl~1clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~4_combout\,
	combout => \KBD|U1|U2|ram~4_combout\);

-- Location: LCCOMB_X45_Y20_N30
\KBD|U1|U2|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~34_combout\ = (\KBD|U1|U1|A[1]~1_combout\ & (((\KBD|U1|U1|A[0]~0_combout\)))) # (!\KBD|U1|U1|A[1]~1_combout\ & ((\KBD|U1|U1|A[0]~0_combout\ & ((\KBD|U1|U2|ram~4_combout\))) # (!\KBD|U1|U1|A[0]~0_combout\ & (\KBD|U1|U2|ram~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~0_combout\,
	datab => \KBD|U1|U2|ram~4_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \KBD|U1|U2|ram~34_combout\);

-- Location: LCCOMB_X45_Y20_N18
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & (!\KBD|U1|U1|A[2]~2_combout\ & (\KBD|U1|U1|A[1]~1_combout\ & !\KBD|U1|U1|A[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datab => \KBD|U1|U1|A[2]~2_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G2
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X45_Y20_N20
\KBD|U1|U2|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(0))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\KBD|U1|U2|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0clkctrl_outclk\,
	datab => \KBD|U0|U0|U0|count\(0),
	datad => \KBD|U1|U2|ram~8_combout\,
	combout => \KBD|U1|U2|ram~8_combout\);

-- Location: LCCOMB_X45_Y20_N16
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & (!\KBD|U1|U1|A[2]~2_combout\ & (\KBD|U1|U1|A[1]~1_combout\ & \KBD|U1|U1|A[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datab => \KBD|U1|U1|A[2]~2_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G1
\rtl~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X44_Y18_N26
\KBD|U1|U2|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(0))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\KBD|U1|U2|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(0),
	datac => \KBD|U1|U2|ram~12_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \KBD|U1|U2|ram~12_combout\);

-- Location: LCCOMB_X45_Y20_N8
\KBD|U1|U2|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~35_combout\ = (\KBD|U1|U2|ram~34_combout\ & (((\KBD|U1|U2|ram~12_combout\) # (!\KBD|U1|U1|A[1]~1_combout\)))) # (!\KBD|U1|U2|ram~34_combout\ & (\KBD|U1|U2|ram~8_combout\ & (\KBD|U1|U1|A[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~34_combout\,
	datab => \KBD|U1|U2|ram~8_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U2|ram~12_combout\,
	combout => \KBD|U1|U2|ram~35_combout\);

-- Location: LCCOMB_X45_Y20_N26
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & (\KBD|U1|U1|A[2]~2_combout\ & (!\KBD|U1|U1|A[1]~1_combout\ & \KBD|U1|U1|A[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datab => \KBD|U1|U1|A[2]~2_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G0
\rtl~4clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X46_Y20_N24
\KBD|U1|U2|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(0))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\KBD|U1|U2|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(0),
	datac => \rtl~4clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~20_combout\,
	combout => \KBD|U1|U2|ram~20_combout\);

-- Location: LCCOMB_X45_Y20_N24
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & (\KBD|U1|U1|A[2]~2_combout\ & (\KBD|U1|U1|A[1]~1_combout\ & \KBD|U1|U1|A[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datab => \KBD|U1|U1|A[2]~2_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G4
\rtl~7clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~7clkctrl_outclk\);

-- Location: LCCOMB_X45_Y20_N2
\KBD|U1|U2|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(0))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\KBD|U1|U2|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(0),
	datac => \rtl~7clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~28_combout\,
	combout => \KBD|U1|U2|ram~28_combout\);

-- Location: LCCOMB_X45_Y20_N28
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & (\KBD|U1|U1|A[2]~2_combout\ & (\KBD|U1|U1|A[1]~1_combout\ & !\KBD|U1|U1|A[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datab => \KBD|U1|U1|A[2]~2_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G9
\rtl~5clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~5clkctrl_outclk\);

-- Location: LCCOMB_X44_Y18_N6
\KBD|U1|U2|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(0))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\KBD|U1|U2|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(0),
	datac => \rtl~5clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~24_combout\,
	combout => \KBD|U1|U2|ram~24_combout\);

-- Location: LCCOMB_X45_Y20_N14
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (\KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\ & (\KBD|U1|U1|A[2]~2_combout\ & (!\KBD|U1|U1|A[1]~1_combout\ & !\KBD|U1|U1|A[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U0|CurrentState.STATE_STORING_STAGE2~0_combout\,
	datab => \KBD|U1|U1|A[2]~2_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G3
\rtl~6clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X42_Y20_N0
\KBD|U1|U2|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(0))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\KBD|U1|U2|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(0),
	datac => \rtl~6clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~16_combout\,
	combout => \KBD|U1|U2|ram~16_combout\);

-- Location: LCCOMB_X45_Y20_N10
\KBD|U1|U2|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~32_combout\ = (\KBD|U1|U1|A[1]~1_combout\ & ((\KBD|U1|U2|ram~24_combout\) # ((\KBD|U1|U1|A[0]~0_combout\)))) # (!\KBD|U1|U1|A[1]~1_combout\ & (((\KBD|U1|U2|ram~16_combout\ & !\KBD|U1|U1|A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~24_combout\,
	datab => \KBD|U1|U1|A[1]~1_combout\,
	datac => \KBD|U1|U2|ram~16_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \KBD|U1|U2|ram~32_combout\);

-- Location: LCCOMB_X45_Y20_N12
\KBD|U1|U2|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~33_combout\ = (\KBD|U1|U1|A[0]~0_combout\ & ((\KBD|U1|U2|ram~32_combout\ & ((\KBD|U1|U2|ram~28_combout\))) # (!\KBD|U1|U2|ram~32_combout\ & (\KBD|U1|U2|ram~20_combout\)))) # (!\KBD|U1|U1|A[0]~0_combout\ & (((\KBD|U1|U2|ram~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|A[0]~0_combout\,
	datab => \KBD|U1|U2|ram~20_combout\,
	datac => \KBD|U1|U2|ram~28_combout\,
	datad => \KBD|U1|U2|ram~32_combout\,
	combout => \KBD|U1|U2|ram~33_combout\);

-- Location: LCCOMB_X45_Y20_N0
\KBD|U1|U2|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~36_combout\ = (\KBD|U1|U1|A[2]~2_combout\ & ((\KBD|U1|U2|ram~33_combout\))) # (!\KBD|U1|U1|A[2]~2_combout\ & (\KBD|U1|U2|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U1|U1|A[2]~2_combout\,
	datac => \KBD|U1|U2|ram~35_combout\,
	datad => \KBD|U1|U2|ram~33_combout\,
	combout => \KBD|U1|U2|ram~36_combout\);

-- Location: FF_X45_Y20_N1
\KBD|U2|U0|buff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0clkctrl_outclk\,
	d => \KBD|U1|U2|ram~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U2|U0|buff\(0));

-- Location: LCCOMB_X42_Y19_N12
\KBD|U1|U2|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(1))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\KBD|U1|U2|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(1),
	datac => \rtl~2clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~1_combout\,
	combout => \KBD|U1|U2|ram~1_combout\);

-- Location: LCCOMB_X44_Y18_N22
\KBD|U1|U2|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(1))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\KBD|U1|U2|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(1),
	datac => \KBD|U1|U2|ram~13_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \KBD|U1|U2|ram~13_combout\);

-- Location: LCCOMB_X43_Y18_N0
\KBD|U1|U2|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(1))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\KBD|U1|U2|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(1),
	datac => \rtl~1clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~5_combout\,
	combout => \KBD|U1|U2|ram~5_combout\);

-- Location: LCCOMB_X43_Y18_N4
\KBD|U1|U2|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~39_combout\ = (\KBD|U1|U1|A[0]~0_combout\ & ((\KBD|U1|U1|A[1]~1_combout\ & (\KBD|U1|U2|ram~13_combout\)) # (!\KBD|U1|U1|A[1]~1_combout\ & ((\KBD|U1|U2|ram~5_combout\))))) # (!\KBD|U1|U1|A[0]~0_combout\ & (((\KBD|U1|U1|A[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U1|A[0]~0_combout\,
	datab => \KBD|U1|U2|ram~13_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U2|ram~5_combout\,
	combout => \KBD|U1|U2|ram~39_combout\);

-- Location: LCCOMB_X41_Y19_N0
\KBD|U1|U2|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(1))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\KBD|U1|U2|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(1),
	datac => \rtl~0clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~9_combout\,
	combout => \KBD|U1|U2|ram~9_combout\);

-- Location: LCCOMB_X42_Y19_N10
\KBD|U1|U2|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~40_combout\ = (\KBD|U1|U2|ram~39_combout\ & (((\KBD|U1|U2|ram~9_combout\) # (\KBD|U1|U1|A[0]~0_combout\)))) # (!\KBD|U1|U2|ram~39_combout\ & (\KBD|U1|U2|ram~1_combout\ & ((!\KBD|U1|U1|A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~1_combout\,
	datab => \KBD|U1|U2|ram~39_combout\,
	datac => \KBD|U1|U2|ram~9_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \KBD|U1|U2|ram~40_combout\);

-- Location: LCCOMB_X43_Y18_N6
\KBD|U1|U2|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(1))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\KBD|U1|U2|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7clkctrl_outclk\,
	datac => \KBD|U0|U0|U0|count\(1),
	datad => \KBD|U1|U2|ram~29_combout\,
	combout => \KBD|U1|U2|ram~29_combout\);

-- Location: LCCOMB_X44_Y18_N20
\KBD|U1|U2|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(1))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\KBD|U1|U2|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(1),
	datac => \rtl~5clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~25_combout\,
	combout => \KBD|U1|U2|ram~25_combout\);

-- Location: LCCOMB_X43_Y19_N16
\KBD|U1|U2|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(1))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\KBD|U1|U2|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(1),
	datac => \rtl~6clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~17_combout\,
	combout => \KBD|U1|U2|ram~17_combout\);

-- Location: LCCOMB_X43_Y18_N16
\KBD|U1|U2|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~37_combout\ = (\KBD|U1|U1|A[1]~1_combout\ & ((\KBD|U1|U2|ram~25_combout\) # ((\KBD|U1|U1|A[0]~0_combout\)))) # (!\KBD|U1|U1|A[1]~1_combout\ & (((\KBD|U1|U2|ram~17_combout\ & !\KBD|U1|U1|A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~25_combout\,
	datab => \KBD|U1|U1|A[1]~1_combout\,
	datac => \KBD|U1|U2|ram~17_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \KBD|U1|U2|ram~37_combout\);

-- Location: LCCOMB_X43_Y18_N20
\KBD|U1|U2|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(1))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\KBD|U1|U2|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(1),
	datac => \rtl~4clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~21_combout\,
	combout => \KBD|U1|U2|ram~21_combout\);

-- Location: LCCOMB_X43_Y18_N10
\KBD|U1|U2|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~38_combout\ = (\KBD|U1|U2|ram~37_combout\ & ((\KBD|U1|U2|ram~29_combout\) # ((!\KBD|U1|U1|A[0]~0_combout\)))) # (!\KBD|U1|U2|ram~37_combout\ & (((\KBD|U1|U1|A[0]~0_combout\ & \KBD|U1|U2|ram~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~29_combout\,
	datab => \KBD|U1|U2|ram~37_combout\,
	datac => \KBD|U1|U1|A[0]~0_combout\,
	datad => \KBD|U1|U2|ram~21_combout\,
	combout => \KBD|U1|U2|ram~38_combout\);

-- Location: LCCOMB_X42_Y19_N0
\KBD|U1|U2|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~41_combout\ = (\KBD|U1|U1|A[2]~2_combout\ & ((\KBD|U1|U2|ram~38_combout\))) # (!\KBD|U1|U1|A[2]~2_combout\ & (\KBD|U1|U2|ram~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~40_combout\,
	datab => \KBD|U1|U1|A[2]~2_combout\,
	datac => \KBD|U1|U2|ram~38_combout\,
	combout => \KBD|U1|U2|ram~41_combout\);

-- Location: FF_X42_Y19_N1
\KBD|U2|U0|buff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0clkctrl_outclk\,
	d => \KBD|U1|U2|ram~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U2|U0|buff\(1));

-- Location: LCCOMB_X43_Y31_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \KBD|U2|U0|buff\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: FF_X43_Y31_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X43_Y31_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \KBD|U2|U0|buff\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: FF_X43_Y31_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X42_Y31_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X42_Y30_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X42_Y30_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X42_Y30_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X42_Y30_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X43_Y18_N24
\KBD|U0|U0|U0|count[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U0|U0|count[2]~2_combout\ = \KBD|U0|U0|U0|count\(2) $ (((\KBD|U0|U0|U0|count\(0) & (\KBD|U0|U0|U0|count\(1) & !\KBD|U0|U1|CurrentState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(0),
	datab => \KBD|U0|U0|U0|count\(1),
	datac => \KBD|U0|U0|U0|count\(2),
	datad => \KBD|U0|U1|CurrentState~q\,
	combout => \KBD|U0|U0|U0|count[2]~2_combout\);

-- Location: FF_X43_Y18_N25
\KBD|U0|U0|U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KBD|U3|tmp~clkctrl_outclk\,
	d => \KBD|U0|U0|U0|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U0|U0|U0|count\(2));

-- Location: LCCOMB_X43_Y18_N14
\KBD|U0|U0|U0|count[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U0|U0|count[3]~0_combout\ = (\KBD|U0|U0|U0|count\(1) & (\KBD|U0|U0|U0|count\(2) & (\KBD|U0|U0|U0|count\(0) & !\KBD|U0|U1|CurrentState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(1),
	datab => \KBD|U0|U0|U0|count\(2),
	datac => \KBD|U0|U0|U0|count\(0),
	datad => \KBD|U0|U1|CurrentState~q\,
	combout => \KBD|U0|U0|U0|count[3]~0_combout\);

-- Location: LCCOMB_X43_Y15_N0
\KBD|U0|U0|U0|count[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U0|U0|count[3]~1_combout\ = \KBD|U0|U0|U0|count\(3) $ (\KBD|U0|U0|U0|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KBD|U0|U0|U0|count\(3),
	datad => \KBD|U0|U0|U0|count[3]~0_combout\,
	combout => \KBD|U0|U0|U0|count[3]~1_combout\);

-- Location: FF_X43_Y15_N1
\KBD|U0|U0|U0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KBD|U3|tmp~clkctrl_outclk\,
	d => \KBD|U0|U0|U0|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U0|U0|U0|count\(3));

-- Location: LCCOMB_X42_Y17_N10
\KBD|U1|U2|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(3))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\KBD|U1|U2|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(3),
	datac => \rtl~7clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~31_combout\,
	combout => \KBD|U1|U2|ram~31_combout\);

-- Location: LCCOMB_X43_Y15_N10
\KBD|U1|U2|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(3))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\KBD|U1|U2|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(3),
	datac => \rtl~6clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~19_combout\,
	combout => \KBD|U1|U2|ram~19_combout\);

-- Location: LCCOMB_X43_Y15_N16
\KBD|U1|U2|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(3))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\KBD|U1|U2|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5clkctrl_outclk\,
	datab => \KBD|U0|U0|U0|count\(3),
	datad => \KBD|U1|U2|ram~27_combout\,
	combout => \KBD|U1|U2|ram~27_combout\);

-- Location: LCCOMB_X43_Y15_N24
\KBD|U1|U2|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~47_combout\ = (\KBD|U1|U1|A[0]~0_combout\ & (((\KBD|U1|U1|A[1]~1_combout\)))) # (!\KBD|U1|U1|A[0]~0_combout\ & ((\KBD|U1|U1|A[1]~1_combout\ & ((\KBD|U1|U2|ram~27_combout\))) # (!\KBD|U1|U1|A[1]~1_combout\ & (\KBD|U1|U2|ram~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~19_combout\,
	datab => \KBD|U1|U2|ram~27_combout\,
	datac => \KBD|U1|U1|A[0]~0_combout\,
	datad => \KBD|U1|U1|A[1]~1_combout\,
	combout => \KBD|U1|U2|ram~47_combout\);

-- Location: LCCOMB_X42_Y17_N0
\KBD|U1|U2|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(3))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\KBD|U1|U2|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(3),
	datac => \rtl~4clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~23_combout\,
	combout => \KBD|U1|U2|ram~23_combout\);

-- Location: LCCOMB_X43_Y17_N10
\KBD|U1|U2|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~48_combout\ = (\KBD|U1|U2|ram~47_combout\ & ((\KBD|U1|U2|ram~31_combout\) # ((!\KBD|U1|U1|A[0]~0_combout\)))) # (!\KBD|U1|U2|ram~47_combout\ & (((\KBD|U1|U2|ram~23_combout\ & \KBD|U1|U1|A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~31_combout\,
	datab => \KBD|U1|U2|ram~47_combout\,
	datac => \KBD|U1|U2|ram~23_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \KBD|U1|U2|ram~48_combout\);

-- Location: LCCOMB_X43_Y16_N6
\KBD|U1|U2|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(3))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\KBD|U1|U2|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(3),
	datac => \rtl~1clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~7_combout\,
	combout => \KBD|U1|U2|ram~7_combout\);

-- Location: LCCOMB_X43_Y16_N16
\KBD|U1|U2|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(3))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\KBD|U1|U2|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(3),
	datac => \rtl~2clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~3_combout\,
	combout => \KBD|U1|U2|ram~3_combout\);

-- Location: LCCOMB_X43_Y16_N10
\KBD|U1|U2|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~49_combout\ = (\KBD|U1|U1|A[0]~0_combout\ & ((\KBD|U1|U2|ram~7_combout\) # ((\KBD|U1|U1|A[1]~1_combout\)))) # (!\KBD|U1|U1|A[0]~0_combout\ & (((\KBD|U1|U2|ram~3_combout\ & !\KBD|U1|U1|A[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~7_combout\,
	datab => \KBD|U1|U2|ram~3_combout\,
	datac => \KBD|U1|U1|A[0]~0_combout\,
	datad => \KBD|U1|U1|A[1]~1_combout\,
	combout => \KBD|U1|U2|ram~49_combout\);

-- Location: LCCOMB_X43_Y16_N2
\KBD|U1|U2|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(3))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\KBD|U1|U2|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3clkctrl_outclk\,
	datab => \KBD|U0|U0|U0|count\(3),
	datad => \KBD|U1|U2|ram~15_combout\,
	combout => \KBD|U1|U2|ram~15_combout\);

-- Location: LCCOMB_X43_Y15_N20
\KBD|U1|U2|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(3))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\KBD|U1|U2|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(3),
	datac => \rtl~0clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~11_combout\,
	combout => \KBD|U1|U2|ram~11_combout\);

-- Location: LCCOMB_X43_Y16_N28
\KBD|U1|U2|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~50_combout\ = (\KBD|U1|U2|ram~49_combout\ & ((\KBD|U1|U2|ram~15_combout\) # ((!\KBD|U1|U1|A[1]~1_combout\)))) # (!\KBD|U1|U2|ram~49_combout\ & (((\KBD|U1|U2|ram~11_combout\ & \KBD|U1|U1|A[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~49_combout\,
	datab => \KBD|U1|U2|ram~15_combout\,
	datac => \KBD|U1|U2|ram~11_combout\,
	datad => \KBD|U1|U1|A[1]~1_combout\,
	combout => \KBD|U1|U2|ram~50_combout\);

-- Location: LCCOMB_X43_Y17_N8
\KBD|U1|U2|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~51_combout\ = (\KBD|U1|U1|A[2]~2_combout\ & (\KBD|U1|U2|ram~48_combout\)) # (!\KBD|U1|U1|A[2]~2_combout\ & ((\KBD|U1|U2|ram~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~48_combout\,
	datac => \KBD|U1|U2|ram~50_combout\,
	datad => \KBD|U1|U1|A[2]~2_combout\,
	combout => \KBD|U1|U2|ram~51_combout\);

-- Location: FF_X43_Y17_N9
\KBD|U2|U0|buff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0clkctrl_outclk\,
	d => \KBD|U1|U2|ram~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U2|U0|buff\(3));

-- Location: LCCOMB_X43_Y31_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X43_Y31_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X43_Y31_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X43_Y31_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X43_Y31_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \KBD|U2|U1|CurrentState.STATE_SEND_WAIT_STAGE1~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X43_Y31_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X43_Y31_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datab => \KBD|U2|U0|buff\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X42_Y30_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X42_Y30_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X43_Y15_N12
\KBD|U1|U2|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(2))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\KBD|U1|U2|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(2),
	datac => \rtl~6clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~18_combout\,
	combout => \KBD|U1|U2|ram~18_combout\);

-- Location: LCCOMB_X43_Y15_N2
\KBD|U1|U2|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(2))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\KBD|U1|U2|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5clkctrl_outclk\,
	datac => \KBD|U0|U0|U0|count\(2),
	datad => \KBD|U1|U2|ram~26_combout\,
	combout => \KBD|U1|U2|ram~26_combout\);

-- Location: LCCOMB_X43_Y15_N14
\KBD|U1|U2|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~42_combout\ = (\KBD|U1|U1|A[0]~0_combout\ & (((\KBD|U1|U1|A[1]~1_combout\)))) # (!\KBD|U1|U1|A[0]~0_combout\ & ((\KBD|U1|U1|A[1]~1_combout\ & ((\KBD|U1|U2|ram~26_combout\))) # (!\KBD|U1|U1|A[1]~1_combout\ & (\KBD|U1|U2|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~18_combout\,
	datab => \KBD|U1|U2|ram~26_combout\,
	datac => \KBD|U1|U1|A[0]~0_combout\,
	datad => \KBD|U1|U1|A[1]~1_combout\,
	combout => \KBD|U1|U2|ram~42_combout\);

-- Location: LCCOMB_X43_Y18_N28
\KBD|U1|U2|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(2))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\KBD|U1|U2|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7clkctrl_outclk\,
	datab => \KBD|U0|U0|U0|count\(2),
	datad => \KBD|U1|U2|ram~30_combout\,
	combout => \KBD|U1|U2|ram~30_combout\);

-- Location: LCCOMB_X43_Y18_N18
\KBD|U1|U2|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(2))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\KBD|U1|U2|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(2),
	datac => \rtl~4clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~22_combout\,
	combout => \KBD|U1|U2|ram~22_combout\);

-- Location: LCCOMB_X43_Y18_N22
\KBD|U1|U2|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~43_combout\ = (\KBD|U1|U2|ram~42_combout\ & ((\KBD|U1|U2|ram~30_combout\) # ((!\KBD|U1|U1|A[0]~0_combout\)))) # (!\KBD|U1|U2|ram~42_combout\ & (((\KBD|U1|U1|A[0]~0_combout\ & \KBD|U1|U2|ram~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~42_combout\,
	datab => \KBD|U1|U2|ram~30_combout\,
	datac => \KBD|U1|U1|A[0]~0_combout\,
	datad => \KBD|U1|U2|ram~22_combout\,
	combout => \KBD|U1|U2|ram~43_combout\);

-- Location: LCCOMB_X43_Y15_N6
\KBD|U1|U2|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(2))) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\KBD|U1|U2|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U0|U0|U0|count\(2),
	datac => \rtl~0clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~10_combout\,
	combout => \KBD|U1|U2|ram~10_combout\);

-- Location: LCCOMB_X42_Y18_N16
\KBD|U1|U2|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(2))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\KBD|U1|U2|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KBD|U0|U0|U0|count\(2),
	datac => \rtl~2clkctrl_outclk\,
	datad => \KBD|U1|U2|ram~2_combout\,
	combout => \KBD|U1|U2|ram~2_combout\);

-- Location: LCCOMB_X43_Y18_N30
\KBD|U1|U2|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\KBD|U0|U0|U0|count\(2)))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\KBD|U1|U2|ram~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~1clkctrl_outclk\,
	datac => \KBD|U1|U2|ram~6_combout\,
	datad => \KBD|U0|U0|U0|count\(2),
	combout => \KBD|U1|U2|ram~6_combout\);

-- Location: LCCOMB_X43_Y18_N8
\KBD|U1|U2|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~44_combout\ = (\KBD|U1|U1|A[1]~1_combout\ & (((\KBD|U1|U1|A[0]~0_combout\)))) # (!\KBD|U1|U1|A[1]~1_combout\ & ((\KBD|U1|U1|A[0]~0_combout\ & ((\KBD|U1|U2|ram~6_combout\))) # (!\KBD|U1|U1|A[0]~0_combout\ & (\KBD|U1|U2|ram~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~2_combout\,
	datab => \KBD|U1|U1|A[1]~1_combout\,
	datac => \KBD|U1|U2|ram~6_combout\,
	datad => \KBD|U1|U1|A[0]~0_combout\,
	combout => \KBD|U1|U2|ram~44_combout\);

-- Location: LCCOMB_X44_Y18_N0
\KBD|U1|U2|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\KBD|U0|U0|U0|count\(2))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\KBD|U1|U2|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~3clkctrl_outclk\,
	datac => \KBD|U0|U0|U0|count\(2),
	datad => \KBD|U1|U2|ram~14_combout\,
	combout => \KBD|U1|U2|ram~14_combout\);

-- Location: LCCOMB_X43_Y18_N2
\KBD|U1|U2|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~45_combout\ = (\KBD|U1|U2|ram~44_combout\ & (((\KBD|U1|U2|ram~14_combout\) # (!\KBD|U1|U1|A[1]~1_combout\)))) # (!\KBD|U1|U2|ram~44_combout\ & (\KBD|U1|U2|ram~10_combout\ & (\KBD|U1|U1|A[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~10_combout\,
	datab => \KBD|U1|U2|ram~44_combout\,
	datac => \KBD|U1|U1|A[1]~1_combout\,
	datad => \KBD|U1|U2|ram~14_combout\,
	combout => \KBD|U1|U2|ram~45_combout\);

-- Location: LCCOMB_X43_Y18_N26
\KBD|U1|U2|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U1|U2|ram~46_combout\ = (\KBD|U1|U1|A[2]~2_combout\ & (\KBD|U1|U2|ram~43_combout\)) # (!\KBD|U1|U1|A[2]~2_combout\ & ((\KBD|U1|U2|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KBD|U1|U2|ram~43_combout\,
	datab => \KBD|U1|U2|ram~45_combout\,
	datac => \KBD|U1|U1|A[2]~2_combout\,
	combout => \KBD|U1|U2|ram~46_combout\);

-- Location: FF_X43_Y18_N27
\KBD|U2|U0|buff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KBD|U2|U1|CurrentState.STATE_RECEIVING~0clkctrl_outclk\,
	d => \KBD|U1|U2|ram~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KBD|U2|U0|buff\(2));

-- Location: LCCOMB_X43_Y31_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \KBD|U2|U0|buff\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X43_Y31_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X42_Y31_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X42_Y31_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X42_Y31_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X42_Y31_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X42_Y31_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X42_Y31_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCCOMB_X43_Y30_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\);

-- Location: FF_X43_Y30_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X43_Y30_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X43_Y30_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X42_Y30_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X42_Y30_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X42_Y30_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X40_Y31_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X41_Y31_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X40_Y31_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: LCCOMB_X40_Y31_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: LCCOMB_X40_Y30_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X40_Y30_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X40_Y31_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X40_Y31_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X40_Y31_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X40_Y31_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X40_Y31_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X40_Y31_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X40_Y31_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X40_Y31_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: FF_X40_Y31_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: FF_X40_Y31_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X40_Y31_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X40_Y31_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X40_Y31_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X40_Y31_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X40_Y31_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X41_Y31_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X40_Y31_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X40_Y31_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X41_Y31_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X40_Y31_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X40_Y31_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X40_Y31_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X40_Y31_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X41_Y31_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X41_Y31_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X41_Y31_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X42_Y31_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: FF_X41_Y31_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X41_Y31_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X41_Y31_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X41_Y31_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X41_Y31_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X41_Y31_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X41_Y31_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X40_Y29_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\);

-- Location: LCCOMB_X40_Y29_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14\);

-- Location: LCCOMB_X40_Y29_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\);

-- Location: LCCOMB_X41_Y31_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\);

-- Location: FF_X40_Y29_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X40_Y29_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\);

-- Location: LCCOMB_X40_Y30_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\);

-- Location: FF_X40_Y29_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X40_Y29_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\);

-- Location: FF_X40_Y29_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X40_Y29_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\);

-- Location: FF_X40_Y29_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: FF_X40_Y29_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X40_Y29_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\);

-- Location: LCCOMB_X40_Y29_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: LCCOMB_X40_Y29_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\);

-- Location: LCCOMB_X40_Y29_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: LCCOMB_X39_Y30_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y31_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X39_Y30_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X39_Y30_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X39_Y30_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X39_Y30_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X39_Y30_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X39_Y30_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X39_Y30_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X39_Y30_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X39_Y30_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X39_Y30_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X39_Y30_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X40_Y29_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\);

-- Location: LCCOMB_X41_Y29_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X39_Y30_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\);

-- Location: FF_X39_Y30_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X40_Y29_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X40_Y29_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X41_Y29_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: LCCOMB_X41_Y29_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X40_Y29_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: FF_X39_Y29_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X39_Y29_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X41_Y29_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X40_Y29_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X40_Y29_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: LCCOMB_X39_Y30_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\);

-- Location: FF_X39_Y30_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X41_Y29_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X41_Y30_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X41_Y31_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X41_Y29_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X41_Y29_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X41_Y29_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X41_Y29_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X41_Y31_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X41_Y31_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X42_Y31_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datad => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X42_Y31_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X42_Y31_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X42_Y31_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X42_Y31_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X42_Y31_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X42_Y31_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X42_Y31_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: FF_X42_Y31_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G14
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: FF_X43_Y31_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: FF_X43_Y31_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X43_Y31_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: FF_X43_Y31_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: LCCOMB_X43_Y31_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X43_Y31_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: FF_X43_Y31_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: LCCOMB_X43_Y31_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: FF_X43_Y31_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: LCCOMB_X43_Y31_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: FF_X43_Y31_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: LCCOMB_X44_Y36_N24
\SLCDC|U2|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|tmp~0_combout\ = !\SLCDC|U2|tmp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLCDC|U2|tmp~q\,
	combout => \SLCDC|U2|tmp~0_combout\);

-- Location: LCCOMB_X46_Y34_N4
\SLCDC|U2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~4_combout\ = (\SLCDC|U2|count\(2) & (\SLCDC|U2|Add0~3\ $ (GND))) # (!\SLCDC|U2|count\(2) & (!\SLCDC|U2|Add0~3\ & VCC))
-- \SLCDC|U2|Add0~5\ = CARRY((\SLCDC|U2|count\(2) & !\SLCDC|U2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(2),
	datad => VCC,
	cin => \SLCDC|U2|Add0~3\,
	combout => \SLCDC|U2|Add0~4_combout\,
	cout => \SLCDC|U2|Add0~5\);

-- Location: LCCOMB_X47_Y34_N20
\SLCDC|U2|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|count~1_combout\ = (!\SSC|U2|Equal0~10_combout\ & \SLCDC|U2|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSC|U2|Equal0~10_combout\,
	datac => \SLCDC|U2|Add0~4_combout\,
	combout => \SLCDC|U2|count~1_combout\);

-- Location: FF_X47_Y34_N21
\SLCDC|U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(2));

-- Location: LCCOMB_X46_Y34_N6
\SLCDC|U2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~6_combout\ = (\SLCDC|U2|count\(3) & (!\SLCDC|U2|Add0~5\)) # (!\SLCDC|U2|count\(3) & ((\SLCDC|U2|Add0~5\) # (GND)))
-- \SLCDC|U2|Add0~7\ = CARRY((!\SLCDC|U2|Add0~5\) # (!\SLCDC|U2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(3),
	datad => VCC,
	cin => \SLCDC|U2|Add0~5\,
	combout => \SLCDC|U2|Add0~6_combout\,
	cout => \SLCDC|U2|Add0~7\);

-- Location: LCCOMB_X47_Y33_N22
\SLCDC|U2|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|count~0_combout\ = (!\SSC|U2|Equal0~10_combout\ & \SLCDC|U2|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSC|U2|Equal0~10_combout\,
	datac => \SLCDC|U2|Add0~6_combout\,
	combout => \SLCDC|U2|count~0_combout\);

-- Location: FF_X47_Y33_N23
\SLCDC|U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(3));

-- Location: LCCOMB_X46_Y34_N8
\SLCDC|U2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~8_combout\ = (\SLCDC|U2|count\(4) & (\SLCDC|U2|Add0~7\ $ (GND))) # (!\SLCDC|U2|count\(4) & (!\SLCDC|U2|Add0~7\ & VCC))
-- \SLCDC|U2|Add0~9\ = CARRY((\SLCDC|U2|count\(4) & !\SLCDC|U2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(4),
	datad => VCC,
	cin => \SLCDC|U2|Add0~7\,
	combout => \SLCDC|U2|Add0~8_combout\,
	cout => \SLCDC|U2|Add0~9\);

-- Location: FF_X46_Y34_N9
\SLCDC|U2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(4));

-- Location: LCCOMB_X46_Y34_N10
\SLCDC|U2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~10_combout\ = (\SLCDC|U2|count\(5) & (!\SLCDC|U2|Add0~9\)) # (!\SLCDC|U2|count\(5) & ((\SLCDC|U2|Add0~9\) # (GND)))
-- \SLCDC|U2|Add0~11\ = CARRY((!\SLCDC|U2|Add0~9\) # (!\SLCDC|U2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(5),
	datad => VCC,
	cin => \SLCDC|U2|Add0~9\,
	combout => \SLCDC|U2|Add0~10_combout\,
	cout => \SLCDC|U2|Add0~11\);

-- Location: FF_X46_Y34_N11
\SLCDC|U2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(5));

-- Location: LCCOMB_X46_Y34_N12
\SLCDC|U2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~12_combout\ = (\SLCDC|U2|count\(6) & (\SLCDC|U2|Add0~11\ $ (GND))) # (!\SLCDC|U2|count\(6) & (!\SLCDC|U2|Add0~11\ & VCC))
-- \SLCDC|U2|Add0~13\ = CARRY((\SLCDC|U2|count\(6) & !\SLCDC|U2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(6),
	datad => VCC,
	cin => \SLCDC|U2|Add0~11\,
	combout => \SLCDC|U2|Add0~12_combout\,
	cout => \SLCDC|U2|Add0~13\);

-- Location: FF_X46_Y34_N13
\SLCDC|U2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(6));

-- Location: LCCOMB_X46_Y34_N14
\SLCDC|U2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~14_combout\ = (\SLCDC|U2|count\(7) & (!\SLCDC|U2|Add0~13\)) # (!\SLCDC|U2|count\(7) & ((\SLCDC|U2|Add0~13\) # (GND)))
-- \SLCDC|U2|Add0~15\ = CARRY((!\SLCDC|U2|Add0~13\) # (!\SLCDC|U2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(7),
	datad => VCC,
	cin => \SLCDC|U2|Add0~13\,
	combout => \SLCDC|U2|Add0~14_combout\,
	cout => \SLCDC|U2|Add0~15\);

-- Location: FF_X46_Y34_N15
\SLCDC|U2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(7));

-- Location: LCCOMB_X46_Y34_N16
\SLCDC|U2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~16_combout\ = (\SLCDC|U2|count\(8) & (\SLCDC|U2|Add0~15\ $ (GND))) # (!\SLCDC|U2|count\(8) & (!\SLCDC|U2|Add0~15\ & VCC))
-- \SLCDC|U2|Add0~17\ = CARRY((\SLCDC|U2|count\(8) & !\SLCDC|U2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(8),
	datad => VCC,
	cin => \SLCDC|U2|Add0~15\,
	combout => \SLCDC|U2|Add0~16_combout\,
	cout => \SLCDC|U2|Add0~17\);

-- Location: FF_X46_Y34_N17
\SLCDC|U2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(8));

-- Location: LCCOMB_X46_Y34_N18
\SLCDC|U2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~18_combout\ = (\SLCDC|U2|count\(9) & (!\SLCDC|U2|Add0~17\)) # (!\SLCDC|U2|count\(9) & ((\SLCDC|U2|Add0~17\) # (GND)))
-- \SLCDC|U2|Add0~19\ = CARRY((!\SLCDC|U2|Add0~17\) # (!\SLCDC|U2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(9),
	datad => VCC,
	cin => \SLCDC|U2|Add0~17\,
	combout => \SLCDC|U2|Add0~18_combout\,
	cout => \SLCDC|U2|Add0~19\);

-- Location: FF_X46_Y34_N19
\SLCDC|U2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(9));

-- Location: LCCOMB_X46_Y34_N20
\SLCDC|U2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~20_combout\ = (\SLCDC|U2|count\(10) & (\SLCDC|U2|Add0~19\ $ (GND))) # (!\SLCDC|U2|count\(10) & (!\SLCDC|U2|Add0~19\ & VCC))
-- \SLCDC|U2|Add0~21\ = CARRY((\SLCDC|U2|count\(10) & !\SLCDC|U2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(10),
	datad => VCC,
	cin => \SLCDC|U2|Add0~19\,
	combout => \SLCDC|U2|Add0~20_combout\,
	cout => \SLCDC|U2|Add0~21\);

-- Location: FF_X46_Y34_N21
\SLCDC|U2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(10));

-- Location: LCCOMB_X46_Y34_N22
\SLCDC|U2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~22_combout\ = (\SLCDC|U2|count\(11) & (!\SLCDC|U2|Add0~21\)) # (!\SLCDC|U2|count\(11) & ((\SLCDC|U2|Add0~21\) # (GND)))
-- \SLCDC|U2|Add0~23\ = CARRY((!\SLCDC|U2|Add0~21\) # (!\SLCDC|U2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(11),
	datad => VCC,
	cin => \SLCDC|U2|Add0~21\,
	combout => \SLCDC|U2|Add0~22_combout\,
	cout => \SLCDC|U2|Add0~23\);

-- Location: FF_X46_Y34_N23
\SLCDC|U2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(11));

-- Location: LCCOMB_X46_Y34_N24
\SLCDC|U2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~24_combout\ = (\SLCDC|U2|count\(12) & (\SLCDC|U2|Add0~23\ $ (GND))) # (!\SLCDC|U2|count\(12) & (!\SLCDC|U2|Add0~23\ & VCC))
-- \SLCDC|U2|Add0~25\ = CARRY((\SLCDC|U2|count\(12) & !\SLCDC|U2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(12),
	datad => VCC,
	cin => \SLCDC|U2|Add0~23\,
	combout => \SLCDC|U2|Add0~24_combout\,
	cout => \SLCDC|U2|Add0~25\);

-- Location: FF_X46_Y34_N25
\SLCDC|U2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(12));

-- Location: LCCOMB_X46_Y34_N26
\SLCDC|U2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~26_combout\ = (\SLCDC|U2|count\(13) & (!\SLCDC|U2|Add0~25\)) # (!\SLCDC|U2|count\(13) & ((\SLCDC|U2|Add0~25\) # (GND)))
-- \SLCDC|U2|Add0~27\ = CARRY((!\SLCDC|U2|Add0~25\) # (!\SLCDC|U2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(13),
	datad => VCC,
	cin => \SLCDC|U2|Add0~25\,
	combout => \SLCDC|U2|Add0~26_combout\,
	cout => \SLCDC|U2|Add0~27\);

-- Location: FF_X46_Y34_N27
\SLCDC|U2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(13));

-- Location: LCCOMB_X46_Y34_N28
\SLCDC|U2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~28_combout\ = (\SLCDC|U2|count\(14) & (\SLCDC|U2|Add0~27\ $ (GND))) # (!\SLCDC|U2|count\(14) & (!\SLCDC|U2|Add0~27\ & VCC))
-- \SLCDC|U2|Add0~29\ = CARRY((\SLCDC|U2|count\(14) & !\SLCDC|U2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(14),
	datad => VCC,
	cin => \SLCDC|U2|Add0~27\,
	combout => \SLCDC|U2|Add0~28_combout\,
	cout => \SLCDC|U2|Add0~29\);

-- Location: FF_X46_Y34_N29
\SLCDC|U2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(14));

-- Location: LCCOMB_X46_Y34_N30
\SLCDC|U2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~30_combout\ = (\SLCDC|U2|count\(15) & (!\SLCDC|U2|Add0~29\)) # (!\SLCDC|U2|count\(15) & ((\SLCDC|U2|Add0~29\) # (GND)))
-- \SLCDC|U2|Add0~31\ = CARRY((!\SLCDC|U2|Add0~29\) # (!\SLCDC|U2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(15),
	datad => VCC,
	cin => \SLCDC|U2|Add0~29\,
	combout => \SLCDC|U2|Add0~30_combout\,
	cout => \SLCDC|U2|Add0~31\);

-- Location: FF_X46_Y34_N31
\SLCDC|U2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(15));

-- Location: LCCOMB_X46_Y33_N0
\SLCDC|U2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~32_combout\ = (\SLCDC|U2|count\(16) & (\SLCDC|U2|Add0~31\ $ (GND))) # (!\SLCDC|U2|count\(16) & (!\SLCDC|U2|Add0~31\ & VCC))
-- \SLCDC|U2|Add0~33\ = CARRY((\SLCDC|U2|count\(16) & !\SLCDC|U2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(16),
	datad => VCC,
	cin => \SLCDC|U2|Add0~31\,
	combout => \SLCDC|U2|Add0~32_combout\,
	cout => \SLCDC|U2|Add0~33\);

-- Location: FF_X46_Y33_N1
\SLCDC|U2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(16));

-- Location: LCCOMB_X46_Y33_N2
\SLCDC|U2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~34_combout\ = (\SLCDC|U2|count\(17) & (!\SLCDC|U2|Add0~33\)) # (!\SLCDC|U2|count\(17) & ((\SLCDC|U2|Add0~33\) # (GND)))
-- \SLCDC|U2|Add0~35\ = CARRY((!\SLCDC|U2|Add0~33\) # (!\SLCDC|U2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(17),
	datad => VCC,
	cin => \SLCDC|U2|Add0~33\,
	combout => \SLCDC|U2|Add0~34_combout\,
	cout => \SLCDC|U2|Add0~35\);

-- Location: FF_X46_Y33_N3
\SLCDC|U2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(17));

-- Location: LCCOMB_X46_Y33_N4
\SLCDC|U2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~36_combout\ = (\SLCDC|U2|count\(18) & (\SLCDC|U2|Add0~35\ $ (GND))) # (!\SLCDC|U2|count\(18) & (!\SLCDC|U2|Add0~35\ & VCC))
-- \SLCDC|U2|Add0~37\ = CARRY((\SLCDC|U2|count\(18) & !\SLCDC|U2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(18),
	datad => VCC,
	cin => \SLCDC|U2|Add0~35\,
	combout => \SLCDC|U2|Add0~36_combout\,
	cout => \SLCDC|U2|Add0~37\);

-- Location: FF_X46_Y33_N5
\SLCDC|U2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(18));

-- Location: LCCOMB_X46_Y33_N6
\SLCDC|U2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~38_combout\ = (\SLCDC|U2|count\(19) & (!\SLCDC|U2|Add0~37\)) # (!\SLCDC|U2|count\(19) & ((\SLCDC|U2|Add0~37\) # (GND)))
-- \SLCDC|U2|Add0~39\ = CARRY((!\SLCDC|U2|Add0~37\) # (!\SLCDC|U2|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(19),
	datad => VCC,
	cin => \SLCDC|U2|Add0~37\,
	combout => \SLCDC|U2|Add0~38_combout\,
	cout => \SLCDC|U2|Add0~39\);

-- Location: FF_X46_Y33_N7
\SLCDC|U2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(19));

-- Location: LCCOMB_X46_Y33_N8
\SLCDC|U2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~40_combout\ = (\SLCDC|U2|count\(20) & (\SLCDC|U2|Add0~39\ $ (GND))) # (!\SLCDC|U2|count\(20) & (!\SLCDC|U2|Add0~39\ & VCC))
-- \SLCDC|U2|Add0~41\ = CARRY((\SLCDC|U2|count\(20) & !\SLCDC|U2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(20),
	datad => VCC,
	cin => \SLCDC|U2|Add0~39\,
	combout => \SLCDC|U2|Add0~40_combout\,
	cout => \SLCDC|U2|Add0~41\);

-- Location: FF_X46_Y33_N9
\SLCDC|U2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(20));

-- Location: LCCOMB_X46_Y33_N10
\SLCDC|U2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~42_combout\ = (\SLCDC|U2|count\(21) & (!\SLCDC|U2|Add0~41\)) # (!\SLCDC|U2|count\(21) & ((\SLCDC|U2|Add0~41\) # (GND)))
-- \SLCDC|U2|Add0~43\ = CARRY((!\SLCDC|U2|Add0~41\) # (!\SLCDC|U2|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(21),
	datad => VCC,
	cin => \SLCDC|U2|Add0~41\,
	combout => \SLCDC|U2|Add0~42_combout\,
	cout => \SLCDC|U2|Add0~43\);

-- Location: FF_X46_Y33_N11
\SLCDC|U2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(21));

-- Location: LCCOMB_X46_Y33_N12
\SLCDC|U2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~44_combout\ = (\SLCDC|U2|count\(22) & (\SLCDC|U2|Add0~43\ $ (GND))) # (!\SLCDC|U2|count\(22) & (!\SLCDC|U2|Add0~43\ & VCC))
-- \SLCDC|U2|Add0~45\ = CARRY((\SLCDC|U2|count\(22) & !\SLCDC|U2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(22),
	datad => VCC,
	cin => \SLCDC|U2|Add0~43\,
	combout => \SLCDC|U2|Add0~44_combout\,
	cout => \SLCDC|U2|Add0~45\);

-- Location: FF_X46_Y33_N13
\SLCDC|U2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(22));

-- Location: LCCOMB_X46_Y33_N14
\SLCDC|U2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~46_combout\ = (\SLCDC|U2|count\(23) & (!\SLCDC|U2|Add0~45\)) # (!\SLCDC|U2|count\(23) & ((\SLCDC|U2|Add0~45\) # (GND)))
-- \SLCDC|U2|Add0~47\ = CARRY((!\SLCDC|U2|Add0~45\) # (!\SLCDC|U2|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(23),
	datad => VCC,
	cin => \SLCDC|U2|Add0~45\,
	combout => \SLCDC|U2|Add0~46_combout\,
	cout => \SLCDC|U2|Add0~47\);

-- Location: FF_X46_Y33_N15
\SLCDC|U2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(23));

-- Location: LCCOMB_X46_Y33_N16
\SLCDC|U2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~48_combout\ = (\SLCDC|U2|count\(24) & (\SLCDC|U2|Add0~47\ $ (GND))) # (!\SLCDC|U2|count\(24) & (!\SLCDC|U2|Add0~47\ & VCC))
-- \SLCDC|U2|Add0~49\ = CARRY((\SLCDC|U2|count\(24) & !\SLCDC|U2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(24),
	datad => VCC,
	cin => \SLCDC|U2|Add0~47\,
	combout => \SLCDC|U2|Add0~48_combout\,
	cout => \SLCDC|U2|Add0~49\);

-- Location: FF_X46_Y33_N17
\SLCDC|U2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(24));

-- Location: LCCOMB_X46_Y33_N18
\SLCDC|U2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~50_combout\ = (\SLCDC|U2|count\(25) & (!\SLCDC|U2|Add0~49\)) # (!\SLCDC|U2|count\(25) & ((\SLCDC|U2|Add0~49\) # (GND)))
-- \SLCDC|U2|Add0~51\ = CARRY((!\SLCDC|U2|Add0~49\) # (!\SLCDC|U2|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(25),
	datad => VCC,
	cin => \SLCDC|U2|Add0~49\,
	combout => \SLCDC|U2|Add0~50_combout\,
	cout => \SLCDC|U2|Add0~51\);

-- Location: FF_X46_Y33_N19
\SLCDC|U2|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(25));

-- Location: LCCOMB_X46_Y33_N20
\SLCDC|U2|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~52_combout\ = (\SLCDC|U2|count\(26) & (\SLCDC|U2|Add0~51\ $ (GND))) # (!\SLCDC|U2|count\(26) & (!\SLCDC|U2|Add0~51\ & VCC))
-- \SLCDC|U2|Add0~53\ = CARRY((\SLCDC|U2|count\(26) & !\SLCDC|U2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(26),
	datad => VCC,
	cin => \SLCDC|U2|Add0~51\,
	combout => \SLCDC|U2|Add0~52_combout\,
	cout => \SLCDC|U2|Add0~53\);

-- Location: FF_X46_Y33_N21
\SLCDC|U2|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(26));

-- Location: LCCOMB_X46_Y33_N22
\SLCDC|U2|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~54_combout\ = (\SLCDC|U2|count\(27) & (!\SLCDC|U2|Add0~53\)) # (!\SLCDC|U2|count\(27) & ((\SLCDC|U2|Add0~53\) # (GND)))
-- \SLCDC|U2|Add0~55\ = CARRY((!\SLCDC|U2|Add0~53\) # (!\SLCDC|U2|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(27),
	datad => VCC,
	cin => \SLCDC|U2|Add0~53\,
	combout => \SLCDC|U2|Add0~54_combout\,
	cout => \SLCDC|U2|Add0~55\);

-- Location: FF_X46_Y33_N23
\SLCDC|U2|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(27));

-- Location: LCCOMB_X46_Y33_N24
\SLCDC|U2|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~56_combout\ = (\SLCDC|U2|count\(28) & (\SLCDC|U2|Add0~55\ $ (GND))) # (!\SLCDC|U2|count\(28) & (!\SLCDC|U2|Add0~55\ & VCC))
-- \SLCDC|U2|Add0~57\ = CARRY((\SLCDC|U2|count\(28) & !\SLCDC|U2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(28),
	datad => VCC,
	cin => \SLCDC|U2|Add0~55\,
	combout => \SLCDC|U2|Add0~56_combout\,
	cout => \SLCDC|U2|Add0~57\);

-- Location: FF_X46_Y33_N25
\SLCDC|U2|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(28));

-- Location: LCCOMB_X46_Y33_N26
\SLCDC|U2|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~58_combout\ = (\SLCDC|U2|count\(29) & (!\SLCDC|U2|Add0~57\)) # (!\SLCDC|U2|count\(29) & ((\SLCDC|U2|Add0~57\) # (GND)))
-- \SLCDC|U2|Add0~59\ = CARRY((!\SLCDC|U2|Add0~57\) # (!\SLCDC|U2|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(29),
	datad => VCC,
	cin => \SLCDC|U2|Add0~57\,
	combout => \SLCDC|U2|Add0~58_combout\,
	cout => \SLCDC|U2|Add0~59\);

-- Location: FF_X46_Y33_N27
\SLCDC|U2|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(29));

-- Location: LCCOMB_X47_Y33_N12
\SSC|U2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~1_combout\ = (!\SLCDC|U2|count\(28) & (!\SLCDC|U2|count\(27) & (!\SLCDC|U2|count\(29) & !\SLCDC|U2|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(28),
	datab => \SLCDC|U2|count\(27),
	datac => \SLCDC|U2|count\(29),
	datad => \SLCDC|U2|count\(26),
	combout => \SSC|U2|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y33_N28
\SLCDC|U2|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~60_combout\ = (\SLCDC|U2|count\(30) & (\SLCDC|U2|Add0~59\ $ (GND))) # (!\SLCDC|U2|count\(30) & (!\SLCDC|U2|Add0~59\ & VCC))
-- \SLCDC|U2|Add0~61\ = CARRY((\SLCDC|U2|count\(30) & !\SLCDC|U2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U2|count\(30),
	datad => VCC,
	cin => \SLCDC|U2|Add0~59\,
	combout => \SLCDC|U2|Add0~60_combout\,
	cout => \SLCDC|U2|Add0~61\);

-- Location: FF_X46_Y33_N29
\SLCDC|U2|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(30));

-- Location: LCCOMB_X46_Y33_N30
\SLCDC|U2|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U2|Add0~62_combout\ = \SLCDC|U2|count\(31) $ (\SLCDC|U2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(31),
	cin => \SLCDC|U2|Add0~61\,
	combout => \SLCDC|U2|Add0~62_combout\);

-- Location: FF_X46_Y33_N31
\SLCDC|U2|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|count\(31));

-- Location: LCCOMB_X47_Y33_N6
\SSC|U2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~2_combout\ = (\SSC|U2|Equal0~1_combout\ & (!\SLCDC|U2|count\(30) & (\SSC|U2|Equal0~0_combout\ & !\SLCDC|U2|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U2|Equal0~1_combout\,
	datab => \SLCDC|U2|count\(30),
	datac => \SSC|U2|Equal0~0_combout\,
	datad => \SLCDC|U2|count\(31),
	combout => \SSC|U2|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y33_N24
\SSC|U2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~3_combout\ = (!\SLCDC|U2|count\(22) & (!\SLCDC|U2|count\(25) & (!\SLCDC|U2|count\(24) & !\SLCDC|U2|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(22),
	datab => \SLCDC|U2|count\(25),
	datac => \SLCDC|U2|count\(24),
	datad => \SLCDC|U2|count\(23),
	combout => \SSC|U2|Equal0~3_combout\);

-- Location: LCCOMB_X47_Y33_N10
\SSC|U2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~4_combout\ = (!\SLCDC|U2|count\(21) & (!\SLCDC|U2|count\(19) & (!\SLCDC|U2|count\(18) & !\SLCDC|U2|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(21),
	datab => \SLCDC|U2|count\(19),
	datac => \SLCDC|U2|count\(18),
	datad => \SLCDC|U2|count\(20),
	combout => \SSC|U2|Equal0~4_combout\);

-- Location: LCCOMB_X47_Y34_N6
\SSC|U2|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~8_combout\ = (!\SLCDC|U2|count\(4) & (\SLCDC|U2|count\(2) & (\SLCDC|U2|count\(3) & !\SLCDC|U2|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(4),
	datab => \SLCDC|U2|count\(2),
	datac => \SLCDC|U2|count\(3),
	datad => \SLCDC|U2|count\(5),
	combout => \SSC|U2|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y34_N24
\SSC|U2|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~6_combout\ = (!\SLCDC|U2|count\(12) & (!\SLCDC|U2|count\(11) & (!\SLCDC|U2|count\(13) & !\SLCDC|U2|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(12),
	datab => \SLCDC|U2|count\(11),
	datac => \SLCDC|U2|count\(13),
	datad => \SLCDC|U2|count\(10),
	combout => \SSC|U2|Equal0~6_combout\);

-- Location: LCCOMB_X47_Y33_N4
\SSC|U2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~5_combout\ = (!\SLCDC|U2|count\(16) & (!\SLCDC|U2|count\(15) & (!\SLCDC|U2|count\(14) & !\SLCDC|U2|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(16),
	datab => \SLCDC|U2|count\(15),
	datac => \SLCDC|U2|count\(14),
	datad => \SLCDC|U2|count\(17),
	combout => \SSC|U2|Equal0~5_combout\);

-- Location: LCCOMB_X47_Y34_N10
\SSC|U2|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~7_combout\ = (!\SLCDC|U2|count\(7) & (!\SLCDC|U2|count\(9) & (!\SLCDC|U2|count\(8) & !\SLCDC|U2|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U2|count\(7),
	datab => \SLCDC|U2|count\(9),
	datac => \SLCDC|U2|count\(8),
	datad => \SLCDC|U2|count\(6),
	combout => \SSC|U2|Equal0~7_combout\);

-- Location: LCCOMB_X47_Y34_N8
\SSC|U2|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~9_combout\ = (\SSC|U2|Equal0~8_combout\ & (\SSC|U2|Equal0~6_combout\ & (\SSC|U2|Equal0~5_combout\ & \SSC|U2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U2|Equal0~8_combout\,
	datab => \SSC|U2|Equal0~6_combout\,
	datac => \SSC|U2|Equal0~5_combout\,
	datad => \SSC|U2|Equal0~7_combout\,
	combout => \SSC|U2|Equal0~9_combout\);

-- Location: LCCOMB_X47_Y33_N8
\SSC|U2|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|Equal0~10_combout\ = (\SSC|U2|Equal0~2_combout\ & (\SSC|U2|Equal0~3_combout\ & (\SSC|U2|Equal0~4_combout\ & \SSC|U2|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U2|Equal0~2_combout\,
	datab => \SSC|U2|Equal0~3_combout\,
	datac => \SSC|U2|Equal0~4_combout\,
	datad => \SSC|U2|Equal0~9_combout\,
	combout => \SSC|U2|Equal0~10_combout\);

-- Location: FF_X44_Y36_N25
\SLCDC|U2|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U2|tmp~0_combout\,
	ena => \SSC|U2|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U2|tmp~q\);

-- Location: CLKCTRL_G13
\SLCDC|U2|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SLCDC|U2|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SLCDC|U2|tmp~clkctrl_outclk\);

-- Location: FF_X43_Y3_N29
\SLCDC|U1|dval_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|U2|tmp~clkctrl_outclk\,
	asdata => \SLCDC|U0|U2|CurrentState.state_bit_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U1|dval_reg~q\);

-- Location: LCCOMB_X43_Y3_N24
\SLCDC|U1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|CurrentState.state_bit_0~0_combout\ = (!\SLCDC|U1|CurrentState.state_bit_1~q\ & ((\SLCDC|U1|CurrentState.state_bit_0~q\) # (!\SLCDC|U1|dval_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U1|dval_reg~q\,
	datac => \SLCDC|U1|CurrentState.state_bit_0~q\,
	datad => \SLCDC|U1|CurrentState.state_bit_1~q\,
	combout => \SLCDC|U1|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X43_Y3_N25
\SLCDC|U1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|U2|tmp~clkctrl_outclk\,
	d => \SLCDC|U1|CurrentState.state_bit_0~0_combout\,
	clrn => \SLCDC|U0|U2|CurrentState.state_bit_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X43_Y3_N18
\SLCDC|U1|CurrentState.SEND~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|CurrentState.SEND~0_combout\ = (!\SLCDC|U1|CurrentState.state_bit_1~q\ & \SLCDC|U1|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLCDC|U1|CurrentState.state_bit_1~q\,
	datad => \SLCDC|U1|CurrentState.state_bit_0~q\,
	combout => \SLCDC|U1|CurrentState.SEND~0_combout\);

-- Location: FF_X43_Y3_N19
\SLCDC|U1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|U2|tmp~clkctrl_outclk\,
	d => \SLCDC|U1|CurrentState.SEND~0_combout\,
	clrn => \SLCDC|U0|U2|CurrentState.state_bit_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X43_Y3_N30
\SLCDC|U0|U2|CurrentState.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_2~0_combout\ = (\SLCDC|U0|U2|CurrentState.state_bit_2~q\ & !\SLCDC|U1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLCDC|U0|U2|CurrentState.state_bit_2~q\,
	datad => \SLCDC|U1|CurrentState.state_bit_1~q\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_2~0_combout\);

-- Location: LCCOMB_X43_Y3_N16
\SLCDC|U0|U2|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_1~2_combout\ = (\SLCDC|U0|U2|CurrentState.state_bit_2~q\ & \SLCDC|U1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLCDC|U0|U2|CurrentState.state_bit_2~q\,
	datad => \SLCDC|U1|CurrentState.state_bit_1~q\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_1~2_combout\);

-- Location: FF_X42_Y7_N17
\SLCDC|nSSsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|nSSsync~q\);

-- Location: CLKCTRL_G15
\SLCDC|nSSsync~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SLCDC|nSSsync~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SLCDC|nSSsync~clkctrl_outclk\);

-- Location: LCCOMB_X41_Y7_N10
\SLCDC|U0|U0|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U0|count[0]~3_combout\ = !\SLCDC|U0|U0|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLCDC|U0|U0|count\(0),
	combout => \SLCDC|U0|U0|count[0]~3_combout\);

-- Location: LCCOMB_X41_Y7_N22
\SLCDC|U0|U2|CurrentState.IDLE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.IDLE~1_combout\ = (!\SLCDC|U0|U2|CurrentState.state_bit_0~q\ & !\SLCDC|U0|U2|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U0|U2|CurrentState.state_bit_0~q\,
	datad => \SLCDC|U0|U2|CurrentState.state_bit_1~q\,
	combout => \SLCDC|U0|U2|CurrentState.IDLE~1_combout\);

-- Location: FF_X41_Y7_N11
\SLCDC|U0|U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	d => \SLCDC|U0|U0|count[0]~3_combout\,
	clrn => \SLCDC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U0|count\(0));

-- Location: LCCOMB_X41_Y7_N2
\SLCDC|U0|U0|count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U0|count[1]~0_combout\ = \SLCDC|U0|U0|count\(1) $ (\SLCDC|U0|U0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLCDC|U0|U0|count\(1),
	datad => \SLCDC|U0|U0|count\(0),
	combout => \SLCDC|U0|U0|count[1]~0_combout\);

-- Location: FF_X41_Y7_N3
\SLCDC|U0|U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	d => \SLCDC|U0|U0|count[1]~0_combout\,
	clrn => \SLCDC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U0|count\(1));

-- Location: LCCOMB_X41_Y7_N6
\SLCDC|U0|U2|CurrentState.RECEIVING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\ = (\SLCDC|U0|U2|CurrentState.state_bit_0~q\ & \SLCDC|U0|U2|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U0|U2|CurrentState.state_bit_0~q\,
	datad => \SLCDC|U0|U2|CurrentState.state_bit_1~q\,
	combout => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\);

-- Location: LCCOMB_X41_Y7_N14
\SLCDC|U0|U0|count[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U0|count[2]~2_combout\ = \SLCDC|U0|U0|count\(2) $ (((\SLCDC|U0|U0|count\(1) & \SLCDC|U0|U0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U0|U0|count\(1),
	datac => \SLCDC|U0|U0|count\(2),
	datad => \SLCDC|U0|U0|count\(0),
	combout => \SLCDC|U0|U0|count[2]~2_combout\);

-- Location: FF_X41_Y7_N15
\SLCDC|U0|U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	d => \SLCDC|U0|U0|count[2]~2_combout\,
	clrn => \SLCDC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U0|count\(2));

-- Location: LCCOMB_X41_Y7_N12
\SLCDC|U0|U0|count[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U0|count[3]~1_combout\ = \SLCDC|U0|U0|count\(3) $ (((\SLCDC|U0|U0|count\(0) & (\SLCDC|U0|U0|count\(2) & \SLCDC|U0|U0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U0|U0|count\(0),
	datab => \SLCDC|U0|U0|count\(2),
	datac => \SLCDC|U0|U0|count\(3),
	datad => \SLCDC|U0|U0|count\(1),
	combout => \SLCDC|U0|U0|count[3]~1_combout\);

-- Location: FF_X41_Y7_N13
\SLCDC|U0|U0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	d => \SLCDC|U0|U0|count[3]~1_combout\,
	clrn => \SLCDC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U0|count\(3));

-- Location: LCCOMB_X42_Y7_N16
\SLCDC|U0|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|comb~0_combout\ = (\SLCDC|U0|U0|count\(3) & (!\SLCDC|nSSsync~q\ & !\SLCDC|U0|U0|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U0|U0|count\(3),
	datac => \SLCDC|nSSsync~q\,
	datad => \SLCDC|U0|U0|count\(2),
	combout => \SLCDC|U0|comb~0_combout\);

-- Location: LCCOMB_X41_Y7_N30
\SLCDC|U0|U2|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_0~0_combout\ = (\SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\ & (((\SLCDC|U0|U0|count\(1)) # (!\SLCDC|U0|comb~0_combout\)) # (!\SLCDC|U0|U0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U0|U0|count\(0),
	datab => \SLCDC|U0|U0|count\(1),
	datac => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\,
	datad => \SLCDC|U0|comb~0_combout\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X44_Y35_N25
\SLCDC|U0|U2|nEnRx_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U2|nEnRx_reg~q\);

-- Location: LCCOMB_X41_Y7_N26
\SLCDC|U0|U2|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_0~2_combout\ = (!\SLCDC|U0|U2|CurrentState.state_bit_0~q\ & (\SLCDC|U0|U2|nEnRx_reg~q\ & !\SLCDC|U0|U2|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U0|U2|CurrentState.state_bit_0~q\,
	datac => \SLCDC|U0|U2|nEnRx_reg~q\,
	datad => \SLCDC|U0|U2|CurrentState.state_bit_1~q\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_0~2_combout\);

-- Location: LCCOMB_X41_Y7_N8
\SLCDC|U0|U2|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_0~1_combout\ = ((!\SLCDC|U0|U0|count\(0) & (\SLCDC|U0|comb~0_combout\ & \SLCDC|U0|U0|count\(1)))) # 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U0|U0|count\(0),
	datab => \SLCDC|U0|comb~0_combout\,
	datac => \SLCDC|U0|U0|count\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X41_Y7_N18
\SLCDC|U0|U2|CurrentState.state_bit_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_0~3_combout\ = (\SLCDC|U0|U2|CurrentState.IDLE~0_combout\ & ((\SLCDC|U0|U2|CurrentState.state_bit_0~0_combout\) # ((\SLCDC|U0|U2|CurrentState.state_bit_0~2_combout\ & \SLCDC|U0|U2|CurrentState.state_bit_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U0|U2|CurrentState.state_bit_0~0_combout\,
	datab => \SLCDC|U0|U2|CurrentState.IDLE~0_combout\,
	datac => \SLCDC|U0|U2|CurrentState.state_bit_0~2_combout\,
	datad => \SLCDC|U0|U2|CurrentState.state_bit_0~1_combout\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_0~3_combout\);

-- Location: CLKCTRL_G11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~clkctrl_outclk\);

-- Location: FF_X41_Y7_N19
\SLCDC|U0|U2|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U0|U2|CurrentState.state_bit_0~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U2|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X41_Y7_N28
\SLCDC|U0|U2|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_1~3_combout\ = (\SLCDC|U0|U2|CurrentState.state_bit_0~q\ & (((\SLCDC|U0|U2|CurrentState.state_bit_2~q\)) # (!\SLCDC|U0|U2|CurrentState.state_bit_1~q\))) # (!\SLCDC|U0|U2|CurrentState.state_bit_0~q\ & 
-- (!\SLCDC|U0|U2|CurrentState.state_bit_1~q\ & ((\SLCDC|U0|U2|CurrentState.state_bit_2~q\) # (!\SLCDC|U0|U2|nEnRx_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U0|U2|CurrentState.state_bit_0~q\,
	datab => \SLCDC|U0|U2|CurrentState.state_bit_1~q\,
	datac => \SLCDC|U0|U2|nEnRx_reg~q\,
	datad => \SLCDC|U0|U2|CurrentState.state_bit_2~q\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_1~3_combout\);

-- Location: LCCOMB_X41_Y7_N24
\SLCDC|U0|U2|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_1~0_combout\ = (\SLCDC|U0|U2|CurrentState.state_bit_1~q\ & (!\SLCDC|U0|U2|CurrentState.state_bit_0~q\ & !\SLCDC|U0|U2|CurrentState.state_bit_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U0|U2|CurrentState.state_bit_1~q\,
	datac => \SLCDC|U0|U2|CurrentState.state_bit_0~q\,
	datad => \SLCDC|U0|U2|CurrentState.state_bit_2~q\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X41_Y7_N4
\SLCDC|U0|U2|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_1~1_combout\ = (!\SLCDC|U0|U0|count\(0) & (\SLCDC|U0|U2|CurrentState.state_bit_1~0_combout\ & (\SLCDC|U0|U0|count\(1) & \SLCDC|U0|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U0|U0|count\(0),
	datab => \SLCDC|U0|U2|CurrentState.state_bit_1~0_combout\,
	datac => \SLCDC|U0|U0|count\(1),
	datad => \SLCDC|U0|comb~0_combout\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X42_Y7_N18
\SLCDC|U0|U1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U1|q~0_combout\ = !\SLCDC|U0|U1|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SLCDC|U0|U1|q~q\,
	combout => \SLCDC|U0|U1|q~0_combout\);

-- Location: FF_X42_Y7_N19
\SLCDC|U0|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	d => \SLCDC|U0|U1|q~0_combout\,
	clrn => \SLCDC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U1|q~q\);

-- Location: LCCOMB_X41_Y7_N20
\SLCDC|U0|U2|CurrentState.state_bit_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_1~4_combout\ = (!\SLCDC|U0|U2|CurrentState.state_bit_1~2_combout\ & (!\SLCDC|U0|U2|CurrentState.state_bit_1~3_combout\ & ((!\SLCDC|U0|U1|q~q\) # (!\SLCDC|U0|U2|CurrentState.state_bit_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U0|U2|CurrentState.state_bit_1~2_combout\,
	datab => \SLCDC|U0|U2|CurrentState.state_bit_1~3_combout\,
	datac => \SLCDC|U0|U2|CurrentState.state_bit_1~1_combout\,
	datad => \SLCDC|U0|U1|q~q\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_1~4_combout\);

-- Location: FF_X41_Y7_N21
\SLCDC|U0|U2|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U0|U2|CurrentState.state_bit_1~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U2|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X41_Y7_N16
\SLCDC|U0|U2|CurrentState.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.IDLE~0_combout\ = ((\SLCDC|U0|U2|CurrentState.state_bit_1~q\ & !\SLCDC|U0|U2|CurrentState.state_bit_0~q\)) # (!\SLCDC|U0|U2|CurrentState.state_bit_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U0|U2|CurrentState.state_bit_1~q\,
	datac => \SLCDC|U0|U2|CurrentState.state_bit_0~q\,
	datad => \SLCDC|U0|U2|CurrentState.state_bit_2~q\,
	combout => \SLCDC|U0|U2|CurrentState.IDLE~0_combout\);

-- Location: LCCOMB_X41_Y7_N0
\SLCDC|U0|U2|CurrentState.state_bit_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U0|U2|CurrentState.state_bit_2~1_combout\ = (\SLCDC|U0|U2|CurrentState.IDLE~0_combout\ & ((\SLCDC|U0|U2|CurrentState.state_bit_2~0_combout\) # ((\SLCDC|U0|U2|CurrentState.state_bit_1~1_combout\ & !\SLCDC|U0|U1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U0|U2|CurrentState.state_bit_2~0_combout\,
	datab => \SLCDC|U0|U2|CurrentState.IDLE~0_combout\,
	datac => \SLCDC|U0|U2|CurrentState.state_bit_1~1_combout\,
	datad => \SLCDC|U0|U1|q~q\,
	combout => \SLCDC|U0|U2|CurrentState.state_bit_2~1_combout\);

-- Location: FF_X41_Y7_N1
\SLCDC|U0|U2|CurrentState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SLCDC|U0|U2|CurrentState.state_bit_2~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U2|CurrentState.state_bit_2~q\);

-- Location: LCCOMB_X43_Y3_N28
\SLCDC|U1|Din_b[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|Din_b[8]~0_combout\ = (\SLCDC|U0|U2|CurrentState.state_bit_2~q\ & (!\SLCDC|U1|dval_reg~q\ & !\SLCDC|U1|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLCDC|U0|U2|CurrentState.state_bit_2~q\,
	datac => \SLCDC|U1|dval_reg~q\,
	datad => \SLCDC|U1|CurrentState.state_bit_0~q\,
	combout => \SLCDC|U1|Din_b[8]~0_combout\);

-- Location: CLKCTRL_G16
\SLCDC|U1|Din_b[8]~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SLCDC|U1|Din_b[8]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SLCDC|U1|Din_b[8]~0clkctrl_outclk\);

-- Location: FF_X37_Y4_N7
\SLCDC|U0|U3|data_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	sload => VCC,
	ena => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U3|data_b\(8));

-- Location: FF_X37_Y4_N29
\SLCDC|U0|U3|data_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	asdata => \SLCDC|U0|U3|data_b\(8),
	sload => VCC,
	ena => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U3|data_b\(7));

-- Location: FF_X37_Y4_N11
\SLCDC|U0|U3|data_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	asdata => \SLCDC|U0|U3|data_b\(7),
	sload => VCC,
	ena => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U3|data_b\(6));

-- Location: FF_X37_Y4_N17
\SLCDC|U0|U3|data_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	asdata => \SLCDC|U0|U3|data_b\(6),
	sload => VCC,
	ena => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U3|data_b\(5));

-- Location: FF_X37_Y4_N31
\SLCDC|U0|U3|data_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	asdata => \SLCDC|U0|U3|data_b\(5),
	sload => VCC,
	ena => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U3|data_b\(4));

-- Location: FF_X37_Y4_N13
\SLCDC|U0|U3|data_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	asdata => \SLCDC|U0|U3|data_b\(4),
	sload => VCC,
	ena => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U3|data_b\(3));

-- Location: FF_X37_Y4_N27
\SLCDC|U0|U3|data_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	asdata => \SLCDC|U0|U3|data_b\(3),
	sload => VCC,
	ena => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U3|data_b\(2));

-- Location: FF_X37_Y4_N25
\SLCDC|U0|U3|data_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	asdata => \SLCDC|U0|U3|data_b\(2),
	sload => VCC,
	ena => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U3|data_b\(1));

-- Location: LCCOMB_X37_Y4_N24
\SLCDC|U1|Din_b[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|Din_b\(1) = (GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & (\SLCDC|U0|U3|data_b\(1))) # (!GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & ((\SLCDC|U1|Din_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U1|Din_b[8]~0clkctrl_outclk\,
	datac => \SLCDC|U0|U3|data_b\(1),
	datad => \SLCDC|U1|Din_b\(1),
	combout => \SLCDC|U1|Din_b\(1));

-- Location: LCCOMB_X37_Y4_N26
\SLCDC|U1|Din_b[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|Din_b\(2) = (GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & (\SLCDC|U0|U3|data_b\(2))) # (!GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & ((\SLCDC|U1|Din_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U1|Din_b[8]~0clkctrl_outclk\,
	datac => \SLCDC|U0|U3|data_b\(2),
	datad => \SLCDC|U1|Din_b\(2),
	combout => \SLCDC|U1|Din_b\(2));

-- Location: LCCOMB_X37_Y4_N12
\SLCDC|U1|Din_b[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|Din_b\(3) = (GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & (\SLCDC|U0|U3|data_b\(3))) # (!GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & ((\SLCDC|U1|Din_b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U1|Din_b[8]~0clkctrl_outclk\,
	datac => \SLCDC|U0|U3|data_b\(3),
	datad => \SLCDC|U1|Din_b\(3),
	combout => \SLCDC|U1|Din_b\(3));

-- Location: LCCOMB_X37_Y4_N30
\SLCDC|U1|Din_b[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|Din_b\(4) = (GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & (\SLCDC|U0|U3|data_b\(4))) # (!GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & ((\SLCDC|U1|Din_b\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U1|Din_b[8]~0clkctrl_outclk\,
	datac => \SLCDC|U0|U3|data_b\(4),
	datad => \SLCDC|U1|Din_b\(4),
	combout => \SLCDC|U1|Din_b\(4));

-- Location: LCCOMB_X37_Y4_N16
\SLCDC|U1|Din_b[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|Din_b\(5) = (GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & (\SLCDC|U0|U3|data_b\(5))) # (!GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & ((\SLCDC|U1|Din_b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U1|Din_b[8]~0clkctrl_outclk\,
	datac => \SLCDC|U0|U3|data_b\(5),
	datad => \SLCDC|U1|Din_b\(5),
	combout => \SLCDC|U1|Din_b\(5));

-- Location: LCCOMB_X37_Y4_N10
\SLCDC|U1|Din_b[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|Din_b\(6) = (GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & (\SLCDC|U0|U3|data_b\(6))) # (!GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & ((\SLCDC|U1|Din_b\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U1|Din_b[8]~0clkctrl_outclk\,
	datac => \SLCDC|U0|U3|data_b\(6),
	datad => \SLCDC|U1|Din_b\(6),
	combout => \SLCDC|U1|Din_b\(6));

-- Location: LCCOMB_X37_Y4_N28
\SLCDC|U1|Din_b[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|Din_b\(7) = (GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & (\SLCDC|U0|U3|data_b\(7))) # (!GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & ((\SLCDC|U1|Din_b\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U1|Din_b[8]~0clkctrl_outclk\,
	datac => \SLCDC|U0|U3|data_b\(7),
	datad => \SLCDC|U1|Din_b\(7),
	combout => \SLCDC|U1|Din_b\(7));

-- Location: LCCOMB_X37_Y4_N6
\SLCDC|U1|Din_b[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|Din_b\(8) = (GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & (\SLCDC|U0|U3|data_b\(8))) # (!GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & ((\SLCDC|U1|Din_b\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U1|Din_b[8]~0clkctrl_outclk\,
	datac => \SLCDC|U0|U3|data_b\(8),
	datad => \SLCDC|U1|Din_b\(8),
	combout => \SLCDC|U1|Din_b\(8));

-- Location: LCCOMB_X47_Y33_N26
\SSC|U2|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U2|tmp~0_combout\ = !\SSC|U2|tmp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U2|tmp~q\,
	combout => \SSC|U2|tmp~0_combout\);

-- Location: FF_X47_Y33_N27
\SSC|U2|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SSC|U2|tmp~0_combout\,
	ena => \SSC|U2|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U2|tmp~q\);

-- Location: CLKCTRL_G6
\SSC|U2|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SSC|U2|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SSC|U2|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y35_N18
\SSC|U1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|CurrentState.state_bit_1~0_combout\ = (\SSC|U1|CurrentState.SEND~0_combout\ & ((\SSC|U1|CurrentState.state_bit_0~q\) # (!\SSC|U1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|CurrentState.SEND~0_combout\,
	datac => \SSC|U1|CurrentState.state_bit_1~q\,
	datad => \SSC|U1|CurrentState.state_bit_0~q\,
	combout => \SSC|U1|CurrentState.state_bit_1~0_combout\);

-- Location: FF_X45_Y35_N19
\SSC|U1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U2|tmp~clkctrl_outclk\,
	d => \SSC|U1|CurrentState.state_bit_1~0_combout\,
	clrn => \SSC|U0|U2|CurrentState.state_bit_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X44_Y35_N2
\SSC|U0|U2|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.state_bit_1~2_combout\ = (\SSC|U0|U2|CurrentState.state_bit_2~q\ & \SSC|U1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.state_bit_2~q\,
	datad => \SSC|U1|CurrentState.state_bit_1~q\,
	combout => \SSC|U0|U2|CurrentState.state_bit_1~2_combout\);

-- Location: FF_X44_Y35_N3
\SSC|nSSsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|nSSsync~q\);

-- Location: CLKCTRL_G12
\SSC|nSSsync~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SSC|nSSsync~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SSC|nSSsync~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y35_N8
\SSC|U0|U0|count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U0|count[0]~3_combout\ = !\SSC|U0|U0|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U0|U0|count\(0),
	combout => \SSC|U0|U0|count[0]~3_combout\);

-- Location: LCCOMB_X44_Y35_N4
\SSC|U0|U2|CurrentState.IDLE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.IDLE~1_combout\ = (!\SSC|U0|U2|CurrentState.state_bit_0~q\ & !\SSC|U0|U2|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.state_bit_0~q\,
	datad => \SSC|U0|U2|CurrentState.state_bit_1~q\,
	combout => \SSC|U0|U2|CurrentState.IDLE~1_combout\);

-- Location: FF_X44_Y35_N9
\SSC|U0|U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	d => \SSC|U0|U0|count[0]~3_combout\,
	clrn => \SSC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U0|count\(0));

-- Location: LCCOMB_X44_Y35_N0
\SSC|U0|U0|count[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U0|count[1]~2_combout\ = \SSC|U0|U0|count\(0) $ (\SSC|U0|U0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSC|U0|U0|count\(0),
	datac => \SSC|U0|U0|count\(1),
	combout => \SSC|U0|U0|count[1]~2_combout\);

-- Location: FF_X44_Y35_N1
\SSC|U0|U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	d => \SSC|U0|U0|count[1]~2_combout\,
	clrn => \SSC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U0|count\(1));

-- Location: LCCOMB_X44_Y35_N18
\SSC|U0|U0|count[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U0|count[2]~1_combout\ = \SSC|U0|U0|count\(2) $ (((\SSC|U0|U0|count\(0) & \SSC|U0|U0|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSC|U0|U0|count\(0),
	datac => \SSC|U0|U0|count\(2),
	datad => \SSC|U0|U0|count\(1),
	combout => \SSC|U0|U0|count[2]~1_combout\);

-- Location: FF_X44_Y35_N19
\SSC|U0|U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	d => \SSC|U0|U0|count[2]~1_combout\,
	clrn => \SSC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U0|count\(2));

-- Location: LCCOMB_X44_Y35_N22
\SSC|U0|U0|count[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U0|count[3]~0_combout\ = \SSC|U0|U0|count\(3) $ (((\SSC|U0|U0|count\(0) & (\SSC|U0|U0|count\(1) & \SSC|U0|U0|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U0|count\(0),
	datab => \SSC|U0|U0|count\(1),
	datac => \SSC|U0|U0|count\(3),
	datad => \SSC|U0|U0|count\(2),
	combout => \SSC|U0|U0|count[3]~0_combout\);

-- Location: FF_X44_Y35_N23
\SSC|U0|U0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	d => \SSC|U0|U0|count[3]~0_combout\,
	clrn => \SSC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U0|count\(3));

-- Location: LCCOMB_X44_Y35_N12
\SSC|U0|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|comb~0_combout\ = (\SSC|U0|U0|count\(3) & (!\SSC|U0|U0|count\(2) & (!\SSC|U0|U0|count\(0) & !\SSC|nSSsync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U0|count\(3),
	datab => \SSC|U0|U0|count\(2),
	datac => \SSC|U0|U0|count\(0),
	datad => \SSC|nSSsync~q\,
	combout => \SSC|U0|comb~0_combout\);

-- Location: LCCOMB_X44_Y35_N6
\SSC|U0|U2|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.state_bit_1~0_combout\ = (!\SSC|U0|U2|CurrentState.state_bit_0~q\ & (!\SSC|U0|U2|CurrentState.state_bit_2~q\ & \SSC|U0|U2|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.state_bit_0~q\,
	datac => \SSC|U0|U2|CurrentState.state_bit_2~q\,
	datad => \SSC|U0|U2|CurrentState.state_bit_1~q\,
	combout => \SSC|U0|U2|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X44_Y35_N26
\SSC|U0|U2|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.state_bit_1~1_combout\ = (\SSC|U0|comb~0_combout\ & (!\SSC|U0|U0|count\(1) & \SSC|U0|U2|CurrentState.state_bit_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|comb~0_combout\,
	datab => \SSC|U0|U0|count\(1),
	datad => \SSC|U0|U2|CurrentState.state_bit_1~0_combout\,
	combout => \SSC|U0|U2|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X44_Y35_N10
\SSC|U0|U2|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.state_bit_1~3_combout\ = (\SSC|U0|U2|CurrentState.state_bit_0~q\ & (((\SSC|U0|U2|CurrentState.state_bit_2~q\)) # (!\SSC|U0|U2|CurrentState.state_bit_1~q\))) # (!\SSC|U0|U2|CurrentState.state_bit_0~q\ & 
-- (!\SSC|U0|U2|CurrentState.state_bit_1~q\ & ((\SSC|U0|U2|CurrentState.state_bit_2~q\) # (!\SLCDC|U0|U2|nEnRx_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.state_bit_0~q\,
	datab => \SSC|U0|U2|CurrentState.state_bit_1~q\,
	datac => \SSC|U0|U2|CurrentState.state_bit_2~q\,
	datad => \SLCDC|U0|U2|nEnRx_reg~q\,
	combout => \SSC|U0|U2|CurrentState.state_bit_1~3_combout\);

-- Location: LCCOMB_X43_Y35_N0
\SSC|U0|U1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U1|q~0_combout\ = !\SSC|U0|U1|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U0|U1|q~q\,
	combout => \SSC|U0|U1|q~0_combout\);

-- Location: FF_X43_Y35_N1
\SSC|U0|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	d => \SSC|U0|U1|q~0_combout\,
	clrn => \SSC|U0|U2|ALT_INV_CurrentState.IDLE~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U1|q~q\);

-- Location: LCCOMB_X43_Y35_N20
\SSC|U0|U2|CurrentState.state_bit_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.state_bit_1~4_combout\ = (!\SSC|U0|U2|CurrentState.state_bit_1~2_combout\ & (!\SSC|U0|U2|CurrentState.state_bit_1~3_combout\ & ((!\SSC|U0|U1|q~q\) # (!\SSC|U0|U2|CurrentState.state_bit_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.state_bit_1~2_combout\,
	datab => \SSC|U0|U2|CurrentState.state_bit_1~1_combout\,
	datac => \SSC|U0|U2|CurrentState.state_bit_1~3_combout\,
	datad => \SSC|U0|U1|q~q\,
	combout => \SSC|U0|U2|CurrentState.state_bit_1~4_combout\);

-- Location: FF_X43_Y35_N21
\SSC|U0|U2|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SSC|U0|U2|CurrentState.state_bit_1~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U2|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X44_Y35_N28
\SSC|U0|U2|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.state_bit_0~0_combout\ = (\SLCDC|U0|U2|nEnRx_reg~q\ & (((\SSC|U0|comb~0_combout\ & !\SSC|U0|U0|count\(1))) # 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|comb~0_combout\,
	datab => \SSC|U0|U0|count\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datad => \SLCDC|U0|U2|nEnRx_reg~q\,
	combout => \SSC|U0|U2|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X44_Y35_N30
\SSC|U0|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|comb~1_combout\ = (\SSC|U0|U0|count\(2) & (!\SSC|nSSsync~q\ & (\SSC|U0|U0|count\(0) & \SSC|U0|U0|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U0|count\(2),
	datab => \SSC|nSSsync~q\,
	datac => \SSC|U0|U0|count\(0),
	datad => \SSC|U0|U0|count\(1),
	combout => \SSC|U0|comb~1_combout\);

-- Location: LCCOMB_X44_Y35_N16
\SSC|U0|U2|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.state_bit_0~1_combout\ = (\SSC|U0|U2|CurrentState.IDLE~0_combout\ & (((\SSC|U0|U0|count\(3)) # (!\SSC|U0|U2|CurrentState.state_bit_1~q\)) # (!\SSC|U0|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|comb~1_combout\,
	datab => \SSC|U0|U2|CurrentState.IDLE~0_combout\,
	datac => \SSC|U0|U0|count\(3),
	datad => \SSC|U0|U2|CurrentState.state_bit_1~q\,
	combout => \SSC|U0|U2|CurrentState.state_bit_0~1_combout\);

-- Location: LCCOMB_X43_Y35_N10
\SSC|U0|U2|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.state_bit_0~2_combout\ = (\SSC|U0|U2|CurrentState.state_bit_0~1_combout\ & ((\SSC|U0|U2|CurrentState.state_bit_1~q\ & ((\SSC|U0|U2|CurrentState.state_bit_0~q\))) # (!\SSC|U0|U2|CurrentState.state_bit_1~q\ & 
-- (\SSC|U0|U2|CurrentState.state_bit_0~0_combout\ & !\SSC|U0|U2|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.state_bit_1~q\,
	datab => \SSC|U0|U2|CurrentState.state_bit_0~0_combout\,
	datac => \SSC|U0|U2|CurrentState.state_bit_0~q\,
	datad => \SSC|U0|U2|CurrentState.state_bit_0~1_combout\,
	combout => \SSC|U0|U2|CurrentState.state_bit_0~2_combout\);

-- Location: FF_X43_Y35_N11
\SSC|U0|U2|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SSC|U0|U2|CurrentState.state_bit_0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U2|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X43_Y35_N6
\SSC|U0|U2|CurrentState.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.IDLE~0_combout\ = ((!\SSC|U0|U2|CurrentState.state_bit_0~q\ & \SSC|U0|U2|CurrentState.state_bit_1~q\)) # (!\SSC|U0|U2|CurrentState.state_bit_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.state_bit_0~q\,
	datab => \SSC|U0|U2|CurrentState.state_bit_2~q\,
	datad => \SSC|U0|U2|CurrentState.state_bit_1~q\,
	combout => \SSC|U0|U2|CurrentState.IDLE~0_combout\);

-- Location: LCCOMB_X44_Y35_N24
\SSC|U0|U2|CurrentState.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.state_bit_2~0_combout\ = (\SSC|U0|U2|CurrentState.state_bit_2~q\ & !\SSC|U1|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.state_bit_2~q\,
	datad => \SSC|U1|CurrentState.state_bit_1~q\,
	combout => \SSC|U0|U2|CurrentState.state_bit_2~0_combout\);

-- Location: LCCOMB_X43_Y35_N24
\SSC|U0|U2|CurrentState.state_bit_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.state_bit_2~1_combout\ = (\SSC|U0|U2|CurrentState.IDLE~0_combout\ & ((\SSC|U0|U2|CurrentState.state_bit_2~0_combout\) # ((!\SSC|U0|U1|q~q\ & \SSC|U0|U2|CurrentState.state_bit_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.IDLE~0_combout\,
	datab => \SSC|U0|U1|q~q\,
	datac => \SSC|U0|U2|CurrentState.state_bit_2~0_combout\,
	datad => \SSC|U0|U2|CurrentState.state_bit_1~1_combout\,
	combout => \SSC|U0|U2|CurrentState.state_bit_2~1_combout\);

-- Location: FF_X43_Y35_N25
\SSC|U0|U2|CurrentState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SSC|U0|U2|CurrentState.state_bit_2~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_irf_reg[1][0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U2|CurrentState.state_bit_2~q\);

-- Location: FF_X45_Y35_N23
\SSC|U1|dval_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U2|tmp~clkctrl_outclk\,
	asdata => \SSC|U0|U2|CurrentState.state_bit_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U1|dval_reg~q\);

-- Location: LCCOMB_X45_Y35_N24
\SSC|U1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|CurrentState.state_bit_0~0_combout\ = (!\SSC|U1|CurrentState.state_bit_1~q\ & ((\SSC|U1|CurrentState.state_bit_0~q\) # (!\SSC|U1|dval_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|dval_reg~q\,
	datac => \SSC|U1|CurrentState.state_bit_0~q\,
	datad => \SSC|U1|CurrentState.state_bit_1~q\,
	combout => \SSC|U1|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X45_Y35_N25
\SSC|U1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U2|tmp~clkctrl_outclk\,
	d => \SSC|U1|CurrentState.state_bit_0~0_combout\,
	clrn => \SSC|U0|U2|CurrentState.state_bit_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X45_Y35_N12
\SSC|U1|CurrentState.SEND~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|CurrentState.SEND~0_combout\ = LCELL((\SSC|U1|CurrentState.state_bit_0~q\ & !\SSC|U1|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSC|U1|CurrentState.state_bit_0~q\,
	datad => \SSC|U1|CurrentState.state_bit_1~q\,
	combout => \SSC|U1|CurrentState.SEND~0_combout\);

-- Location: CLKCTRL_G5
\SSC|U1|CurrentState.SEND~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SSC|U1|CurrentState.SEND~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\);

-- Location: LCCOMB_X71_Y44_N10
\SSC|U0|U3|data_b[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U3|data_b[6]~feeder_combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \SSC|U0|U3|data_b[6]~feeder_combout\);

-- Location: LCCOMB_X44_Y35_N20
\SSC|U0|U2|CurrentState.RECEIVING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U2|CurrentState.RECEIVING~0_combout\ = (\SSC|U0|U2|CurrentState.state_bit_0~q\ & \SSC|U0|U2|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.state_bit_0~q\,
	datad => \SSC|U0|U2|CurrentState.state_bit_1~q\,
	combout => \SSC|U0|U2|CurrentState.RECEIVING~0_combout\);

-- Location: FF_X71_Y44_N11
\SSC|U0|U3|data_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	d => \SSC|U0|U3|data_b[6]~feeder_combout\,
	ena => \SSC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U3|data_b\(6));

-- Location: LCCOMB_X71_Y44_N28
\SSC|U0|U3|data_b[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U3|data_b[5]~feeder_combout\ = \SSC|U0|U3|data_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U0|U3|data_b\(6),
	combout => \SSC|U0|U3|data_b[5]~feeder_combout\);

-- Location: FF_X71_Y44_N29
\SSC|U0|U3|data_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	d => \SSC|U0|U3|data_b[5]~feeder_combout\,
	ena => \SSC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U3|data_b\(5));

-- Location: LCCOMB_X71_Y44_N26
\SSC|U0|U3|data_b[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U3|data_b[4]~feeder_combout\ = \SSC|U0|U3|data_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U0|U3|data_b\(5),
	combout => \SSC|U0|U3|data_b[4]~feeder_combout\);

-- Location: FF_X71_Y44_N27
\SSC|U0|U3|data_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	d => \SSC|U0|U3|data_b[4]~feeder_combout\,
	ena => \SSC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U3|data_b\(4));

-- Location: LCCOMB_X71_Y44_N12
\SSC|U0|U3|data_b[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U0|U3|data_b[3]~feeder_combout\ = \SSC|U0|U3|data_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U0|U3|data_b\(4),
	combout => \SSC|U0|U3|data_b[3]~feeder_combout\);

-- Location: FF_X71_Y44_N13
\SSC|U0|U3|data_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	d => \SSC|U0|U3|data_b[3]~feeder_combout\,
	ena => \SSC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U3|data_b\(3));

-- Location: LCCOMB_X45_Y35_N22
\SSC|U1|Din_b[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|Din_b[6]~0_combout\ = (\SSC|U0|U2|CurrentState.state_bit_2~q\ & (!\SSC|U1|dval_reg~q\ & !\SSC|U1|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U2|CurrentState.state_bit_2~q\,
	datac => \SSC|U1|dval_reg~q\,
	datad => \SSC|U1|CurrentState.state_bit_0~q\,
	combout => \SSC|U1|Din_b[6]~0_combout\);

-- Location: CLKCTRL_G10
\SSC|U1|Din_b[6]~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SSC|U1|Din_b[6]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SSC|U1|Din_b[6]~0clkctrl_outclk\);

-- Location: LCCOMB_X75_Y44_N10
\SSC|U1|Din_b[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|Din_b\(3) = (GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & (\SSC|U0|U3|data_b\(3))) # (!GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & ((\SSC|U1|Din_b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U3|data_b\(3),
	datac => \SSC|U1|Din_b[6]~0clkctrl_outclk\,
	datad => \SSC|U1|Din_b\(3),
	combout => \SSC|U1|Din_b\(3));

-- Location: FF_X71_Y44_N7
\SSC|U0|U3|data_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	asdata => \SSC|U0|U3|data_b\(3),
	sload => VCC,
	ena => \SSC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U3|data_b\(2));

-- Location: LCCOMB_X71_Y44_N6
\SSC|U1|Din_b[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|Din_b\(2) = (GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & (\SSC|U0|U3|data_b\(2))) # (!GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & ((\SSC|U1|Din_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b[6]~0clkctrl_outclk\,
	datac => \SSC|U0|U3|data_b\(2),
	datad => \SSC|U1|Din_b\(2),
	combout => \SSC|U1|Din_b\(2));

-- Location: FF_X71_Y44_N1
\SSC|U0|U3|data_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	asdata => \SSC|U0|U3|data_b\(2),
	sload => VCC,
	ena => \SSC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U3|data_b\(1));

-- Location: LCCOMB_X71_Y44_N0
\SSC|U1|Din_b[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|Din_b\(1) = (GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & (\SSC|U0|U3|data_b\(1))) # (!GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & ((\SSC|U1|Din_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b[6]~0clkctrl_outclk\,
	datac => \SSC|U0|U3|data_b\(1),
	datad => \SSC|U1|Din_b\(1),
	combout => \SSC|U1|Din_b\(1));

-- Location: FF_X71_Y44_N3
\SSC|U0|U3|data_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|nSSsync~clkctrl_outclk\,
	asdata => \SSC|U0|U3|data_b\(1),
	sload => VCC,
	ena => \SSC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SSC|U0|U3|data_b\(0));

-- Location: LCCOMB_X71_Y44_N2
\SSC|U1|Din_b[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|Din_b\(0) = (GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & (\SSC|U0|U3|data_b\(0))) # (!GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & ((\SSC|U1|Din_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b[6]~0clkctrl_outclk\,
	datac => \SSC|U0|U3|data_b\(0),
	datad => \SSC|U1|Din_b\(0),
	combout => \SSC|U1|Din_b\(0));

-- Location: LCCOMB_X71_Y44_N20
\Score|clear_reg|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|clear_reg|q~0_combout\ = (\SSC|U1|Din_b\(2) & (\SSC|U1|Din_b\(1) & \SSC|U1|Din_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b\(2),
	datab => \SSC|U1|Din_b\(1),
	datad => \SSC|U1|Din_b\(0),
	combout => \Score|clear_reg|q~0_combout\);

-- Location: LCCOMB_X75_Y44_N8
\Score|clear_reg|q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|clear_reg|q~1_combout\ = (\Score|clear_reg|q~0_combout\ & (!\SSC|U1|Din_b\(3))) # (!\Score|clear_reg|q~0_combout\ & ((\Score|clear_reg|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b\(3),
	datac => \Score|clear_reg|q~q\,
	datad => \Score|clear_reg|q~0_combout\,
	combout => \Score|clear_reg|q~1_combout\);

-- Location: FF_X75_Y44_N9
\Score|clear_reg|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|clear_reg|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|clear_reg|q~q\);

-- Location: LCCOMB_X75_Y44_N16
\Score|circuit_gen:0:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:in_reg|u0|q~0_combout\ = !\SSC|U1|Din_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(3),
	combout => \Score|circuit_gen:0:in_reg|u0|q~0_combout\);

-- Location: LCCOMB_X71_Y44_N30
\Score|decoder|dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|decoder|dout\(0) = (!\SSC|U1|Din_b\(2) & (!\SSC|U1|Din_b\(1) & !\SSC|U1|Din_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b\(2),
	datab => \SSC|U1|Din_b\(1),
	datad => \SSC|U1|Din_b\(0),
	combout => \Score|decoder|dout\(0));

-- Location: FF_X75_Y44_N17
\Score|circuit_gen:0:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:0:in_reg|u0|q~0_combout\,
	ena => \Score|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:0:in_reg|u0|q~q\);

-- Location: LCCOMB_X71_Y44_N16
\Score|decoder|dout[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|decoder|dout[6]~0_combout\ = (\SSC|U1|Din_b\(2) & (\SSC|U1|Din_b\(1) & !\SSC|U1|Din_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b\(2),
	datab => \SSC|U1|Din_b\(1),
	datad => \SSC|U1|Din_b\(0),
	combout => \Score|decoder|dout[6]~0_combout\);

-- Location: FF_X74_Y50_N7
\Score|circuit_gen:0:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:0:in_reg|u0|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:0:out_reg|u0|q~q\);

-- Location: LCCOMB_X71_Y44_N24
\SSC|U1|Din_b[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|Din_b\(4) = (GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & (\SSC|U0|U3|data_b\(4))) # (!GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & ((\SSC|U1|Din_b\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U3|data_b\(4),
	datac => \SSC|U1|Din_b[6]~0clkctrl_outclk\,
	datad => \SSC|U1|Din_b\(4),
	combout => \SSC|U1|Din_b\(4));

-- Location: LCCOMB_X75_Y44_N14
\Score|circuit_gen:0:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:in_reg|u1|q~0_combout\ = !\SSC|U1|Din_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(4),
	combout => \Score|circuit_gen:0:in_reg|u1|q~0_combout\);

-- Location: FF_X75_Y44_N15
\Score|circuit_gen:0:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:0:in_reg|u1|q~0_combout\,
	ena => \Score|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:0:in_reg|u1|q~q\);

-- Location: FF_X74_Y50_N5
\Score|circuit_gen:0:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:0:in_reg|u1|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:0:out_reg|u1|q~q\);

-- Location: LCCOMB_X75_Y44_N20
\SSC|U1|Din_b[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|Din_b\(6) = (GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & (\SSC|U0|U3|data_b\(6))) # (!GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & ((\SSC|U1|Din_b\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U0|U3|data_b\(6),
	datac => \SSC|U1|Din_b[6]~0clkctrl_outclk\,
	datad => \SSC|U1|Din_b\(6),
	combout => \SSC|U1|Din_b\(6));

-- Location: LCCOMB_X75_Y44_N26
\Score|circuit_gen:0:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:in_reg|u3|q~0_combout\ = !\SSC|U1|Din_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(6),
	combout => \Score|circuit_gen:0:in_reg|u3|q~0_combout\);

-- Location: FF_X75_Y44_N27
\Score|circuit_gen:0:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:0:in_reg|u3|q~0_combout\,
	ena => \Score|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:0:in_reg|u3|q~q\);

-- Location: LCCOMB_X74_Y50_N8
\Score|circuit_gen:0:out_reg|u3|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:out_reg|u3|q~feeder_combout\ = \Score|circuit_gen:0:in_reg|u3|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|circuit_gen:0:in_reg|u3|q~q\,
	combout => \Score|circuit_gen:0:out_reg|u3|q~feeder_combout\);

-- Location: FF_X74_Y50_N9
\Score|circuit_gen:0:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:0:out_reg|u3|q~feeder_combout\,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:0:out_reg|u3|q~q\);

-- Location: LCCOMB_X75_Y44_N6
\SSC|U1|Din_b[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SSC|U1|Din_b\(5) = (GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & (\SSC|U0|U3|data_b\(5))) # (!GLOBAL(\SSC|U1|Din_b[6]~0clkctrl_outclk\) & ((\SSC|U1|Din_b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSC|U0|U3|data_b\(5),
	datac => \SSC|U1|Din_b[6]~0clkctrl_outclk\,
	datad => \SSC|U1|Din_b\(5),
	combout => \SSC|U1|Din_b\(5));

-- Location: LCCOMB_X75_Y44_N28
\Score|circuit_gen:0:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:in_reg|u2|q~0_combout\ = !\SSC|U1|Din_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(5),
	combout => \Score|circuit_gen:0:in_reg|u2|q~0_combout\);

-- Location: FF_X75_Y44_N29
\Score|circuit_gen:0:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:0:in_reg|u2|q~0_combout\,
	ena => \Score|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:0:in_reg|u2|q~q\);

-- Location: LCCOMB_X74_Y50_N10
\Score|circuit_gen:0:out_reg|u2|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:out_reg|u2|q~feeder_combout\ = \Score|circuit_gen:0:in_reg|u2|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|circuit_gen:0:in_reg|u2|q~q\,
	combout => \Score|circuit_gen:0:out_reg|u2|q~feeder_combout\);

-- Location: FF_X74_Y50_N11
\Score|circuit_gen:0:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:0:out_reg|u2|q~feeder_combout\,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:0:out_reg|u2|q~q\);

-- Location: LCCOMB_X74_Y50_N24
\Score|circuit_gen:0:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ = (\Score|circuit_gen:0:out_reg|u3|q~q\ & (\Score|circuit_gen:0:out_reg|u1|q~q\ & (\Score|circuit_gen:0:out_reg|u0|q~q\ $ (\Score|circuit_gen:0:out_reg|u2|q~q\)))) # (!\Score|circuit_gen:0:out_reg|u3|q~q\ 
-- & (((!\Score|circuit_gen:0:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:0:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:0:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:0:out_reg|u3|q~q\,
	datad => \Score|circuit_gen:0:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X74_Y50_N18
\Score|circuit_gen:0:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ = (\Score|circuit_gen:0:hex_digit|Ndout[0]~0_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:0:hex_digit|Ndout[0]~0_combout\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X74_Y50_N12
\Score|circuit_gen:0:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ = (\Score|circuit_gen:0:out_reg|u0|q~q\ & (!\Score|circuit_gen:0:out_reg|u2|q~q\ & ((!\Score|circuit_gen:0:out_reg|u3|q~q\) # (!\Score|circuit_gen:0:out_reg|u1|q~q\)))) # 
-- (!\Score|circuit_gen:0:out_reg|u0|q~q\ & ((\Score|circuit_gen:0:out_reg|u1|q~q\ & ((!\Score|circuit_gen:0:out_reg|u2|q~q\))) # (!\Score|circuit_gen:0:out_reg|u1|q~q\ & (!\Score|circuit_gen:0:out_reg|u3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:0:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:0:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:0:out_reg|u3|q~q\,
	datad => \Score|circuit_gen:0:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X74_Y50_N22
\Score|circuit_gen:0:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ = (\Score|circuit_gen:0:hex_digit|Ndout[1]~2_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:0:hex_digit|Ndout[1]~2_combout\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X74_Y50_N16
\Score|circuit_gen:0:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ = (\Score|circuit_gen:0:out_reg|u1|q~q\ & (((\Score|circuit_gen:0:out_reg|u3|q~q\) # (\Score|circuit_gen:0:out_reg|u2|q~q\)))) # (!\Score|circuit_gen:0:out_reg|u1|q~q\ & 
-- ((\Score|circuit_gen:0:out_reg|u0|q~q\ & ((!\Score|circuit_gen:0:out_reg|u2|q~q\))) # (!\Score|circuit_gen:0:out_reg|u0|q~q\ & (\Score|circuit_gen:0:out_reg|u3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:0:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:0:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:0:out_reg|u3|q~q\,
	datad => \Score|circuit_gen:0:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X74_Y50_N26
\Score|circuit_gen:0:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ = (!\Score|circuit_gen:0:hex_digit|Ndout[2]~4_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:0:hex_digit|Ndout[2]~4_combout\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X74_Y50_N28
\Score|circuit_gen:0:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[3]~6_combout\ = (\Score|circuit_gen:0:out_reg|u1|q~q\ & (\Score|circuit_gen:0:out_reg|u0|q~q\ $ (((\Score|circuit_gen:0:out_reg|u2|q~q\))))) # (!\Score|circuit_gen:0:out_reg|u1|q~q\ & 
-- ((\Score|circuit_gen:0:out_reg|u2|q~q\ & ((!\Score|circuit_gen:0:out_reg|u3|q~q\))) # (!\Score|circuit_gen:0:out_reg|u2|q~q\ & (!\Score|circuit_gen:0:out_reg|u0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:0:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:0:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:0:out_reg|u3|q~q\,
	datad => \Score|circuit_gen:0:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X74_Y50_N14
\Score|circuit_gen:0:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ = (\Score|circuit_gen:0:hex_digit|Ndout[3]~6_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:0:hex_digit|Ndout[3]~6_combout\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X74_Y50_N0
\Score|circuit_gen:0:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[4]~8_combout\ = (\Score|circuit_gen:0:out_reg|u1|q~q\ & ((\Score|circuit_gen:0:out_reg|u2|q~q\ & (!\Score|circuit_gen:0:out_reg|u0|q~q\)) # (!\Score|circuit_gen:0:out_reg|u2|q~q\ & 
-- ((\Score|circuit_gen:0:out_reg|u3|q~q\))))) # (!\Score|circuit_gen:0:out_reg|u1|q~q\ & (((!\Score|circuit_gen:0:out_reg|u3|q~q\)) # (!\Score|circuit_gen:0:out_reg|u0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:0:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:0:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:0:out_reg|u3|q~q\,
	datad => \Score|circuit_gen:0:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X74_Y50_N2
\Score|circuit_gen:0:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ = (\Score|circuit_gen:0:hex_digit|Ndout[4]~8_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:0:hex_digit|Ndout[4]~8_combout\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X74_Y50_N4
\Score|circuit_gen:0:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[5]~10_combout\ = (\Score|circuit_gen:0:out_reg|u0|q~q\ & (!\Score|circuit_gen:0:out_reg|u1|q~q\ & ((\Score|circuit_gen:0:out_reg|u2|q~q\) # (!\Score|circuit_gen:0:out_reg|u3|q~q\)))) # 
-- (!\Score|circuit_gen:0:out_reg|u0|q~q\ & ((\Score|circuit_gen:0:out_reg|u3|q~q\ & ((\Score|circuit_gen:0:out_reg|u2|q~q\) # (!\Score|circuit_gen:0:out_reg|u1|q~q\))) # (!\Score|circuit_gen:0:out_reg|u3|q~q\ & ((!\Score|circuit_gen:0:out_reg|u2|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:0:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:0:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:0:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:0:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X74_Y50_N20
\Score|circuit_gen:0:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ = (\Score|circuit_gen:0:hex_digit|Ndout[5]~10_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|circuit_gen:0:hex_digit|Ndout[5]~10_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X74_Y50_N6
\Score|circuit_gen:0:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[6]~12_combout\ = (\Score|circuit_gen:0:out_reg|u2|q~q\ & (\Score|circuit_gen:0:out_reg|u3|q~q\ $ (((\Score|circuit_gen:0:out_reg|u1|q~q\))))) # (!\Score|circuit_gen:0:out_reg|u2|q~q\ & 
-- (\Score|circuit_gen:0:out_reg|u3|q~q\ & ((\Score|circuit_gen:0:out_reg|u0|q~q\) # (\Score|circuit_gen:0:out_reg|u1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:0:out_reg|u2|q~q\,
	datab => \Score|circuit_gen:0:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:0:out_reg|u0|q~q\,
	datad => \Score|circuit_gen:0:out_reg|u1|q~q\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X74_Y50_N30
\Score|circuit_gen:0:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ = (!\Score|clear_reg|q~q\) # (!\Score|circuit_gen:0:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|circuit_gen:0:hex_digit|Ndout[6]~12_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:0:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X72_Y44_N30
\Score|circuit_gen:1:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:in_reg|u0|q~0_combout\ = !\SSC|U1|Din_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(3),
	combout => \Score|circuit_gen:1:in_reg|u0|q~0_combout\);

-- Location: LCCOMB_X71_Y44_N4
\Score|decoder|dout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|decoder|dout[1]~1_combout\ = (!\SSC|U1|Din_b\(2) & (!\SSC|U1|Din_b\(1) & \SSC|U1|Din_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b\(2),
	datab => \SSC|U1|Din_b\(1),
	datad => \SSC|U1|Din_b\(0),
	combout => \Score|decoder|dout[1]~1_combout\);

-- Location: FF_X72_Y44_N31
\Score|circuit_gen:1:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:1:in_reg|u0|q~0_combout\,
	ena => \Score|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:1:in_reg|u0|q~q\);

-- Location: FF_X71_Y48_N21
\Score|circuit_gen:1:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:1:in_reg|u0|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:1:out_reg|u0|q~q\);

-- Location: LCCOMB_X72_Y44_N10
\Score|circuit_gen:1:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:in_reg|u2|q~0_combout\ = !\SSC|U1|Din_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(5),
	combout => \Score|circuit_gen:1:in_reg|u2|q~0_combout\);

-- Location: FF_X72_Y44_N11
\Score|circuit_gen:1:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:1:in_reg|u2|q~0_combout\,
	ena => \Score|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:1:in_reg|u2|q~q\);

-- Location: FF_X71_Y44_N19
\Score|circuit_gen:1:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:1:in_reg|u2|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:1:out_reg|u2|q~q\);

-- Location: LCCOMB_X72_Y44_N12
\Score|circuit_gen:1:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:in_reg|u1|q~0_combout\ = !\SSC|U1|Din_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(4),
	combout => \Score|circuit_gen:1:in_reg|u1|q~0_combout\);

-- Location: FF_X72_Y44_N13
\Score|circuit_gen:1:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:1:in_reg|u1|q~0_combout\,
	ena => \Score|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:1:in_reg|u1|q~q\);

-- Location: FF_X71_Y48_N19
\Score|circuit_gen:1:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:1:in_reg|u1|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:1:out_reg|u1|q~q\);

-- Location: LCCOMB_X72_Y44_N0
\Score|circuit_gen:1:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:in_reg|u3|q~0_combout\ = !\SSC|U1|Din_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(6),
	combout => \Score|circuit_gen:1:in_reg|u3|q~0_combout\);

-- Location: FF_X72_Y44_N1
\Score|circuit_gen:1:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:1:in_reg|u3|q~0_combout\,
	ena => \Score|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:1:in_reg|u3|q~q\);

-- Location: LCCOMB_X71_Y48_N24
\Score|circuit_gen:1:out_reg|u3|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:out_reg|u3|q~feeder_combout\ = \Score|circuit_gen:1:in_reg|u3|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|circuit_gen:1:in_reg|u3|q~q\,
	combout => \Score|circuit_gen:1:out_reg|u3|q~feeder_combout\);

-- Location: FF_X71_Y48_N25
\Score|circuit_gen:1:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:1:out_reg|u3|q~feeder_combout\,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:1:out_reg|u3|q~q\);

-- Location: LCCOMB_X71_Y48_N6
\Score|circuit_gen:1:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ = (\Score|circuit_gen:1:out_reg|u3|q~q\ & (\Score|circuit_gen:1:out_reg|u1|q~q\ & (\Score|circuit_gen:1:out_reg|u0|q~q\ $ (\Score|circuit_gen:1:out_reg|u2|q~q\)))) # (!\Score|circuit_gen:1:out_reg|u3|q~q\ 
-- & (((!\Score|circuit_gen:1:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:1:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:1:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:1:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:1:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X71_Y48_N0
\Score|circuit_gen:1:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ = (\Score|circuit_gen:1:hex_digit|Ndout[0]~0_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:1:hex_digit|Ndout[0]~0_combout\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X71_Y48_N10
\Score|circuit_gen:1:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ = (\Score|circuit_gen:1:out_reg|u0|q~q\ & (!\Score|circuit_gen:1:out_reg|u2|q~q\ & ((!\Score|circuit_gen:1:out_reg|u3|q~q\) # (!\Score|circuit_gen:1:out_reg|u1|q~q\)))) # 
-- (!\Score|circuit_gen:1:out_reg|u0|q~q\ & ((\Score|circuit_gen:1:out_reg|u1|q~q\ & (!\Score|circuit_gen:1:out_reg|u2|q~q\)) # (!\Score|circuit_gen:1:out_reg|u1|q~q\ & ((!\Score|circuit_gen:1:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:1:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:1:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:1:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:1:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X71_Y48_N12
\Score|circuit_gen:1:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ = (\Score|circuit_gen:1:hex_digit|Ndout[1]~2_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:1:hex_digit|Ndout[1]~2_combout\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X71_Y48_N22
\Score|circuit_gen:1:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ = (\Score|circuit_gen:1:out_reg|u1|q~q\ & (((\Score|circuit_gen:1:out_reg|u2|q~q\) # (\Score|circuit_gen:1:out_reg|u3|q~q\)))) # (!\Score|circuit_gen:1:out_reg|u1|q~q\ & 
-- ((\Score|circuit_gen:1:out_reg|u0|q~q\ & (!\Score|circuit_gen:1:out_reg|u2|q~q\)) # (!\Score|circuit_gen:1:out_reg|u0|q~q\ & ((\Score|circuit_gen:1:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:1:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:1:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:1:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:1:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X71_Y48_N8
\Score|circuit_gen:1:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ = (!\Score|clear_reg|q~q\) # (!\Score|circuit_gen:1:hex_digit|Ndout[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:1:hex_digit|Ndout[2]~4_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X71_Y48_N26
\Score|circuit_gen:1:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[3]~6_combout\ = (\Score|circuit_gen:1:out_reg|u2|q~q\ & ((\Score|circuit_gen:1:out_reg|u1|q~q\ & (!\Score|circuit_gen:1:out_reg|u0|q~q\)) # (!\Score|circuit_gen:1:out_reg|u1|q~q\ & 
-- ((!\Score|circuit_gen:1:out_reg|u3|q~q\))))) # (!\Score|circuit_gen:1:out_reg|u2|q~q\ & (\Score|circuit_gen:1:out_reg|u0|q~q\ $ ((!\Score|circuit_gen:1:out_reg|u1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:1:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:1:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:1:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:1:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X71_Y48_N28
\Score|circuit_gen:1:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ = (\Score|circuit_gen:1:hex_digit|Ndout[3]~6_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:1:hex_digit|Ndout[3]~6_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X71_Y48_N30
\Score|circuit_gen:1:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[4]~8_combout\ = (\Score|circuit_gen:1:out_reg|u1|q~q\ & ((\Score|circuit_gen:1:out_reg|u2|q~q\ & (!\Score|circuit_gen:1:out_reg|u0|q~q\)) # (!\Score|circuit_gen:1:out_reg|u2|q~q\ & 
-- ((\Score|circuit_gen:1:out_reg|u3|q~q\))))) # (!\Score|circuit_gen:1:out_reg|u1|q~q\ & (((!\Score|circuit_gen:1:out_reg|u3|q~q\)) # (!\Score|circuit_gen:1:out_reg|u0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:1:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:1:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:1:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:1:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X71_Y48_N16
\Score|circuit_gen:1:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ = (\Score|circuit_gen:1:hex_digit|Ndout[4]~8_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:1:hex_digit|Ndout[4]~8_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X71_Y48_N18
\Score|circuit_gen:1:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[5]~10_combout\ = (\Score|circuit_gen:1:out_reg|u0|q~q\ & (!\Score|circuit_gen:1:out_reg|u1|q~q\ & ((\Score|circuit_gen:1:out_reg|u2|q~q\) # (!\Score|circuit_gen:1:out_reg|u3|q~q\)))) # 
-- (!\Score|circuit_gen:1:out_reg|u0|q~q\ & ((\Score|circuit_gen:1:out_reg|u2|q~q\ & ((\Score|circuit_gen:1:out_reg|u3|q~q\))) # (!\Score|circuit_gen:1:out_reg|u2|q~q\ & ((!\Score|circuit_gen:1:out_reg|u3|q~q\) # (!\Score|circuit_gen:1:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:1:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:1:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:1:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:1:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X71_Y48_N2
\Score|circuit_gen:1:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ = (\Score|circuit_gen:1:hex_digit|Ndout[5]~10_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:1:hex_digit|Ndout[5]~10_combout\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X71_Y48_N20
\Score|circuit_gen:1:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[6]~12_combout\ = (\Score|circuit_gen:1:out_reg|u1|q~q\ & (\Score|circuit_gen:1:out_reg|u2|q~q\ $ (((\Score|circuit_gen:1:out_reg|u3|q~q\))))) # (!\Score|circuit_gen:1:out_reg|u1|q~q\ & 
-- (\Score|circuit_gen:1:out_reg|u3|q~q\ & ((\Score|circuit_gen:1:out_reg|u2|q~q\) # (\Score|circuit_gen:1:out_reg|u0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:1:out_reg|u1|q~q\,
	datab => \Score|circuit_gen:1:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:1:out_reg|u0|q~q\,
	datad => \Score|circuit_gen:1:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X71_Y48_N4
\Score|circuit_gen:1:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ = (!\Score|circuit_gen:1:hex_digit|Ndout[6]~12_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:1:hex_digit|Ndout[6]~12_combout\,
	combout => \Score|circuit_gen:1:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X75_Y46_N6
\Score|circuit_gen:2:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:in_reg|u0|q~0_combout\ = !\SSC|U1|Din_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(3),
	combout => \Score|circuit_gen:2:in_reg|u0|q~0_combout\);

-- Location: LCCOMB_X71_Y44_N22
\Score|decoder|dout[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|decoder|dout[2]~2_combout\ = (!\SSC|U1|Din_b\(2) & (\SSC|U1|Din_b\(1) & !\SSC|U1|Din_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b\(2),
	datab => \SSC|U1|Din_b\(1),
	datad => \SSC|U1|Din_b\(0),
	combout => \Score|decoder|dout[2]~2_combout\);

-- Location: FF_X75_Y46_N7
\Score|circuit_gen:2:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:2:in_reg|u0|q~0_combout\,
	ena => \Score|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:2:in_reg|u0|q~q\);

-- Location: FF_X76_Y46_N31
\Score|circuit_gen:2:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:2:in_reg|u0|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:2:out_reg|u0|q~q\);

-- Location: LCCOMB_X75_Y46_N4
\Score|circuit_gen:2:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:in_reg|u1|q~0_combout\ = !\SSC|U1|Din_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(4),
	combout => \Score|circuit_gen:2:in_reg|u1|q~0_combout\);

-- Location: FF_X75_Y46_N5
\Score|circuit_gen:2:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:2:in_reg|u1|q~0_combout\,
	ena => \Score|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:2:in_reg|u1|q~q\);

-- Location: FF_X76_Y46_N29
\Score|circuit_gen:2:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:2:in_reg|u1|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:2:out_reg|u1|q~q\);

-- Location: LCCOMB_X75_Y46_N10
\Score|circuit_gen:2:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:in_reg|u2|q~0_combout\ = !\SSC|U1|Din_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(5),
	combout => \Score|circuit_gen:2:in_reg|u2|q~0_combout\);

-- Location: FF_X75_Y46_N11
\Score|circuit_gen:2:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:2:in_reg|u2|q~0_combout\,
	ena => \Score|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:2:in_reg|u2|q~q\);

-- Location: LCCOMB_X76_Y46_N26
\Score|circuit_gen:2:out_reg|u2|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:out_reg|u2|q~feeder_combout\ = \Score|circuit_gen:2:in_reg|u2|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|circuit_gen:2:in_reg|u2|q~q\,
	combout => \Score|circuit_gen:2:out_reg|u2|q~feeder_combout\);

-- Location: FF_X76_Y46_N27
\Score|circuit_gen:2:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:2:out_reg|u2|q~feeder_combout\,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:2:out_reg|u2|q~q\);

-- Location: LCCOMB_X75_Y46_N24
\Score|circuit_gen:2:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:in_reg|u3|q~0_combout\ = !\SSC|U1|Din_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(6),
	combout => \Score|circuit_gen:2:in_reg|u3|q~0_combout\);

-- Location: FF_X75_Y46_N25
\Score|circuit_gen:2:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:2:in_reg|u3|q~0_combout\,
	ena => \Score|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:2:in_reg|u3|q~q\);

-- Location: LCCOMB_X76_Y46_N24
\Score|circuit_gen:2:out_reg|u3|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:out_reg|u3|q~feeder_combout\ = \Score|circuit_gen:2:in_reg|u3|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|circuit_gen:2:in_reg|u3|q~q\,
	combout => \Score|circuit_gen:2:out_reg|u3|q~feeder_combout\);

-- Location: FF_X76_Y46_N25
\Score|circuit_gen:2:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:2:out_reg|u3|q~feeder_combout\,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:2:out_reg|u3|q~q\);

-- Location: LCCOMB_X76_Y46_N8
\Score|circuit_gen:2:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ = (\Score|circuit_gen:2:out_reg|u3|q~q\ & (\Score|circuit_gen:2:out_reg|u1|q~q\ & (\Score|circuit_gen:2:out_reg|u0|q~q\ $ (\Score|circuit_gen:2:out_reg|u2|q~q\)))) # (!\Score|circuit_gen:2:out_reg|u3|q~q\ 
-- & (((!\Score|circuit_gen:2:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:2:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:2:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:2:out_reg|u2|q~q\,
	datad => \Score|circuit_gen:2:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X76_Y46_N10
\Score|circuit_gen:2:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ = (\Score|circuit_gen:2:hex_digit|Ndout[0]~0_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|clear_reg|q~q\,
	datac => \Score|circuit_gen:2:hex_digit|Ndout[0]~0_combout\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X76_Y46_N12
\Score|circuit_gen:2:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ = (\Score|circuit_gen:2:out_reg|u0|q~q\ & (!\Score|circuit_gen:2:out_reg|u2|q~q\ & ((!\Score|circuit_gen:2:out_reg|u3|q~q\) # (!\Score|circuit_gen:2:out_reg|u1|q~q\)))) # 
-- (!\Score|circuit_gen:2:out_reg|u0|q~q\ & ((\Score|circuit_gen:2:out_reg|u1|q~q\ & (!\Score|circuit_gen:2:out_reg|u2|q~q\)) # (!\Score|circuit_gen:2:out_reg|u1|q~q\ & ((!\Score|circuit_gen:2:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:2:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:2:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:2:out_reg|u2|q~q\,
	datad => \Score|circuit_gen:2:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X76_Y46_N22
\Score|circuit_gen:2:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ = (\Score|circuit_gen:2:hex_digit|Ndout[1]~2_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:2:hex_digit|Ndout[1]~2_combout\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X76_Y46_N16
\Score|circuit_gen:2:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ = (\Score|circuit_gen:2:out_reg|u1|q~q\ & (((\Score|circuit_gen:2:out_reg|u2|q~q\) # (\Score|circuit_gen:2:out_reg|u3|q~q\)))) # (!\Score|circuit_gen:2:out_reg|u1|q~q\ & 
-- ((\Score|circuit_gen:2:out_reg|u0|q~q\ & (!\Score|circuit_gen:2:out_reg|u2|q~q\)) # (!\Score|circuit_gen:2:out_reg|u0|q~q\ & ((\Score|circuit_gen:2:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:2:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:2:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:2:out_reg|u2|q~q\,
	datad => \Score|circuit_gen:2:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X76_Y46_N2
\Score|circuit_gen:2:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ = (!\Score|circuit_gen:2:hex_digit|Ndout[2]~4_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:2:hex_digit|Ndout[2]~4_combout\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X76_Y46_N4
\Score|circuit_gen:2:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[3]~6_combout\ = (\Score|circuit_gen:2:out_reg|u1|q~q\ & (\Score|circuit_gen:2:out_reg|u0|q~q\ $ ((\Score|circuit_gen:2:out_reg|u2|q~q\)))) # (!\Score|circuit_gen:2:out_reg|u1|q~q\ & 
-- ((\Score|circuit_gen:2:out_reg|u2|q~q\ & ((!\Score|circuit_gen:2:out_reg|u3|q~q\))) # (!\Score|circuit_gen:2:out_reg|u2|q~q\ & (!\Score|circuit_gen:2:out_reg|u0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:2:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:2:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:2:out_reg|u2|q~q\,
	datad => \Score|circuit_gen:2:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X76_Y46_N14
\Score|circuit_gen:2:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ = (\Score|circuit_gen:2:hex_digit|Ndout[3]~6_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|clear_reg|q~q\,
	datac => \Score|circuit_gen:2:hex_digit|Ndout[3]~6_combout\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X76_Y46_N0
\Score|circuit_gen:2:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[4]~8_combout\ = (\Score|circuit_gen:2:out_reg|u1|q~q\ & ((\Score|circuit_gen:2:out_reg|u2|q~q\ & (!\Score|circuit_gen:2:out_reg|u0|q~q\)) # (!\Score|circuit_gen:2:out_reg|u2|q~q\ & 
-- ((\Score|circuit_gen:2:out_reg|u3|q~q\))))) # (!\Score|circuit_gen:2:out_reg|u1|q~q\ & (((!\Score|circuit_gen:2:out_reg|u3|q~q\)) # (!\Score|circuit_gen:2:out_reg|u0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:2:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:2:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:2:out_reg|u2|q~q\,
	datad => \Score|circuit_gen:2:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X76_Y46_N18
\Score|circuit_gen:2:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ = (\Score|circuit_gen:2:hex_digit|Ndout[4]~8_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:2:hex_digit|Ndout[4]~8_combout\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X76_Y46_N28
\Score|circuit_gen:2:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[5]~10_combout\ = (\Score|circuit_gen:2:out_reg|u0|q~q\ & (!\Score|circuit_gen:2:out_reg|u1|q~q\ & ((\Score|circuit_gen:2:out_reg|u2|q~q\) # (!\Score|circuit_gen:2:out_reg|u3|q~q\)))) # 
-- (!\Score|circuit_gen:2:out_reg|u0|q~q\ & ((\Score|circuit_gen:2:out_reg|u2|q~q\ & ((\Score|circuit_gen:2:out_reg|u3|q~q\))) # (!\Score|circuit_gen:2:out_reg|u2|q~q\ & ((!\Score|circuit_gen:2:out_reg|u3|q~q\) # (!\Score|circuit_gen:2:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:2:out_reg|u2|q~q\,
	datab => \Score|circuit_gen:2:out_reg|u0|q~q\,
	datac => \Score|circuit_gen:2:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:2:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X76_Y46_N20
\Score|circuit_gen:2:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ = (\Score|circuit_gen:2:hex_digit|Ndout[5]~10_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|clear_reg|q~q\,
	datac => \Score|circuit_gen:2:hex_digit|Ndout[5]~10_combout\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X76_Y46_N30
\Score|circuit_gen:2:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[6]~12_combout\ = (\Score|circuit_gen:2:out_reg|u2|q~q\ & (\Score|circuit_gen:2:out_reg|u1|q~q\ $ (((\Score|circuit_gen:2:out_reg|u3|q~q\))))) # (!\Score|circuit_gen:2:out_reg|u2|q~q\ & 
-- (\Score|circuit_gen:2:out_reg|u3|q~q\ & ((\Score|circuit_gen:2:out_reg|u1|q~q\) # (\Score|circuit_gen:2:out_reg|u0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:2:out_reg|u2|q~q\,
	datab => \Score|circuit_gen:2:out_reg|u1|q~q\,
	datac => \Score|circuit_gen:2:out_reg|u0|q~q\,
	datad => \Score|circuit_gen:2:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X76_Y46_N6
\Score|circuit_gen:2:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ = (!\Score|circuit_gen:2:hex_digit|Ndout[6]~12_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|clear_reg|q~q\,
	datac => \Score|circuit_gen:2:hex_digit|Ndout[6]~12_combout\,
	combout => \Score|circuit_gen:2:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X75_Y43_N30
\Score|circuit_gen:3:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:in_reg|u3|q~0_combout\ = !\SSC|U1|Din_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(6),
	combout => \Score|circuit_gen:3:in_reg|u3|q~0_combout\);

-- Location: LCCOMB_X71_Y44_N8
\Score|decoder|dout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|decoder|dout[3]~3_combout\ = (!\SSC|U1|Din_b\(2) & (\SSC|U1|Din_b\(1) & \SSC|U1|Din_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b\(2),
	datab => \SSC|U1|Din_b\(1),
	datad => \SSC|U1|Din_b\(0),
	combout => \Score|decoder|dout[3]~3_combout\);

-- Location: FF_X75_Y43_N31
\Score|circuit_gen:3:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:3:in_reg|u3|q~0_combout\,
	ena => \Score|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:3:in_reg|u3|q~q\);

-- Location: FF_X75_Y43_N11
\Score|circuit_gen:3:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:3:in_reg|u3|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:3:out_reg|u3|q~q\);

-- Location: LCCOMB_X75_Y43_N14
\Score|circuit_gen:3:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:in_reg|u2|q~0_combout\ = !\SSC|U1|Din_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(5),
	combout => \Score|circuit_gen:3:in_reg|u2|q~0_combout\);

-- Location: FF_X75_Y43_N15
\Score|circuit_gen:3:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:3:in_reg|u2|q~0_combout\,
	ena => \Score|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:3:in_reg|u2|q~q\);

-- Location: FF_X75_Y43_N29
\Score|circuit_gen:3:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:3:in_reg|u2|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:3:out_reg|u2|q~q\);

-- Location: LCCOMB_X75_Y43_N8
\Score|circuit_gen:3:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:in_reg|u1|q~0_combout\ = !\SSC|U1|Din_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(4),
	combout => \Score|circuit_gen:3:in_reg|u1|q~0_combout\);

-- Location: FF_X75_Y43_N9
\Score|circuit_gen:3:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:3:in_reg|u1|q~0_combout\,
	ena => \Score|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:3:in_reg|u1|q~q\);

-- Location: FF_X75_Y43_N19
\Score|circuit_gen:3:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:3:in_reg|u1|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:3:out_reg|u1|q~q\);

-- Location: LCCOMB_X75_Y43_N4
\Score|circuit_gen:3:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:in_reg|u0|q~0_combout\ = !\SSC|U1|Din_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(3),
	combout => \Score|circuit_gen:3:in_reg|u0|q~0_combout\);

-- Location: FF_X75_Y43_N5
\Score|circuit_gen:3:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:3:in_reg|u0|q~0_combout\,
	ena => \Score|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:3:in_reg|u0|q~q\);

-- Location: FF_X75_Y43_N17
\Score|circuit_gen:3:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:3:in_reg|u0|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:3:out_reg|u0|q~q\);

-- Location: LCCOMB_X75_Y43_N26
\Score|circuit_gen:3:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ = (\Score|circuit_gen:3:out_reg|u3|q~q\ & (\Score|circuit_gen:3:out_reg|u1|q~q\ & (\Score|circuit_gen:3:out_reg|u2|q~q\ $ (\Score|circuit_gen:3:out_reg|u0|q~q\)))) # (!\Score|circuit_gen:3:out_reg|u3|q~q\ 
-- & (!\Score|circuit_gen:3:out_reg|u2|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:3:out_reg|u3|q~q\,
	datab => \Score|circuit_gen:3:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:3:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:3:out_reg|u0|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X75_Y43_N2
\Score|circuit_gen:3:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ = (\Score|circuit_gen:3:hex_digit|Ndout[0]~0_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|circuit_gen:3:hex_digit|Ndout[0]~0_combout\,
	datad => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X75_Y43_N22
\Score|circuit_gen:3:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ = (\Score|circuit_gen:3:out_reg|u3|q~q\ & (!\Score|circuit_gen:3:out_reg|u2|q~q\ & (\Score|circuit_gen:3:out_reg|u1|q~q\ $ (\Score|circuit_gen:3:out_reg|u0|q~q\)))) # 
-- (!\Score|circuit_gen:3:out_reg|u3|q~q\ & (((!\Score|circuit_gen:3:out_reg|u1|q~q\ & !\Score|circuit_gen:3:out_reg|u0|q~q\)) # (!\Score|circuit_gen:3:out_reg|u2|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:3:out_reg|u3|q~q\,
	datab => \Score|circuit_gen:3:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:3:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:3:out_reg|u0|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X75_Y43_N0
\Score|circuit_gen:3:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ = (\Score|circuit_gen:3:hex_digit|Ndout[1]~2_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|circuit_gen:3:hex_digit|Ndout[1]~2_combout\,
	datad => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X75_Y43_N12
\Score|circuit_gen:3:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ = (\Score|circuit_gen:3:out_reg|u1|q~q\ & ((\Score|circuit_gen:3:out_reg|u3|q~q\) # ((\Score|circuit_gen:3:out_reg|u2|q~q\)))) # (!\Score|circuit_gen:3:out_reg|u1|q~q\ & 
-- ((\Score|circuit_gen:3:out_reg|u0|q~q\ & ((!\Score|circuit_gen:3:out_reg|u2|q~q\))) # (!\Score|circuit_gen:3:out_reg|u0|q~q\ & (\Score|circuit_gen:3:out_reg|u3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:3:out_reg|u3|q~q\,
	datab => \Score|circuit_gen:3:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:3:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:3:out_reg|u0|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X75_Y43_N6
\Score|circuit_gen:3:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ = (!\Score|clear_reg|q~q\) # (!\Score|circuit_gen:3:hex_digit|Ndout[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:3:hex_digit|Ndout[2]~4_combout\,
	datad => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X75_Y43_N10
\Score|circuit_gen:3:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[3]~6_combout\ = (\Score|circuit_gen:3:out_reg|u1|q~q\ & (\Score|circuit_gen:3:out_reg|u2|q~q\ $ (((\Score|circuit_gen:3:out_reg|u0|q~q\))))) # (!\Score|circuit_gen:3:out_reg|u1|q~q\ & 
-- ((\Score|circuit_gen:3:out_reg|u2|q~q\ & (!\Score|circuit_gen:3:out_reg|u3|q~q\)) # (!\Score|circuit_gen:3:out_reg|u2|q~q\ & ((!\Score|circuit_gen:3:out_reg|u0|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:3:out_reg|u1|q~q\,
	datab => \Score|circuit_gen:3:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:3:out_reg|u3|q~q\,
	datad => \Score|circuit_gen:3:out_reg|u0|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X75_Y43_N24
\Score|circuit_gen:3:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ = (\Score|circuit_gen:3:hex_digit|Ndout[3]~6_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|circuit_gen:3:hex_digit|Ndout[3]~6_combout\,
	datad => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X75_Y43_N28
\Score|circuit_gen:3:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[4]~8_combout\ = (\Score|circuit_gen:3:out_reg|u1|q~q\ & ((\Score|circuit_gen:3:out_reg|u2|q~q\ & ((!\Score|circuit_gen:3:out_reg|u0|q~q\))) # (!\Score|circuit_gen:3:out_reg|u2|q~q\ & 
-- (\Score|circuit_gen:3:out_reg|u3|q~q\)))) # (!\Score|circuit_gen:3:out_reg|u1|q~q\ & (((!\Score|circuit_gen:3:out_reg|u0|q~q\)) # (!\Score|circuit_gen:3:out_reg|u3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:3:out_reg|u3|q~q\,
	datab => \Score|circuit_gen:3:out_reg|u0|q~q\,
	datac => \Score|circuit_gen:3:out_reg|u2|q~q\,
	datad => \Score|circuit_gen:3:out_reg|u1|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X74_Y43_N8
\Score|circuit_gen:3:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ = (\Score|circuit_gen:3:hex_digit|Ndout[4]~8_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|circuit_gen:3:hex_digit|Ndout[4]~8_combout\,
	datad => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X75_Y43_N18
\Score|circuit_gen:3:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[5]~10_combout\ = (\Score|circuit_gen:3:out_reg|u0|q~q\ & (!\Score|circuit_gen:3:out_reg|u1|q~q\ & ((\Score|circuit_gen:3:out_reg|u2|q~q\) # (!\Score|circuit_gen:3:out_reg|u3|q~q\)))) # 
-- (!\Score|circuit_gen:3:out_reg|u0|q~q\ & ((\Score|circuit_gen:3:out_reg|u3|q~q\ & ((\Score|circuit_gen:3:out_reg|u2|q~q\) # (!\Score|circuit_gen:3:out_reg|u1|q~q\))) # (!\Score|circuit_gen:3:out_reg|u3|q~q\ & ((!\Score|circuit_gen:3:out_reg|u2|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:3:out_reg|u3|q~q\,
	datab => \Score|circuit_gen:3:out_reg|u0|q~q\,
	datac => \Score|circuit_gen:3:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:3:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X74_Y43_N10
\Score|circuit_gen:3:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ = (\Score|circuit_gen:3:hex_digit|Ndout[5]~10_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|circuit_gen:3:hex_digit|Ndout[5]~10_combout\,
	datad => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X75_Y43_N16
\Score|circuit_gen:3:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[6]~12_combout\ = (\Score|circuit_gen:3:out_reg|u2|q~q\ & (\Score|circuit_gen:3:out_reg|u3|q~q\ $ (((\Score|circuit_gen:3:out_reg|u1|q~q\))))) # (!\Score|circuit_gen:3:out_reg|u2|q~q\ & 
-- (\Score|circuit_gen:3:out_reg|u3|q~q\ & ((\Score|circuit_gen:3:out_reg|u0|q~q\) # (\Score|circuit_gen:3:out_reg|u1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:3:out_reg|u3|q~q\,
	datab => \Score|circuit_gen:3:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:3:out_reg|u0|q~q\,
	datad => \Score|circuit_gen:3:out_reg|u1|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X75_Y43_N20
\Score|circuit_gen:3:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ = (!\Score|clear_reg|q~q\) # (!\Score|circuit_gen:3:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|circuit_gen:3:hex_digit|Ndout[6]~12_combout\,
	datad => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:3:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X77_Y43_N26
\Score|circuit_gen:4:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:in_reg|u2|q~0_combout\ = !\SSC|U1|Din_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(5),
	combout => \Score|circuit_gen:4:in_reg|u2|q~0_combout\);

-- Location: LCCOMB_X71_Y44_N18
\Score|decoder|dout[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|decoder|dout[4]~4_combout\ = (\SSC|U1|Din_b\(2) & (!\SSC|U1|Din_b\(1) & !\SSC|U1|Din_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b\(2),
	datab => \SSC|U1|Din_b\(1),
	datad => \SSC|U1|Din_b\(0),
	combout => \Score|decoder|dout[4]~4_combout\);

-- Location: FF_X77_Y43_N27
\Score|circuit_gen:4:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:4:in_reg|u2|q~0_combout\,
	ena => \Score|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:4:in_reg|u2|q~q\);

-- Location: FF_X77_Y43_N9
\Score|circuit_gen:4:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:4:in_reg|u2|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:4:out_reg|u2|q~q\);

-- Location: LCCOMB_X75_Y46_N8
\Score|circuit_gen:4:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:in_reg|u3|q~0_combout\ = !\SSC|U1|Din_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(6),
	combout => \Score|circuit_gen:4:in_reg|u3|q~0_combout\);

-- Location: FF_X75_Y46_N9
\Score|circuit_gen:4:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:4:in_reg|u3|q~0_combout\,
	ena => \Score|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:4:in_reg|u3|q~q\);

-- Location: FF_X77_Y43_N23
\Score|circuit_gen:4:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:4:in_reg|u3|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:4:out_reg|u3|q~q\);

-- Location: LCCOMB_X75_Y46_N2
\Score|circuit_gen:4:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:in_reg|u1|q~0_combout\ = !\SSC|U1|Din_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(4),
	combout => \Score|circuit_gen:4:in_reg|u1|q~0_combout\);

-- Location: FF_X75_Y46_N3
\Score|circuit_gen:4:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:4:in_reg|u1|q~0_combout\,
	ena => \Score|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:4:in_reg|u1|q~q\);

-- Location: FF_X77_Y43_N1
\Score|circuit_gen:4:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:4:in_reg|u1|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:4:out_reg|u1|q~q\);

-- Location: LCCOMB_X77_Y43_N14
\Score|circuit_gen:4:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:in_reg|u0|q~0_combout\ = !\SSC|U1|Din_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(3),
	combout => \Score|circuit_gen:4:in_reg|u0|q~0_combout\);

-- Location: FF_X77_Y43_N15
\Score|circuit_gen:4:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:4:in_reg|u0|q~0_combout\,
	ena => \Score|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:4:in_reg|u0|q~q\);

-- Location: FF_X77_Y43_N25
\Score|circuit_gen:4:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:4:in_reg|u0|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:4:out_reg|u0|q~q\);

-- Location: LCCOMB_X77_Y43_N4
\Score|circuit_gen:4:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ = (\Score|circuit_gen:4:out_reg|u3|q~q\ & (\Score|circuit_gen:4:out_reg|u1|q~q\ & (\Score|circuit_gen:4:out_reg|u2|q~q\ $ (\Score|circuit_gen:4:out_reg|u0|q~q\)))) # (!\Score|circuit_gen:4:out_reg|u3|q~q\ 
-- & (!\Score|circuit_gen:4:out_reg|u2|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:4:out_reg|u2|q~q\,
	datab => \Score|circuit_gen:4:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:4:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:4:out_reg|u0|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X77_Y43_N18
\Score|circuit_gen:4:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ = (\Score|circuit_gen:4:hex_digit|Ndout[0]~0_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|circuit_gen:4:hex_digit|Ndout[0]~0_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X77_Y43_N10
\Score|circuit_gen:4:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ = (\Score|circuit_gen:4:out_reg|u2|q~q\ & (!\Score|circuit_gen:4:out_reg|u3|q~q\ & (!\Score|circuit_gen:4:out_reg|u1|q~q\ & !\Score|circuit_gen:4:out_reg|u0|q~q\))) # 
-- (!\Score|circuit_gen:4:out_reg|u2|q~q\ & ((\Score|circuit_gen:4:out_reg|u1|q~q\ $ (\Score|circuit_gen:4:out_reg|u0|q~q\)) # (!\Score|circuit_gen:4:out_reg|u3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:4:out_reg|u2|q~q\,
	datab => \Score|circuit_gen:4:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:4:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:4:out_reg|u0|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X77_Y43_N6
\Score|circuit_gen:4:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ = (\Score|circuit_gen:4:hex_digit|Ndout[1]~2_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:4:hex_digit|Ndout[1]~2_combout\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X77_Y43_N12
\Score|circuit_gen:4:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ = (\Score|circuit_gen:4:out_reg|u1|q~q\ & ((\Score|circuit_gen:4:out_reg|u2|q~q\) # ((\Score|circuit_gen:4:out_reg|u3|q~q\)))) # (!\Score|circuit_gen:4:out_reg|u1|q~q\ & 
-- ((\Score|circuit_gen:4:out_reg|u0|q~q\ & (!\Score|circuit_gen:4:out_reg|u2|q~q\)) # (!\Score|circuit_gen:4:out_reg|u0|q~q\ & ((\Score|circuit_gen:4:out_reg|u3|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:4:out_reg|u2|q~q\,
	datab => \Score|circuit_gen:4:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:4:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:4:out_reg|u0|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X77_Y43_N28
\Score|circuit_gen:4:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ = (!\Score|circuit_gen:4:hex_digit|Ndout[2]~4_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:4:hex_digit|Ndout[2]~4_combout\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X77_Y43_N22
\Score|circuit_gen:4:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[3]~6_combout\ = (\Score|circuit_gen:4:out_reg|u1|q~q\ & (\Score|circuit_gen:4:out_reg|u0|q~q\ $ (((\Score|circuit_gen:4:out_reg|u2|q~q\))))) # (!\Score|circuit_gen:4:out_reg|u1|q~q\ & 
-- ((\Score|circuit_gen:4:out_reg|u2|q~q\ & ((!\Score|circuit_gen:4:out_reg|u3|q~q\))) # (!\Score|circuit_gen:4:out_reg|u2|q~q\ & (!\Score|circuit_gen:4:out_reg|u0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:4:out_reg|u1|q~q\,
	datab => \Score|circuit_gen:4:out_reg|u0|q~q\,
	datac => \Score|circuit_gen:4:out_reg|u3|q~q\,
	datad => \Score|circuit_gen:4:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X77_Y43_N30
\Score|circuit_gen:4:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ = (\Score|circuit_gen:4:hex_digit|Ndout[3]~6_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:4:hex_digit|Ndout[3]~6_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X77_Y43_N8
\Score|circuit_gen:4:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[4]~8_combout\ = (\Score|circuit_gen:4:out_reg|u1|q~q\ & ((\Score|circuit_gen:4:out_reg|u2|q~q\ & ((!\Score|circuit_gen:4:out_reg|u0|q~q\))) # (!\Score|circuit_gen:4:out_reg|u2|q~q\ & 
-- (\Score|circuit_gen:4:out_reg|u3|q~q\)))) # (!\Score|circuit_gen:4:out_reg|u1|q~q\ & (((!\Score|circuit_gen:4:out_reg|u0|q~q\)) # (!\Score|circuit_gen:4:out_reg|u3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:4:out_reg|u1|q~q\,
	datab => \Score|circuit_gen:4:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:4:out_reg|u2|q~q\,
	datad => \Score|circuit_gen:4:out_reg|u0|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X77_Y43_N2
\Score|circuit_gen:4:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ = (\Score|circuit_gen:4:hex_digit|Ndout[4]~8_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|circuit_gen:4:hex_digit|Ndout[4]~8_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X77_Y43_N0
\Score|circuit_gen:4:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[5]~10_combout\ = (\Score|circuit_gen:4:out_reg|u0|q~q\ & (!\Score|circuit_gen:4:out_reg|u1|q~q\ & ((\Score|circuit_gen:4:out_reg|u2|q~q\) # (!\Score|circuit_gen:4:out_reg|u3|q~q\)))) # 
-- (!\Score|circuit_gen:4:out_reg|u0|q~q\ & ((\Score|circuit_gen:4:out_reg|u2|q~q\ & ((\Score|circuit_gen:4:out_reg|u3|q~q\))) # (!\Score|circuit_gen:4:out_reg|u2|q~q\ & ((!\Score|circuit_gen:4:out_reg|u3|q~q\) # (!\Score|circuit_gen:4:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:4:out_reg|u2|q~q\,
	datab => \Score|circuit_gen:4:out_reg|u0|q~q\,
	datac => \Score|circuit_gen:4:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:4:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X77_Y43_N20
\Score|circuit_gen:4:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ = (\Score|circuit_gen:4:hex_digit|Ndout[5]~10_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:4:hex_digit|Ndout[5]~10_combout\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X77_Y43_N24
\Score|circuit_gen:4:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[6]~12_combout\ = (\Score|circuit_gen:4:out_reg|u1|q~q\ & (\Score|circuit_gen:4:out_reg|u3|q~q\ $ (((\Score|circuit_gen:4:out_reg|u2|q~q\))))) # (!\Score|circuit_gen:4:out_reg|u1|q~q\ & 
-- (\Score|circuit_gen:4:out_reg|u3|q~q\ & ((\Score|circuit_gen:4:out_reg|u0|q~q\) # (\Score|circuit_gen:4:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:4:out_reg|u1|q~q\,
	datab => \Score|circuit_gen:4:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:4:out_reg|u0|q~q\,
	datad => \Score|circuit_gen:4:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X77_Y43_N16
\Score|circuit_gen:4:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ = (!\Score|clear_reg|q~q\) # (!\Score|circuit_gen:4:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:4:hex_digit|Ndout[6]~12_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:4:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X72_Y44_N8
\Score|circuit_gen:5:in_reg|u1|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:in_reg|u1|q~0_combout\ = !\SSC|U1|Din_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(4),
	combout => \Score|circuit_gen:5:in_reg|u1|q~0_combout\);

-- Location: LCCOMB_X71_Y44_N14
\Score|decoder|dout[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|decoder|dout[5]~5_combout\ = (\SSC|U1|Din_b\(2) & (!\SSC|U1|Din_b\(1) & \SSC|U1|Din_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC|U1|Din_b\(2),
	datab => \SSC|U1|Din_b\(1),
	datad => \SSC|U1|Din_b\(0),
	combout => \Score|decoder|dout[5]~5_combout\);

-- Location: FF_X72_Y44_N9
\Score|circuit_gen:5:in_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:5:in_reg|u1|q~0_combout\,
	ena => \Score|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:5:in_reg|u1|q~q\);

-- Location: FF_X76_Y42_N13
\Score|circuit_gen:5:out_reg|u1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:5:in_reg|u1|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:5:out_reg|u1|q~q\);

-- Location: LCCOMB_X75_Y42_N16
\Score|circuit_gen:5:in_reg|u3|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:in_reg|u3|q~0_combout\ = !\SSC|U1|Din_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(6),
	combout => \Score|circuit_gen:5:in_reg|u3|q~0_combout\);

-- Location: FF_X75_Y42_N17
\Score|circuit_gen:5:in_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:5:in_reg|u3|q~0_combout\,
	ena => \Score|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:5:in_reg|u3|q~q\);

-- Location: FF_X76_Y42_N25
\Score|circuit_gen:5:out_reg|u3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:5:in_reg|u3|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:5:out_reg|u3|q~q\);

-- Location: LCCOMB_X76_Y42_N4
\Score|circuit_gen:5:in_reg|u0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:in_reg|u0|q~0_combout\ = !\SSC|U1|Din_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSC|U1|Din_b\(3),
	combout => \Score|circuit_gen:5:in_reg|u0|q~0_combout\);

-- Location: FF_X76_Y42_N5
\Score|circuit_gen:5:in_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:5:in_reg|u0|q~0_combout\,
	ena => \Score|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:5:in_reg|u0|q~q\);

-- Location: FF_X76_Y42_N31
\Score|circuit_gen:5:out_reg|u0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:5:in_reg|u0|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:5:out_reg|u0|q~q\);

-- Location: LCCOMB_X75_Y42_N26
\Score|circuit_gen:5:in_reg|u2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:in_reg|u2|q~0_combout\ = !\SSC|U1|Din_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSC|U1|Din_b\(5),
	combout => \Score|circuit_gen:5:in_reg|u2|q~0_combout\);

-- Location: FF_X75_Y42_N27
\Score|circuit_gen:5:in_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	d => \Score|circuit_gen:5:in_reg|u2|q~0_combout\,
	ena => \Score|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:5:in_reg|u2|q~q\);

-- Location: FF_X76_Y42_N3
\Score|circuit_gen:5:out_reg|u2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SSC|U1|CurrentState.SEND~0clkctrl_outclk\,
	asdata => \Score|circuit_gen:5:in_reg|u2|q~q\,
	sload => VCC,
	ena => \Score|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|circuit_gen:5:out_reg|u2|q~q\);

-- Location: LCCOMB_X76_Y42_N0
\Score|circuit_gen:5:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ = (\Score|circuit_gen:5:out_reg|u3|q~q\ & (\Score|circuit_gen:5:out_reg|u1|q~q\ & (\Score|circuit_gen:5:out_reg|u0|q~q\ $ (\Score|circuit_gen:5:out_reg|u2|q~q\)))) # (!\Score|circuit_gen:5:out_reg|u3|q~q\ 
-- & (((!\Score|circuit_gen:5:out_reg|u2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:5:out_reg|u1|q~q\,
	datab => \Score|circuit_gen:5:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:5:out_reg|u0|q~q\,
	datad => \Score|circuit_gen:5:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X76_Y42_N10
\Score|circuit_gen:5:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ = (\Score|circuit_gen:5:hex_digit|Ndout[0]~0_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:5:hex_digit|Ndout[0]~0_combout\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X76_Y42_N28
\Score|circuit_gen:5:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ = (\Score|circuit_gen:5:out_reg|u1|q~q\ & (!\Score|circuit_gen:5:out_reg|u2|q~q\ & ((!\Score|circuit_gen:5:out_reg|u0|q~q\) # (!\Score|circuit_gen:5:out_reg|u3|q~q\)))) # 
-- (!\Score|circuit_gen:5:out_reg|u1|q~q\ & ((\Score|circuit_gen:5:out_reg|u0|q~q\ & ((!\Score|circuit_gen:5:out_reg|u2|q~q\))) # (!\Score|circuit_gen:5:out_reg|u0|q~q\ & (!\Score|circuit_gen:5:out_reg|u3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:5:out_reg|u1|q~q\,
	datab => \Score|circuit_gen:5:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:5:out_reg|u0|q~q\,
	datad => \Score|circuit_gen:5:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X76_Y42_N14
\Score|circuit_gen:5:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ = (\Score|circuit_gen:5:hex_digit|Ndout[1]~2_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:5:hex_digit|Ndout[1]~2_combout\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X76_Y42_N16
\Score|circuit_gen:5:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ = (\Score|circuit_gen:5:out_reg|u1|q~q\ & ((\Score|circuit_gen:5:out_reg|u3|q~q\) # ((\Score|circuit_gen:5:out_reg|u2|q~q\)))) # (!\Score|circuit_gen:5:out_reg|u1|q~q\ & 
-- ((\Score|circuit_gen:5:out_reg|u0|q~q\ & ((!\Score|circuit_gen:5:out_reg|u2|q~q\))) # (!\Score|circuit_gen:5:out_reg|u0|q~q\ & (\Score|circuit_gen:5:out_reg|u3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:5:out_reg|u1|q~q\,
	datab => \Score|circuit_gen:5:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:5:out_reg|u0|q~q\,
	datad => \Score|circuit_gen:5:out_reg|u2|q~q\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X76_Y42_N18
\Score|circuit_gen:5:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ = (!\Score|circuit_gen:5:hex_digit|Ndout[2]~4_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:5:hex_digit|Ndout[2]~4_combout\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X76_Y42_N24
\Score|circuit_gen:5:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[3]~6_combout\ = (\Score|circuit_gen:5:out_reg|u2|q~q\ & ((\Score|circuit_gen:5:out_reg|u1|q~q\ & (!\Score|circuit_gen:5:out_reg|u0|q~q\)) # (!\Score|circuit_gen:5:out_reg|u1|q~q\ & 
-- ((!\Score|circuit_gen:5:out_reg|u3|q~q\))))) # (!\Score|circuit_gen:5:out_reg|u2|q~q\ & (\Score|circuit_gen:5:out_reg|u0|q~q\ $ (((!\Score|circuit_gen:5:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:5:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:5:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:5:out_reg|u3|q~q\,
	datad => \Score|circuit_gen:5:out_reg|u1|q~q\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X76_Y42_N20
\Score|circuit_gen:5:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ = (\Score|circuit_gen:5:hex_digit|Ndout[3]~6_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:5:hex_digit|Ndout[3]~6_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X76_Y42_N2
\Score|circuit_gen:5:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[4]~8_combout\ = (\Score|circuit_gen:5:out_reg|u1|q~q\ & ((\Score|circuit_gen:5:out_reg|u2|q~q\ & (!\Score|circuit_gen:5:out_reg|u0|q~q\)) # (!\Score|circuit_gen:5:out_reg|u2|q~q\ & 
-- ((\Score|circuit_gen:5:out_reg|u3|q~q\))))) # (!\Score|circuit_gen:5:out_reg|u1|q~q\ & (((!\Score|circuit_gen:5:out_reg|u3|q~q\)) # (!\Score|circuit_gen:5:out_reg|u0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:5:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:5:out_reg|u3|q~q\,
	datac => \Score|circuit_gen:5:out_reg|u2|q~q\,
	datad => \Score|circuit_gen:5:out_reg|u1|q~q\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X76_Y42_N22
\Score|circuit_gen:5:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ = (\Score|circuit_gen:5:hex_digit|Ndout[4]~8_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|circuit_gen:5:hex_digit|Ndout[4]~8_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X76_Y42_N12
\Score|circuit_gen:5:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[5]~10_combout\ = (\Score|circuit_gen:5:out_reg|u0|q~q\ & (!\Score|circuit_gen:5:out_reg|u1|q~q\ & ((\Score|circuit_gen:5:out_reg|u2|q~q\) # (!\Score|circuit_gen:5:out_reg|u3|q~q\)))) # 
-- (!\Score|circuit_gen:5:out_reg|u0|q~q\ & ((\Score|circuit_gen:5:out_reg|u2|q~q\ & ((\Score|circuit_gen:5:out_reg|u3|q~q\))) # (!\Score|circuit_gen:5:out_reg|u2|q~q\ & ((!\Score|circuit_gen:5:out_reg|u3|q~q\) # (!\Score|circuit_gen:5:out_reg|u1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:5:out_reg|u0|q~q\,
	datab => \Score|circuit_gen:5:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:5:out_reg|u1|q~q\,
	datad => \Score|circuit_gen:5:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X76_Y42_N8
\Score|circuit_gen:5:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ = (\Score|circuit_gen:5:hex_digit|Ndout[5]~10_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|circuit_gen:5:hex_digit|Ndout[5]~10_combout\,
	datac => \Score|clear_reg|q~q\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X76_Y42_N30
\Score|circuit_gen:5:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[6]~12_combout\ = (\Score|circuit_gen:5:out_reg|u1|q~q\ & (\Score|circuit_gen:5:out_reg|u2|q~q\ $ (((\Score|circuit_gen:5:out_reg|u3|q~q\))))) # (!\Score|circuit_gen:5:out_reg|u1|q~q\ & 
-- (\Score|circuit_gen:5:out_reg|u3|q~q\ & ((\Score|circuit_gen:5:out_reg|u2|q~q\) # (\Score|circuit_gen:5:out_reg|u0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|circuit_gen:5:out_reg|u1|q~q\,
	datab => \Score|circuit_gen:5:out_reg|u2|q~q\,
	datac => \Score|circuit_gen:5:out_reg|u0|q~q\,
	datad => \Score|circuit_gen:5:out_reg|u3|q~q\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X76_Y42_N26
\Score|circuit_gen:5:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ = (!\Score|circuit_gen:5:hex_digit|Ndout[6]~12_combout\) # (!\Score|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|clear_reg|q~q\,
	datad => \Score|circuit_gen:5:hex_digit|Ndout[6]~12_combout\,
	combout => \Score|circuit_gen:5:hex_digit|Ndout[6]~13_combout\);

-- Location: FF_X37_Y4_N9
\SLCDC|U0|U3|data_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SLCDC|nSSsync~clkctrl_outclk\,
	asdata => \SLCDC|U0|U3|data_b\(1),
	sload => VCC,
	ena => \SLCDC|U0|U2|CurrentState.RECEIVING~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SLCDC|U0|U3|data_b\(0));

-- Location: LCCOMB_X37_Y4_N8
\SLCDC|U1|Din_b[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SLCDC|U1|Din_b\(0) = (GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & (\SLCDC|U0|U3|data_b\(0))) # (!GLOBAL(\SLCDC|U1|Din_b[8]~0clkctrl_outclk\) & ((\SLCDC|U1|Din_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLCDC|U1|Din_b[8]~0clkctrl_outclk\,
	datac => \SLCDC|U0|U3|data_b\(0),
	datad => \SLCDC|U1|Din_b\(0),
	combout => \SLCDC|U1|Din_b\(0));

-- Location: LCCOMB_X43_Y15_N26
\KBD|U0|U0|U2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U0|U2|Mux3~0_combout\ = (\KBD|U0|U0|U0|count\(2)) # (\KBD|U0|U0|U0|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KBD|U0|U0|U0|count\(2),
	datad => \KBD|U0|U0|U0|count\(3),
	combout => \KBD|U0|U0|U2|Mux3~0_combout\);

-- Location: LCCOMB_X43_Y16_N24
\KBD|U0|U0|U2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U0|U2|Mux2~0_combout\ = (\KBD|U0|U0|U0|count\(2) & !\KBD|U0|U0|U0|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KBD|U0|U0|U0|count\(2),
	datad => \KBD|U0|U0|U0|count\(3),
	combout => \KBD|U0|U0|U2|Mux2~0_combout\);

-- Location: LCCOMB_X43_Y15_N28
\KBD|U0|U0|U2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \KBD|U0|U0|U2|Mux1~0_combout\ = (!\KBD|U0|U0|U0|count\(2) & \KBD|U0|U0|U0|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KBD|U0|U0|U0|count\(2),
	datad => \KBD|U0|U0|U0|count\(3),
	combout => \KBD|U0|U0|U2|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y40_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X43_Y31_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X40_Y30_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: IOIBUF_X51_Y54_N29
\inputPort[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputPort(0),
	o => \inputPort[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\inputPort[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputPort(1),
	o => \inputPort[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\inputPort[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputPort(2),
	o => \inputPort[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\inputPort[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputPort(3),
	o => \inputPort[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\inputPort[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputPort(4),
	o => \inputPort[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\inputPort[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputPort(5),
	o => \inputPort[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\inputPort[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputPort(6),
	o => \inputPort[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\inputPort[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputPort(7),
	o => \inputPort[7]~input_o\);

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
END structure;


