-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 235 06/17/2009 Service Pack 2 SJ Web Edition"

-- DATE "10/21/2024 10:57:08"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneiii;
LIBRARY altera;
USE IEEE.std_logic_1164.all;
USE altera.altera_primitives_components.all;
USE cycloneiii.cycloneiii_components.all;

ENTITY 	part1 IS
    PORT (
	pc11 : OUT std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	PCSrc : IN std_logic;
	jump_addr : IN std_logic_vector(31 DOWNTO 0);
	pc_data : OUT std_logic_vector(31 DOWNTO 0);
	wren : IN std_logic;
	\clk1/2\ : IN std_logic;
	dataIn : IN std_logic_vector(31 DOWNTO 0)
	);
END part1;

ARCHITECTURE structure OF part1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pc11 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_PCSrc : std_logic;
SIGNAL ww_jump_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pc_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL \ww_clk1/2\ : std_logic;
SIGNAL ww_dataIn : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk1/2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc11[31]~output_o\ : std_logic;
SIGNAL \pc11[30]~output_o\ : std_logic;
SIGNAL \pc11[29]~output_o\ : std_logic;
SIGNAL \pc11[28]~output_o\ : std_logic;
SIGNAL \pc11[27]~output_o\ : std_logic;
SIGNAL \pc11[26]~output_o\ : std_logic;
SIGNAL \pc11[25]~output_o\ : std_logic;
SIGNAL \pc11[24]~output_o\ : std_logic;
SIGNAL \pc11[23]~output_o\ : std_logic;
SIGNAL \pc11[22]~output_o\ : std_logic;
SIGNAL \pc11[21]~output_o\ : std_logic;
SIGNAL \pc11[20]~output_o\ : std_logic;
SIGNAL \pc11[19]~output_o\ : std_logic;
SIGNAL \pc11[18]~output_o\ : std_logic;
SIGNAL \pc11[17]~output_o\ : std_logic;
SIGNAL \pc11[16]~output_o\ : std_logic;
SIGNAL \pc11[15]~output_o\ : std_logic;
SIGNAL \pc11[14]~output_o\ : std_logic;
SIGNAL \pc11[13]~output_o\ : std_logic;
SIGNAL \pc11[12]~output_o\ : std_logic;
SIGNAL \pc11[11]~output_o\ : std_logic;
SIGNAL \pc11[10]~output_o\ : std_logic;
SIGNAL \pc11[9]~output_o\ : std_logic;
SIGNAL \pc11[8]~output_o\ : std_logic;
SIGNAL \pc11[7]~output_o\ : std_logic;
SIGNAL \pc11[6]~output_o\ : std_logic;
SIGNAL \pc11[5]~output_o\ : std_logic;
SIGNAL \pc11[4]~output_o\ : std_logic;
SIGNAL \pc11[3]~output_o\ : std_logic;
SIGNAL \pc11[2]~output_o\ : std_logic;
SIGNAL \pc11[1]~output_o\ : std_logic;
SIGNAL \pc11[0]~output_o\ : std_logic;
SIGNAL \pc_data[31]~output_o\ : std_logic;
SIGNAL \pc_data[30]~output_o\ : std_logic;
SIGNAL \pc_data[29]~output_o\ : std_logic;
SIGNAL \pc_data[28]~output_o\ : std_logic;
SIGNAL \pc_data[27]~output_o\ : std_logic;
SIGNAL \pc_data[26]~output_o\ : std_logic;
SIGNAL \pc_data[25]~output_o\ : std_logic;
SIGNAL \pc_data[24]~output_o\ : std_logic;
SIGNAL \pc_data[23]~output_o\ : std_logic;
SIGNAL \pc_data[22]~output_o\ : std_logic;
SIGNAL \pc_data[21]~output_o\ : std_logic;
SIGNAL \pc_data[20]~output_o\ : std_logic;
SIGNAL \pc_data[19]~output_o\ : std_logic;
SIGNAL \pc_data[18]~output_o\ : std_logic;
SIGNAL \pc_data[17]~output_o\ : std_logic;
SIGNAL \pc_data[16]~output_o\ : std_logic;
SIGNAL \pc_data[15]~output_o\ : std_logic;
SIGNAL \pc_data[14]~output_o\ : std_logic;
SIGNAL \pc_data[13]~output_o\ : std_logic;
SIGNAL \pc_data[12]~output_o\ : std_logic;
SIGNAL \pc_data[11]~output_o\ : std_logic;
SIGNAL \pc_data[10]~output_o\ : std_logic;
SIGNAL \pc_data[9]~output_o\ : std_logic;
SIGNAL \pc_data[8]~output_o\ : std_logic;
SIGNAL \pc_data[7]~output_o\ : std_logic;
SIGNAL \pc_data[6]~output_o\ : std_logic;
SIGNAL \pc_data[5]~output_o\ : std_logic;
SIGNAL \pc_data[4]~output_o\ : std_logic;
SIGNAL \pc_data[3]~output_o\ : std_logic;
SIGNAL \pc_data[2]~output_o\ : std_logic;
SIGNAL \pc_data[1]~output_o\ : std_logic;
SIGNAL \pc_data[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \jump_addr[0]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|Q_internal[0]~_wirecell_combout\ : std_logic;
SIGNAL \PCSrc~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[1]~32\ : std_logic;
SIGNAL \inst4|Q_internal[2]~33_combout\ : std_logic;
SIGNAL \jump_addr[2]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[2]~34\ : std_logic;
SIGNAL \inst4|Q_internal[3]~36\ : std_logic;
SIGNAL \inst4|Q_internal[4]~37_combout\ : std_logic;
SIGNAL \jump_addr[4]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[4]~38\ : std_logic;
SIGNAL \inst4|Q_internal[5]~40\ : std_logic;
SIGNAL \inst4|Q_internal[6]~42\ : std_logic;
SIGNAL \inst4|Q_internal[7]~43_combout\ : std_logic;
SIGNAL \jump_addr[7]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[7]~44\ : std_logic;
SIGNAL \inst4|Q_internal[8]~45_combout\ : std_logic;
SIGNAL \jump_addr[8]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[8]~46\ : std_logic;
SIGNAL \inst4|Q_internal[9]~47_combout\ : std_logic;
SIGNAL \jump_addr[9]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[9]~48\ : std_logic;
SIGNAL \inst4|Q_internal[10]~49_combout\ : std_logic;
SIGNAL \jump_addr[10]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[10]~50\ : std_logic;
SIGNAL \inst4|Q_internal[11]~52\ : std_logic;
SIGNAL \inst4|Q_internal[12]~53_combout\ : std_logic;
SIGNAL \jump_addr[12]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[12]~54\ : std_logic;
SIGNAL \inst4|Q_internal[13]~56\ : std_logic;
SIGNAL \inst4|Q_internal[14]~57_combout\ : std_logic;
SIGNAL \jump_addr[14]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[14]~58\ : std_logic;
SIGNAL \inst4|Q_internal[15]~60\ : std_logic;
SIGNAL \inst4|Q_internal[16]~61_combout\ : std_logic;
SIGNAL \jump_addr[16]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[16]~62\ : std_logic;
SIGNAL \inst4|Q_internal[17]~63_combout\ : std_logic;
SIGNAL \jump_addr[17]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[17]~64\ : std_logic;
SIGNAL \inst4|Q_internal[18]~65_combout\ : std_logic;
SIGNAL \jump_addr[18]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[18]~66\ : std_logic;
SIGNAL \inst4|Q_internal[19]~68\ : std_logic;
SIGNAL \inst4|Q_internal[20]~69_combout\ : std_logic;
SIGNAL \jump_addr[20]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[20]~70\ : std_logic;
SIGNAL \inst4|Q_internal[21]~72\ : std_logic;
SIGNAL \inst4|Q_internal[22]~74\ : std_logic;
SIGNAL \inst4|Q_internal[23]~75_combout\ : std_logic;
SIGNAL \jump_addr[23]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[23]~76\ : std_logic;
SIGNAL \inst4|Q_internal[24]~77_combout\ : std_logic;
SIGNAL \jump_addr[24]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[24]~78\ : std_logic;
SIGNAL \inst4|Q_internal[25]~79_combout\ : std_logic;
SIGNAL \jump_addr[25]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[25]~80\ : std_logic;
SIGNAL \inst4|Q_internal[26]~81_combout\ : std_logic;
SIGNAL \jump_addr[26]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[26]~82\ : std_logic;
SIGNAL \inst4|Q_internal[27]~84\ : std_logic;
SIGNAL \inst4|Q_internal[28]~85_combout\ : std_logic;
SIGNAL \jump_addr[28]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[28]~86\ : std_logic;
SIGNAL \inst4|Q_internal[29]~88\ : std_logic;
SIGNAL \inst4|Q_internal[30]~89_combout\ : std_logic;
SIGNAL \jump_addr[30]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[30]~90\ : std_logic;
SIGNAL \inst4|Q_internal[31]~91_combout\ : std_logic;
SIGNAL \jump_addr[31]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[29]~87_combout\ : std_logic;
SIGNAL \jump_addr[29]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[27]~83_combout\ : std_logic;
SIGNAL \jump_addr[27]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[22]~73_combout\ : std_logic;
SIGNAL \jump_addr[22]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[21]~71_combout\ : std_logic;
SIGNAL \jump_addr[21]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[19]~67_combout\ : std_logic;
SIGNAL \jump_addr[19]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[15]~59_combout\ : std_logic;
SIGNAL \jump_addr[15]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[13]~55_combout\ : std_logic;
SIGNAL \jump_addr[13]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[11]~51_combout\ : std_logic;
SIGNAL \jump_addr[11]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[6]~41_combout\ : std_logic;
SIGNAL \jump_addr[6]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[5]~39_combout\ : std_logic;
SIGNAL \jump_addr[5]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[3]~35_combout\ : std_logic;
SIGNAL \jump_addr[3]~input_o\ : std_logic;
SIGNAL \inst4|Q_internal[1]~31_combout\ : std_logic;
SIGNAL \jump_addr[1]~input_o\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \clk1/2~input_o\ : std_logic;
SIGNAL \clk1/2~inputclkctrl_outclk\ : std_logic;
SIGNAL \dataIn[30]~input_o\ : std_logic;
SIGNAL \dataIn[31]~input_o\ : std_logic;
SIGNAL \dataIn[28]~input_o\ : std_logic;
SIGNAL \dataIn[29]~input_o\ : std_logic;
SIGNAL \dataIn[26]~input_o\ : std_logic;
SIGNAL \dataIn[27]~input_o\ : std_logic;
SIGNAL \dataIn[24]~input_o\ : std_logic;
SIGNAL \dataIn[25]~input_o\ : std_logic;
SIGNAL \dataIn[22]~input_o\ : std_logic;
SIGNAL \dataIn[23]~input_o\ : std_logic;
SIGNAL \dataIn[20]~input_o\ : std_logic;
SIGNAL \dataIn[21]~input_o\ : std_logic;
SIGNAL \dataIn[18]~input_o\ : std_logic;
SIGNAL \dataIn[19]~input_o\ : std_logic;
SIGNAL \dataIn[16]~input_o\ : std_logic;
SIGNAL \dataIn[17]~input_o\ : std_logic;
SIGNAL \dataIn[14]~input_o\ : std_logic;
SIGNAL \dataIn[15]~input_o\ : std_logic;
SIGNAL \dataIn[12]~input_o\ : std_logic;
SIGNAL \dataIn[13]~input_o\ : std_logic;
SIGNAL \dataIn[10]~input_o\ : std_logic;
SIGNAL \dataIn[11]~input_o\ : std_logic;
SIGNAL \dataIn[8]~input_o\ : std_logic;
SIGNAL \dataIn[9]~input_o\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|Q_internal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_PCSrc~input_o\ : std_logic;

BEGIN

pc11 <= ww_pc11;
ww_clk <= clk;
ww_PCSrc <= PCSrc;
ww_jump_addr <= jump_addr;
pc_data <= ww_pc_data;
ww_wren <= wren;
\ww_clk1/2\ <= \clk1/2\;
ww_dataIn <= dataIn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ <= (\dataIn[31]~input_o\ & \dataIn[30]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(30) <= \inst3|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(31) <= \inst3|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ <= (\dataIn[29]~input_o\ & \dataIn[28]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(28) <= \inst3|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(29) <= \inst3|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ <= (\dataIn[27]~input_o\ & \dataIn[26]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(26) <= \inst3|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(27) <= \inst3|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ <= (\dataIn[25]~input_o\ & \dataIn[24]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(24) <= \inst3|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(25) <= \inst3|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ <= (\dataIn[23]~input_o\ & \dataIn[22]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(22) <= \inst3|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(23) <= \inst3|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ <= (\dataIn[21]~input_o\ & \dataIn[20]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(20) <= \inst3|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(21) <= \inst3|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (\dataIn[19]~input_o\ & \dataIn[18]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(18) <= \inst3|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(19) <= \inst3|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (\dataIn[17]~input_o\ & \dataIn[16]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(16) <= \inst3|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(17) <= \inst3|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\dataIn[15]~input_o\ & \dataIn[14]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(14) <= \inst3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(15) <= \inst3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\dataIn[13]~input_o\ & \dataIn[12]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(12) <= \inst3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(13) <= \inst3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (\dataIn[11]~input_o\ & \dataIn[10]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(10) <= \inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(11) <= \inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\dataIn[9]~input_o\ & \dataIn[8]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(8) <= \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(9) <= \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\dataIn[7]~input_o\ & \dataIn[6]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(6) <= \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(7) <= \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\dataIn[5]~input_o\ & \dataIn[4]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(4) <= \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(5) <= \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\dataIn[3]~input_o\ & \dataIn[2]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(2) <= \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(3) <= \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\dataIn[1]~input_o\ & \dataIn[0]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst4|Q_internal\(11) & \inst4|Q_internal\(10) & \inst4|Q_internal\(9) & \inst4|Q_internal\(8) & \inst4|Q_internal\(7) & \inst4|Q_internal\(6) & \inst4|Q_internal\(5)
& \inst4|Q_internal\(4) & \inst4|Q_internal\(3) & \inst4|Q_internal\(2) & \inst4|Q_internal\(1) & \inst4|Q_internal\(0));

\inst3|altsyncram_component|auto_generated|q_a\(0) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(1) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\clk1/2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1/2~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_PCSrc~input_o\ <= NOT \PCSrc~input_o\;

\pc11[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(31),
	devoe => ww_devoe,
	o => \pc11[31]~output_o\);

\pc11[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(30),
	devoe => ww_devoe,
	o => \pc11[30]~output_o\);

\pc11[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(29),
	devoe => ww_devoe,
	o => \pc11[29]~output_o\);

\pc11[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(28),
	devoe => ww_devoe,
	o => \pc11[28]~output_o\);

\pc11[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(27),
	devoe => ww_devoe,
	o => \pc11[27]~output_o\);

\pc11[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(26),
	devoe => ww_devoe,
	o => \pc11[26]~output_o\);

\pc11[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(25),
	devoe => ww_devoe,
	o => \pc11[25]~output_o\);

\pc11[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(24),
	devoe => ww_devoe,
	o => \pc11[24]~output_o\);

\pc11[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(23),
	devoe => ww_devoe,
	o => \pc11[23]~output_o\);

\pc11[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(22),
	devoe => ww_devoe,
	o => \pc11[22]~output_o\);

\pc11[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(21),
	devoe => ww_devoe,
	o => \pc11[21]~output_o\);

\pc11[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(20),
	devoe => ww_devoe,
	o => \pc11[20]~output_o\);

\pc11[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(19),
	devoe => ww_devoe,
	o => \pc11[19]~output_o\);

\pc11[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(18),
	devoe => ww_devoe,
	o => \pc11[18]~output_o\);

\pc11[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(17),
	devoe => ww_devoe,
	o => \pc11[17]~output_o\);

\pc11[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(16),
	devoe => ww_devoe,
	o => \pc11[16]~output_o\);

\pc11[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(15),
	devoe => ww_devoe,
	o => \pc11[15]~output_o\);

\pc11[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(14),
	devoe => ww_devoe,
	o => \pc11[14]~output_o\);

\pc11[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(13),
	devoe => ww_devoe,
	o => \pc11[13]~output_o\);

\pc11[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(12),
	devoe => ww_devoe,
	o => \pc11[12]~output_o\);

\pc11[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(11),
	devoe => ww_devoe,
	o => \pc11[11]~output_o\);

\pc11[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(10),
	devoe => ww_devoe,
	o => \pc11[10]~output_o\);

\pc11[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(9),
	devoe => ww_devoe,
	o => \pc11[9]~output_o\);

\pc11[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(8),
	devoe => ww_devoe,
	o => \pc11[8]~output_o\);

\pc11[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(7),
	devoe => ww_devoe,
	o => \pc11[7]~output_o\);

\pc11[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(6),
	devoe => ww_devoe,
	o => \pc11[6]~output_o\);

\pc11[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(5),
	devoe => ww_devoe,
	o => \pc11[5]~output_o\);

\pc11[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(4),
	devoe => ww_devoe,
	o => \pc11[4]~output_o\);

\pc11[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(3),
	devoe => ww_devoe,
	o => \pc11[3]~output_o\);

\pc11[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(2),
	devoe => ww_devoe,
	o => \pc11[2]~output_o\);

\pc11[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(1),
	devoe => ww_devoe,
	o => \pc11[1]~output_o\);

\pc11[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_internal\(0),
	devoe => ww_devoe,
	o => \pc11[0]~output_o\);

\pc_data[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \pc_data[31]~output_o\);

\pc_data[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \pc_data[30]~output_o\);

\pc_data[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \pc_data[29]~output_o\);

\pc_data[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \pc_data[28]~output_o\);

\pc_data[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \pc_data[27]~output_o\);

\pc_data[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \pc_data[26]~output_o\);

\pc_data[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \pc_data[25]~output_o\);

\pc_data[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \pc_data[24]~output_o\);

\pc_data[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \pc_data[23]~output_o\);

\pc_data[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \pc_data[22]~output_o\);

\pc_data[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \pc_data[21]~output_o\);

\pc_data[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \pc_data[20]~output_o\);

\pc_data[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \pc_data[19]~output_o\);

\pc_data[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \pc_data[18]~output_o\);

\pc_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \pc_data[17]~output_o\);

\pc_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \pc_data[16]~output_o\);

\pc_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \pc_data[15]~output_o\);

\pc_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \pc_data[14]~output_o\);

\pc_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \pc_data[13]~output_o\);

\pc_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \pc_data[12]~output_o\);

\pc_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \pc_data[11]~output_o\);

\pc_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \pc_data[10]~output_o\);

\pc_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \pc_data[9]~output_o\);

\pc_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \pc_data[8]~output_o\);

\pc_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \pc_data[7]~output_o\);

\pc_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \pc_data[6]~output_o\);

\pc_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \pc_data[5]~output_o\);

\pc_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \pc_data[4]~output_o\);

\pc_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \pc_data[3]~output_o\);

\pc_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \pc_data[2]~output_o\);

\pc_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \pc_data[1]~output_o\);

\pc_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \pc_data[0]~output_o\);

\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

\jump_addr[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(0),
	o => \jump_addr[0]~input_o\);

\inst4|Q_internal[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[0]~feeder_combout\ = \jump_addr[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \jump_addr[0]~input_o\,
	combout => \inst4|Q_internal[0]~feeder_combout\);

\inst4|Q_internal[0]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[0]~_wirecell_combout\ = !\inst4|Q_internal\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Q_internal\(0),
	combout => \inst4|Q_internal[0]~_wirecell_combout\);

\PCSrc~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCSrc,
	o => \PCSrc~input_o\);

\inst4|Q_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[0]~feeder_combout\,
	asdata => \inst4|Q_internal[0]~_wirecell_combout\,
	sload => \ALT_INV_PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(0));

\inst4|Q_internal[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[1]~31_combout\ = \inst4|Q_internal\(1) & (\inst4|Q_internal\(0) $ VCC) # !\inst4|Q_internal\(1) & \inst4|Q_internal\(0) & VCC
-- \inst4|Q_internal[1]~32\ = CARRY(\inst4|Q_internal\(1) & \inst4|Q_internal\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(1),
	datab => \inst4|Q_internal\(0),
	datad => VCC,
	combout => \inst4|Q_internal[1]~31_combout\,
	cout => \inst4|Q_internal[1]~32\);

\inst4|Q_internal[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[2]~33_combout\ = \inst4|Q_internal\(2) & !\inst4|Q_internal[1]~32\ # !\inst4|Q_internal\(2) & (\inst4|Q_internal[1]~32\ # GND)
-- \inst4|Q_internal[2]~34\ = CARRY(!\inst4|Q_internal[1]~32\ # !\inst4|Q_internal\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(2),
	datad => VCC,
	cin => \inst4|Q_internal[1]~32\,
	combout => \inst4|Q_internal[2]~33_combout\,
	cout => \inst4|Q_internal[2]~34\);

\jump_addr[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(2),
	o => \jump_addr[2]~input_o\);

\inst4|Q_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[2]~33_combout\,
	asdata => \jump_addr[2]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(2));

\inst4|Q_internal[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[3]~35_combout\ = \inst4|Q_internal\(3) & (\inst4|Q_internal[2]~34\ $ GND) # !\inst4|Q_internal\(3) & !\inst4|Q_internal[2]~34\ & VCC
-- \inst4|Q_internal[3]~36\ = CARRY(\inst4|Q_internal\(3) & !\inst4|Q_internal[2]~34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(3),
	datad => VCC,
	cin => \inst4|Q_internal[2]~34\,
	combout => \inst4|Q_internal[3]~35_combout\,
	cout => \inst4|Q_internal[3]~36\);

\inst4|Q_internal[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[4]~37_combout\ = \inst4|Q_internal\(4) & !\inst4|Q_internal[3]~36\ # !\inst4|Q_internal\(4) & (\inst4|Q_internal[3]~36\ # GND)
-- \inst4|Q_internal[4]~38\ = CARRY(!\inst4|Q_internal[3]~36\ # !\inst4|Q_internal\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(4),
	datad => VCC,
	cin => \inst4|Q_internal[3]~36\,
	combout => \inst4|Q_internal[4]~37_combout\,
	cout => \inst4|Q_internal[4]~38\);

\jump_addr[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(4),
	o => \jump_addr[4]~input_o\);

\inst4|Q_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[4]~37_combout\,
	asdata => \jump_addr[4]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(4));

\inst4|Q_internal[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[5]~39_combout\ = \inst4|Q_internal\(5) & (\inst4|Q_internal[4]~38\ $ GND) # !\inst4|Q_internal\(5) & !\inst4|Q_internal[4]~38\ & VCC
-- \inst4|Q_internal[5]~40\ = CARRY(\inst4|Q_internal\(5) & !\inst4|Q_internal[4]~38\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(5),
	datad => VCC,
	cin => \inst4|Q_internal[4]~38\,
	combout => \inst4|Q_internal[5]~39_combout\,
	cout => \inst4|Q_internal[5]~40\);

\inst4|Q_internal[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[6]~41_combout\ = \inst4|Q_internal\(6) & !\inst4|Q_internal[5]~40\ # !\inst4|Q_internal\(6) & (\inst4|Q_internal[5]~40\ # GND)
-- \inst4|Q_internal[6]~42\ = CARRY(!\inst4|Q_internal[5]~40\ # !\inst4|Q_internal\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(6),
	datad => VCC,
	cin => \inst4|Q_internal[5]~40\,
	combout => \inst4|Q_internal[6]~41_combout\,
	cout => \inst4|Q_internal[6]~42\);

\inst4|Q_internal[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[7]~43_combout\ = \inst4|Q_internal\(7) & (\inst4|Q_internal[6]~42\ $ GND) # !\inst4|Q_internal\(7) & !\inst4|Q_internal[6]~42\ & VCC
-- \inst4|Q_internal[7]~44\ = CARRY(\inst4|Q_internal\(7) & !\inst4|Q_internal[6]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(7),
	datad => VCC,
	cin => \inst4|Q_internal[6]~42\,
	combout => \inst4|Q_internal[7]~43_combout\,
	cout => \inst4|Q_internal[7]~44\);

\jump_addr[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(7),
	o => \jump_addr[7]~input_o\);

\inst4|Q_internal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[7]~43_combout\,
	asdata => \jump_addr[7]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(7));

\inst4|Q_internal[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[8]~45_combout\ = \inst4|Q_internal\(8) & !\inst4|Q_internal[7]~44\ # !\inst4|Q_internal\(8) & (\inst4|Q_internal[7]~44\ # GND)
-- \inst4|Q_internal[8]~46\ = CARRY(!\inst4|Q_internal[7]~44\ # !\inst4|Q_internal\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(8),
	datad => VCC,
	cin => \inst4|Q_internal[7]~44\,
	combout => \inst4|Q_internal[8]~45_combout\,
	cout => \inst4|Q_internal[8]~46\);

\jump_addr[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(8),
	o => \jump_addr[8]~input_o\);

\inst4|Q_internal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[8]~45_combout\,
	asdata => \jump_addr[8]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(8));

\inst4|Q_internal[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[9]~47_combout\ = \inst4|Q_internal\(9) & (\inst4|Q_internal[8]~46\ $ GND) # !\inst4|Q_internal\(9) & !\inst4|Q_internal[8]~46\ & VCC
-- \inst4|Q_internal[9]~48\ = CARRY(\inst4|Q_internal\(9) & !\inst4|Q_internal[8]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(9),
	datad => VCC,
	cin => \inst4|Q_internal[8]~46\,
	combout => \inst4|Q_internal[9]~47_combout\,
	cout => \inst4|Q_internal[9]~48\);

\jump_addr[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(9),
	o => \jump_addr[9]~input_o\);

\inst4|Q_internal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[9]~47_combout\,
	asdata => \jump_addr[9]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(9));

\inst4|Q_internal[10]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[10]~49_combout\ = \inst4|Q_internal\(10) & !\inst4|Q_internal[9]~48\ # !\inst4|Q_internal\(10) & (\inst4|Q_internal[9]~48\ # GND)
-- \inst4|Q_internal[10]~50\ = CARRY(!\inst4|Q_internal[9]~48\ # !\inst4|Q_internal\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(10),
	datad => VCC,
	cin => \inst4|Q_internal[9]~48\,
	combout => \inst4|Q_internal[10]~49_combout\,
	cout => \inst4|Q_internal[10]~50\);

\jump_addr[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(10),
	o => \jump_addr[10]~input_o\);

\inst4|Q_internal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[10]~49_combout\,
	asdata => \jump_addr[10]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(10));

\inst4|Q_internal[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[11]~51_combout\ = \inst4|Q_internal\(11) & (\inst4|Q_internal[10]~50\ $ GND) # !\inst4|Q_internal\(11) & !\inst4|Q_internal[10]~50\ & VCC
-- \inst4|Q_internal[11]~52\ = CARRY(\inst4|Q_internal\(11) & !\inst4|Q_internal[10]~50\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(11),
	datad => VCC,
	cin => \inst4|Q_internal[10]~50\,
	combout => \inst4|Q_internal[11]~51_combout\,
	cout => \inst4|Q_internal[11]~52\);

\inst4|Q_internal[12]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[12]~53_combout\ = \inst4|Q_internal\(12) & !\inst4|Q_internal[11]~52\ # !\inst4|Q_internal\(12) & (\inst4|Q_internal[11]~52\ # GND)
-- \inst4|Q_internal[12]~54\ = CARRY(!\inst4|Q_internal[11]~52\ # !\inst4|Q_internal\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(12),
	datad => VCC,
	cin => \inst4|Q_internal[11]~52\,
	combout => \inst4|Q_internal[12]~53_combout\,
	cout => \inst4|Q_internal[12]~54\);

\jump_addr[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(12),
	o => \jump_addr[12]~input_o\);

\inst4|Q_internal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[12]~53_combout\,
	asdata => \jump_addr[12]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(12));

\inst4|Q_internal[13]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[13]~55_combout\ = \inst4|Q_internal\(13) & (\inst4|Q_internal[12]~54\ $ GND) # !\inst4|Q_internal\(13) & !\inst4|Q_internal[12]~54\ & VCC
-- \inst4|Q_internal[13]~56\ = CARRY(\inst4|Q_internal\(13) & !\inst4|Q_internal[12]~54\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(13),
	datad => VCC,
	cin => \inst4|Q_internal[12]~54\,
	combout => \inst4|Q_internal[13]~55_combout\,
	cout => \inst4|Q_internal[13]~56\);

\inst4|Q_internal[14]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[14]~57_combout\ = \inst4|Q_internal\(14) & !\inst4|Q_internal[13]~56\ # !\inst4|Q_internal\(14) & (\inst4|Q_internal[13]~56\ # GND)
-- \inst4|Q_internal[14]~58\ = CARRY(!\inst4|Q_internal[13]~56\ # !\inst4|Q_internal\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(14),
	datad => VCC,
	cin => \inst4|Q_internal[13]~56\,
	combout => \inst4|Q_internal[14]~57_combout\,
	cout => \inst4|Q_internal[14]~58\);

\jump_addr[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(14),
	o => \jump_addr[14]~input_o\);

\inst4|Q_internal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[14]~57_combout\,
	asdata => \jump_addr[14]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(14));

\inst4|Q_internal[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[15]~59_combout\ = \inst4|Q_internal\(15) & (\inst4|Q_internal[14]~58\ $ GND) # !\inst4|Q_internal\(15) & !\inst4|Q_internal[14]~58\ & VCC
-- \inst4|Q_internal[15]~60\ = CARRY(\inst4|Q_internal\(15) & !\inst4|Q_internal[14]~58\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(15),
	datad => VCC,
	cin => \inst4|Q_internal[14]~58\,
	combout => \inst4|Q_internal[15]~59_combout\,
	cout => \inst4|Q_internal[15]~60\);

\inst4|Q_internal[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[16]~61_combout\ = \inst4|Q_internal\(16) & !\inst4|Q_internal[15]~60\ # !\inst4|Q_internal\(16) & (\inst4|Q_internal[15]~60\ # GND)
-- \inst4|Q_internal[16]~62\ = CARRY(!\inst4|Q_internal[15]~60\ # !\inst4|Q_internal\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(16),
	datad => VCC,
	cin => \inst4|Q_internal[15]~60\,
	combout => \inst4|Q_internal[16]~61_combout\,
	cout => \inst4|Q_internal[16]~62\);

\jump_addr[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(16),
	o => \jump_addr[16]~input_o\);

\inst4|Q_internal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[16]~61_combout\,
	asdata => \jump_addr[16]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(16));

\inst4|Q_internal[17]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[17]~63_combout\ = \inst4|Q_internal\(17) & (\inst4|Q_internal[16]~62\ $ GND) # !\inst4|Q_internal\(17) & !\inst4|Q_internal[16]~62\ & VCC
-- \inst4|Q_internal[17]~64\ = CARRY(\inst4|Q_internal\(17) & !\inst4|Q_internal[16]~62\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(17),
	datad => VCC,
	cin => \inst4|Q_internal[16]~62\,
	combout => \inst4|Q_internal[17]~63_combout\,
	cout => \inst4|Q_internal[17]~64\);

\jump_addr[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(17),
	o => \jump_addr[17]~input_o\);

\inst4|Q_internal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[17]~63_combout\,
	asdata => \jump_addr[17]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(17));

\inst4|Q_internal[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[18]~65_combout\ = \inst4|Q_internal\(18) & !\inst4|Q_internal[17]~64\ # !\inst4|Q_internal\(18) & (\inst4|Q_internal[17]~64\ # GND)
-- \inst4|Q_internal[18]~66\ = CARRY(!\inst4|Q_internal[17]~64\ # !\inst4|Q_internal\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(18),
	datad => VCC,
	cin => \inst4|Q_internal[17]~64\,
	combout => \inst4|Q_internal[18]~65_combout\,
	cout => \inst4|Q_internal[18]~66\);

\jump_addr[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(18),
	o => \jump_addr[18]~input_o\);

\inst4|Q_internal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[18]~65_combout\,
	asdata => \jump_addr[18]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(18));

\inst4|Q_internal[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[19]~67_combout\ = \inst4|Q_internal\(19) & (\inst4|Q_internal[18]~66\ $ GND) # !\inst4|Q_internal\(19) & !\inst4|Q_internal[18]~66\ & VCC
-- \inst4|Q_internal[19]~68\ = CARRY(\inst4|Q_internal\(19) & !\inst4|Q_internal[18]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(19),
	datad => VCC,
	cin => \inst4|Q_internal[18]~66\,
	combout => \inst4|Q_internal[19]~67_combout\,
	cout => \inst4|Q_internal[19]~68\);

\inst4|Q_internal[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[20]~69_combout\ = \inst4|Q_internal\(20) & !\inst4|Q_internal[19]~68\ # !\inst4|Q_internal\(20) & (\inst4|Q_internal[19]~68\ # GND)
-- \inst4|Q_internal[20]~70\ = CARRY(!\inst4|Q_internal[19]~68\ # !\inst4|Q_internal\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(20),
	datad => VCC,
	cin => \inst4|Q_internal[19]~68\,
	combout => \inst4|Q_internal[20]~69_combout\,
	cout => \inst4|Q_internal[20]~70\);

\jump_addr[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(20),
	o => \jump_addr[20]~input_o\);

\inst4|Q_internal[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[20]~69_combout\,
	asdata => \jump_addr[20]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(20));

\inst4|Q_internal[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[21]~71_combout\ = \inst4|Q_internal\(21) & (\inst4|Q_internal[20]~70\ $ GND) # !\inst4|Q_internal\(21) & !\inst4|Q_internal[20]~70\ & VCC
-- \inst4|Q_internal[21]~72\ = CARRY(\inst4|Q_internal\(21) & !\inst4|Q_internal[20]~70\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(21),
	datad => VCC,
	cin => \inst4|Q_internal[20]~70\,
	combout => \inst4|Q_internal[21]~71_combout\,
	cout => \inst4|Q_internal[21]~72\);

\inst4|Q_internal[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[22]~73_combout\ = \inst4|Q_internal\(22) & !\inst4|Q_internal[21]~72\ # !\inst4|Q_internal\(22) & (\inst4|Q_internal[21]~72\ # GND)
-- \inst4|Q_internal[22]~74\ = CARRY(!\inst4|Q_internal[21]~72\ # !\inst4|Q_internal\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(22),
	datad => VCC,
	cin => \inst4|Q_internal[21]~72\,
	combout => \inst4|Q_internal[22]~73_combout\,
	cout => \inst4|Q_internal[22]~74\);

\inst4|Q_internal[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[23]~75_combout\ = \inst4|Q_internal\(23) & (\inst4|Q_internal[22]~74\ $ GND) # !\inst4|Q_internal\(23) & !\inst4|Q_internal[22]~74\ & VCC
-- \inst4|Q_internal[23]~76\ = CARRY(\inst4|Q_internal\(23) & !\inst4|Q_internal[22]~74\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(23),
	datad => VCC,
	cin => \inst4|Q_internal[22]~74\,
	combout => \inst4|Q_internal[23]~75_combout\,
	cout => \inst4|Q_internal[23]~76\);

\jump_addr[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(23),
	o => \jump_addr[23]~input_o\);

\inst4|Q_internal[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[23]~75_combout\,
	asdata => \jump_addr[23]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(23));

\inst4|Q_internal[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[24]~77_combout\ = \inst4|Q_internal\(24) & !\inst4|Q_internal[23]~76\ # !\inst4|Q_internal\(24) & (\inst4|Q_internal[23]~76\ # GND)
-- \inst4|Q_internal[24]~78\ = CARRY(!\inst4|Q_internal[23]~76\ # !\inst4|Q_internal\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(24),
	datad => VCC,
	cin => \inst4|Q_internal[23]~76\,
	combout => \inst4|Q_internal[24]~77_combout\,
	cout => \inst4|Q_internal[24]~78\);

\jump_addr[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(24),
	o => \jump_addr[24]~input_o\);

\inst4|Q_internal[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[24]~77_combout\,
	asdata => \jump_addr[24]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(24));

\inst4|Q_internal[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[25]~79_combout\ = \inst4|Q_internal\(25) & (\inst4|Q_internal[24]~78\ $ GND) # !\inst4|Q_internal\(25) & !\inst4|Q_internal[24]~78\ & VCC
-- \inst4|Q_internal[25]~80\ = CARRY(\inst4|Q_internal\(25) & !\inst4|Q_internal[24]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(25),
	datad => VCC,
	cin => \inst4|Q_internal[24]~78\,
	combout => \inst4|Q_internal[25]~79_combout\,
	cout => \inst4|Q_internal[25]~80\);

\jump_addr[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(25),
	o => \jump_addr[25]~input_o\);

\inst4|Q_internal[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[25]~79_combout\,
	asdata => \jump_addr[25]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(25));

\inst4|Q_internal[26]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[26]~81_combout\ = \inst4|Q_internal\(26) & !\inst4|Q_internal[25]~80\ # !\inst4|Q_internal\(26) & (\inst4|Q_internal[25]~80\ # GND)
-- \inst4|Q_internal[26]~82\ = CARRY(!\inst4|Q_internal[25]~80\ # !\inst4|Q_internal\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(26),
	datad => VCC,
	cin => \inst4|Q_internal[25]~80\,
	combout => \inst4|Q_internal[26]~81_combout\,
	cout => \inst4|Q_internal[26]~82\);

\jump_addr[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(26),
	o => \jump_addr[26]~input_o\);

\inst4|Q_internal[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[26]~81_combout\,
	asdata => \jump_addr[26]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(26));

\inst4|Q_internal[27]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[27]~83_combout\ = \inst4|Q_internal\(27) & (\inst4|Q_internal[26]~82\ $ GND) # !\inst4|Q_internal\(27) & !\inst4|Q_internal[26]~82\ & VCC
-- \inst4|Q_internal[27]~84\ = CARRY(\inst4|Q_internal\(27) & !\inst4|Q_internal[26]~82\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(27),
	datad => VCC,
	cin => \inst4|Q_internal[26]~82\,
	combout => \inst4|Q_internal[27]~83_combout\,
	cout => \inst4|Q_internal[27]~84\);

\inst4|Q_internal[28]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[28]~85_combout\ = \inst4|Q_internal\(28) & !\inst4|Q_internal[27]~84\ # !\inst4|Q_internal\(28) & (\inst4|Q_internal[27]~84\ # GND)
-- \inst4|Q_internal[28]~86\ = CARRY(!\inst4|Q_internal[27]~84\ # !\inst4|Q_internal\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(28),
	datad => VCC,
	cin => \inst4|Q_internal[27]~84\,
	combout => \inst4|Q_internal[28]~85_combout\,
	cout => \inst4|Q_internal[28]~86\);

\jump_addr[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(28),
	o => \jump_addr[28]~input_o\);

\inst4|Q_internal[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[28]~85_combout\,
	asdata => \jump_addr[28]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(28));

\inst4|Q_internal[29]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[29]~87_combout\ = \inst4|Q_internal\(29) & (\inst4|Q_internal[28]~86\ $ GND) # !\inst4|Q_internal\(29) & !\inst4|Q_internal[28]~86\ & VCC
-- \inst4|Q_internal[29]~88\ = CARRY(\inst4|Q_internal\(29) & !\inst4|Q_internal[28]~86\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(29),
	datad => VCC,
	cin => \inst4|Q_internal[28]~86\,
	combout => \inst4|Q_internal[29]~87_combout\,
	cout => \inst4|Q_internal[29]~88\);

\inst4|Q_internal[30]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[30]~89_combout\ = \inst4|Q_internal\(30) & !\inst4|Q_internal[29]~88\ # !\inst4|Q_internal\(30) & (\inst4|Q_internal[29]~88\ # GND)
-- \inst4|Q_internal[30]~90\ = CARRY(!\inst4|Q_internal[29]~88\ # !\inst4|Q_internal\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Q_internal\(30),
	datad => VCC,
	cin => \inst4|Q_internal[29]~88\,
	combout => \inst4|Q_internal[30]~89_combout\,
	cout => \inst4|Q_internal[30]~90\);

\jump_addr[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(30),
	o => \jump_addr[30]~input_o\);

\inst4|Q_internal[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[30]~89_combout\,
	asdata => \jump_addr[30]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(30));

\inst4|Q_internal[31]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q_internal[31]~91_combout\ = \inst4|Q_internal\(31) $ !\inst4|Q_internal[30]~90\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q_internal\(31),
	cin => \inst4|Q_internal[30]~90\,
	combout => \inst4|Q_internal[31]~91_combout\);

\jump_addr[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(31),
	o => \jump_addr[31]~input_o\);

\inst4|Q_internal[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[31]~91_combout\,
	asdata => \jump_addr[31]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(31));

\jump_addr[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(29),
	o => \jump_addr[29]~input_o\);

\inst4|Q_internal[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[29]~87_combout\,
	asdata => \jump_addr[29]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(29));

\jump_addr[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(27),
	o => \jump_addr[27]~input_o\);

\inst4|Q_internal[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[27]~83_combout\,
	asdata => \jump_addr[27]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(27));

\jump_addr[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(22),
	o => \jump_addr[22]~input_o\);

\inst4|Q_internal[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[22]~73_combout\,
	asdata => \jump_addr[22]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(22));

\jump_addr[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(21),
	o => \jump_addr[21]~input_o\);

\inst4|Q_internal[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[21]~71_combout\,
	asdata => \jump_addr[21]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(21));

\jump_addr[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(19),
	o => \jump_addr[19]~input_o\);

\inst4|Q_internal[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[19]~67_combout\,
	asdata => \jump_addr[19]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(19));

\jump_addr[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(15),
	o => \jump_addr[15]~input_o\);

\inst4|Q_internal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[15]~59_combout\,
	asdata => \jump_addr[15]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(15));

\jump_addr[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(13),
	o => \jump_addr[13]~input_o\);

\inst4|Q_internal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[13]~55_combout\,
	asdata => \jump_addr[13]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(13));

\jump_addr[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(11),
	o => \jump_addr[11]~input_o\);

\inst4|Q_internal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[11]~51_combout\,
	asdata => \jump_addr[11]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(11));

\jump_addr[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(6),
	o => \jump_addr[6]~input_o\);

\inst4|Q_internal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[6]~41_combout\,
	asdata => \jump_addr[6]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(6));

\jump_addr[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(5),
	o => \jump_addr[5]~input_o\);

\inst4|Q_internal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[5]~39_combout\,
	asdata => \jump_addr[5]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(5));

\jump_addr[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(3),
	o => \jump_addr[3]~input_o\);

\inst4|Q_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[3]~35_combout\,
	asdata => \jump_addr[3]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(3));

\jump_addr[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_addr(1),
	o => \jump_addr[1]~input_o\);

\inst4|Q_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Q_internal[1]~31_combout\,
	asdata => \jump_addr[1]~input_o\,
	sload => \PCSrc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_internal\(1));

\wren~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

\clk1/2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_clk1/2\,
	o => \clk1/2~input_o\);

\clk1/2~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clk1/2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1/2~inputclkctrl_outclk\);

\dataIn[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(30),
	o => \dataIn[30]~input_o\);

\dataIn[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(31),
	o => \dataIn[31]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a30\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

\dataIn[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(28),
	o => \dataIn[28]~input_o\);

\dataIn[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(29),
	o => \dataIn[29]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a28\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

\dataIn[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(26),
	o => \dataIn[26]~input_o\);

\dataIn[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(27),
	o => \dataIn[27]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a26\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

\dataIn[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(24),
	o => \dataIn[24]~input_o\);

\dataIn[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(25),
	o => \dataIn[25]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a24\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

\dataIn[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(22),
	o => \dataIn[22]~input_o\);

\dataIn[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(23),
	o => \dataIn[23]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a22\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

\dataIn[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(20),
	o => \dataIn[20]~input_o\);

\dataIn[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(21),
	o => \dataIn[21]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a20\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

\dataIn[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(18),
	o => \dataIn[18]~input_o\);

\dataIn[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(19),
	o => \dataIn[19]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a18\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

\dataIn[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(16),
	o => \dataIn[16]~input_o\);

\dataIn[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(17),
	o => \dataIn[17]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a16\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

\dataIn[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(14),
	o => \dataIn[14]~input_o\);

\dataIn[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(15),
	o => \dataIn[15]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a14\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

\dataIn[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(12),
	o => \dataIn[12]~input_o\);

\dataIn[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(13),
	o => \dataIn[13]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

\dataIn[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(10),
	o => \dataIn[10]~input_o\);

\dataIn[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(11),
	o => \dataIn[11]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

\dataIn[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(8),
	o => \dataIn[8]~input_o\);

\dataIn[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(9),
	o => \dataIn[9]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\dataIn[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

\dataIn[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\dataIn[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

\dataIn[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\dataIn[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\dataIn[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\dataIn[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\dataIn[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "C:/Users/asus/Desktop/SRC/INS_MEM_INIT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq2:inst3|altsyncram:altsyncram_component|altsyncram_8lk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clk1/2~inputclkctrl_outclk\,
	portadatain => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ww_pc11(31) <= \pc11[31]~output_o\;

ww_pc11(30) <= \pc11[30]~output_o\;

ww_pc11(29) <= \pc11[29]~output_o\;

ww_pc11(28) <= \pc11[28]~output_o\;

ww_pc11(27) <= \pc11[27]~output_o\;

ww_pc11(26) <= \pc11[26]~output_o\;

ww_pc11(25) <= \pc11[25]~output_o\;

ww_pc11(24) <= \pc11[24]~output_o\;

ww_pc11(23) <= \pc11[23]~output_o\;

ww_pc11(22) <= \pc11[22]~output_o\;

ww_pc11(21) <= \pc11[21]~output_o\;

ww_pc11(20) <= \pc11[20]~output_o\;

ww_pc11(19) <= \pc11[19]~output_o\;

ww_pc11(18) <= \pc11[18]~output_o\;

ww_pc11(17) <= \pc11[17]~output_o\;

ww_pc11(16) <= \pc11[16]~output_o\;

ww_pc11(15) <= \pc11[15]~output_o\;

ww_pc11(14) <= \pc11[14]~output_o\;

ww_pc11(13) <= \pc11[13]~output_o\;

ww_pc11(12) <= \pc11[12]~output_o\;

ww_pc11(11) <= \pc11[11]~output_o\;

ww_pc11(10) <= \pc11[10]~output_o\;

ww_pc11(9) <= \pc11[9]~output_o\;

ww_pc11(8) <= \pc11[8]~output_o\;

ww_pc11(7) <= \pc11[7]~output_o\;

ww_pc11(6) <= \pc11[6]~output_o\;

ww_pc11(5) <= \pc11[5]~output_o\;

ww_pc11(4) <= \pc11[4]~output_o\;

ww_pc11(3) <= \pc11[3]~output_o\;

ww_pc11(2) <= \pc11[2]~output_o\;

ww_pc11(1) <= \pc11[1]~output_o\;

ww_pc11(0) <= \pc11[0]~output_o\;

ww_pc_data(31) <= \pc_data[31]~output_o\;

ww_pc_data(30) <= \pc_data[30]~output_o\;

ww_pc_data(29) <= \pc_data[29]~output_o\;

ww_pc_data(28) <= \pc_data[28]~output_o\;

ww_pc_data(27) <= \pc_data[27]~output_o\;

ww_pc_data(26) <= \pc_data[26]~output_o\;

ww_pc_data(25) <= \pc_data[25]~output_o\;

ww_pc_data(24) <= \pc_data[24]~output_o\;

ww_pc_data(23) <= \pc_data[23]~output_o\;

ww_pc_data(22) <= \pc_data[22]~output_o\;

ww_pc_data(21) <= \pc_data[21]~output_o\;

ww_pc_data(20) <= \pc_data[20]~output_o\;

ww_pc_data(19) <= \pc_data[19]~output_o\;

ww_pc_data(18) <= \pc_data[18]~output_o\;

ww_pc_data(17) <= \pc_data[17]~output_o\;

ww_pc_data(16) <= \pc_data[16]~output_o\;

ww_pc_data(15) <= \pc_data[15]~output_o\;

ww_pc_data(14) <= \pc_data[14]~output_o\;

ww_pc_data(13) <= \pc_data[13]~output_o\;

ww_pc_data(12) <= \pc_data[12]~output_o\;

ww_pc_data(11) <= \pc_data[11]~output_o\;

ww_pc_data(10) <= \pc_data[10]~output_o\;

ww_pc_data(9) <= \pc_data[9]~output_o\;

ww_pc_data(8) <= \pc_data[8]~output_o\;

ww_pc_data(7) <= \pc_data[7]~output_o\;

ww_pc_data(6) <= \pc_data[6]~output_o\;

ww_pc_data(5) <= \pc_data[5]~output_o\;

ww_pc_data(4) <= \pc_data[4]~output_o\;

ww_pc_data(3) <= \pc_data[3]~output_o\;

ww_pc_data(2) <= \pc_data[2]~output_o\;

ww_pc_data(1) <= \pc_data[1]~output_o\;

ww_pc_data(0) <= \pc_data[0]~output_o\;
END structure;


