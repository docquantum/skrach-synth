-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Apr 12 23:34:06 2020
-- Host        : QuantumNet-L4 running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim
--               /home/docquantum/homework/ce446_solovey/final/code/Skrach.srcs/sources_1/bd/lab4_design/ip/lab4_design_lab4_ip_0_6/lab4_design_lab4_ip_0_6_sim_netlist.vhdl
-- Design      : lab4_design_lab4_ip_0_6
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_TWICtl is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    DONE_O_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]\ : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    CLK : in STD_LOGIC;
    stb : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \state_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[2]_0\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    initEn_reg : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC;
    \state_reg[1]_0\ : in STD_LOGIC;
    \state_reg[1]_1\ : in STD_LOGIC;
    msg : in STD_LOGIC;
    initEn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_TWICtl : entity is "TWICtl";
end lab4_design_lab4_ip_0_6_TWICtl;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_TWICtl is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DONE_O_i_1_n_0 : STD_LOGIC;
  signal DONE_O_i_2_n_0 : STD_LOGIC;
  signal DONE_O_i_3_n_0 : STD_LOGIC;
  signal DONE_O_i_4_n_0 : STD_LOGIC;
  signal DONE_O_i_5_n_0 : STD_LOGIC;
  signal ERR_O_i_1_n_0 : STD_LOGIC;
  signal ERR_O_i_2_n_0 : STD_LOGIC;
  signal \FSM_gray_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_9_n_0\ : STD_LOGIC;
  signal addrNData : STD_LOGIC;
  signal addrNData_i_1_n_0 : STD_LOGIC;
  signal bitCount : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bitCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitCount[2]_i_1_n_0\ : STD_LOGIC;
  signal busFreeCnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal busFreeCnt0_1 : STD_LOGIC;
  signal \busFreeCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \busFreeCnt[6]_i_3_n_0\ : STD_LOGIC;
  signal busFreeCnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal busState0 : STD_LOGIC;
  signal \busState[0]_i_1_n_0\ : STD_LOGIC;
  signal \busState[1]_i_1_n_0\ : STD_LOGIC;
  signal \busState_reg_n_0_[0]\ : STD_LOGIC;
  signal \busState_reg_n_0_[1]\ : STD_LOGIC;
  signal dScl : STD_LOGIC;
  signal dataByte : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal dataByte0 : STD_LOGIC;
  signal dataByte1 : STD_LOGIC;
  signal \dataByte[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_3_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_5_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_6_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_7_n_0\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[0]\ : STD_LOGIC;
  signal ddSda : STD_LOGIC;
  signal done : STD_LOGIC;
  signal error : STD_LOGIC;
  signal initEn_i_2_n_0 : STD_LOGIC;
  signal int_Rst : STD_LOGIC;
  signal int_Rst_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rScl : STD_LOGIC;
  signal rScl_i_1_n_0 : STD_LOGIC;
  signal rScl_i_2_n_0 : STD_LOGIC;
  signal rSda : STD_LOGIC;
  signal rSda_i_1_n_0 : STD_LOGIC;
  signal rSda_i_2_n_0 : STD_LOGIC;
  signal rSda_i_3_n_0 : STD_LOGIC;
  signal sclCnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sclCnt0_0 : STD_LOGIC;
  signal \sclCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \sclCnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \sclCnt[6]_i_4_n_0\ : STD_LOGIC;
  signal sclCnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal scl_INST_0_i_1_n_0 : STD_LOGIC;
  signal sda_INST_0_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal subState : STD_LOGIC;
  signal \subState[0]_i_1_n_0\ : STD_LOGIC;
  signal \subState[1]_i_1_n_0\ : STD_LOGIC;
  signal \subState[1]_i_2_n_0\ : STD_LOGIC;
  signal \subState_reg_n_0_[0]\ : STD_LOGIC;
  signal \subState_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DONE_O_i_4 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of DONE_O_i_5 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of ERR_O_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_gray_state[1]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_gray_state[1]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_gray_state[2]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_10\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_7\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_9\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[0]\ : label is "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[1]\ : label is "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[2]\ : label is "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[3]\ : label is "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111";
  attribute SOFT_HLUTNM of \bitCount[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bitCount[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \busFreeCnt[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \busFreeCnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \busFreeCnt[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \busFreeCnt[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dataByte[7]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dataByte[7]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dataByte[7]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of initEn_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of rScl_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sclCnt[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sclCnt[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sclCnt[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sclCnt[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sclCnt[6]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of sda_INST_0_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \subState[1]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \subState[1]_i_3\ : label is "soft_lutpair13";
begin
  D(3 downto 0) <= \^d\(3 downto 0);
DONE_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF000D"
    )
        port map (
      I0 => addrNData,
      I1 => p_0_in(0),
      I2 => \subState_reg_n_0_[1]\,
      I3 => DONE_O_i_2_n_0,
      I4 => DONE_O_i_3_n_0,
      I5 => DONE_O_i_4_n_0,
      O => DONE_O_i_1_n_0
    );
DONE_O_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \subState_reg_n_0_[0]\,
      I5 => \subState[1]_i_2_n_0\,
      O => DONE_O_i_2_n_0
    );
DONE_O_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \subState[1]_i_2_n_0\,
      I1 => state(0),
      I2 => bitCount(1),
      I3 => bitCount(0),
      I4 => bitCount(2),
      I5 => DONE_O_i_5_n_0,
      O => DONE_O_i_3_n_0
    );
DONE_O_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => \FSM_gray_state[3]_i_7_n_0\,
      O => DONE_O_i_4_n_0
    );
DONE_O_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \subState_reg_n_0_[1]\,
      I3 => \subState_reg_n_0_[0]\,
      I4 => state(3),
      O => DONE_O_i_5_n_0
    );
DONE_O_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => DONE_O_i_1_n_0,
      Q => done,
      R => '0'
    );
ERR_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111F00011110000"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => DONE_O_i_2_n_0,
      I2 => rSda,
      I3 => dScl,
      I4 => p_0_in(0),
      I5 => ERR_O_i_2_n_0,
      O => ERR_O_i_1_n_0
    );
ERR_O_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      O => ERR_O_i_2_n_0
    );
ERR_O_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => ERR_O_i_1_n_0,
      Q => error,
      R => '0'
    );
\FSM_gray_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAFFFFFEEAF"
    )
        port map (
      I0 => \FSM_gray_state[0]_i_2_n_0\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => state(3),
      I5 => \FSM_gray_state[2]_i_2_n_0\,
      O => \FSM_gray_state[0]_i_1_n_0\
    );
\FSM_gray_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100055555555"
    )
        port map (
      I0 => state(0),
      I1 => int_Rst,
      I2 => stb,
      I3 => msg,
      I4 => state(2),
      I5 => state(1),
      O => \FSM_gray_state[0]_i_2_n_0\
    );
\FSM_gray_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEAAAAAAFEFF"
    )
        port map (
      I0 => \FSM_gray_state[1]_i_2_n_0\,
      I1 => \FSM_gray_state[1]_i_3_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => \FSM_gray_state[1]_i_4_n_0\,
      I5 => \FSM_gray_state[3]_i_7_n_0\,
      O => \FSM_gray_state[1]_i_1_n_0\
    );
\FSM_gray_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => state(3),
      I4 => \FSM_gray_state[3]_i_6_n_0\,
      O => \FSM_gray_state[1]_i_2_n_0\
    );
\FSM_gray_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stb,
      I1 => int_Rst,
      O => \FSM_gray_state[1]_i_3_n_0\
    );
\FSM_gray_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      O => \FSM_gray_state[1]_i_4_n_0\
    );
\FSM_gray_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000013300000D33C"
    )
        port map (
      I0 => \FSM_gray_state[2]_i_2_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => state(3),
      I5 => \FSM_gray_state[3]_i_7_n_0\,
      O => \FSM_gray_state[2]_i_1_n_0\
    );
\FSM_gray_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11001110"
    )
        port map (
      I0 => int_Rst,
      I1 => \dataByte_reg_n_0_[0]\,
      I2 => stb,
      I3 => addrNData,
      I4 => msg,
      O => \FSM_gray_state[2]_i_2_n_0\
    );
\FSM_gray_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0800"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_3_n_0\,
      I1 => stb,
      I2 => \busState_reg_n_0_[1]\,
      I3 => \busState_reg_n_0_[0]\,
      I4 => \FSM_gray_state[3]_i_4_n_0\,
      I5 => \FSM_gray_state[3]_i_5_n_0\,
      O => \FSM_gray_state[3]_i_1_n_0\
    );
\FSM_gray_state[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(2),
      O => \FSM_gray_state[3]_i_10_n_0\
    );
\FSM_gray_state[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0000000001"
    )
        port map (
      I0 => bitCount(2),
      I1 => bitCount(0),
      I2 => bitCount(1),
      I3 => state(1),
      I4 => state(3),
      I5 => state(0),
      O => \FSM_gray_state[3]_i_11_n_0\
    );
\FSM_gray_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000304000400"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_6_n_0\,
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      I4 => \FSM_gray_state[3]_i_7_n_0\,
      I5 => state(2),
      O => \FSM_gray_state[3]_i_2_n_0\
    );
\FSM_gray_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => state(3),
      I4 => s00_axi_aresetn,
      O => \FSM_gray_state[3]_i_3_n_0\
    );
\FSM_gray_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20020002"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_7_n_0\,
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => \FSM_gray_state[3]_i_4_n_0\
    );
\FSM_gray_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20A0008000800080"
    )
        port map (
      I0 => \subState[1]_i_2_n_0\,
      I1 => \subState_reg_n_0_[0]\,
      I2 => \subState_reg_n_0_[1]\,
      I3 => \FSM_gray_state[3]_i_8_n_0\,
      I4 => \FSM_gray_state[3]_i_9_n_0\,
      I5 => state(3),
      O => \FSM_gray_state[3]_i_5_n_0\
    );
\FSM_gray_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => addrNData,
      I1 => stb,
      I2 => \dataByte_reg_n_0_[0]\,
      I3 => int_Rst,
      O => \FSM_gray_state[3]_i_6_n_0\
    );
\FSM_gray_state[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rSda,
      I1 => dScl,
      I2 => p_0_in(0),
      O => \FSM_gray_state[3]_i_7_n_0\
    );
\FSM_gray_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001555FFFF"
    )
        port map (
      I0 => state(2),
      I1 => bitCount(2),
      I2 => bitCount(1),
      I3 => bitCount(0),
      I4 => \FSM_gray_state[3]_i_10_n_0\,
      I5 => \FSM_gray_state[3]_i_11_n_0\,
      O => \FSM_gray_state[3]_i_8_n_0\
    );
\FSM_gray_state[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      O => \FSM_gray_state[3]_i_9_n_0\
    );
\FSM_gray_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_gray_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_gray_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
\FSM_gray_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[3]_i_2_n_0\,
      Q => state(3),
      R => '0'
    );
addrNData_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => addrNData,
      I1 => \dataByte[7]_i_5_n_0\,
      I2 => \dataByte[7]_i_6_n_0\,
      O => addrNData_i_1_n_0
    );
addrNData_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => addrNData_i_1_n_0,
      Q => addrNData,
      R => '0'
    );
\bitCount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => bitCount(0),
      I1 => dataByte0,
      I2 => dataByte1,
      O => \bitCount[0]_i_1_n_0\
    );
\bitCount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA6"
    )
        port map (
      I0 => bitCount(1),
      I1 => dataByte0,
      I2 => bitCount(0),
      I3 => dataByte1,
      O => \bitCount[1]_i_1_n_0\
    );
\bitCount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA6"
    )
        port map (
      I0 => bitCount(2),
      I1 => dataByte0,
      I2 => bitCount(1),
      I3 => bitCount(0),
      I4 => dataByte1,
      O => \bitCount[2]_i_1_n_0\
    );
\bitCount[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAAAAAA"
    )
        port map (
      I0 => \dataByte[7]_i_6_n_0\,
      I1 => state(3),
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      I5 => \subState[1]_i_2_n_0\,
      O => dataByte1
    );
\bitCount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitCount[0]_i_1_n_0\,
      Q => bitCount(0),
      R => '0'
    );
\bitCount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitCount[1]_i_1_n_0\,
      Q => bitCount(1),
      R => '0'
    );
\bitCount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bitCount[2]_i_1_n_0\,
      Q => bitCount(2),
      R => '0'
    );
\busFreeCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => busFreeCnt_reg(0),
      O => busFreeCnt0(0)
    );
\busFreeCnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => busFreeCnt_reg(1),
      I1 => busFreeCnt_reg(0),
      O => \busFreeCnt[1]_i_1_n_0\
    );
\busFreeCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => busFreeCnt_reg(2),
      I1 => busFreeCnt_reg(0),
      I2 => busFreeCnt_reg(1),
      O => busFreeCnt0(2)
    );
\busFreeCnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => busFreeCnt_reg(3),
      I1 => busFreeCnt_reg(2),
      I2 => busFreeCnt_reg(1),
      I3 => busFreeCnt_reg(0),
      O => busFreeCnt0(3)
    );
\busFreeCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => busFreeCnt_reg(4),
      I1 => busFreeCnt_reg(3),
      I2 => busFreeCnt_reg(0),
      I3 => busFreeCnt_reg(1),
      I4 => busFreeCnt_reg(2),
      O => busFreeCnt0(4)
    );
\busFreeCnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => busFreeCnt_reg(5),
      I1 => busFreeCnt_reg(4),
      I2 => busFreeCnt_reg(2),
      I3 => busFreeCnt_reg(1),
      I4 => busFreeCnt_reg(0),
      I5 => busFreeCnt_reg(3),
      O => busFreeCnt0(5)
    );
\busFreeCnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => int_Rst,
      I1 => p_0_in(0),
      I2 => dScl,
      O => busFreeCnt0_1
    );
\busFreeCnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => busFreeCnt_reg(6),
      I1 => \busFreeCnt[6]_i_3_n_0\,
      O => busFreeCnt0(6)
    );
\busFreeCnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => busFreeCnt_reg(4),
      I1 => busFreeCnt_reg(2),
      I2 => busFreeCnt_reg(1),
      I3 => busFreeCnt_reg(0),
      I4 => busFreeCnt_reg(3),
      I5 => busFreeCnt_reg(5),
      O => \busFreeCnt[6]_i_3_n_0\
    );
\busFreeCnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(0),
      Q => busFreeCnt_reg(0),
      S => busFreeCnt0_1
    );
\busFreeCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \busFreeCnt[1]_i_1_n_0\,
      Q => busFreeCnt_reg(1),
      R => busFreeCnt0_1
    );
\busFreeCnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(2),
      Q => busFreeCnt_reg(2),
      S => busFreeCnt0_1
    );
\busFreeCnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(3),
      Q => busFreeCnt_reg(3),
      S => busFreeCnt0_1
    );
\busFreeCnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(4),
      Q => busFreeCnt_reg(4),
      S => busFreeCnt0_1
    );
\busFreeCnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(5),
      Q => busFreeCnt_reg(5),
      S => busFreeCnt0_1
    );
\busFreeCnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => busFreeCnt0(6),
      Q => busFreeCnt_reg(6),
      S => busFreeCnt0_1
    );
\busState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555FFFF45550000"
    )
        port map (
      I0 => int_Rst,
      I1 => p_0_in(0),
      I2 => dScl,
      I3 => ddSda,
      I4 => busState0,
      I5 => \busState_reg_n_0_[0]\,
      O => \busState[0]_i_1_n_0\
    );
\busState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => dScl,
      I2 => ddSda,
      I3 => int_Rst,
      I4 => busState0,
      I5 => \busState_reg_n_0_[1]\,
      O => \busState[1]_i_1_n_0\
    );
\busState[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4444F444"
    )
        port map (
      I0 => busFreeCnt_reg(6),
      I1 => \busFreeCnt[6]_i_3_n_0\,
      I2 => ddSda,
      I3 => dScl,
      I4 => p_0_in(0),
      I5 => int_Rst,
      O => busState0
    );
\busState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \busState[0]_i_1_n_0\,
      Q => \busState_reg_n_0_[0]\,
      R => '0'
    );
\busState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \busState[1]_i_1_n_0\,
      Q => \busState_reg_n_0_[1]\,
      R => '0'
    );
dScl_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => scl,
      Q => dScl,
      R => '0'
    );
dSda_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => sda,
      Q => p_0_in(0),
      R => '0'
    );
\dataByte[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F404"
    )
        port map (
      I0 => \dataByte[7]_i_5_n_0\,
      I1 => p_0_in(0),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => Q(0),
      O => p_1_in_0(0)
    );
\dataByte[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFCA"
    )
        port map (
      I0 => \dataByte_reg_n_0_[0]\,
      I1 => Q(1),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => \dataByte[7]_i_5_n_0\,
      O => p_1_in_0(1)
    );
\dataByte[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFCA"
    )
        port map (
      I0 => dataByte(1),
      I1 => Q(2),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => \dataByte[7]_i_5_n_0\,
      O => p_1_in_0(2)
    );
\dataByte[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F404"
    )
        port map (
      I0 => \dataByte[7]_i_5_n_0\,
      I1 => dataByte(2),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => Q(3),
      O => p_1_in_0(3)
    );
\dataByte[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFCA"
    )
        port map (
      I0 => dataByte(3),
      I1 => Q(4),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => \dataByte[7]_i_5_n_0\,
      O => p_1_in_0(4)
    );
\dataByte[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFCA"
    )
        port map (
      I0 => dataByte(4),
      I1 => Q(5),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => \dataByte[7]_i_5_n_0\,
      O => p_1_in_0(5)
    );
\dataByte[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFCA"
    )
        port map (
      I0 => dataByte(5),
      I1 => Q(6),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => \dataByte[7]_i_5_n_0\,
      O => p_1_in_0(6)
    );
\dataByte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF28080000"
    )
        port map (
      I0 => \dataByte[7]_i_3_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => \subState_reg_n_0_[0]\,
      I4 => \subState[1]_i_2_n_0\,
      I5 => dataByte0,
      O => \dataByte[7]_i_1_n_0\
    );
\dataByte[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F404"
    )
        port map (
      I0 => \dataByte[7]_i_5_n_0\,
      I1 => dataByte(6),
      I2 => \dataByte[7]_i_6_n_0\,
      I3 => Q(7),
      O => p_1_in_0(7)
    );
\dataByte[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      O => \dataByte[7]_i_3_n_0\
    );
\dataByte[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000A80000000800"
    )
        port map (
      I0 => \subState[1]_i_2_n_0\,
      I1 => \dataByte[7]_i_7_n_0\,
      I2 => \subState_reg_n_0_[1]\,
      I3 => \subState_reg_n_0_[0]\,
      I4 => state(3),
      I5 => ERR_O_i_2_n_0,
      O => dataByte0
    );
\dataByte[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \subState[1]_i_2_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => state(3),
      O => \dataByte[7]_i_5_n_0\
    );
\dataByte[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => \subState[1]_i_2_n_0\,
      I2 => \subState_reg_n_0_[0]\,
      I3 => state(1),
      I4 => state(2),
      I5 => \dataByte[7]_i_3_n_0\,
      O => \dataByte[7]_i_6_n_0\
    );
\dataByte[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \dataByte[7]_i_7_n_0\
    );
\dataByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in_0(0),
      Q => \dataByte_reg_n_0_[0]\,
      R => '0'
    );
\dataByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in_0(1),
      Q => dataByte(1),
      R => '0'
    );
\dataByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in_0(2),
      Q => dataByte(2),
      R => '0'
    );
\dataByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in_0(3),
      Q => dataByte(3),
      R => '0'
    );
\dataByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in_0(4),
      Q => dataByte(4),
      R => '0'
    );
\dataByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in_0(5),
      Q => dataByte(5),
      R => '0'
    );
\dataByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in_0(6),
      Q => dataByte(6),
      R => '0'
    );
\dataByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \dataByte[7]_i_1_n_0\,
      D => p_1_in_0(7),
      Q => dataByte(7),
      R => '0'
    );
ddSda_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in(0),
      Q => ddSda,
      R => '0'
    );
\initA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^d\(3),
      I1 => done,
      I2 => initEn_reg,
      O => DONE_O_reg_0(0)
    );
initEn_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F774044"
    )
        port map (
      I0 => \state_reg[0]\(2),
      I1 => s00_axi_aresetn,
      I2 => initEn_reg,
      I3 => initEn_i_2_n_0,
      I4 => initEn,
      O => \state_reg[2]\
    );
initEn_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => done,
      I1 => error,
      I2 => \state_reg[2]_0\,
      O => initEn_i_2_n_0
    );
int_Rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBB3BB"
    )
        port map (
      I0 => int_Rst,
      I1 => s00_axi_aresetn,
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
      O => int_Rst_i_1_n_0
    );
int_Rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => int_Rst_i_1_n_0,
      Q => int_Rst,
      R => '0'
    );
rScl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBFBF283C3C3C"
    )
        port map (
      I0 => state(3),
      I1 => \subState_reg_n_0_[0]\,
      I2 => \subState_reg_n_0_[1]\,
      I3 => rScl_i_2_n_0,
      I4 => state(0),
      I5 => rScl,
      O => rScl_i_1_n_0
    );
rScl_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => rScl_i_2_n_0
    );
rScl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => rScl_i_1_n_0,
      Q => rScl,
      R => '0'
    );
rSda_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABEAFFFFABEA0000"
    )
        port map (
      I0 => rSda_i_2_n_0,
      I1 => state(3),
      I2 => \subState_reg_n_0_[1]\,
      I3 => \subState_reg_n_0_[0]\,
      I4 => rSda_i_3_n_0,
      I5 => rSda,
      O => rSda_i_1_n_0
    );
rSda_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0405050504050504"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      I4 => state(1),
      I5 => dataByte(7),
      O => rSda_i_2_n_0
    );
rSda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF222F0FFF000D"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \subState_reg_n_0_[0]\,
      I3 => \subState_reg_n_0_[1]\,
      I4 => state(3),
      I5 => state(2),
      O => rSda_i_3_n_0
    );
rSda_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => rSda_i_1_n_0,
      Q => rSda,
      R => '0'
    );
\sclCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sclCnt_reg(0),
      O => sclCnt0(0)
    );
\sclCnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sclCnt_reg(1),
      I1 => sclCnt_reg(0),
      O => \sclCnt[1]_i_1_n_0\
    );
\sclCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => sclCnt_reg(1),
      I1 => sclCnt_reg(0),
      I2 => sclCnt_reg(2),
      O => sclCnt0(2)
    );
\sclCnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => sclCnt_reg(2),
      I1 => sclCnt_reg(0),
      I2 => sclCnt_reg(1),
      I3 => sclCnt_reg(3),
      O => sclCnt0(3)
    );
\sclCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => sclCnt_reg(3),
      I1 => sclCnt_reg(1),
      I2 => sclCnt_reg(0),
      I3 => sclCnt_reg(2),
      I4 => sclCnt_reg(4),
      O => sclCnt0(4)
    );
\sclCnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => sclCnt_reg(4),
      I1 => sclCnt_reg(2),
      I2 => sclCnt_reg(0),
      I3 => sclCnt_reg(1),
      I4 => sclCnt_reg(3),
      I5 => sclCnt_reg(5),
      O => sclCnt0(5)
    );
\sclCnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => \subState[1]_i_2_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => state(3),
      O => sclCnt0_0
    );
\sclCnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dScl,
      I1 => rScl,
      O => \sclCnt[6]_i_2_n_0\
    );
\sclCnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sclCnt[6]_i_4_n_0\,
      I1 => sclCnt_reg(6),
      O => sclCnt0(6)
    );
\sclCnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sclCnt_reg(5),
      I1 => sclCnt_reg(3),
      I2 => sclCnt_reg(1),
      I3 => sclCnt_reg(0),
      I4 => sclCnt_reg(2),
      I5 => sclCnt_reg(4),
      O => \sclCnt[6]_i_4_n_0\
    );
\sclCnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(0),
      Q => sclCnt_reg(0),
      S => sclCnt0_0
    );
\sclCnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => \sclCnt[1]_i_1_n_0\,
      Q => sclCnt_reg(1),
      S => sclCnt0_0
    );
\sclCnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(2),
      Q => sclCnt_reg(2),
      S => sclCnt0_0
    );
\sclCnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(3),
      Q => sclCnt_reg(3),
      S => sclCnt0_0
    );
\sclCnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(4),
      Q => sclCnt_reg(4),
      S => sclCnt0_0
    );
\sclCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(5),
      Q => sclCnt_reg(5),
      R => sclCnt0_0
    );
\sclCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(6),
      Q => sclCnt_reg(6),
      R => sclCnt0_0
    );
scl_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => scl_INST_0_i_1_n_0,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => scl
    );
scl_INST_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rScl,
      O => scl_INST_0_i_1_n_0
    );
sda_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => sda_INST_0_i_1_n_0,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => sda
    );
sda_INST_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rSda,
      O => sda_INST_0_i_1_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF0B"
    )
        port map (
      I0 => \state_reg[0]\(1),
      I1 => \state_reg[0]\(0),
      I2 => \state_reg[0]\(2),
      I3 => \state_reg[0]\(3),
      I4 => error,
      O => \^d\(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040444044444440"
    )
        port map (
      I0 => error,
      I1 => \state_reg[1]\,
      I2 => \state_reg[1]_0\,
      I3 => \state_reg[0]\(0),
      I4 => \state_reg[0]\(1),
      I5 => \state_reg[1]_1\,
      O => \^d\(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \state_reg[0]\(2),
      I1 => \state_reg[0]\(3),
      I2 => error,
      I3 => \state_reg[2]_0\,
      O => \^d\(2)
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B232023282320232"
    )
        port map (
      I0 => done,
      I1 => \state_reg[0]\(3),
      I2 => \state_reg[0]\(2),
      I3 => \state_reg[0]\(0),
      I4 => \state_reg[0]\(1),
      I5 => \state_reg[0]_0\,
      O => E(0)
    );
\state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \state_reg[1]_0\,
      I1 => \state_reg[0]\(3),
      I2 => \state_reg[0]\(2),
      I3 => error,
      I4 => \state_reg[0]\(1),
      O => \^d\(3)
    );
\subState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666606666"
    )
        port map (
      I0 => \subState_reg_n_0_[0]\,
      I1 => \subState[1]_i_2_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => state(3),
      O => \subState[0]_i_1_n_0\
    );
\subState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => \subState[1]_i_2_n_0\,
      I2 => \subState_reg_n_0_[0]\,
      I3 => subState,
      O => \subState[1]_i_1_n_0\
    );
\subState[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sclCnt_reg(6),
      I1 => \sclCnt[6]_i_4_n_0\,
      O => \subState[1]_i_2_n_0\
    );
\subState[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => subState
    );
\subState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subState[0]_i_1_n_0\,
      Q => \subState_reg_n_0_[0]\,
      R => '0'
    );
\subState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \subState[1]_i_1_n_0\,
      Q => \subState_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_addr_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 14 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_addr_counter : entity is "addr_counter";
end lab4_design_lab4_ip_0_6_addr_counter;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_addr_counter is
  signal \processCount0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \processCount0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal processCount1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_processCount0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\processCount0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \processCount0_inferred__0/i__carry_n_0\,
      CO(2) => \processCount0_inferred__0/i__carry_n_1\,
      CO(1) => \processCount0_inferred__0/i__carry_n_2\,
      CO(0) => \processCount0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_0_in(3 downto 0),
      O(3 downto 0) => processCount1_in(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\processCount0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \processCount0_inferred__0/i__carry_n_0\,
      CO(3) => \processCount0_inferred__0/i__carry__0_n_0\,
      CO(2) => \processCount0_inferred__0/i__carry__0_n_1\,
      CO(1) => \processCount0_inferred__0/i__carry__0_n_2\,
      CO(0) => \processCount0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_0_in(7 downto 4),
      O(3 downto 0) => processCount1_in(7 downto 4),
      S(3 downto 0) => \processCount_reg[7]_0\(3 downto 0)
    );
\processCount0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \processCount0_inferred__0/i__carry__0_n_0\,
      CO(3) => \processCount0_inferred__0/i__carry__1_n_0\,
      CO(2) => \processCount0_inferred__0/i__carry__1_n_1\,
      CO(1) => \processCount0_inferred__0/i__carry__1_n_2\,
      CO(0) => \processCount0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_0_in(11 downto 8),
      O(3 downto 0) => processCount1_in(11 downto 8),
      S(3 downto 0) => \processCount_reg[11]_0\(3 downto 0)
    );
\processCount0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \processCount0_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW_processCount0_inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \processCount0_inferred__0/i__carry__2_n_1\,
      CO(1) => \processCount0_inferred__0/i__carry__2_n_2\,
      CO(0) => \processCount0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => p_0_in(14 downto 12),
      O(3 downto 0) => processCount1_in(15 downto 12),
      S(3 downto 0) => \processCount_reg[15]_0\(3 downto 0)
    );
\processCount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(0),
      Q => Q(0),
      R => SR(0)
    );
\processCount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(10),
      Q => Q(10),
      R => SR(0)
    );
\processCount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(11),
      Q => Q(11),
      R => SR(0)
    );
\processCount_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(12),
      Q => Q(12),
      R => SR(0)
    );
\processCount_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(13),
      Q => Q(13),
      R => SR(0)
    );
\processCount_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(14),
      Q => Q(14),
      R => SR(0)
    );
\processCount_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(15),
      Q => Q(15),
      R => SR(0)
    );
\processCount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(1),
      Q => Q(1),
      R => SR(0)
    );
\processCount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(2),
      Q => Q(2),
      R => SR(0)
    );
\processCount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(3),
      Q => Q(3),
      R => SR(0)
    );
\processCount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(4),
      Q => Q(4),
      R => SR(0)
    );
\processCount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(5),
      Q => Q(5),
      R => SR(0)
    );
\processCount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(6),
      Q => Q(6),
      R => SR(0)
    );
\processCount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(7),
      Q => Q(7),
      R => SR(0)
    );
\processCount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(8),
      Q => Q(8),
      R => SR(0)
    );
\processCount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => processCount1_in(9),
      Q => Q(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_audio_clk_wiz_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_audio_clk_wiz_clk_wiz : entity is "audio_clk_wiz_clk_wiz";
end lab4_design_lab4_ip_0_6_audio_clk_wiz_clk_wiz;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_audio_clk_wiz_clk_wiz is
  signal clk_in1_audio_clk_wiz : STD_LOGIC;
  signal clk_out1_audio_clk_wiz : STD_LOGIC;
  signal clk_out2_audio_clk_wiz : STD_LOGIC;
  signal clkfbout_audio_clk_wiz : STD_LOGIC;
  signal clkfbout_buf_audio_clk_wiz : STD_LOGIC;
  signal reset_high : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_audio_clk_wiz,
      O => clkfbout_buf_audio_clk_wiz
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_audio_clk_wiz
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_audio_clk_wiz,
      O => clk_out1
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out2_audio_clk_wiz,
      O => clk_out2
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 81.375000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 20,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_audio_clk_wiz,
      CLKFBOUT => clkfbout_audio_clk_wiz,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_audio_clk_wiz,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_audio_clk_wiz,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clk_out2_audio_clk_wiz,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset_high
    );
mmcm_adv_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => reset_high
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_btn_reader is
  port (
    cntr_btn : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    btn_press_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    btn_press_reg_1 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \ampl_sig_reg[15]\ : in STD_LOGIC;
    \ampl_sig_reg[15]_0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    up_btn : in STD_LOGIC;
    \phase_sig_reg[15]\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \phase_sig_reg[15]_0\ : in STD_LOGIC;
    right_btn : in STD_LOGIC;
    left_btn : in STD_LOGIC;
    \phase_sig_reg[15]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    waveSel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_btn_reader : entity is "btn_reader";
end lab4_design_lab4_ip_0_6_btn_reader;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_btn_reader is
  signal btn_current : STD_LOGIC;
  signal \btn_current_i_1__3_n_0\ : STD_LOGIC;
  signal btn_old : STD_LOGIC;
  signal \btn_press_i_1__3_n_0\ : STD_LOGIC;
  signal \^cntr_btn\ : STD_LOGIC;
  signal count0 : STD_LOGIC;
  signal \count1_carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4__3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_5__3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_6__3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1__3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2__3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3__3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_4__3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_5__3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_1\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_1__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_2__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_3__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_4__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_5__3_n_0\ : STD_LOGIC;
  signal \count1_carry_i_6__3_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__3_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \count_reg[0]_i_3__3_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_3__3_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_3__3_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_3__3_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_3__3_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_3__3_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_3__3_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_3__3_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__3_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1__3_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1__3_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__3_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__3_n_7\ : STD_LOGIC;
  signal ff1 : STD_LOGIC;
  signal ff2 : STD_LOGIC;
  signal \phase_sig[15]_i_4_n_0\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \btn_press_i_1__3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \phase_sig[15]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \phase_sig[15]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of signalSel_i_1 : label is "soft_lutpair36";
begin
  cntr_btn <= \^cntr_btn\;
\ampl_sig[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFEFEFE"
    )
        port map (
      I0 => \phase_sig[15]_i_4_n_0\,
      I1 => \ampl_sig_reg[15]\,
      I2 => \ampl_sig_reg[15]_0\,
      I3 => CO(0),
      I4 => up_btn,
      O => btn_press_reg_0
    );
\btn_current_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => \count1_carry__1_n_1\,
      I1 => ff2,
      I2 => ff1,
      I3 => btn_current,
      O => \btn_current_i_1__3_n_0\
    );
btn_current_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => \btn_current_i_1__3_n_0\,
      Q => btn_current
    );
btn_old_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn_current,
      Q => btn_old
    );
\btn_press_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => btn_current,
      I1 => btn_old,
      I2 => \^cntr_btn\,
      O => \btn_press_i_1__3_n_0\
    );
btn_press_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => \btn_press_i_1__3_n_0\,
      Q => \^cntr_btn\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count1_carry_i_1__3_n_0\,
      DI(1) => '0',
      DI(0) => \count1_carry_i_2__3_n_0\,
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \count1_carry_i_3__3_n_0\,
      S(2) => \count1_carry_i_4__3_n_0\,
      S(1) => \count1_carry_i_5__3_n_0\,
      S(0) => \count1_carry_i_6__3_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__0_i_1__3_n_0\,
      DI(2) => '0',
      DI(1) => \count1_carry__0_i_2__3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_3__3_n_0\,
      S(2) => \count1_carry__0_i_4__3_n_0\,
      S(1) => \count1_carry__0_i_5__3_n_0\,
      S(0) => \count1_carry__0_i_6__3_n_0\
    );
\count1_carry__0_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(15),
      O => \count1_carry__0_i_1__3_n_0\
    );
\count1_carry__0_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      O => \count1_carry__0_i_2__3_n_0\
    );
\count1_carry__0_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(15),
      I1 => count_reg(14),
      O => \count1_carry__0_i_3__3_n_0\
    );
\count1_carry__0_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(13),
      I1 => count_reg(12),
      O => \count1_carry__0_i_4__3_n_0\
    );
\count1_carry__0_i_5__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      O => \count1_carry__0_i_5__3_n_0\
    );
\count1_carry__0_i_6__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      O => \count1_carry__0_i_6__3_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \count1_carry__1_n_1\,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count1_carry__1_i_1__3_n_0\,
      DI(1) => \count1_carry__1_i_2__3_n_0\,
      DI(0) => \count1_carry__1_i_3__3_n_0\,
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => count_reg(20),
      S(1) => \count1_carry__1_i_4__3_n_0\,
      S(0) => \count1_carry__1_i_5__3_n_0\
    );
\count1_carry__1_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(20),
      O => \count1_carry__1_i_1__3_n_0\
    );
\count1_carry__1_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(19),
      I1 => count_reg(18),
      O => \count1_carry__1_i_2__3_n_0\
    );
\count1_carry__1_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(17),
      I1 => count_reg(16),
      O => \count1_carry__1_i_3__3_n_0\
    );
\count1_carry__1_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      O => \count1_carry__1_i_4__3_n_0\
    );
\count1_carry__1_i_5__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(16),
      I1 => count_reg(17),
      O => \count1_carry__1_i_5__3_n_0\
    );
\count1_carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(4),
      O => \count1_carry_i_1__3_n_0\
    );
\count1_carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \count1_carry_i_2__3_n_0\
    );
\count1_carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      O => \count1_carry_i_3__3_n_0\
    );
\count1_carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      O => \count1_carry_i_4__3_n_0\
    );
\count1_carry_i_5__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      O => \count1_carry_i_5__3_n_0\
    );
\count1_carry_i_6__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \count1_carry_i_6__3_n_0\
    );
\count[0]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ff2,
      I1 => ff1,
      I2 => s00_axi_aresetn,
      O => \count[0]_i_1__3_n_0\
    );
\count[0]_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \count1_carry__1_n_1\,
      O => count0
    );
\count[0]_i_4__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_4__3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__3_n_7\,
      Q => count_reg(0),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[0]_i_3__3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_3__3_n_0\,
      CO(2) => \count_reg[0]_i_3__3_n_1\,
      CO(1) => \count_reg[0]_i_3__3_n_2\,
      CO(0) => \count_reg[0]_i_3__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_3__3_n_4\,
      O(2) => \count_reg[0]_i_3__3_n_5\,
      O(1) => \count_reg[0]_i_3__3_n_6\,
      O(0) => \count_reg[0]_i_3__3_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_4__3_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__3_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__3_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__3_n_7\,
      Q => count_reg(12),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[12]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__3_n_0\,
      CO(3) => \count_reg[12]_i_1__3_n_0\,
      CO(2) => \count_reg[12]_i_1__3_n_1\,
      CO(1) => \count_reg[12]_i_1__3_n_2\,
      CO(0) => \count_reg[12]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__3_n_4\,
      O(2) => \count_reg[12]_i_1__3_n_5\,
      O(1) => \count_reg[12]_i_1__3_n_6\,
      O(0) => \count_reg[12]_i_1__3_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__3_n_6\,
      Q => count_reg(13),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__3_n_5\,
      Q => count_reg(14),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__3_n_4\,
      Q => count_reg(15),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__3_n_7\,
      Q => count_reg(16),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[16]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1__3_n_0\,
      CO(3) => \count_reg[16]_i_1__3_n_0\,
      CO(2) => \count_reg[16]_i_1__3_n_1\,
      CO(1) => \count_reg[16]_i_1__3_n_2\,
      CO(0) => \count_reg[16]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1__3_n_4\,
      O(2) => \count_reg[16]_i_1__3_n_5\,
      O(1) => \count_reg[16]_i_1__3_n_6\,
      O(0) => \count_reg[16]_i_1__3_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__3_n_6\,
      Q => count_reg(17),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__3_n_5\,
      Q => count_reg(18),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__3_n_4\,
      Q => count_reg(19),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__3_n_6\,
      Q => count_reg(1),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[20]_i_1__3_n_7\,
      Q => count_reg(20),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[20]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1__3_n_0\,
      CO(3 downto 0) => \NLW_count_reg[20]_i_1__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_reg[20]_i_1__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_reg[20]_i_1__3_n_7\,
      S(3 downto 1) => B"000",
      S(0) => count_reg(20)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__3_n_5\,
      Q => count_reg(2),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__3_n_4\,
      Q => count_reg(3),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__3_n_7\,
      Q => count_reg(4),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[4]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_3__3_n_0\,
      CO(3) => \count_reg[4]_i_1__3_n_0\,
      CO(2) => \count_reg[4]_i_1__3_n_1\,
      CO(1) => \count_reg[4]_i_1__3_n_2\,
      CO(0) => \count_reg[4]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__3_n_4\,
      O(2) => \count_reg[4]_i_1__3_n_5\,
      O(1) => \count_reg[4]_i_1__3_n_6\,
      O(0) => \count_reg[4]_i_1__3_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__3_n_6\,
      Q => count_reg(5),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__3_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__3_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__3_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1__3_n_0\
    );
\count_reg[8]_i_1__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__3_n_0\,
      CO(3) => \count_reg[8]_i_1__3_n_0\,
      CO(2) => \count_reg[8]_i_1__3_n_1\,
      CO(1) => \count_reg[8]_i_1__3_n_2\,
      CO(0) => \count_reg[8]_i_1__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__3_n_4\,
      O(2) => \count_reg[8]_i_1__3_n_5\,
      O(1) => \count_reg[8]_i_1__3_n_6\,
      O(0) => \count_reg[8]_i_1__3_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__3_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1__3_n_0\
    );
ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn(0),
      Q => ff1
    );
ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => ff1,
      Q => ff2
    );
\phase_sig[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^cntr_btn\,
      I1 => s00_axi_aresetn,
      O => SR(0)
    );
\phase_sig[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFABAAAAAAAA"
    )
        port map (
      I0 => \phase_sig[15]_i_4_n_0\,
      I1 => \phase_sig_reg[15]\,
      I2 => O(0),
      I3 => \phase_sig_reg[15]_0\,
      I4 => O(1),
      I5 => right_btn,
      O => E(0)
    );
\phase_sig[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^cntr_btn\,
      I1 => left_btn,
      I2 => \phase_sig_reg[15]_1\(0),
      O => \phase_sig[15]_i_4_n_0\
    );
signalSel_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^cntr_btn\,
      I1 => waveSel,
      O => btn_press_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_btn_reader_0 is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \switch[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig_reg[11]\ : out STD_LOGIC;
    btn_press_reg_0 : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \ampl_sig[0]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig[0]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ampl_sig_reg : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_btn_reader_0 : entity is "btn_reader";
end lab4_design_lab4_ip_0_6_btn_reader_0;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_btn_reader_0 is
  signal \ampl_sig[0]_i_10_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_11_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_4_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_5_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_6_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_7_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_8_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_9_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_2_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_3_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_4_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_5_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_6_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_7_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_8_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_9_n_0\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \^ampl_sig_reg[11]\ : STD_LOGIC;
  signal \ampl_sig_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal btn_current : STD_LOGIC;
  signal \btn_current_i_1__1_n_0\ : STD_LOGIC;
  signal btn_old : STD_LOGIC;
  signal \btn_press_i_1__1_n_0\ : STD_LOGIC;
  signal \^btn_press_reg_0\ : STD_LOGIC;
  signal count0 : STD_LOGIC;
  signal \count1_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_5__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_1\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \count1_carry_i_6__1_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \count_reg[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_3__1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_3__1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_3__1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_3__1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_3__1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_3__1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_3__1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal down_btn : STD_LOGIC;
  signal ff1 : STD_LOGIC;
  signal ff2 : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  \ampl_sig_reg[11]\ <= \^ampl_sig_reg[11]\;
  btn_press_reg_0 <= \^btn_press_reg_0\;
\ampl_sig[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => switch(1),
      I1 => C(1),
      I2 => \^ampl_sig_reg[11]\,
      I3 => ampl_sig_reg(1),
      O => \ampl_sig[0]_i_10_n_0\
    );
\ampl_sig[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => switch(0),
      I1 => C(0),
      I2 => \^ampl_sig_reg[11]\,
      I3 => ampl_sig_reg(0),
      O => \ampl_sig[0]_i_11_n_0\
    );
\ampl_sig[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => down_btn,
      I1 => \ampl_sig[0]_i_3\(3),
      I2 => \ampl_sig[0]_i_3_0\(3),
      I3 => \ampl_sig[0]_i_3_0\(2),
      I4 => \ampl_sig[0]_i_3_0\(1),
      I5 => \ampl_sig[0]_i_3_0\(0),
      O => \^btn_press_reg_0\
    );
\ampl_sig[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001F"
    )
        port map (
      I0 => \ampl_sig[0]_i_3\(1),
      I1 => \ampl_sig[0]_i_3\(0),
      I2 => \ampl_sig[0]_i_3\(2),
      I3 => \^btn_press_reg_0\,
      O => \^ampl_sig_reg[11]\
    );
\ampl_sig[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ampl_sig_reg[11]\,
      I1 => switch(3),
      O => \ampl_sig[0]_i_4_n_0\
    );
\ampl_sig[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ampl_sig_reg[11]\,
      I1 => switch(2),
      O => \ampl_sig[0]_i_5_n_0\
    );
\ampl_sig[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ampl_sig_reg[11]\,
      I1 => switch(1),
      O => \ampl_sig[0]_i_6_n_0\
    );
\ampl_sig[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ampl_sig_reg[11]\,
      I1 => switch(0),
      O => \ampl_sig[0]_i_7_n_0\
    );
\ampl_sig[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => switch(3),
      I1 => C(3),
      I2 => \^ampl_sig_reg[11]\,
      I3 => ampl_sig_reg(3),
      O => \ampl_sig[0]_i_8_n_0\
    );
\ampl_sig[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => switch(2),
      I1 => C(2),
      I2 => \^ampl_sig_reg[11]\,
      I3 => ampl_sig_reg(2),
      O => \ampl_sig[0]_i_9_n_0\
    );
\ampl_sig[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ampl_sig_reg[11]\,
      I1 => switch(7),
      O => \ampl_sig[4]_i_2_n_0\
    );
\ampl_sig[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ampl_sig_reg[11]\,
      I1 => switch(6),
      O => \ampl_sig[4]_i_3_n_0\
    );
\ampl_sig[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ampl_sig_reg[11]\,
      I1 => switch(5),
      O => \ampl_sig[4]_i_4_n_0\
    );
\ampl_sig[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ampl_sig_reg[11]\,
      I1 => switch(4),
      O => \ampl_sig[4]_i_5_n_0\
    );
\ampl_sig[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => switch(7),
      I1 => C(7),
      I2 => \^ampl_sig_reg[11]\,
      I3 => ampl_sig_reg(7),
      O => \ampl_sig[4]_i_6_n_0\
    );
\ampl_sig[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => switch(6),
      I1 => C(6),
      I2 => \^ampl_sig_reg[11]\,
      I3 => ampl_sig_reg(6),
      O => \ampl_sig[4]_i_7_n_0\
    );
\ampl_sig[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => switch(5),
      I1 => C(5),
      I2 => \^ampl_sig_reg[11]\,
      I3 => ampl_sig_reg(5),
      O => \ampl_sig[4]_i_8_n_0\
    );
\ampl_sig[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => switch(4),
      I1 => C(4),
      I2 => \^ampl_sig_reg[11]\,
      I3 => ampl_sig_reg(4),
      O => \ampl_sig[4]_i_9_n_0\
    );
\ampl_sig_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ampl_sig_reg[0]_i_2_n_0\,
      CO(2) => \ampl_sig_reg[0]_i_2_n_1\,
      CO(1) => \ampl_sig_reg[0]_i_2_n_2\,
      CO(0) => \ampl_sig_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \ampl_sig[0]_i_4_n_0\,
      DI(2) => \ampl_sig[0]_i_5_n_0\,
      DI(1) => \ampl_sig[0]_i_6_n_0\,
      DI(0) => \ampl_sig[0]_i_7_n_0\,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \ampl_sig[0]_i_8_n_0\,
      S(2) => \ampl_sig[0]_i_9_n_0\,
      S(1) => \ampl_sig[0]_i_10_n_0\,
      S(0) => \ampl_sig[0]_i_11_n_0\
    );
\ampl_sig_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ampl_sig_reg[0]_i_2_n_0\,
      CO(3) => CO(0),
      CO(2) => \ampl_sig_reg[4]_i_1_n_1\,
      CO(1) => \ampl_sig_reg[4]_i_1_n_2\,
      CO(0) => \ampl_sig_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \ampl_sig[4]_i_2_n_0\,
      DI(2) => \ampl_sig[4]_i_3_n_0\,
      DI(1) => \ampl_sig[4]_i_4_n_0\,
      DI(0) => \ampl_sig[4]_i_5_n_0\,
      O(3 downto 0) => \switch[7]\(3 downto 0),
      S(3) => \ampl_sig[4]_i_6_n_0\,
      S(2) => \ampl_sig[4]_i_7_n_0\,
      S(1) => \ampl_sig[4]_i_8_n_0\,
      S(0) => \ampl_sig[4]_i_9_n_0\
    );
\btn_current_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => \count1_carry__1_n_1\,
      I1 => ff2,
      I2 => ff1,
      I3 => btn_current,
      O => \btn_current_i_1__1_n_0\
    );
btn_current_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => \btn_current_i_1__1_n_0\,
      Q => btn_current
    );
btn_old_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn_current,
      Q => btn_old
    );
\btn_press_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => btn_current,
      I1 => btn_old,
      I2 => down_btn,
      O => \btn_press_i_1__1_n_0\
    );
btn_press_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => \btn_press_i_1__1_n_0\,
      Q => down_btn
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count1_carry_i_1__1_n_0\,
      DI(1) => '0',
      DI(0) => \count1_carry_i_2__1_n_0\,
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \count1_carry_i_3__1_n_0\,
      S(2) => \count1_carry_i_4__1_n_0\,
      S(1) => \count1_carry_i_5__1_n_0\,
      S(0) => \count1_carry_i_6__1_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__0_i_1__1_n_0\,
      DI(2) => '0',
      DI(1) => \count1_carry__0_i_2__1_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_3__1_n_0\,
      S(2) => \count1_carry__0_i_4__1_n_0\,
      S(1) => \count1_carry__0_i_5__1_n_0\,
      S(0) => \count1_carry__0_i_6__1_n_0\
    );
\count1_carry__0_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(15),
      O => \count1_carry__0_i_1__1_n_0\
    );
\count1_carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      O => \count1_carry__0_i_2__1_n_0\
    );
\count1_carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(15),
      I1 => count_reg(14),
      O => \count1_carry__0_i_3__1_n_0\
    );
\count1_carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(13),
      I1 => count_reg(12),
      O => \count1_carry__0_i_4__1_n_0\
    );
\count1_carry__0_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      O => \count1_carry__0_i_5__1_n_0\
    );
\count1_carry__0_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      O => \count1_carry__0_i_6__1_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \count1_carry__1_n_1\,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count1_carry__1_i_1__1_n_0\,
      DI(1) => \count1_carry__1_i_2__1_n_0\,
      DI(0) => \count1_carry__1_i_3__1_n_0\,
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => count_reg(20),
      S(1) => \count1_carry__1_i_4__1_n_0\,
      S(0) => \count1_carry__1_i_5__1_n_0\
    );
\count1_carry__1_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(20),
      O => \count1_carry__1_i_1__1_n_0\
    );
\count1_carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(19),
      I1 => count_reg(18),
      O => \count1_carry__1_i_2__1_n_0\
    );
\count1_carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(17),
      I1 => count_reg(16),
      O => \count1_carry__1_i_3__1_n_0\
    );
\count1_carry__1_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      O => \count1_carry__1_i_4__1_n_0\
    );
\count1_carry__1_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(16),
      I1 => count_reg(17),
      O => \count1_carry__1_i_5__1_n_0\
    );
\count1_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(4),
      O => \count1_carry_i_1__1_n_0\
    );
\count1_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \count1_carry_i_2__1_n_0\
    );
\count1_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      O => \count1_carry_i_3__1_n_0\
    );
\count1_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      O => \count1_carry_i_4__1_n_0\
    );
\count1_carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      O => \count1_carry_i_5__1_n_0\
    );
\count1_carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \count1_carry_i_6__1_n_0\
    );
\count[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ff2,
      I1 => ff1,
      I2 => s00_axi_aresetn,
      O => \count[0]_i_1__1_n_0\
    );
\count[0]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \count1_carry__1_n_1\,
      O => count0
    );
\count[0]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_4__1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__1_n_7\,
      Q => count_reg(0),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[0]_i_3__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_3__1_n_0\,
      CO(2) => \count_reg[0]_i_3__1_n_1\,
      CO(1) => \count_reg[0]_i_3__1_n_2\,
      CO(0) => \count_reg[0]_i_3__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_3__1_n_4\,
      O(2) => \count_reg[0]_i_3__1_n_5\,
      O(1) => \count_reg[0]_i_3__1_n_6\,
      O(0) => \count_reg[0]_i_3__1_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_4__1_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__1_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__1_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__1_n_7\,
      Q => count_reg(12),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__1_n_0\,
      CO(3) => \count_reg[12]_i_1__1_n_0\,
      CO(2) => \count_reg[12]_i_1__1_n_1\,
      CO(1) => \count_reg[12]_i_1__1_n_2\,
      CO(0) => \count_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__1_n_4\,
      O(2) => \count_reg[12]_i_1__1_n_5\,
      O(1) => \count_reg[12]_i_1__1_n_6\,
      O(0) => \count_reg[12]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__1_n_6\,
      Q => count_reg(13),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__1_n_5\,
      Q => count_reg(14),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__1_n_4\,
      Q => count_reg(15),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__1_n_7\,
      Q => count_reg(16),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[16]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1__1_n_0\,
      CO(3) => \count_reg[16]_i_1__1_n_0\,
      CO(2) => \count_reg[16]_i_1__1_n_1\,
      CO(1) => \count_reg[16]_i_1__1_n_2\,
      CO(0) => \count_reg[16]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1__1_n_4\,
      O(2) => \count_reg[16]_i_1__1_n_5\,
      O(1) => \count_reg[16]_i_1__1_n_6\,
      O(0) => \count_reg[16]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__1_n_6\,
      Q => count_reg(17),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__1_n_5\,
      Q => count_reg(18),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__1_n_4\,
      Q => count_reg(19),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__1_n_6\,
      Q => count_reg(1),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[20]_i_1__1_n_7\,
      Q => count_reg(20),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[20]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1__1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[20]_i_1__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_reg[20]_i_1__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_reg[20]_i_1__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => count_reg(20)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__1_n_5\,
      Q => count_reg(2),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__1_n_4\,
      Q => count_reg(3),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__1_n_7\,
      Q => count_reg(4),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_3__1_n_0\,
      CO(3) => \count_reg[4]_i_1__1_n_0\,
      CO(2) => \count_reg[4]_i_1__1_n_1\,
      CO(1) => \count_reg[4]_i_1__1_n_2\,
      CO(0) => \count_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__1_n_4\,
      O(2) => \count_reg[4]_i_1__1_n_5\,
      O(1) => \count_reg[4]_i_1__1_n_6\,
      O(0) => \count_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__1_n_6\,
      Q => count_reg(5),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__1_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__1_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__1_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__1_n_0\,
      CO(3) => \count_reg[8]_i_1__1_n_0\,
      CO(2) => \count_reg[8]_i_1__1_n_1\,
      CO(1) => \count_reg[8]_i_1__1_n_2\,
      CO(0) => \count_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__1_n_4\,
      O(2) => \count_reg[8]_i_1__1_n_5\,
      O(1) => \count_reg[8]_i_1__1_n_6\,
      O(0) => \count_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__1_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1__1_n_0\
    );
ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn(0),
      Q => ff1
    );
ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => ff1,
      Q => ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_btn_reader_1 is
  port (
    left_btn : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \phase_sig_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \phase_sig_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \phase_sig_reg[11]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \phase_sig_reg[11]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \phase_sig_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \phase_sig_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \phase_sig_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \phase_sig_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_btn_reader_1 : entity is "btn_reader";
end lab4_design_lab4_ip_0_6_btn_reader_1;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_btn_reader_1 is
  signal btn_current : STD_LOGIC;
  signal \btn_current_i_1__0_n_0\ : STD_LOGIC;
  signal btn_old : STD_LOGIC;
  signal \btn_press_i_1__0_n_0\ : STD_LOGIC;
  signal count0 : STD_LOGIC;
  signal \count1_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_1\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \count1_carry_i_6__0_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal ff1 : STD_LOGIC;
  signal ff2 : STD_LOGIC;
  signal \^left_btn\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  left_btn <= \^left_btn\;
\btn_current_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => \count1_carry__1_n_1\,
      I1 => ff2,
      I2 => ff1,
      I3 => btn_current,
      O => \btn_current_i_1__0_n_0\
    );
btn_current_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => \btn_current_i_1__0_n_0\,
      Q => btn_current
    );
btn_old_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn_current,
      Q => btn_old
    );
\btn_press_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => btn_current,
      I1 => btn_old,
      I2 => \^left_btn\,
      O => \btn_press_i_1__0_n_0\
    );
btn_press_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => \btn_press_i_1__0_n_0\,
      Q => \^left_btn\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count1_carry_i_1__0_n_0\,
      DI(1) => '0',
      DI(0) => \count1_carry_i_2__0_n_0\,
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \count1_carry_i_3__0_n_0\,
      S(2) => \count1_carry_i_4__0_n_0\,
      S(1) => \count1_carry_i_5__0_n_0\,
      S(0) => \count1_carry_i_6__0_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__0_i_1__0_n_0\,
      DI(2) => '0',
      DI(1) => \count1_carry__0_i_2__0_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_3__0_n_0\,
      S(2) => \count1_carry__0_i_4__0_n_0\,
      S(1) => \count1_carry__0_i_5__0_n_0\,
      S(0) => \count1_carry__0_i_6__0_n_0\
    );
\count1_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(15),
      O => \count1_carry__0_i_1__0_n_0\
    );
\count1_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      O => \count1_carry__0_i_2__0_n_0\
    );
\count1_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(15),
      I1 => count_reg(14),
      O => \count1_carry__0_i_3__0_n_0\
    );
\count1_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(13),
      I1 => count_reg(12),
      O => \count1_carry__0_i_4__0_n_0\
    );
\count1_carry__0_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      O => \count1_carry__0_i_5__0_n_0\
    );
\count1_carry__0_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      O => \count1_carry__0_i_6__0_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \count1_carry__1_n_1\,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count1_carry__1_i_1__0_n_0\,
      DI(1) => \count1_carry__1_i_2__0_n_0\,
      DI(0) => \count1_carry__1_i_3__0_n_0\,
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => count_reg(20),
      S(1) => \count1_carry__1_i_4__0_n_0\,
      S(0) => \count1_carry__1_i_5__0_n_0\
    );
\count1_carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(20),
      O => \count1_carry__1_i_1__0_n_0\
    );
\count1_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(19),
      I1 => count_reg(18),
      O => \count1_carry__1_i_2__0_n_0\
    );
\count1_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(17),
      I1 => count_reg(16),
      O => \count1_carry__1_i_3__0_n_0\
    );
\count1_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      O => \count1_carry__1_i_4__0_n_0\
    );
\count1_carry__1_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(16),
      I1 => count_reg(17),
      O => \count1_carry__1_i_5__0_n_0\
    );
\count1_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(4),
      O => \count1_carry_i_1__0_n_0\
    );
\count1_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \count1_carry_i_2__0_n_0\
    );
\count1_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      O => \count1_carry_i_3__0_n_0\
    );
\count1_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      O => \count1_carry_i_4__0_n_0\
    );
\count1_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      O => \count1_carry_i_5__0_n_0\
    );
\count1_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \count1_carry_i_6__0_n_0\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ff2,
      I1 => ff1,
      I2 => s00_axi_aresetn,
      O => \count[0]_i_1__0_n_0\
    );
\count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \count1_carry__1_n_1\,
      O => count0
    );
\count[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_4__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__0_n_7\,
      Q => count_reg(0),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_3__0_n_0\,
      CO(2) => \count_reg[0]_i_3__0_n_1\,
      CO(1) => \count_reg[0]_i_3__0_n_2\,
      CO(0) => \count_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_3__0_n_4\,
      O(2) => \count_reg[0]_i_3__0_n_5\,
      O(1) => \count_reg[0]_i_3__0_n_6\,
      O(0) => \count_reg[0]_i_3__0_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_4__0_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__0_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__0_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__0_n_7\,
      Q => count_reg(12),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__0_n_0\,
      CO(3) => \count_reg[12]_i_1__0_n_0\,
      CO(2) => \count_reg[12]_i_1__0_n_1\,
      CO(1) => \count_reg[12]_i_1__0_n_2\,
      CO(0) => \count_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__0_n_4\,
      O(2) => \count_reg[12]_i_1__0_n_5\,
      O(1) => \count_reg[12]_i_1__0_n_6\,
      O(0) => \count_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__0_n_6\,
      Q => count_reg(13),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__0_n_5\,
      Q => count_reg(14),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__0_n_4\,
      Q => count_reg(15),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__0_n_7\,
      Q => count_reg(16),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1__0_n_0\,
      CO(3) => \count_reg[16]_i_1__0_n_0\,
      CO(2) => \count_reg[16]_i_1__0_n_1\,
      CO(1) => \count_reg[16]_i_1__0_n_2\,
      CO(0) => \count_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1__0_n_4\,
      O(2) => \count_reg[16]_i_1__0_n_5\,
      O(1) => \count_reg[16]_i_1__0_n_6\,
      O(0) => \count_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__0_n_6\,
      Q => count_reg(17),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__0_n_5\,
      Q => count_reg(18),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__0_n_4\,
      Q => count_reg(19),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__0_n_6\,
      Q => count_reg(1),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[20]_i_1__0_n_7\,
      Q => count_reg(20),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_count_reg[20]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_reg[20]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_reg[20]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => count_reg(20)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__0_n_5\,
      Q => count_reg(2),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__0_n_4\,
      Q => count_reg(3),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__0_n_7\,
      Q => count_reg(4),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_3__0_n_0\,
      CO(3) => \count_reg[4]_i_1__0_n_0\,
      CO(2) => \count_reg[4]_i_1__0_n_1\,
      CO(1) => \count_reg[4]_i_1__0_n_2\,
      CO(0) => \count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__0_n_4\,
      O(2) => \count_reg[4]_i_1__0_n_5\,
      O(1) => \count_reg[4]_i_1__0_n_6\,
      O(0) => \count_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__0_n_6\,
      Q => count_reg(5),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__0_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__0_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__0_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__0_n_0\,
      CO(3) => \count_reg[8]_i_1__0_n_0\,
      CO(2) => \count_reg[8]_i_1__0_n_1\,
      CO(1) => \count_reg[8]_i_1__0_n_2\,
      CO(0) => \count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__0_n_4\,
      O(2) => \count_reg[8]_i_1__0_n_5\,
      O(1) => \count_reg[8]_i_1__0_n_6\,
      O(0) => \count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__0_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1__0_n_0\
    );
ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn(0),
      Q => ff1
    );
ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => ff1,
      Q => ff2
    );
\phase_sig[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \phase_sig_reg[11]\(1),
      I1 => \^left_btn\,
      I2 => \phase_sig_reg[15]\(0),
      I3 => \phase_sig_reg[11]_0\(1),
      O => D(4)
    );
\phase_sig[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \phase_sig_reg[11]\(2),
      I1 => \^left_btn\,
      I2 => \phase_sig_reg[15]\(0),
      I3 => \phase_sig_reg[11]_0\(2),
      O => D(5)
    );
\phase_sig[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => O(0),
      I1 => \^left_btn\,
      I2 => \phase_sig_reg[15]\(0),
      I3 => \phase_sig_reg[15]_0\(0),
      O => D(6)
    );
\phase_sig[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => O(1),
      I1 => \^left_btn\,
      I2 => \phase_sig_reg[15]\(0),
      I3 => \phase_sig_reg[15]_0\(1),
      O => D(7)
    );
\phase_sig[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => O(2),
      I1 => \^left_btn\,
      I2 => \phase_sig_reg[15]\(0),
      I3 => \phase_sig_reg[15]_0\(2),
      O => D(8)
    );
\phase_sig[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => O(3),
      I1 => \^left_btn\,
      I2 => \phase_sig_reg[15]\(0),
      I3 => \phase_sig_reg[15]_0\(3),
      O => D(9)
    );
\phase_sig[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \phase_sig_reg[3]\(0),
      I1 => \^left_btn\,
      I2 => \phase_sig_reg[15]\(0),
      I3 => \phase_sig_reg[3]_0\(0),
      O => D(0)
    );
\phase_sig[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \phase_sig_reg[3]\(1),
      I1 => \^left_btn\,
      I2 => \phase_sig_reg[15]\(0),
      I3 => \phase_sig_reg[3]_0\(1),
      O => D(1)
    );
\phase_sig[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \phase_sig_reg[7]\(0),
      I1 => \^left_btn\,
      I2 => \phase_sig_reg[15]\(0),
      I3 => \phase_sig_reg[7]_0\(0),
      O => D(2)
    );
\phase_sig[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \phase_sig_reg[11]\(0),
      I1 => \^left_btn\,
      I2 => \phase_sig_reg[15]\(0),
      I3 => \phase_sig_reg[11]_0\(0),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_btn_reader_2 is
  port (
    right_btn : out STD_LOGIC;
    ampl_sig : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \ampl_sig_reg[15]\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ampl_sig_reg[15]_0\ : in STD_LOGIC;
    \ampl_sig_reg[15]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_btn_reader_2 : entity is "btn_reader";
end lab4_design_lab4_ip_0_6_btn_reader_2;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_btn_reader_2 is
  signal btn_current : STD_LOGIC;
  signal \btn_current_i_1__2_n_0\ : STD_LOGIC;
  signal btn_old : STD_LOGIC;
  signal \btn_press_i_1__2_n_0\ : STD_LOGIC;
  signal count0 : STD_LOGIC;
  signal \count1_carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_5__2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_6__2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3__2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_4__2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_5__2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_1\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_5__2_n_0\ : STD_LOGIC;
  signal \count1_carry_i_6__2_n_0\ : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \count_reg[0]_i_3__2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_3__2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_3__2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_3__2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_3__2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_3__2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_3__2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_3__2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__2_n_7\ : STD_LOGIC;
  signal ff1 : STD_LOGIC;
  signal ff2 : STD_LOGIC;
  signal \^right_btn\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  right_btn <= \^right_btn\;
\ampl_sig[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF0EFFFF"
    )
        port map (
      I0 => \ampl_sig_reg[15]\,
      I1 => O(0),
      I2 => \ampl_sig_reg[15]_0\,
      I3 => O(1),
      I4 => \^right_btn\,
      I5 => \ampl_sig_reg[15]_1\,
      O => ampl_sig
    );
\btn_current_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => \count1_carry__1_n_1\,
      I1 => ff2,
      I2 => ff1,
      I3 => btn_current,
      O => \btn_current_i_1__2_n_0\
    );
btn_current_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => \btn_current_i_1__2_n_0\,
      Q => btn_current
    );
btn_old_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn_current,
      Q => btn_old
    );
\btn_press_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => btn_current,
      I1 => btn_old,
      I2 => \^right_btn\,
      O => \btn_press_i_1__2_n_0\
    );
btn_press_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => \btn_press_i_1__2_n_0\,
      Q => \^right_btn\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count1_carry_i_1__2_n_0\,
      DI(1) => '0',
      DI(0) => \count1_carry_i_2__2_n_0\,
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \count1_carry_i_3__2_n_0\,
      S(2) => \count1_carry_i_4__2_n_0\,
      S(1) => \count1_carry_i_5__2_n_0\,
      S(0) => \count1_carry_i_6__2_n_0\
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__0_i_1__2_n_0\,
      DI(2) => '0',
      DI(1) => \count1_carry__0_i_2__2_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_3__2_n_0\,
      S(2) => \count1_carry__0_i_4__2_n_0\,
      S(1) => \count1_carry__0_i_5__2_n_0\,
      S(0) => \count1_carry__0_i_6__2_n_0\
    );
\count1_carry__0_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(15),
      O => \count1_carry__0_i_1__2_n_0\
    );
\count1_carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      O => \count1_carry__0_i_2__2_n_0\
    );
\count1_carry__0_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(15),
      I1 => count_reg(14),
      O => \count1_carry__0_i_3__2_n_0\
    );
\count1_carry__0_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(13),
      I1 => count_reg(12),
      O => \count1_carry__0_i_4__2_n_0\
    );
\count1_carry__0_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      O => \count1_carry__0_i_5__2_n_0\
    );
\count1_carry__0_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      O => \count1_carry__0_i_6__2_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \count1_carry__1_n_1\,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count1_carry__1_i_1__2_n_0\,
      DI(1) => \count1_carry__1_i_2__2_n_0\,
      DI(0) => \count1_carry__1_i_3__2_n_0\,
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => count_reg(20),
      S(1) => \count1_carry__1_i_4__2_n_0\,
      S(0) => \count1_carry__1_i_5__2_n_0\
    );
\count1_carry__1_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(20),
      O => \count1_carry__1_i_1__2_n_0\
    );
\count1_carry__1_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(19),
      I1 => count_reg(18),
      O => \count1_carry__1_i_2__2_n_0\
    );
\count1_carry__1_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(17),
      I1 => count_reg(16),
      O => \count1_carry__1_i_3__2_n_0\
    );
\count1_carry__1_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      O => \count1_carry__1_i_4__2_n_0\
    );
\count1_carry__1_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(16),
      I1 => count_reg(17),
      O => \count1_carry__1_i_5__2_n_0\
    );
\count1_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(4),
      O => \count1_carry_i_1__2_n_0\
    );
\count1_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \count1_carry_i_2__2_n_0\
    );
\count1_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      O => \count1_carry_i_3__2_n_0\
    );
\count1_carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      O => \count1_carry_i_4__2_n_0\
    );
\count1_carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      O => \count1_carry_i_5__2_n_0\
    );
\count1_carry_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \count1_carry_i_6__2_n_0\
    );
\count[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ff2,
      I1 => ff1,
      I2 => s00_axi_aresetn,
      O => \count[0]_i_1__2_n_0\
    );
\count[0]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \count1_carry__1_n_1\,
      O => count0
    );
\count[0]_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_4__2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__2_n_7\,
      Q => count_reg(0),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[0]_i_3__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_3__2_n_0\,
      CO(2) => \count_reg[0]_i_3__2_n_1\,
      CO(1) => \count_reg[0]_i_3__2_n_2\,
      CO(0) => \count_reg[0]_i_3__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_3__2_n_4\,
      O(2) => \count_reg[0]_i_3__2_n_5\,
      O(1) => \count_reg[0]_i_3__2_n_6\,
      O(0) => \count_reg[0]_i_3__2_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_4__2_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__2_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__2_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__2_n_7\,
      Q => count_reg(12),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[12]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__2_n_0\,
      CO(3) => \count_reg[12]_i_1__2_n_0\,
      CO(2) => \count_reg[12]_i_1__2_n_1\,
      CO(1) => \count_reg[12]_i_1__2_n_2\,
      CO(0) => \count_reg[12]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__2_n_4\,
      O(2) => \count_reg[12]_i_1__2_n_5\,
      O(1) => \count_reg[12]_i_1__2_n_6\,
      O(0) => \count_reg[12]_i_1__2_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__2_n_6\,
      Q => count_reg(13),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__2_n_5\,
      Q => count_reg(14),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1__2_n_4\,
      Q => count_reg(15),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__2_n_7\,
      Q => count_reg(16),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[16]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1__2_n_0\,
      CO(3) => \count_reg[16]_i_1__2_n_0\,
      CO(2) => \count_reg[16]_i_1__2_n_1\,
      CO(1) => \count_reg[16]_i_1__2_n_2\,
      CO(0) => \count_reg[16]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1__2_n_4\,
      O(2) => \count_reg[16]_i_1__2_n_5\,
      O(1) => \count_reg[16]_i_1__2_n_6\,
      O(0) => \count_reg[16]_i_1__2_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__2_n_6\,
      Q => count_reg(17),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__2_n_5\,
      Q => count_reg(18),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1__2_n_4\,
      Q => count_reg(19),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__2_n_6\,
      Q => count_reg(1),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[20]_i_1__2_n_7\,
      Q => count_reg(20),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[20]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1__2_n_0\,
      CO(3 downto 0) => \NLW_count_reg[20]_i_1__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_reg[20]_i_1__2_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_reg[20]_i_1__2_n_7\,
      S(3 downto 1) => B"000",
      S(0) => count_reg(20)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__2_n_5\,
      Q => count_reg(2),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3__2_n_4\,
      Q => count_reg(3),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__2_n_7\,
      Q => count_reg(4),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[4]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_3__2_n_0\,
      CO(3) => \count_reg[4]_i_1__2_n_0\,
      CO(2) => \count_reg[4]_i_1__2_n_1\,
      CO(1) => \count_reg[4]_i_1__2_n_2\,
      CO(0) => \count_reg[4]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__2_n_4\,
      O(2) => \count_reg[4]_i_1__2_n_5\,
      O(1) => \count_reg[4]_i_1__2_n_6\,
      O(0) => \count_reg[4]_i_1__2_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__2_n_6\,
      Q => count_reg(5),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__2_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1__2_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__2_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1__2_n_0\
    );
\count_reg[8]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__2_n_0\,
      CO(3) => \count_reg[8]_i_1__2_n_0\,
      CO(2) => \count_reg[8]_i_1__2_n_1\,
      CO(1) => \count_reg[8]_i_1__2_n_2\,
      CO(0) => \count_reg[8]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__2_n_4\,
      O(2) => \count_reg[8]_i_1__2_n_5\,
      O(1) => \count_reg[8]_i_1__2_n_6\,
      O(0) => \count_reg[8]_i_1__2_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1__2_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1__2_n_0\
    );
ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn(0),
      Q => ff1
    );
ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => ff1,
      Q => ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_btn_reader_3 is
  port (
    up_btn : out STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_btn_reader_3 : entity is "btn_reader";
end lab4_design_lab4_ip_0_6_btn_reader_3;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_btn_reader_3 is
  signal btn_current : STD_LOGIC;
  signal btn_current_i_1_n_0 : STD_LOGIC;
  signal btn_old : STD_LOGIC;
  signal btn_press_i_1_n_0 : STD_LOGIC;
  signal count0 : STD_LOGIC;
  signal \count1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_1\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal count1_carry_i_1_n_0 : STD_LOGIC;
  signal count1_carry_i_2_n_0 : STD_LOGIC;
  signal count1_carry_i_3_n_0 : STD_LOGIC;
  signal count1_carry_i_4_n_0 : STD_LOGIC;
  signal count1_carry_i_5_n_0 : STD_LOGIC;
  signal count1_carry_i_6_n_0 : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal ff1 : STD_LOGIC;
  signal ff2 : STD_LOGIC;
  signal \^up_btn\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  up_btn <= \^up_btn\;
btn_current_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => \count1_carry__1_n_1\,
      I1 => ff2,
      I2 => ff1,
      I3 => btn_current,
      O => btn_current_i_1_n_0
    );
btn_current_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn_current_i_1_n_0,
      Q => btn_current
    );
btn_old_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn_current,
      Q => btn_old
    );
btn_press_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => btn_current,
      I1 => btn_old,
      I2 => \^up_btn\,
      O => btn_press_i_1_n_0
    );
btn_press_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn_press_i_1_n_0,
      Q => \^up_btn\
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => count1_carry_i_1_n_0,
      DI(1) => '0',
      DI(0) => count1_carry_i_2_n_0,
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count1_carry_i_3_n_0,
      S(2) => count1_carry_i_4_n_0,
      S(1) => count1_carry_i_5_n_0,
      S(0) => count1_carry_i_6_n_0
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__0_i_1_n_0\,
      DI(2) => '0',
      DI(1) => \count1_carry__0_i_2_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_3_n_0\,
      S(2) => \count1_carry__0_i_4_n_0\,
      S(1) => \count1_carry__0_i_5_n_0\,
      S(0) => \count1_carry__0_i_6_n_0\
    );
\count1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(15),
      O => \count1_carry__0_i_1_n_0\
    );
\count1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      O => \count1_carry__0_i_2_n_0\
    );
\count1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(15),
      I1 => count_reg(14),
      O => \count1_carry__0_i_3_n_0\
    );
\count1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(13),
      I1 => count_reg(12),
      O => \count1_carry__0_i_4_n_0\
    );
\count1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      O => \count1_carry__0_i_5_n_0\
    );
\count1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      O => \count1_carry__0_i_6_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \NLW_count1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \count1_carry__1_n_1\,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count1_carry__1_i_1_n_0\,
      DI(1) => \count1_carry__1_i_2_n_0\,
      DI(0) => \count1_carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => count_reg(20),
      S(1) => \count1_carry__1_i_4_n_0\,
      S(0) => \count1_carry__1_i_5_n_0\
    );
\count1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(20),
      O => \count1_carry__1_i_1_n_0\
    );
\count1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(19),
      I1 => count_reg(18),
      O => \count1_carry__1_i_2_n_0\
    );
\count1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(17),
      I1 => count_reg(16),
      O => \count1_carry__1_i_3_n_0\
    );
\count1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      O => \count1_carry__1_i_4_n_0\
    );
\count1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(16),
      I1 => count_reg(17),
      O => \count1_carry__1_i_5_n_0\
    );
count1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(4),
      O => count1_carry_i_1_n_0
    );
count1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => count1_carry_i_2_n_0
    );
count1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      O => count1_carry_i_3_n_0
    );
count1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      O => count1_carry_i_4_n_0
    );
count1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      O => count1_carry_i_5_n_0
    );
count1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => count1_carry_i_6_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ff2,
      I1 => ff1,
      I2 => s00_axi_aresetn,
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \count1_carry__1_n_1\,
      O => count0
    );
\count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_4_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3_n_7\,
      Q => count_reg(0),
      R => \count[0]_i_1_n_0\
    );
\count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_3_n_0\,
      CO(2) => \count_reg[0]_i_3_n_1\,
      CO(1) => \count_reg[0]_i_3_n_2\,
      CO(0) => \count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_3_n_4\,
      O(2) => \count_reg[0]_i_3_n_5\,
      O(1) => \count_reg[0]_i_3_n_6\,
      O(0) => \count_reg[0]_i_3_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_4_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => \count[0]_i_1_n_0\
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => \count[0]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => \count[0]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => \count[0]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => \count[0]_i_1_n_0\
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => \count[0]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => \count[0]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => \count[0]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3_n_6\,
      Q => count_reg(1),
      R => \count[0]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20),
      R => \count[0]_i_1_n_0\
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => count_reg(20)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3_n_5\,
      Q => count_reg(2),
      R => \count[0]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[0]_i_3_n_4\,
      Q => count_reg(3),
      R => \count[0]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4),
      R => \count[0]_i_1_n_0\
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_3_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => \count[0]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1_n_0\
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => count0,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1_n_0\
    );
ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => btn(0),
      Q => ff1
    );
ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => ff1,
      Q => ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_i2s_ctl is
  port (
    BCLK_int_reg_0 : out STD_LOGIC;
    LRCLK_reg_0 : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    ready_sig_reg : out STD_LOGIC;
    s00_axi_aresetn_1 : out STD_LOGIC;
    s00_axi_aresetn_2 : out STD_LOGIC;
    s00_axi_aresetn_3 : out STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \ac_lrclk_count_reg[2]\ : in STD_LOGIC;
    sw : in STD_LOGIC;
    \ac_lrclk_count__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Data_Out_int_reg[22]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[26]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[30]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_i2s_ctl : entity is "i2s_ctl";
end lab4_design_lab4_ip_0_6_i2s_ctl;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_i2s_ctl is
  signal BCLK_Fall_int : STD_LOGIC;
  signal BCLK_int_i_2_n_0 : STD_LOGIC;
  signal \^bclk_int_reg_0\ : STD_LOGIC;
  signal Cnt_Bclk0 : STD_LOGIC;
  signal \Cnt_Bclk0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \Cnt_Bclk[4]_i_1_n_0\ : STD_LOGIC;
  signal Cnt_Bclk_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Cnt_Lrclk : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \Cnt_Lrclk[0]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[1]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[2]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[3]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Lrclk[4]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Out_int[15]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[16]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[17]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[18]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[19]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[20]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[21]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[23]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[24]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[25]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[27]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[28]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[29]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[31]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Out_int[31]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Out_int[31]_i_3_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[15]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[16]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[17]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[18]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[19]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[20]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[21]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[22]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[23]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[24]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[25]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[26]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[27]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[28]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[29]\ : STD_LOGIC;
  signal \Data_Out_int_reg_n_0_[30]\ : STD_LOGIC;
  signal LRCLK_i_1_n_0 : STD_LOGIC;
  signal LRCLK_i_2_n_0 : STD_LOGIC;
  signal \^lrclk_reg_0\ : STD_LOGIC;
  signal ac_lrclk_count0 : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of BCLK_int_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Cnt_Bclk[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Cnt_Bclk[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Cnt_Bclk[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Cnt_Bclk[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of LRCLK_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of LRCLK_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ac_lrclk_count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ac_lrclk_count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ac_lrclk_sig_prev_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ready_sig_i_2 : label is "soft_lutpair7";
begin
  BCLK_int_reg_0 <= \^bclk_int_reg_0\;
  LRCLK_reg_0 <= \^lrclk_reg_0\;
BCLK_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Cnt_Bclk0,
      I1 => \^bclk_int_reg_0\,
      O => BCLK_int_i_2_n_0
    );
BCLK_int_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => BCLK_int_i_2_n_0,
      Q => \^bclk_int_reg_0\,
      R => rst
    );
\Cnt_Bclk0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => Cnt_Bclk0,
      CO(0) => \Cnt_Bclk0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_1_n_0\,
      S(0) => \i__carry_i_2__1_n_0\
    );
\Cnt_Bclk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cnt_Bclk_reg(0),
      O => \p_0_in__0\(0)
    );
\Cnt_Bclk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Cnt_Bclk_reg(1),
      I1 => Cnt_Bclk_reg(0),
      O => \p_0_in__0\(1)
    );
\Cnt_Bclk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Cnt_Bclk_reg(2),
      I1 => Cnt_Bclk_reg(0),
      I2 => Cnt_Bclk_reg(1),
      O => \p_0_in__0\(2)
    );
\Cnt_Bclk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => Cnt_Bclk_reg(3),
      I1 => Cnt_Bclk_reg(2),
      I2 => Cnt_Bclk_reg(1),
      I3 => Cnt_Bclk_reg(0),
      O => \p_0_in__0\(3)
    );
\Cnt_Bclk[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Cnt_Bclk0,
      I1 => s00_axi_aresetn,
      O => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => Cnt_Bclk_reg(4),
      I1 => Cnt_Bclk_reg(0),
      I2 => Cnt_Bclk_reg(1),
      I3 => Cnt_Bclk_reg(2),
      I4 => Cnt_Bclk_reg(3),
      O => \p_0_in__0\(4)
    );
\Cnt_Bclk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => Cnt_Bclk_reg(0),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => Cnt_Bclk_reg(1),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => Cnt_Bclk_reg(2),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => Cnt_Bclk_reg(3),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => Cnt_Bclk_reg(4),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Lrclk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cnt_Lrclk(0),
      O => \Cnt_Lrclk[0]_i_1_n_0\
    );
\Cnt_Lrclk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Cnt_Lrclk(1),
      I1 => Cnt_Lrclk(0),
      O => \Cnt_Lrclk[1]_i_1_n_0\
    );
\Cnt_Lrclk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Cnt_Lrclk(2),
      I1 => Cnt_Lrclk(0),
      I2 => Cnt_Lrclk(1),
      O => \Cnt_Lrclk[2]_i_1_n_0\
    );
\Cnt_Lrclk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => Cnt_Lrclk(3),
      I1 => Cnt_Lrclk(1),
      I2 => Cnt_Lrclk(0),
      I3 => Cnt_Lrclk(2),
      O => \Cnt_Lrclk[3]_i_1_n_0\
    );
\Cnt_Lrclk[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Cnt_Bclk0,
      I1 => \^bclk_int_reg_0\,
      O => BCLK_Fall_int
    );
\Cnt_Lrclk[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => Cnt_Lrclk(4),
      I1 => Cnt_Lrclk(2),
      I2 => Cnt_Lrclk(0),
      I3 => Cnt_Lrclk(1),
      I4 => Cnt_Lrclk(3),
      O => \Cnt_Lrclk[4]_i_2_n_0\
    );
\Cnt_Lrclk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[0]_i_1_n_0\,
      Q => Cnt_Lrclk(0),
      R => rst
    );
\Cnt_Lrclk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[1]_i_1_n_0\,
      Q => Cnt_Lrclk(1),
      R => rst
    );
\Cnt_Lrclk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[2]_i_1_n_0\,
      Q => Cnt_Lrclk(2),
      R => rst
    );
\Cnt_Lrclk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[3]_i_1_n_0\,
      Q => Cnt_Lrclk(3),
      R => rst
    );
\Cnt_Lrclk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[4]_i_2_n_0\,
      Q => Cnt_Lrclk(4),
      R => rst
    );
\Data_Out_int[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004F"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => CO(0),
      O => \Data_Out_int[15]_i_1_n_0\
    );
\Data_Out_int[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => O(0),
      I4 => \Data_Out_int_reg_n_0_[15]\,
      O => \Data_Out_int[16]_i_1_n_0\
    );
\Data_Out_int[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => O(1),
      I4 => \Data_Out_int_reg_n_0_[16]\,
      O => \Data_Out_int[17]_i_1_n_0\
    );
\Data_Out_int[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => O(2),
      I4 => \Data_Out_int_reg_n_0_[17]\,
      O => \Data_Out_int[18]_i_1_n_0\
    );
\Data_Out_int[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[22]_0\(0),
      I4 => \Data_Out_int_reg_n_0_[18]\,
      O => \Data_Out_int[19]_i_1_n_0\
    );
\Data_Out_int[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[22]_0\(1),
      I4 => \Data_Out_int_reg_n_0_[19]\,
      O => \Data_Out_int[20]_i_1_n_0\
    );
\Data_Out_int[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[22]_0\(2),
      I4 => \Data_Out_int_reg_n_0_[20]\,
      O => \Data_Out_int[21]_i_1_n_0\
    );
\Data_Out_int[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[22]_0\(3),
      I4 => \Data_Out_int_reg_n_0_[21]\,
      O => \Data_Out_int[22]_i_1_n_0\
    );
\Data_Out_int[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[26]_0\(0),
      I4 => \Data_Out_int_reg_n_0_[22]\,
      O => \Data_Out_int[23]_i_1_n_0\
    );
\Data_Out_int[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[26]_0\(1),
      I4 => \Data_Out_int_reg_n_0_[23]\,
      O => \Data_Out_int[24]_i_1_n_0\
    );
\Data_Out_int[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[26]_0\(2),
      I4 => \Data_Out_int_reg_n_0_[24]\,
      O => \Data_Out_int[25]_i_1_n_0\
    );
\Data_Out_int[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[26]_0\(3),
      I4 => \Data_Out_int_reg_n_0_[25]\,
      O => \Data_Out_int[26]_i_1_n_0\
    );
\Data_Out_int[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[30]_0\(0),
      I4 => \Data_Out_int_reg_n_0_[26]\,
      O => \Data_Out_int[27]_i_1_n_0\
    );
\Data_Out_int[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[30]_0\(1),
      I4 => \Data_Out_int_reg_n_0_[27]\,
      O => \Data_Out_int[28]_i_1_n_0\
    );
\Data_Out_int[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[30]_0\(2),
      I4 => \Data_Out_int_reg_n_0_[28]\,
      O => \Data_Out_int[29]_i_1_n_0\
    );
\Data_Out_int[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB04F00"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg[30]_0\(3),
      I4 => \Data_Out_int_reg_n_0_[29]\,
      O => \Data_Out_int[30]_i_1_n_0\
    );
\Data_Out_int[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => \Data_Out_int[31]_i_3_n_0\,
      I1 => s00_axi_aresetn,
      I2 => Cnt_Bclk0,
      I3 => \^bclk_int_reg_0\,
      O => \Data_Out_int[31]_i_1_n_0\
    );
\Data_Out_int[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => \Data_Out_int[31]_i_3_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \Data_Out_int_reg_n_0_[30]\,
      O => \Data_Out_int[31]_i_2_n_0\
    );
\Data_Out_int[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => Cnt_Lrclk(0),
      I1 => Cnt_Lrclk(1),
      I2 => Cnt_Lrclk(3),
      I3 => Cnt_Lrclk(4),
      I4 => Cnt_Lrclk(2),
      I5 => Cnt_Bclk0,
      O => \Data_Out_int[31]_i_3_n_0\
    );
\Data_Out_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[15]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[15]\,
      R => '0'
    );
\Data_Out_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[16]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[16]\,
      R => '0'
    );
\Data_Out_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[17]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[17]\,
      R => '0'
    );
\Data_Out_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[18]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[18]\,
      R => '0'
    );
\Data_Out_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[19]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[19]\,
      R => '0'
    );
\Data_Out_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[20]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[20]\,
      R => '0'
    );
\Data_Out_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[21]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[21]\,
      R => '0'
    );
\Data_Out_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[22]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[22]\,
      R => '0'
    );
\Data_Out_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[23]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[23]\,
      R => '0'
    );
\Data_Out_int_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[24]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[24]\,
      R => '0'
    );
\Data_Out_int_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[25]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[25]\,
      R => '0'
    );
\Data_Out_int_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[26]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[26]\,
      R => '0'
    );
\Data_Out_int_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[27]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[27]\,
      R => '0'
    );
\Data_Out_int_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[28]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[28]\,
      R => '0'
    );
\Data_Out_int_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[29]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[29]\,
      R => '0'
    );
\Data_Out_int_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[30]_i_1_n_0\,
      Q => \Data_Out_int_reg_n_0_[30]\,
      R => '0'
    );
\Data_Out_int_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int[31]_i_2_n_0\,
      Q => ac_dac_sdata,
      R => '0'
    );
LRCLK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => Cnt_Lrclk(4),
      I1 => \^bclk_int_reg_0\,
      I2 => Cnt_Bclk0,
      I3 => LRCLK_i_2_n_0,
      I4 => \^lrclk_reg_0\,
      O => LRCLK_i_1_n_0
    );
LRCLK_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Cnt_Lrclk(3),
      I1 => Cnt_Lrclk(1),
      I2 => Cnt_Lrclk(0),
      I3 => Cnt_Lrclk(2),
      O => LRCLK_i_2_n_0
    );
LRCLK_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => LRCLK_i_1_n_0,
      Q => \^lrclk_reg_0\,
      R => rst
    );
\ac_lrclk_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \ac_lrclk_count_reg[2]\,
      I2 => \^lrclk_reg_0\,
      I3 => \ac_lrclk_count__0\(0),
      O => s00_axi_aresetn_3
    );
\ac_lrclk_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A20AA00"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \ac_lrclk_count_reg[2]\,
      I2 => \^lrclk_reg_0\,
      I3 => \ac_lrclk_count__0\(1),
      I4 => \ac_lrclk_count__0\(0),
      O => s00_axi_aresetn_2
    );
\ac_lrclk_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \ac_lrclk_count_reg[2]\,
      I2 => \^lrclk_reg_0\,
      I3 => \ac_lrclk_count__0\(1),
      I4 => \ac_lrclk_count__0\(0),
      I5 => \ac_lrclk_count__0\(2),
      O => s00_axi_aresetn_1
    );
ac_lrclk_sig_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^lrclk_reg_0\,
      I2 => \ac_lrclk_count_reg[2]\,
      O => s00_axi_aresetn_0
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cnt_Bclk_reg(3),
      I1 => Cnt_Bclk_reg(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Cnt_Bclk_reg(2),
      I1 => Cnt_Bclk_reg(0),
      I2 => Cnt_Bclk_reg(1),
      O => \i__carry_i_2__1_n_0\
    );
ready_sig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2A2A2A2A2A2A2A2"
    )
        port map (
      I0 => sw,
      I1 => s00_axi_aresetn,
      I2 => ac_lrclk_count0,
      I3 => \ac_lrclk_count__0\(1),
      I4 => \ac_lrclk_count__0\(0),
      I5 => \ac_lrclk_count__0\(2),
      O => ready_sig_reg
    );
ready_sig_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^lrclk_reg_0\,
      I1 => \ac_lrclk_count_reg[2]\,
      O => ac_lrclk_count0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_lab4_controlunit is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC_VECTOR ( 14 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ctrl_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ctrl_reg[0]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \processCount_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \processCount_reg[3]\ : in STD_LOGIC;
    \processCount_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    sw : in STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_lab4_controlunit : entity is "lab4_controlunit";
end lab4_design_lab4_ip_0_6_lab4_controlunit;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_lab4_controlunit is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_ctrl[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_ctrl[1]_i_1_n_0\ : STD_LOGIC;
  signal cw : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "reset:001,read_val:010,wait_ready:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "reset:001,read_val:010,wait_ready:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "reset:001,read_val:010,wait_ready:100,";
  attribute SOFT_HLUTNM of \processCount[15]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \processCount[15]_i_2\ : label is "soft_lutpair1";
begin
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => sw,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDCC"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => sw,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => rst
    );
\count_ctrl[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDF8888"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => cw(0),
      O => \count_ctrl[0]_i_1_n_0\
    );
\count_ctrl[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFAA88"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => cw(1),
      O => \count_ctrl[1]_i_1_n_0\
    );
\count_ctrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count_ctrl[0]_i_1_n_0\,
      Q => cw(0),
      R => '0'
    );
\count_ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count_ctrl[1]_i_1_n_0\,
      Q => cw(1),
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(7),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(7)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(6),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(6)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(5),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(5)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(4),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(4)
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(7),
      I3 => \processCount_reg[15]_0\(7),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(7),
      O => \count_ctrl_reg[0]_0\(3)
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(6),
      I3 => \processCount_reg[15]_0\(6),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(6),
      O => \count_ctrl_reg[0]_0\(2)
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(5),
      I3 => \processCount_reg[15]_0\(5),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(5),
      O => \count_ctrl_reg[0]_0\(1)
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(4),
      I3 => \processCount_reg[15]_0\(4),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(4),
      O => \count_ctrl_reg[0]_0\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(11),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(11)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(10),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(10)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(9),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(9)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(8),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(8)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(11),
      I3 => \processCount_reg[15]_0\(11),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(11),
      O => \count_ctrl_reg[0]_1\(3)
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(10),
      I3 => \processCount_reg[15]_0\(10),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(10),
      O => \count_ctrl_reg[0]_1\(2)
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(9),
      I3 => \processCount_reg[15]_0\(9),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(9),
      O => \count_ctrl_reg[0]_1\(1)
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(8),
      I3 => \processCount_reg[15]_0\(8),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(8),
      O => \count_ctrl_reg[0]_1\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(14),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(14)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(13),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(13)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(12),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(12)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDF202020DF20"
    )
        port map (
      I0 => Q(15),
      I1 => cw(0),
      I2 => cw(1),
      I3 => \processCount_reg[15]_0\(15),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(15),
      O => \processCount_reg[15]\(3)
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(14),
      I3 => \processCount_reg[15]_0\(14),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(14),
      O => \processCount_reg[15]\(2)
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(13),
      I3 => \processCount_reg[15]_0\(13),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(13),
      O => \processCount_reg[15]\(1)
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(12),
      I3 => \processCount_reg[15]_0\(12),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(12),
      O => \processCount_reg[15]\(0)
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(3),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(2),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(1),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(0),
      I1 => cw(1),
      I2 => cw(0),
      O => p_0_in(0)
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(3),
      I3 => \processCount_reg[15]_0\(3),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(3),
      O => S(3)
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(2),
      I3 => \processCount_reg[15]_0\(2),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(2),
      O => S(2)
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(1),
      I3 => \processCount_reg[15]_0\(1),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(1),
      O => S(1)
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF404040BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => Q(0),
      I3 => \processCount_reg[15]_0\(0),
      I4 => \processCount_reg[3]\,
      I5 => \processCount_reg[15]_1\(0),
      O => S(0)
    );
\processCount[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => s00_axi_aresetn,
      O => SR(0)
    );
\processCount[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cw(1),
      I1 => cw(0),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_phase_ampl_manager is
  port (
    \ampl_sig_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : out STD_LOGIC;
    \phase_sig_reg[14]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    waveSel : out STD_LOGIC;
    \phase_sig_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \phase_sig_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \phase_sig_reg[11]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \phase_sig_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \phase_sig_reg[3]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \phase_sig_reg[7]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \phase_sig_reg[11]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \phase_sig_reg[14]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig_reg[7]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \ampl_sig_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \L_carry__2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg2_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_11\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_12\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_13\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_14\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_15\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_16\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_17\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_18\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_19\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_20\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_21\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[15]_22\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg0_reg[0]_rep__1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[10]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[14]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[15]_23\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[0]_rep\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[0]_rep_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig_reg[15]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig_reg[11]_1\ : out STD_LOGIC;
    \phase_sig_reg[15]_1\ : out STD_LOGIC;
    \phase_sig_reg[11]_2\ : out STD_LOGIC;
    \slv_reg0_reg[0]_rep__1_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[0]_rep_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[0]_rep_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig_reg[15]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig_reg[7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ampl_sig_reg[11]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[15]_24\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ampl_sig : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \ampl_sig_reg[7]_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    signalSel_reg_0 : in STD_LOGIC;
    \ampl_sig_reg[11]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[30]_i_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[30]_i_32_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[30]_i_17_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[30]_i_8_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[30]_i_4_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Data_Out_int[30]_i_12\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[30]_i_15\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_11\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_17\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_11\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_17\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[18]_i_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \L__972_carry_i_19\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \L__972_carry_i_10\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \L__972_carry__3_i_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    switch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \axi_rdata_reg[11]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata_reg[11]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Data_Out_int_reg[30]_i_47_0\ : in STD_LOGIC;
    \L_carry__2_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \Data_Out_int_reg[26]_i_44_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \axi_rdata_reg[15]\ : in STD_LOGIC;
    \axi_rdata_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \ampl_sig_reg[15]_3\ : in STD_LOGIC;
    left_btn : in STD_LOGIC;
    cntr_btn : in STD_LOGIC;
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    L_carry : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \L__972_carry_i_18_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \phase_sig_reg[15]_2\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_phase_ampl_manager : entity is "phase_ampl_manager";
end lab4_design_lab4_ip_0_6_phase_ampl_manager;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_phase_ampl_manager is
  signal C : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \Data_Out_int[18]_i_5_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_12_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_15_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_18_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_20_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_21_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_22_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_23_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_25_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_26_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_27_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_28_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_30_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_31_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_32_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_33_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_34_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_35_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_36_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_37_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_39_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_40_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_41_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_42_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_44_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_45_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_46_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_47_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_48_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_49_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_50_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_51_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_53_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_54_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_55_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_56_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_57_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_58_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_59_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_60_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_61_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_62_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_63_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_64_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_9_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_12_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_15_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_18_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_20_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_21_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_22_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_23_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_25_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_26_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_27_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_28_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_30_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_31_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_32_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_33_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_35_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_36_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_37_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_38_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_40_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_41_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_42_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_43_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_45_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_46_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_47_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_48_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_50_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_51_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_52_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_53_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_55_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_56_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_57_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_58_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_60_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_61_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_62_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_63_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_65_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_66_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_67_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_68_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_70_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_71_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_72_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_73_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_75_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_76_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_77_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_78_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_79_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_80_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_81_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_82_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_83_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_84_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_85_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_86_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_87_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_88_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_89_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_90_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_91_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_92_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_93_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_94_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_9_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_10_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_13_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_16_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_18_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_19_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_20_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_21_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_23_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_24_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_25_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_26_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_28_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_29_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_30_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_31_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_33_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_34_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_35_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_36_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_38_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_39_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_40_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_41_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_43_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_44_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_45_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_46_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_48_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_49_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_50_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_51_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_53_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_54_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_55_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_56_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_58_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_59_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_60_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_61_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_62_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_63_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_64_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_65_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_66_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_67_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_68_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_69_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_70_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_71_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_72_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_73_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[18]_i_3_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_10_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_10_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_10_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_10_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_10_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_10_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_10_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_10_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_13_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_13_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_13_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_13_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_13_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_13_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_13_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_13_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_16_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_16_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_16_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_16_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_16_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_16_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_16_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_16_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_19_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_19_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_19_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_19_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_19_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_19_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_19_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_19_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_24_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_24_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_24_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_24_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_24_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_24_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_24_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_24_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_29_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_29_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_29_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_29_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_29_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_29_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_29_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_29_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_38_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_38_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_38_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_38_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_38_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_38_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_38_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_38_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_3_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_43_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_43_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_43_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_43_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_43_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_43_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_43_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_43_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_4_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_52_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_52_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_52_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_52_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_52_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_52_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_52_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_5_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_6_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_7_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_7_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_7_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_7_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_7_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_7_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_7_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_7_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_10_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_10_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_10_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_10_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_10_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_10_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_10_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_10_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_13_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_13_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_13_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_13_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_13_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_13_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_13_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_13_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_16_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_16_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_16_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_16_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_16_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_16_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_16_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_16_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_19_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_19_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_19_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_19_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_19_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_19_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_19_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_19_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_24_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_24_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_24_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_24_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_24_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_24_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_24_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_24_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_29_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_29_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_29_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_29_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_29_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_29_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_29_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_29_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_34_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_34_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_34_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_34_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_34_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_34_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_34_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_34_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_39_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_39_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_39_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_39_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_39_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_39_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_39_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_39_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_3_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_44_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_44_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_44_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_44_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_44_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_44_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_44_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_44_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_49_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_49_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_49_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_49_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_49_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_49_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_49_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_49_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_4_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_54_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_54_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_54_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_54_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_54_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_54_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_54_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_54_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_59_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_59_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_59_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_59_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_59_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_59_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_59_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_5_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_64_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_64_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_64_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_64_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_64_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_64_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_64_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_69_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_69_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_69_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_69_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_69_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_69_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_69_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_6_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_74_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_74_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_74_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_74_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_74_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_74_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_74_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_7_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_7_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_7_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_7_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_7_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_7_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_7_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_7_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_11_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_11_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_11_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_11_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_11_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_11_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_11_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_11_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_14_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_14_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_14_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_14_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_14_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_14_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_14_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_14_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_17_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_17_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_17_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_17_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_17_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_17_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_17_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_17_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_22_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_22_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_22_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_22_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_22_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_22_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_22_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_22_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_27_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_27_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_27_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_27_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_27_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_27_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_27_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_27_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_32_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_32_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_32_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_32_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_32_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_32_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_32_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_32_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_37_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_37_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_37_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_37_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_37_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_37_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_37_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_37_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_42_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_42_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_42_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_42_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_42_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_42_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_42_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_42_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_47_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_47_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_47_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_47_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_47_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_47_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_47_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_4_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_52_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_52_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_52_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_52_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_52_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_52_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_52_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_57_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_57_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_57_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_57_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_57_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_57_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_57_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_5_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_6_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_8_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_8_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_8_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_8_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_8_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_8_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_8_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_8_n_7\ : STD_LOGIC;
  signal \L__972_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_11_n_1\ : STD_LOGIC;
  signal \L__972_carry__0_i_11_n_2\ : STD_LOGIC;
  signal \L__972_carry__0_i_11_n_3\ : STD_LOGIC;
  signal \L__972_carry__0_i_11_n_4\ : STD_LOGIC;
  signal \L__972_carry__0_i_11_n_5\ : STD_LOGIC;
  signal \L__972_carry__0_i_11_n_6\ : STD_LOGIC;
  signal \L__972_carry__0_i_11_n_7\ : STD_LOGIC;
  signal \L__972_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_1_n_1\ : STD_LOGIC;
  signal \L__972_carry__0_i_1_n_2\ : STD_LOGIC;
  signal \L__972_carry__0_i_1_n_3\ : STD_LOGIC;
  signal \L__972_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_6_n_1\ : STD_LOGIC;
  signal \L__972_carry__0_i_6_n_2\ : STD_LOGIC;
  signal \L__972_carry__0_i_6_n_3\ : STD_LOGIC;
  signal \L__972_carry__0_i_6_n_4\ : STD_LOGIC;
  signal \L__972_carry__0_i_6_n_5\ : STD_LOGIC;
  signal \L__972_carry__0_i_6_n_6\ : STD_LOGIC;
  signal \L__972_carry__0_i_6_n_7\ : STD_LOGIC;
  signal \L__972_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_i_1_n_1\ : STD_LOGIC;
  signal \L__972_carry__1_i_1_n_2\ : STD_LOGIC;
  signal \L__972_carry__1_i_1_n_3\ : STD_LOGIC;
  signal \L__972_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_i_6_n_1\ : STD_LOGIC;
  signal \L__972_carry__1_i_6_n_2\ : STD_LOGIC;
  signal \L__972_carry__1_i_6_n_3\ : STD_LOGIC;
  signal \L__972_carry__1_i_6_n_4\ : STD_LOGIC;
  signal \L__972_carry__1_i_6_n_5\ : STD_LOGIC;
  signal \L__972_carry__1_i_6_n_6\ : STD_LOGIC;
  signal \L__972_carry__1_i_6_n_7\ : STD_LOGIC;
  signal \L__972_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \L__972_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \L__972_carry__2_i_1_n_1\ : STD_LOGIC;
  signal \L__972_carry__2_i_1_n_2\ : STD_LOGIC;
  signal \L__972_carry__2_i_1_n_3\ : STD_LOGIC;
  signal \L__972_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \L__972_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \L__972_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \L__972_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_11_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_12_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_12_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_12_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_12_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_12_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_12_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_12_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_13_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_14_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_15_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_16_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_17_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_18_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_18_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_18_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_18_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_18_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_18_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_18_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_18_n_7\ : STD_LOGIC;
  signal \L__972_carry_i_1_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_20_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_21_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_21_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_21_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_21_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_21_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_21_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_21_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_21_n_7\ : STD_LOGIC;
  signal \L__972_carry_i_22_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_23_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_24_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_25_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_26_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_26_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_26_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_26_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_26_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_26_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_26_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_27_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_28_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_29_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_2_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_2_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_2_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_2_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_30_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_31_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_31_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_31_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_31_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_31_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_31_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_31_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_31_n_7\ : STD_LOGIC;
  signal \L__972_carry_i_32_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_33_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_34_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_35_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_36_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_36_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_36_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_36_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_36_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_36_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_36_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_36_n_7\ : STD_LOGIC;
  signal \L__972_carry_i_37_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_38_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_39_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_40_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_41_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_41_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_41_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_41_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_41_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_41_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_41_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_42_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_43_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_44_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_45_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_46_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_46_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_46_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_46_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_46_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_46_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_46_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_46_n_7\ : STD_LOGIC;
  signal \L__972_carry_i_47_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_48_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_49_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_50_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_51_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_51_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_51_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_51_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_51_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_51_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_51_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_52_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_53_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_54_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_55_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_56_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_57_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_58_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_59_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_60_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_60_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_60_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_60_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_60_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_60_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_60_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_61_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_62_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_63_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_64_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_65_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_66_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_67_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_68_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_69_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_70_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_71_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_72_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_8_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_9_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_9_n_1\ : STD_LOGIC;
  signal \L__972_carry_i_9_n_2\ : STD_LOGIC;
  signal \L__972_carry_i_9_n_3\ : STD_LOGIC;
  signal \L__972_carry_i_9_n_4\ : STD_LOGIC;
  signal \L__972_carry_i_9_n_5\ : STD_LOGIC;
  signal \L__972_carry_i_9_n_6\ : STD_LOGIC;
  signal \L__972_carry_i_9_n_7\ : STD_LOGIC;
  signal \^l_carry__2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ampl_sig1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \ampl_sig1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \ampl_sig1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \ampl_sig1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \ampl_sig1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ampl_sig1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ampl_sig1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \ampl_sig[0]_i_18_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_19_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_20_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_21_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_24_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_25_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_26_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_27_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_28_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_29_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_30_n_0\ : STD_LOGIC;
  signal \ampl_sig[0]_i_31_n_0\ : STD_LOGIC;
  signal \ampl_sig[12]_i_10_n_0\ : STD_LOGIC;
  signal \ampl_sig[12]_i_2_n_0\ : STD_LOGIC;
  signal \ampl_sig[12]_i_3_n_0\ : STD_LOGIC;
  signal \ampl_sig[12]_i_4_n_0\ : STD_LOGIC;
  signal \ampl_sig[12]_i_5_n_0\ : STD_LOGIC;
  signal \ampl_sig[12]_i_7_n_0\ : STD_LOGIC;
  signal \ampl_sig[12]_i_8_n_0\ : STD_LOGIC;
  signal \ampl_sig[12]_i_9_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_11_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_12_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_13_n_0\ : STD_LOGIC;
  signal \ampl_sig[4]_i_14_n_0\ : STD_LOGIC;
  signal \ampl_sig[8]_i_10_n_0\ : STD_LOGIC;
  signal \ampl_sig[8]_i_2_n_0\ : STD_LOGIC;
  signal \ampl_sig[8]_i_3_n_0\ : STD_LOGIC;
  signal \ampl_sig[8]_i_4_n_0\ : STD_LOGIC;
  signal \ampl_sig[8]_i_5_n_0\ : STD_LOGIC;
  signal \ampl_sig[8]_i_7_n_0\ : STD_LOGIC;
  signal \ampl_sig[8]_i_8_n_0\ : STD_LOGIC;
  signal \ampl_sig[8]_i_9_n_0\ : STD_LOGIC;
  signal ampl_sig_reg : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \ampl_sig_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_15_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_15_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_15_n_3\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_16_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_16_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_16_n_3\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_17_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_17_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_17_n_3\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_22_n_0\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_22_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_22_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_22_n_3\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_23_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_23_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[0]_i_23_n_3\ : STD_LOGIC;
  signal \^ampl_sig_reg[11]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ampl_sig_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ampl_sig_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ampl_sig_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ampl_sig_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ampl_sig_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ampl_sig_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \ampl_sig_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \ampl_sig_reg[4]_i_10_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[4]_i_10_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[4]_i_10_n_3\ : STD_LOGIC;
  signal \^ampl_sig_reg[6]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ampl_sig_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ampl_sig_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \ampl_sig_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \phase_sig2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \phase_sig2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \phase_sig2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \phase_sig2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \phase_sig2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \phase_sig2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \phase_sig2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \phase_sig2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \phase_sig2_carry__0_n_1\ : STD_LOGIC;
  signal \phase_sig2_carry__0_n_2\ : STD_LOGIC;
  signal \phase_sig2_carry__0_n_3\ : STD_LOGIC;
  signal phase_sig2_carry_i_1_n_0 : STD_LOGIC;
  signal phase_sig2_carry_i_2_n_0 : STD_LOGIC;
  signal phase_sig2_carry_i_3_n_0 : STD_LOGIC;
  signal phase_sig2_carry_i_4_n_0 : STD_LOGIC;
  signal phase_sig2_carry_i_5_n_0 : STD_LOGIC;
  signal phase_sig2_carry_i_6_n_0 : STD_LOGIC;
  signal phase_sig2_carry_i_7_n_0 : STD_LOGIC;
  signal phase_sig2_carry_i_8_n_0 : STD_LOGIC;
  signal phase_sig2_carry_n_0 : STD_LOGIC;
  signal phase_sig2_carry_n_1 : STD_LOGIC;
  signal phase_sig2_carry_n_2 : STD_LOGIC;
  signal phase_sig2_carry_n_3 : STD_LOGIC;
  signal \phase_sig[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase_sig[11]_i_4_n_0\ : STD_LOGIC;
  signal \phase_sig[11]_i_5_n_0\ : STD_LOGIC;
  signal \phase_sig[11]_i_6_n_0\ : STD_LOGIC;
  signal \phase_sig[11]_i_7_n_0\ : STD_LOGIC;
  signal \phase_sig[15]_i_10_n_0\ : STD_LOGIC;
  signal \phase_sig[15]_i_11_n_0\ : STD_LOGIC;
  signal \phase_sig[15]_i_12_n_0\ : STD_LOGIC;
  signal \phase_sig[15]_i_13_n_0\ : STD_LOGIC;
  signal \phase_sig[15]_i_9_n_0\ : STD_LOGIC;
  signal \phase_sig[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase_sig[3]_i_10_n_0\ : STD_LOGIC;
  signal \phase_sig[3]_i_11_n_0\ : STD_LOGIC;
  signal \phase_sig[3]_i_4_n_0\ : STD_LOGIC;
  signal \phase_sig[3]_i_5_n_0\ : STD_LOGIC;
  signal \phase_sig[3]_i_6_n_0\ : STD_LOGIC;
  signal \phase_sig[3]_i_7_n_0\ : STD_LOGIC;
  signal \phase_sig[3]_i_8_n_0\ : STD_LOGIC;
  signal \phase_sig[3]_i_9_n_0\ : STD_LOGIC;
  signal \phase_sig[4]_i_1_n_0\ : STD_LOGIC;
  signal \phase_sig[5]_i_1_n_0\ : STD_LOGIC;
  signal \phase_sig[6]_i_1_n_0\ : STD_LOGIC;
  signal \phase_sig[7]_i_10_n_0\ : STD_LOGIC;
  signal \phase_sig[7]_i_11_n_0\ : STD_LOGIC;
  signal \phase_sig[7]_i_4_n_0\ : STD_LOGIC;
  signal \phase_sig[7]_i_5_n_0\ : STD_LOGIC;
  signal \phase_sig[7]_i_6_n_0\ : STD_LOGIC;
  signal \phase_sig[7]_i_7_n_0\ : STD_LOGIC;
  signal \phase_sig[7]_i_8_n_0\ : STD_LOGIC;
  signal \phase_sig[7]_i_9_n_0\ : STD_LOGIC;
  signal \phase_sig[9]_i_1_n_0\ : STD_LOGIC;
  signal \^phase_sig_reg[11]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \phase_sig_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \phase_sig_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \phase_sig_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \phase_sig_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \phase_sig_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \phase_sig_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \phase_sig_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \phase_sig_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \phase_sig_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \phase_sig_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \^phase_sig_reg[14]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^phase_sig_reg[15]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \phase_sig_reg[15]_i_6_n_1\ : STD_LOGIC;
  signal \phase_sig_reg[15]_i_6_n_2\ : STD_LOGIC;
  signal \phase_sig_reg[15]_i_6_n_3\ : STD_LOGIC;
  signal \phase_sig_reg[15]_i_8_n_1\ : STD_LOGIC;
  signal \phase_sig_reg[15]_i_8_n_2\ : STD_LOGIC;
  signal \phase_sig_reg[15]_i_8_n_3\ : STD_LOGIC;
  signal \^phase_sig_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \phase_sig_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_3_n_5\ : STD_LOGIC;
  signal \phase_sig_reg[3]_i_3_n_7\ : STD_LOGIC;
  signal \^phase_sig_reg[7]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \phase_sig_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_3_n_5\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_3_n_6\ : STD_LOGIC;
  signal \phase_sig_reg[7]_i_3_n_7\ : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal \^slv_reg0_reg[0]_rep__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^slv_reg2_reg[10]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^slv_reg2_reg[14]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^slv_reg2_reg[15]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^slv_reg2_reg[15]_11\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[15]_13\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[15]_15\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[15]_17\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[15]_19\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[15]_21\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^slv_reg2_reg[15]_3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[15]_5\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[15]_7\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[15]_9\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^wavesel\ : STD_LOGIC;
  signal \NLW_Data_Out_int_reg[18]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[18]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[22]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[22]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[22]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[22]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[22]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[22]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[22]_i_52_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Data_Out_int_reg[22]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[22]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[26]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[26]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[26]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[26]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[26]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[26]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[26]_i_59_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Data_Out_int_reg[26]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[26]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[26]_i_64_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Data_Out_int_reg[26]_i_69_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Data_Out_int_reg[26]_i_74_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Data_Out_int_reg[30]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[30]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[30]_i_47_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Data_Out_int_reg[30]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[30]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[30]_i_52_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Data_Out_int_reg[30]_i_57_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Data_Out_int_reg[30]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Data_Out_int_reg[30]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[30]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Data_Out_int_reg[30]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_L__972_carry_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_L__972_carry_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_L__972_carry_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_L__972_carry_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_L__972_carry_i_26_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_L__972_carry_i_41_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_L__972_carry_i_51_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_L__972_carry_i_60_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_L__972_carry_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_L__972_carry_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ampl_sig1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ampl_sig1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ampl_sig_reg[0]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ampl_sig_reg[0]_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ampl_sig_reg[0]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ampl_sig_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ampl_sig_reg[12]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_phase_sig2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phase_sig2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phase_sig_reg[15]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_phase_sig_reg[15]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axi_rdata[14]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_3\ : label is "soft_lutpair43";
begin
  \L_carry__2\(0) <= \^l_carry__2\(0);
  Q(15 downto 0) <= \^q\(15 downto 0);
  \ampl_sig_reg[11]_0\(3 downto 0) <= \^ampl_sig_reg[11]_0\(3 downto 0);
  \ampl_sig_reg[6]_0\(3 downto 0) <= \^ampl_sig_reg[6]_0\(3 downto 0);
  \ampl_sig_reg[7]_0\(7 downto 0) <= \^ampl_sig_reg[7]_0\(7 downto 0);
  \phase_sig_reg[11]_0\(2 downto 0) <= \^phase_sig_reg[11]_0\(2 downto 0);
  \phase_sig_reg[14]_0\(0) <= \^phase_sig_reg[14]_0\(0);
  \phase_sig_reg[15]_0\(3 downto 0) <= \^phase_sig_reg[15]_0\(3 downto 0);
  \phase_sig_reg[3]_0\(1 downto 0) <= \^phase_sig_reg[3]_0\(1 downto 0);
  \phase_sig_reg[7]_0\(0) <= \^phase_sig_reg[7]_0\(0);
  rst <= \^rst\;
  \slv_reg0_reg[0]_rep__1\(3 downto 0) <= \^slv_reg0_reg[0]_rep__1\(3 downto 0);
  \slv_reg2_reg[10]\(3 downto 0) <= \^slv_reg2_reg[10]\(3 downto 0);
  \slv_reg2_reg[14]\(3 downto 0) <= \^slv_reg2_reg[14]\(3 downto 0);
  \slv_reg2_reg[15]\(2 downto 0) <= \^slv_reg2_reg[15]\(2 downto 0);
  \slv_reg2_reg[15]_11\(0) <= \^slv_reg2_reg[15]_11\(0);
  \slv_reg2_reg[15]_13\(0) <= \^slv_reg2_reg[15]_13\(0);
  \slv_reg2_reg[15]_15\(0) <= \^slv_reg2_reg[15]_15\(0);
  \slv_reg2_reg[15]_17\(0) <= \^slv_reg2_reg[15]_17\(0);
  \slv_reg2_reg[15]_19\(0) <= \^slv_reg2_reg[15]_19\(0);
  \slv_reg2_reg[15]_21\(1 downto 0) <= \^slv_reg2_reg[15]_21\(1 downto 0);
  \slv_reg2_reg[15]_3\(0) <= \^slv_reg2_reg[15]_3\(0);
  \slv_reg2_reg[15]_5\(0) <= \^slv_reg2_reg[15]_5\(0);
  \slv_reg2_reg[15]_7\(0) <= \^slv_reg2_reg[15]_7\(0);
  \slv_reg2_reg[15]_9\(0) <= \^slv_reg2_reg[15]_9\(0);
  waveSel <= \^wavesel\;
BCLK_int_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^rst\
    );
\Data_Out_int[18]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \Data_Out_int_reg[22]_i_16_n_4\,
      O => \Data_Out_int[18]_i_5_n_0\
    );
\Data_Out_int[22]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_7_n_4\,
      O => \Data_Out_int[22]_i_12_n_0\
    );
\Data_Out_int[22]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_10_n_4\,
      O => \Data_Out_int[22]_i_15_n_0\
    );
\Data_Out_int[22]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \Data_Out_int_reg[22]_i_13_n_4\,
      O => \Data_Out_int[22]_i_18_n_0\
    );
\Data_Out_int[22]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_16_n_5\,
      O => \Data_Out_int[22]_i_20_n_0\
    );
\Data_Out_int[22]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_16_n_6\,
      O => \Data_Out_int[22]_i_21_n_0\
    );
\Data_Out_int[22]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_16_n_7\,
      O => \Data_Out_int[22]_i_22_n_0\
    );
\Data_Out_int[22]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_34_n_4\,
      O => \Data_Out_int[22]_i_23_n_0\
    );
\Data_Out_int[22]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_7_n_5\,
      O => \Data_Out_int[22]_i_25_n_0\
    );
\Data_Out_int[22]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_7_n_6\,
      O => \Data_Out_int[22]_i_26_n_0\
    );
\Data_Out_int[22]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_7_n_7\,
      O => \Data_Out_int[22]_i_27_n_0\
    );
\Data_Out_int[22]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_19_n_4\,
      O => \Data_Out_int[22]_i_28_n_0\
    );
\Data_Out_int[22]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_10_n_5\,
      O => \Data_Out_int[22]_i_30_n_0\
    );
\Data_Out_int[22]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_10_n_6\,
      O => \Data_Out_int[22]_i_31_n_0\
    );
\Data_Out_int[22]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_10_n_7\,
      O => \Data_Out_int[22]_i_32_n_0\
    );
\Data_Out_int[22]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_24_n_4\,
      O => \Data_Out_int[22]_i_33_n_0\
    );
\Data_Out_int[22]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \Data_Out_int_reg[22]_i_13_n_5\,
      O => \Data_Out_int[22]_i_34_n_0\
    );
\Data_Out_int[22]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \Data_Out_int_reg[22]_i_13_n_6\,
      O => \Data_Out_int[22]_i_35_n_0\
    );
\Data_Out_int[22]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \Data_Out_int_reg[22]_i_13_n_7\,
      O => \Data_Out_int[22]_i_36_n_0\
    );
\Data_Out_int[22]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \Data_Out_int_reg[22]_i_29_n_4\,
      O => \Data_Out_int[22]_i_37_n_0\
    );
\Data_Out_int[22]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_34_n_5\,
      O => \Data_Out_int[22]_i_39_n_0\
    );
\Data_Out_int[22]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_34_n_6\,
      O => \Data_Out_int[22]_i_40_n_0\
    );
\Data_Out_int[22]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_34_n_7\,
      O => \Data_Out_int[22]_i_41_n_0\
    );
\Data_Out_int[22]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_54_n_4\,
      O => \Data_Out_int[22]_i_42_n_0\
    );
\Data_Out_int[22]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_19_n_5\,
      O => \Data_Out_int[22]_i_44_n_0\
    );
\Data_Out_int[22]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_19_n_6\,
      O => \Data_Out_int[22]_i_45_n_0\
    );
\Data_Out_int[22]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_19_n_7\,
      O => \Data_Out_int[22]_i_46_n_0\
    );
\Data_Out_int[22]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_38_n_4\,
      O => \Data_Out_int[22]_i_47_n_0\
    );
\Data_Out_int[22]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_24_n_5\,
      O => \Data_Out_int[22]_i_48_n_0\
    );
\Data_Out_int[22]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_24_n_6\,
      O => \Data_Out_int[22]_i_49_n_0\
    );
\Data_Out_int[22]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_24_n_7\,
      O => \Data_Out_int[22]_i_50_n_0\
    );
\Data_Out_int[22]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_43_n_4\,
      O => \Data_Out_int[22]_i_51_n_0\
    );
\Data_Out_int[22]_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_54_n_5\,
      O => \Data_Out_int[22]_i_53_n_0\
    );
\Data_Out_int[22]_i_54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_54_n_6\,
      O => \Data_Out_int[22]_i_54_n_0\
    );
\Data_Out_int[22]_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \L__972_carry_i_18_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_54_n_7\,
      O => \Data_Out_int[22]_i_55_n_0\
    );
\Data_Out_int[22]_i_56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_74_n_4\,
      O => \Data_Out_int[22]_i_56_n_0\
    );
\Data_Out_int[22]_i_57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_38_n_5\,
      O => \Data_Out_int[22]_i_57_n_0\
    );
\Data_Out_int[22]_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_38_n_6\,
      O => \Data_Out_int[22]_i_58_n_0\
    );
\Data_Out_int[22]_i_59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \L__972_carry_i_18_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_38_n_7\,
      O => \Data_Out_int[22]_i_59_n_0\
    );
\Data_Out_int[22]_i_60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_52_n_4\,
      O => \Data_Out_int[22]_i_60_n_0\
    );
\Data_Out_int[22]_i_61\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_9\(0),
      O => \Data_Out_int[22]_i_61_n_0\
    );
\Data_Out_int[22]_i_62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_74_n_5\,
      O => \Data_Out_int[22]_i_62_n_0\
    );
\Data_Out_int[22]_i_63\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_74_n_6\,
      O => \Data_Out_int[22]_i_63_n_0\
    );
\Data_Out_int[22]_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_9\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(7),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(7),
      O => \Data_Out_int[22]_i_64_n_0\
    );
\Data_Out_int[22]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_9\(0),
      I4 => \Data_Out_int_reg[26]_i_16_n_4\,
      O => \Data_Out_int[22]_i_9_n_0\
    );
\Data_Out_int[26]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_7_n_4\,
      O => \Data_Out_int[26]_i_12_n_0\
    );
\Data_Out_int[26]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_10_n_4\,
      O => \Data_Out_int[26]_i_15_n_0\
    );
\Data_Out_int[26]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_13_n_4\,
      O => \Data_Out_int[26]_i_18_n_0\
    );
\Data_Out_int[26]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_14_n_5\,
      O => \Data_Out_int[26]_i_20_n_0\
    );
\Data_Out_int[26]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_14_n_6\,
      O => \Data_Out_int[26]_i_21_n_0\
    );
\Data_Out_int[26]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_14_n_7\,
      O => \Data_Out_int[26]_i_22_n_0\
    );
\Data_Out_int[26]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_27_n_4\,
      O => \Data_Out_int[26]_i_23_n_0\
    );
\Data_Out_int[26]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_7_n_5\,
      O => \Data_Out_int[26]_i_25_n_0\
    );
\Data_Out_int[26]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_7_n_6\,
      O => \Data_Out_int[26]_i_26_n_0\
    );
\Data_Out_int[26]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_7_n_7\,
      O => \Data_Out_int[26]_i_27_n_0\
    );
\Data_Out_int[26]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_19_n_4\,
      O => \Data_Out_int[26]_i_28_n_0\
    );
\Data_Out_int[26]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_10_n_5\,
      O => \Data_Out_int[26]_i_30_n_0\
    );
\Data_Out_int[26]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_10_n_6\,
      O => \Data_Out_int[26]_i_31_n_0\
    );
\Data_Out_int[26]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_10_n_7\,
      O => \Data_Out_int[26]_i_32_n_0\
    );
\Data_Out_int[26]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_24_n_4\,
      O => \Data_Out_int[26]_i_33_n_0\
    );
\Data_Out_int[26]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_13_n_5\,
      O => \Data_Out_int[26]_i_35_n_0\
    );
\Data_Out_int[26]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_13_n_6\,
      O => \Data_Out_int[26]_i_36_n_0\
    );
\Data_Out_int[26]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_13_n_7\,
      O => \Data_Out_int[26]_i_37_n_0\
    );
\Data_Out_int[26]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_29_n_4\,
      O => \Data_Out_int[26]_i_38_n_0\
    );
\Data_Out_int[26]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_27_n_5\,
      O => \Data_Out_int[26]_i_40_n_0\
    );
\Data_Out_int[26]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_27_n_6\,
      O => \Data_Out_int[26]_i_41_n_0\
    );
\Data_Out_int[26]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_27_n_7\,
      O => \Data_Out_int[26]_i_42_n_0\
    );
\Data_Out_int[26]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_42_n_4\,
      O => \Data_Out_int[26]_i_43_n_0\
    );
\Data_Out_int[26]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_19_n_5\,
      O => \Data_Out_int[26]_i_45_n_0\
    );
\Data_Out_int[26]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_19_n_6\,
      O => \Data_Out_int[26]_i_46_n_0\
    );
\Data_Out_int[26]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_19_n_7\,
      O => \Data_Out_int[26]_i_47_n_0\
    );
\Data_Out_int[26]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_39_n_4\,
      O => \Data_Out_int[26]_i_48_n_0\
    );
\Data_Out_int[26]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_24_n_5\,
      O => \Data_Out_int[26]_i_50_n_0\
    );
\Data_Out_int[26]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_24_n_6\,
      O => \Data_Out_int[26]_i_51_n_0\
    );
\Data_Out_int[26]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_24_n_7\,
      O => \Data_Out_int[26]_i_52_n_0\
    );
\Data_Out_int[26]_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_44_n_4\,
      O => \Data_Out_int[26]_i_53_n_0\
    );
\Data_Out_int[26]_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_29_n_5\,
      O => \Data_Out_int[26]_i_55_n_0\
    );
\Data_Out_int[26]_i_56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_29_n_6\,
      O => \Data_Out_int[26]_i_56_n_0\
    );
\Data_Out_int[26]_i_57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_29_n_7\,
      O => \Data_Out_int[26]_i_57_n_0\
    );
\Data_Out_int[26]_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_49_n_4\,
      O => \Data_Out_int[26]_i_58_n_0\
    );
\Data_Out_int[26]_i_60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_42_n_5\,
      O => \Data_Out_int[26]_i_60_n_0\
    );
\Data_Out_int[26]_i_61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_42_n_6\,
      O => \Data_Out_int[26]_i_61_n_0\
    );
\Data_Out_int[26]_i_62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_42_n_7\,
      O => \Data_Out_int[26]_i_62_n_0\
    );
\Data_Out_int[26]_i_63\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_57_n_4\,
      O => \Data_Out_int[26]_i_63_n_0\
    );
\Data_Out_int[26]_i_65\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_39_n_5\,
      O => \Data_Out_int[26]_i_65_n_0\
    );
\Data_Out_int[26]_i_66\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_39_n_6\,
      O => \Data_Out_int[26]_i_66_n_0\
    );
\Data_Out_int[26]_i_67\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_39_n_7\,
      O => \Data_Out_int[26]_i_67_n_0\
    );
\Data_Out_int[26]_i_68\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_59_n_4\,
      O => \Data_Out_int[26]_i_68_n_0\
    );
\Data_Out_int[26]_i_70\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_44_n_5\,
      O => \Data_Out_int[26]_i_70_n_0\
    );
\Data_Out_int[26]_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_44_n_6\,
      O => \Data_Out_int[26]_i_71_n_0\
    );
\Data_Out_int[26]_i_72\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \L__972_carry_i_18_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_44_n_7\,
      O => \Data_Out_int[26]_i_72_n_0\
    );
\Data_Out_int[26]_i_73\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_64_n_4\,
      O => \Data_Out_int[26]_i_73_n_0\
    );
\Data_Out_int[26]_i_75\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_49_n_5\,
      O => \Data_Out_int[26]_i_75_n_0\
    );
\Data_Out_int[26]_i_76\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_49_n_6\,
      O => \Data_Out_int[26]_i_76_n_0\
    );
\Data_Out_int[26]_i_77\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \L__972_carry_i_18_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_49_n_7\,
      O => \Data_Out_int[26]_i_77_n_0\
    );
\Data_Out_int[26]_i_78\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_69_n_4\,
      O => \Data_Out_int[26]_i_78_n_0\
    );
\Data_Out_int[26]_i_79\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]\(0),
      O => \Data_Out_int[26]_i_79_n_0\
    );
\Data_Out_int[26]_i_80\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_57_n_5\,
      O => \Data_Out_int[26]_i_80_n_0\
    );
\Data_Out_int[26]_i_81\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_57_n_6\,
      O => \Data_Out_int[26]_i_81_n_0\
    );
\Data_Out_int[26]_i_82\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(11),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(11),
      O => \Data_Out_int[26]_i_82_n_0\
    );
\Data_Out_int[26]_i_83\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_3\(0),
      O => \Data_Out_int[26]_i_83_n_0\
    );
\Data_Out_int[26]_i_84\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_59_n_5\,
      O => \Data_Out_int[26]_i_84_n_0\
    );
\Data_Out_int[26]_i_85\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_3\(0),
      I4 => \Data_Out_int_reg[26]_i_59_n_6\,
      O => \Data_Out_int[26]_i_85_n_0\
    );
\Data_Out_int[26]_i_86\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_3\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(10),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(10),
      O => \Data_Out_int[26]_i_86_n_0\
    );
\Data_Out_int[26]_i_87\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_5\(0),
      O => \Data_Out_int[26]_i_87_n_0\
    );
\Data_Out_int[26]_i_88\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_64_n_5\,
      O => \Data_Out_int[26]_i_88_n_0\
    );
\Data_Out_int[26]_i_89\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_5\(0),
      I4 => \Data_Out_int_reg[26]_i_64_n_6\,
      O => \Data_Out_int[26]_i_89_n_0\
    );
\Data_Out_int[26]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]\(0),
      I4 => \Data_Out_int_reg[30]_i_14_n_4\,
      O => \Data_Out_int[26]_i_9_n_0\
    );
\Data_Out_int[26]_i_90\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_5\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(9),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(9),
      O => \Data_Out_int[26]_i_90_n_0\
    );
\Data_Out_int[26]_i_91\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_7\(0),
      O => \Data_Out_int[26]_i_91_n_0\
    );
\Data_Out_int[26]_i_92\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_69_n_5\,
      O => \Data_Out_int[26]_i_92_n_0\
    );
\Data_Out_int[26]_i_93\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_7\(0),
      I4 => \Data_Out_int_reg[26]_i_69_n_6\,
      O => \Data_Out_int[26]_i_93_n_0\
    );
\Data_Out_int[26]_i_94\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_7\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(8),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(8),
      O => \Data_Out_int[26]_i_94_n_0\
    );
\Data_Out_int[30]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_4_0\(2),
      O => \Data_Out_int[30]_i_10_n_0\
    );
\Data_Out_int[30]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_8_n_4\,
      O => \Data_Out_int[30]_i_13_n_0\
    );
\Data_Out_int[30]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_11_n_4\,
      O => \Data_Out_int[30]_i_16_n_0\
    );
\Data_Out_int[30]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_4_0\(1),
      O => \Data_Out_int[30]_i_18_n_0\
    );
\Data_Out_int[30]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_4_0\(0),
      O => \Data_Out_int[30]_i_19_n_0\
    );
\Data_Out_int[30]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_8_0\(3),
      O => \Data_Out_int[30]_i_20_n_0\
    );
\Data_Out_int[30]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_8_0\(2),
      O => \Data_Out_int[30]_i_21_n_0\
    );
\Data_Out_int[30]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_8_n_5\,
      O => \Data_Out_int[30]_i_23_n_0\
    );
\Data_Out_int[30]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_8_n_6\,
      O => \Data_Out_int[30]_i_24_n_0\
    );
\Data_Out_int[30]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_8_n_7\,
      O => \Data_Out_int[30]_i_25_n_0\
    );
\Data_Out_int[30]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_17_n_4\,
      O => \Data_Out_int[30]_i_26_n_0\
    );
\Data_Out_int[30]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_11_n_5\,
      O => \Data_Out_int[30]_i_28_n_0\
    );
\Data_Out_int[30]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_11_n_6\,
      O => \Data_Out_int[30]_i_29_n_0\
    );
\Data_Out_int[30]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_11_n_7\,
      O => \Data_Out_int[30]_i_30_n_0\
    );
\Data_Out_int[30]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_22_n_4\,
      O => \Data_Out_int[30]_i_31_n_0\
    );
\Data_Out_int[30]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_8_0\(1),
      O => \Data_Out_int[30]_i_33_n_0\
    );
\Data_Out_int[30]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_8_0\(0),
      O => \Data_Out_int[30]_i_34_n_0\
    );
\Data_Out_int[30]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_17_0\(3),
      O => \Data_Out_int[30]_i_35_n_0\
    );
\Data_Out_int[30]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_17_0\(2),
      O => \Data_Out_int[30]_i_36_n_0\
    );
\Data_Out_int[30]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_17_n_5\,
      O => \Data_Out_int[30]_i_38_n_0\
    );
\Data_Out_int[30]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_17_n_6\,
      O => \Data_Out_int[30]_i_39_n_0\
    );
\Data_Out_int[30]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_17_n_7\,
      O => \Data_Out_int[30]_i_40_n_0\
    );
\Data_Out_int[30]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_32_n_4\,
      O => \Data_Out_int[30]_i_41_n_0\
    );
\Data_Out_int[30]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_22_n_5\,
      O => \Data_Out_int[30]_i_43_n_0\
    );
\Data_Out_int[30]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_22_n_6\,
      O => \Data_Out_int[30]_i_44_n_0\
    );
\Data_Out_int[30]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_22_n_7\,
      O => \Data_Out_int[30]_i_45_n_0\
    );
\Data_Out_int[30]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_37_n_4\,
      O => \Data_Out_int[30]_i_46_n_0\
    );
\Data_Out_int[30]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_17_0\(1),
      O => \Data_Out_int[30]_i_48_n_0\
    );
\Data_Out_int[30]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_17_0\(0),
      O => \Data_Out_int[30]_i_49_n_0\
    );
\Data_Out_int[30]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_32_0\(3),
      O => \Data_Out_int[30]_i_50_n_0\
    );
\Data_Out_int[30]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_32_0\(2),
      O => \Data_Out_int[30]_i_51_n_0\
    );
\Data_Out_int[30]_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_32_n_5\,
      O => \Data_Out_int[30]_i_53_n_0\
    );
\Data_Out_int[30]_i_54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_32_n_6\,
      O => \Data_Out_int[30]_i_54_n_0\
    );
\Data_Out_int[30]_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_32_n_7\,
      O => \Data_Out_int[30]_i_55_n_0\
    );
\Data_Out_int[30]_i_56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_47_n_4\,
      O => \Data_Out_int[30]_i_56_n_0\
    );
\Data_Out_int[30]_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_37_n_5\,
      O => \Data_Out_int[30]_i_58_n_0\
    );
\Data_Out_int[30]_i_59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_37_n_6\,
      O => \Data_Out_int[30]_i_59_n_0\
    );
\Data_Out_int[30]_i_60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_37_n_7\,
      O => \Data_Out_int[30]_i_60_n_0\
    );
\Data_Out_int[30]_i_61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \Data_Out_int_reg[26]_i_44_0\,
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_52_n_4\,
      O => \Data_Out_int[30]_i_61_n_0\
    );
\Data_Out_int[30]_i_62\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^l_carry__2\(0),
      O => \Data_Out_int[30]_i_62_n_0\
    );
\Data_Out_int[30]_i_63\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_32_0\(1),
      O => \Data_Out_int[30]_i_63_n_0\
    );
\Data_Out_int[30]_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \axi_rdata_reg[11]\(0),
      I3 => \^l_carry__2\(0),
      I4 => \Data_Out_int_reg[30]_i_32_0\(0),
      O => \Data_Out_int[30]_i_64_n_0\
    );
\Data_Out_int[30]_i_65\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^l_carry__2\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(14),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(14),
      O => \Data_Out_int[30]_i_65_n_0\
    );
\Data_Out_int[30]_i_66\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]\(2),
      O => \Data_Out_int[30]_i_66_n_0\
    );
\Data_Out_int[30]_i_67\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_47_n_5\,
      O => \Data_Out_int[30]_i_67_n_0\
    );
\Data_Out_int[30]_i_68\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]\(2),
      I4 => \Data_Out_int_reg[30]_i_47_n_6\,
      O => \Data_Out_int[30]_i_68_n_0\
    );
\Data_Out_int[30]_i_69\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]\(2),
      I1 => p_1_in_0(0),
      I2 => DOADO(13),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(13),
      O => \Data_Out_int[30]_i_69_n_0\
    );
\Data_Out_int[30]_i_70\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]\(1),
      O => \Data_Out_int[30]_i_70_n_0\
    );
\Data_Out_int[30]_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_52_n_5\,
      O => \Data_Out_int[30]_i_71_n_0\
    );
\Data_Out_int[30]_i_72\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]\(1),
      I4 => \Data_Out_int_reg[30]_i_52_n_6\,
      O => \Data_Out_int[30]_i_72_n_0\
    );
\Data_Out_int[30]_i_73\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]\(1),
      I1 => p_1_in_0(0),
      I2 => DOADO(12),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(12),
      O => \Data_Out_int[30]_i_73_n_0\
    );
\Data_Out_int_reg[18]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_18_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[18]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_19\(0),
      CO(0) => \Data_Out_int_reg[18]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]_17\(0),
      DI(0) => \Data_Out_int_reg[22]_i_16_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[18]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_20\(0),
      S(3 downto 2) => B"00",
      S(1) => \L__972_carry_i_19\(0),
      S(0) => \Data_Out_int[18]_i_5_n_0\
    );
\Data_Out_int_reg[22]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_24_n_0\,
      CO(3) => \Data_Out_int_reg[22]_i_10_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_10_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_10_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[22]_i_7_n_5\,
      DI(2) => \Data_Out_int_reg[22]_i_7_n_6\,
      DI(1) => \Data_Out_int_reg[22]_i_7_n_7\,
      DI(0) => \Data_Out_int_reg[22]_i_19_n_4\,
      O(3) => \Data_Out_int_reg[22]_i_10_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_10_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_10_n_6\,
      O(0) => \Data_Out_int_reg[22]_i_10_n_7\,
      S(3) => \Data_Out_int[22]_i_25_n_0\,
      S(2) => \Data_Out_int[22]_i_26_n_0\,
      S(1) => \Data_Out_int[22]_i_27_n_0\,
      S(0) => \Data_Out_int[22]_i_28_n_0\
    );
\Data_Out_int_reg[22]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_29_n_0\,
      CO(3) => \Data_Out_int_reg[22]_i_13_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_13_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_13_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_13_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[22]_i_10_n_5\,
      DI(2) => \Data_Out_int_reg[22]_i_10_n_6\,
      DI(1) => \Data_Out_int_reg[22]_i_10_n_7\,
      DI(0) => \Data_Out_int_reg[22]_i_24_n_4\,
      O(3) => \Data_Out_int_reg[22]_i_13_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_13_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_13_n_6\,
      O(0) => \Data_Out_int_reg[22]_i_13_n_7\,
      S(3) => \Data_Out_int[22]_i_30_n_0\,
      S(2) => \Data_Out_int[22]_i_31_n_0\,
      S(1) => \Data_Out_int[22]_i_32_n_0\,
      S(0) => \Data_Out_int[22]_i_33_n_0\
    );
\Data_Out_int_reg[22]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_31_n_0\,
      CO(3) => \Data_Out_int_reg[22]_i_16_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_16_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_16_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_16_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[22]_i_13_n_5\,
      DI(2) => \Data_Out_int_reg[22]_i_13_n_6\,
      DI(1) => \Data_Out_int_reg[22]_i_13_n_7\,
      DI(0) => \Data_Out_int_reg[22]_i_29_n_4\,
      O(3) => \Data_Out_int_reg[22]_i_16_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_16_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_16_n_6\,
      O(0) => \Data_Out_int_reg[22]_i_16_n_7\,
      S(3) => \Data_Out_int[22]_i_34_n_0\,
      S(2) => \Data_Out_int[22]_i_35_n_0\,
      S(1) => \Data_Out_int[22]_i_36_n_0\,
      S(0) => \Data_Out_int[22]_i_37_n_0\
    );
\Data_Out_int_reg[22]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_38_n_0\,
      CO(3) => \Data_Out_int_reg[22]_i_19_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_19_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_19_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_34_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_34_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_34_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_54_n_4\,
      O(3) => \Data_Out_int_reg[22]_i_19_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_19_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_19_n_6\,
      O(0) => \Data_Out_int_reg[22]_i_19_n_7\,
      S(3) => \Data_Out_int[22]_i_39_n_0\,
      S(2) => \Data_Out_int[22]_i_40_n_0\,
      S(1) => \Data_Out_int[22]_i_41_n_0\,
      S(0) => \Data_Out_int[22]_i_42_n_0\
    );
\Data_Out_int_reg[22]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_43_n_0\,
      CO(3) => \Data_Out_int_reg[22]_i_24_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_24_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_24_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_24_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[22]_i_19_n_5\,
      DI(2) => \Data_Out_int_reg[22]_i_19_n_6\,
      DI(1) => \Data_Out_int_reg[22]_i_19_n_7\,
      DI(0) => \Data_Out_int_reg[22]_i_38_n_4\,
      O(3) => \Data_Out_int_reg[22]_i_24_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_24_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_24_n_6\,
      O(0) => \Data_Out_int_reg[22]_i_24_n_7\,
      S(3) => \Data_Out_int[22]_i_44_n_0\,
      S(2) => \Data_Out_int[22]_i_45_n_0\,
      S(1) => \Data_Out_int[22]_i_46_n_0\,
      S(0) => \Data_Out_int[22]_i_47_n_0\
    );
\Data_Out_int_reg[22]_i_29\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_46_n_0\,
      CO(3) => \Data_Out_int_reg[22]_i_29_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_29_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_29_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_29_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[22]_i_24_n_5\,
      DI(2) => \Data_Out_int_reg[22]_i_24_n_6\,
      DI(1) => \Data_Out_int_reg[22]_i_24_n_7\,
      DI(0) => \Data_Out_int_reg[22]_i_43_n_4\,
      O(3) => \Data_Out_int_reg[22]_i_29_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_29_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_29_n_6\,
      O(0) => \Data_Out_int_reg[22]_i_29_n_7\,
      S(3) => \Data_Out_int[22]_i_48_n_0\,
      S(2) => \Data_Out_int[22]_i_49_n_0\,
      S(1) => \Data_Out_int[22]_i_50_n_0\,
      S(0) => \Data_Out_int[22]_i_51_n_0\
    );
\Data_Out_int_reg[22]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_7_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[22]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_11\(0),
      CO(0) => \Data_Out_int_reg[22]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]_9\(0),
      DI(0) => \Data_Out_int_reg[26]_i_16_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[22]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_12\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[22]_i_11\(0),
      S(0) => \Data_Out_int[22]_i_9_n_0\
    );
\Data_Out_int_reg[22]_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_52_n_0\,
      CO(3) => \Data_Out_int_reg[22]_i_38_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_38_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_38_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_38_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_54_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_54_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_54_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_74_n_4\,
      O(3) => \Data_Out_int_reg[22]_i_38_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_38_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_38_n_6\,
      O(0) => \Data_Out_int_reg[22]_i_38_n_7\,
      S(3) => \Data_Out_int[22]_i_53_n_0\,
      S(2) => \Data_Out_int[22]_i_54_n_0\,
      S(1) => \Data_Out_int[22]_i_55_n_0\,
      S(0) => \Data_Out_int[22]_i_56_n_0\
    );
\Data_Out_int_reg[22]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_10_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[22]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_13\(0),
      CO(0) => \Data_Out_int_reg[22]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]_11\(0),
      DI(0) => \Data_Out_int_reg[22]_i_7_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[22]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_14\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[22]_i_14\(0),
      S(0) => \Data_Out_int[22]_i_12_n_0\
    );
\Data_Out_int_reg[22]_i_43\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_60_n_0\,
      CO(3) => \Data_Out_int_reg[22]_i_43_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_43_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_43_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_43_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[22]_i_38_n_5\,
      DI(2) => \Data_Out_int_reg[22]_i_38_n_6\,
      DI(1) => \Data_Out_int_reg[22]_i_38_n_7\,
      DI(0) => \Data_Out_int_reg[22]_i_52_n_4\,
      O(3) => \Data_Out_int_reg[22]_i_43_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_43_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_43_n_6\,
      O(0) => \Data_Out_int_reg[22]_i_43_n_7\,
      S(3) => \Data_Out_int[22]_i_57_n_0\,
      S(2) => \Data_Out_int[22]_i_58_n_0\,
      S(1) => \Data_Out_int[22]_i_59_n_0\,
      S(0) => \Data_Out_int[22]_i_60_n_0\
    );
\Data_Out_int_reg[22]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_13_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[22]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_15\(0),
      CO(0) => \Data_Out_int_reg[22]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]_13\(0),
      DI(0) => \Data_Out_int_reg[22]_i_10_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[22]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_16\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[22]_i_17\(0),
      S(0) => \Data_Out_int[22]_i_15_n_0\
    );
\Data_Out_int_reg[22]_i_52\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Data_Out_int_reg[22]_i_52_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_52_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_52_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_52_n_3\,
      CYINIT => \^slv_reg2_reg[15]_9\(0),
      DI(3) => \Data_Out_int_reg[26]_i_74_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_74_n_6\,
      DI(1) => \Data_Out_int[22]_i_61_n_0\,
      DI(0) => '0',
      O(3) => \Data_Out_int_reg[22]_i_52_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_52_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_52_n_6\,
      O(0) => \NLW_Data_Out_int_reg[22]_i_52_O_UNCONNECTED\(0),
      S(3) => \Data_Out_int[22]_i_62_n_0\,
      S(2) => \Data_Out_int[22]_i_63_n_0\,
      S(1) => \Data_Out_int[22]_i_64_n_0\,
      S(0) => '1'
    );
\Data_Out_int_reg[22]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_16_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[22]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_17\(0),
      CO(0) => \Data_Out_int_reg[22]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]_15\(0),
      DI(0) => \Data_Out_int_reg[22]_i_13_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[22]_i_6_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_18\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[18]_i_4\(0),
      S(0) => \Data_Out_int[22]_i_18_n_0\
    );
\Data_Out_int_reg[22]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_19_n_0\,
      CO(3) => \Data_Out_int_reg[22]_i_7_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_7_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_7_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_16_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_16_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_16_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_34_n_4\,
      O(3) => \Data_Out_int_reg[22]_i_7_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_7_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_7_n_6\,
      O(0) => \Data_Out_int_reg[22]_i_7_n_7\,
      S(3) => \Data_Out_int[22]_i_20_n_0\,
      S(2) => \Data_Out_int[22]_i_21_n_0\,
      S(1) => \Data_Out_int[22]_i_22_n_0\,
      S(0) => \Data_Out_int[22]_i_23_n_0\
    );
\Data_Out_int_reg[26]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_24_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_10_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_10_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_10_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_7_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_7_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_7_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_19_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_10_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_10_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_10_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_10_n_7\,
      S(3) => \Data_Out_int[26]_i_25_n_0\,
      S(2) => \Data_Out_int[26]_i_26_n_0\,
      S(1) => \Data_Out_int[26]_i_27_n_0\,
      S(0) => \Data_Out_int[26]_i_28_n_0\
    );
\Data_Out_int_reg[26]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_29_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_13_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_13_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_13_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_13_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_10_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_10_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_10_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_24_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_13_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_13_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_13_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_13_n_7\,
      S(3) => \Data_Out_int[26]_i_30_n_0\,
      S(2) => \Data_Out_int[26]_i_31_n_0\,
      S(1) => \Data_Out_int[26]_i_32_n_0\,
      S(0) => \Data_Out_int[26]_i_33_n_0\
    );
\Data_Out_int_reg[26]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_34_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_16_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_16_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_16_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_16_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_13_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_13_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_13_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_29_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_16_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_16_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_16_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_16_n_7\,
      S(3) => \Data_Out_int[26]_i_35_n_0\,
      S(2) => \Data_Out_int[26]_i_36_n_0\,
      S(1) => \Data_Out_int[26]_i_37_n_0\,
      S(0) => \Data_Out_int[26]_i_38_n_0\
    );
\Data_Out_int_reg[26]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_39_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_19_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_19_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_19_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[30]_i_27_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_27_n_6\,
      DI(1) => \Data_Out_int_reg[30]_i_27_n_7\,
      DI(0) => \Data_Out_int_reg[30]_i_42_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_19_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_19_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_19_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_19_n_7\,
      S(3) => \Data_Out_int[26]_i_40_n_0\,
      S(2) => \Data_Out_int[26]_i_41_n_0\,
      S(1) => \Data_Out_int[26]_i_42_n_0\,
      S(0) => \Data_Out_int[26]_i_43_n_0\
    );
\Data_Out_int_reg[26]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_44_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_24_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_24_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_24_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_24_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_19_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_19_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_19_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_39_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_24_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_24_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_24_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_24_n_7\,
      S(3) => \Data_Out_int[26]_i_45_n_0\,
      S(2) => \Data_Out_int[26]_i_46_n_0\,
      S(1) => \Data_Out_int[26]_i_47_n_0\,
      S(0) => \Data_Out_int[26]_i_48_n_0\
    );
\Data_Out_int_reg[26]_i_29\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_49_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_29_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_29_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_29_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_29_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_24_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_24_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_24_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_44_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_29_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_29_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_29_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_29_n_7\,
      S(3) => \Data_Out_int[26]_i_50_n_0\,
      S(2) => \Data_Out_int[26]_i_51_n_0\,
      S(1) => \Data_Out_int[26]_i_52_n_0\,
      S(0) => \Data_Out_int[26]_i_53_n_0\
    );
\Data_Out_int_reg[26]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_7_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[26]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_3\(0),
      CO(0) => \Data_Out_int_reg[26]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]\(0),
      DI(0) => \Data_Out_int_reg[30]_i_14_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[26]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_4\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[26]_i_11\(0),
      S(0) => \Data_Out_int[26]_i_9_n_0\
    );
\Data_Out_int_reg[26]_i_34\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_54_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_34_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_34_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_34_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_34_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_29_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_29_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_29_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_49_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_34_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_34_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_34_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_34_n_7\,
      S(3) => \Data_Out_int[26]_i_55_n_0\,
      S(2) => \Data_Out_int[26]_i_56_n_0\,
      S(1) => \Data_Out_int[26]_i_57_n_0\,
      S(0) => \Data_Out_int[26]_i_58_n_0\
    );
\Data_Out_int_reg[26]_i_39\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_59_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_39_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_39_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_39_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_39_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[30]_i_42_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_42_n_6\,
      DI(1) => \Data_Out_int_reg[30]_i_42_n_7\,
      DI(0) => \Data_Out_int_reg[30]_i_57_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_39_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_39_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_39_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_39_n_7\,
      S(3) => \Data_Out_int[26]_i_60_n_0\,
      S(2) => \Data_Out_int[26]_i_61_n_0\,
      S(1) => \Data_Out_int[26]_i_62_n_0\,
      S(0) => \Data_Out_int[26]_i_63_n_0\
    );
\Data_Out_int_reg[26]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_10_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[26]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_5\(0),
      CO(0) => \Data_Out_int_reg[26]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]_3\(0),
      DI(0) => \Data_Out_int_reg[26]_i_7_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[26]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_6\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[26]_i_14\(0),
      S(0) => \Data_Out_int[26]_i_12_n_0\
    );
\Data_Out_int_reg[26]_i_44\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_64_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_44_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_44_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_44_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_44_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_39_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_39_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_39_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_59_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_44_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_44_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_44_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_44_n_7\,
      S(3) => \Data_Out_int[26]_i_65_n_0\,
      S(2) => \Data_Out_int[26]_i_66_n_0\,
      S(1) => \Data_Out_int[26]_i_67_n_0\,
      S(0) => \Data_Out_int[26]_i_68_n_0\
    );
\Data_Out_int_reg[26]_i_49\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_69_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_49_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_49_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_49_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_49_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_44_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_44_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_44_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_64_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_49_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_49_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_49_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_49_n_7\,
      S(3) => \Data_Out_int[26]_i_70_n_0\,
      S(2) => \Data_Out_int[26]_i_71_n_0\,
      S(1) => \Data_Out_int[26]_i_72_n_0\,
      S(0) => \Data_Out_int[26]_i_73_n_0\
    );
\Data_Out_int_reg[26]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_13_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[26]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_7\(0),
      CO(0) => \Data_Out_int_reg[26]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]_5\(0),
      DI(0) => \Data_Out_int_reg[26]_i_10_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[26]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_8\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[26]_i_17\(0),
      S(0) => \Data_Out_int[26]_i_15_n_0\
    );
\Data_Out_int_reg[26]_i_54\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_74_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_54_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_54_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_54_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_54_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[26]_i_49_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_49_n_6\,
      DI(1) => \Data_Out_int_reg[26]_i_49_n_7\,
      DI(0) => \Data_Out_int_reg[26]_i_69_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_54_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_54_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_54_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_54_n_7\,
      S(3) => \Data_Out_int[26]_i_75_n_0\,
      S(2) => \Data_Out_int[26]_i_76_n_0\,
      S(1) => \Data_Out_int[26]_i_77_n_0\,
      S(0) => \Data_Out_int[26]_i_78_n_0\
    );
\Data_Out_int_reg[26]_i_59\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Data_Out_int_reg[26]_i_59_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_59_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_59_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_59_n_3\,
      CYINIT => \^slv_reg2_reg[15]\(0),
      DI(3) => \Data_Out_int_reg[30]_i_57_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_57_n_6\,
      DI(1) => \Data_Out_int[26]_i_79_n_0\,
      DI(0) => '0',
      O(3) => \Data_Out_int_reg[26]_i_59_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_59_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_59_n_6\,
      O(0) => \NLW_Data_Out_int_reg[26]_i_59_O_UNCONNECTED\(0),
      S(3) => \Data_Out_int[26]_i_80_n_0\,
      S(2) => \Data_Out_int[26]_i_81_n_0\,
      S(1) => \Data_Out_int[26]_i_82_n_0\,
      S(0) => '1'
    );
\Data_Out_int_reg[26]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_16_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[26]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_9\(0),
      CO(0) => \Data_Out_int_reg[26]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]_7\(0),
      DI(0) => \Data_Out_int_reg[26]_i_13_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[26]_i_6_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_10\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[22]_i_8\(0),
      S(0) => \Data_Out_int[26]_i_18_n_0\
    );
\Data_Out_int_reg[26]_i_64\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Data_Out_int_reg[26]_i_64_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_64_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_64_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_64_n_3\,
      CYINIT => \^slv_reg2_reg[15]_3\(0),
      DI(3) => \Data_Out_int_reg[26]_i_59_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_59_n_6\,
      DI(1) => \Data_Out_int[26]_i_83_n_0\,
      DI(0) => '0',
      O(3) => \Data_Out_int_reg[26]_i_64_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_64_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_64_n_6\,
      O(0) => \NLW_Data_Out_int_reg[26]_i_64_O_UNCONNECTED\(0),
      S(3) => \Data_Out_int[26]_i_84_n_0\,
      S(2) => \Data_Out_int[26]_i_85_n_0\,
      S(1) => \Data_Out_int[26]_i_86_n_0\,
      S(0) => '1'
    );
\Data_Out_int_reg[26]_i_69\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Data_Out_int_reg[26]_i_69_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_69_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_69_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_69_n_3\,
      CYINIT => \^slv_reg2_reg[15]_5\(0),
      DI(3) => \Data_Out_int_reg[26]_i_64_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_64_n_6\,
      DI(1) => \Data_Out_int[26]_i_87_n_0\,
      DI(0) => '0',
      O(3) => \Data_Out_int_reg[26]_i_69_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_69_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_69_n_6\,
      O(0) => \NLW_Data_Out_int_reg[26]_i_69_O_UNCONNECTED\(0),
      S(3) => \Data_Out_int[26]_i_88_n_0\,
      S(2) => \Data_Out_int[26]_i_89_n_0\,
      S(1) => \Data_Out_int[26]_i_90_n_0\,
      S(0) => '1'
    );
\Data_Out_int_reg[26]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_19_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_7_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_7_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_7_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[30]_i_14_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_14_n_6\,
      DI(1) => \Data_Out_int_reg[30]_i_14_n_7\,
      DI(0) => \Data_Out_int_reg[30]_i_27_n_4\,
      O(3) => \Data_Out_int_reg[26]_i_7_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_7_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_7_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_7_n_7\,
      S(3) => \Data_Out_int[26]_i_20_n_0\,
      S(2) => \Data_Out_int[26]_i_21_n_0\,
      S(1) => \Data_Out_int[26]_i_22_n_0\,
      S(0) => \Data_Out_int[26]_i_23_n_0\
    );
\Data_Out_int_reg[26]_i_74\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Data_Out_int_reg[26]_i_74_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_74_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_74_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_74_n_3\,
      CYINIT => \^slv_reg2_reg[15]_7\(0),
      DI(3) => \Data_Out_int_reg[26]_i_69_n_5\,
      DI(2) => \Data_Out_int_reg[26]_i_69_n_6\,
      DI(1) => \Data_Out_int[26]_i_91_n_0\,
      DI(0) => '0',
      O(3) => \Data_Out_int_reg[26]_i_74_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_74_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_74_n_6\,
      O(0) => \NLW_Data_Out_int_reg[26]_i_74_O_UNCONNECTED\(0),
      S(3) => \Data_Out_int[26]_i_92_n_0\,
      S(2) => \Data_Out_int[26]_i_93_n_0\,
      S(1) => \Data_Out_int[26]_i_94_n_0\,
      S(0) => '1'
    );
\Data_Out_int_reg[30]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_22_n_0\,
      CO(3) => \Data_Out_int_reg[30]_i_11_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_11_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_11_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[30]_i_8_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_8_n_6\,
      DI(1) => \Data_Out_int_reg[30]_i_8_n_7\,
      DI(0) => \Data_Out_int_reg[30]_i_17_n_4\,
      O(3) => \Data_Out_int_reg[30]_i_11_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_11_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_11_n_6\,
      O(0) => \Data_Out_int_reg[30]_i_11_n_7\,
      S(3) => \Data_Out_int[30]_i_23_n_0\,
      S(2) => \Data_Out_int[30]_i_24_n_0\,
      S(1) => \Data_Out_int[30]_i_25_n_0\,
      S(0) => \Data_Out_int[30]_i_26_n_0\
    );
\Data_Out_int_reg[30]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_27_n_0\,
      CO(3) => \Data_Out_int_reg[30]_i_14_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_14_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_14_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[30]_i_11_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_11_n_6\,
      DI(1) => \Data_Out_int_reg[30]_i_11_n_7\,
      DI(0) => \Data_Out_int_reg[30]_i_22_n_4\,
      O(3) => \Data_Out_int_reg[30]_i_14_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_14_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_14_n_6\,
      O(0) => \Data_Out_int_reg[30]_i_14_n_7\,
      S(3) => \Data_Out_int[30]_i_28_n_0\,
      S(2) => \Data_Out_int[30]_i_29_n_0\,
      S(1) => \Data_Out_int[30]_i_30_n_0\,
      S(0) => \Data_Out_int[30]_i_31_n_0\
    );
\Data_Out_int_reg[30]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_32_n_0\,
      CO(3) => \Data_Out_int_reg[30]_i_17_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_17_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_17_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_17_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \Data_Out_int_reg[30]_i_8_0\(1 downto 0),
      DI(1 downto 0) => \Data_Out_int_reg[30]_i_17_0\(3 downto 2),
      O(3) => \Data_Out_int_reg[30]_i_17_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_17_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_17_n_6\,
      O(0) => \Data_Out_int_reg[30]_i_17_n_7\,
      S(3) => \Data_Out_int[30]_i_33_n_0\,
      S(2) => \Data_Out_int[30]_i_34_n_0\,
      S(1) => \Data_Out_int[30]_i_35_n_0\,
      S(0) => \Data_Out_int[30]_i_36_n_0\
    );
\Data_Out_int_reg[30]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_37_n_0\,
      CO(3) => \Data_Out_int_reg[30]_i_22_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_22_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_22_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_22_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[30]_i_17_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_17_n_6\,
      DI(1) => \Data_Out_int_reg[30]_i_17_n_7\,
      DI(0) => \Data_Out_int_reg[30]_i_32_n_4\,
      O(3) => \Data_Out_int_reg[30]_i_22_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_22_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_22_n_6\,
      O(0) => \Data_Out_int_reg[30]_i_22_n_7\,
      S(3) => \Data_Out_int[30]_i_38_n_0\,
      S(2) => \Data_Out_int[30]_i_39_n_0\,
      S(1) => \Data_Out_int[30]_i_40_n_0\,
      S(0) => \Data_Out_int[30]_i_41_n_0\
    );
\Data_Out_int_reg[30]_i_27\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_42_n_0\,
      CO(3) => \Data_Out_int_reg[30]_i_27_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_27_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_27_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_27_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[30]_i_22_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_22_n_6\,
      DI(1) => \Data_Out_int_reg[30]_i_22_n_7\,
      DI(0) => \Data_Out_int_reg[30]_i_37_n_4\,
      O(3) => \Data_Out_int_reg[30]_i_27_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_27_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_27_n_6\,
      O(0) => \Data_Out_int_reg[30]_i_27_n_7\,
      S(3) => \Data_Out_int[30]_i_43_n_0\,
      S(2) => \Data_Out_int[30]_i_44_n_0\,
      S(1) => \Data_Out_int[30]_i_45_n_0\,
      S(0) => \Data_Out_int[30]_i_46_n_0\
    );
\Data_Out_int_reg[30]_i_32\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_47_n_0\,
      CO(3) => \Data_Out_int_reg[30]_i_32_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_32_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_32_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_32_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \Data_Out_int_reg[30]_i_17_0\(1 downto 0),
      DI(1 downto 0) => \Data_Out_int_reg[30]_i_32_0\(3 downto 2),
      O(3) => \Data_Out_int_reg[30]_i_32_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_32_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_32_n_6\,
      O(0) => \Data_Out_int_reg[30]_i_32_n_7\,
      S(3) => \Data_Out_int[30]_i_48_n_0\,
      S(2) => \Data_Out_int[30]_i_49_n_0\,
      S(1) => \Data_Out_int[30]_i_50_n_0\,
      S(0) => \Data_Out_int[30]_i_51_n_0\
    );
\Data_Out_int_reg[30]_i_37\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_52_n_0\,
      CO(3) => \Data_Out_int_reg[30]_i_37_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_37_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_37_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_37_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[30]_i_32_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_32_n_6\,
      DI(1) => \Data_Out_int_reg[30]_i_32_n_7\,
      DI(0) => \Data_Out_int_reg[30]_i_47_n_4\,
      O(3) => \Data_Out_int_reg[30]_i_37_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_37_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_37_n_6\,
      O(0) => \Data_Out_int_reg[30]_i_37_n_7\,
      S(3) => \Data_Out_int[30]_i_53_n_0\,
      S(2) => \Data_Out_int[30]_i_54_n_0\,
      S(1) => \Data_Out_int[30]_i_55_n_0\,
      S(0) => \Data_Out_int[30]_i_56_n_0\
    );
\Data_Out_int_reg[30]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_8_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[30]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]\(2),
      CO(0) => \Data_Out_int_reg[30]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^l_carry__2\(0),
      DI(0) => \Data_Out_int_reg[30]_i_4_0\(2),
      O(3 downto 1) => \NLW_Data_Out_int_reg[30]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_0\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[30]_i_12\(0),
      S(0) => \Data_Out_int[30]_i_10_n_0\
    );
\Data_Out_int_reg[30]_i_42\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_57_n_0\,
      CO(3) => \Data_Out_int_reg[30]_i_42_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_42_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_42_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_42_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[30]_i_37_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_37_n_6\,
      DI(1) => \Data_Out_int_reg[30]_i_37_n_7\,
      DI(0) => \Data_Out_int_reg[30]_i_52_n_4\,
      O(3) => \Data_Out_int_reg[30]_i_42_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_42_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_42_n_6\,
      O(0) => \Data_Out_int_reg[30]_i_42_n_7\,
      S(3) => \Data_Out_int[30]_i_58_n_0\,
      S(2) => \Data_Out_int[30]_i_59_n_0\,
      S(1) => \Data_Out_int[30]_i_60_n_0\,
      S(0) => \Data_Out_int[30]_i_61_n_0\
    );
\Data_Out_int_reg[30]_i_47\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Data_Out_int_reg[30]_i_47_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_47_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_47_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_47_n_3\,
      CYINIT => \^l_carry__2\(0),
      DI(3 downto 2) => \Data_Out_int_reg[30]_i_32_0\(1 downto 0),
      DI(1) => \Data_Out_int[30]_i_62_n_0\,
      DI(0) => '0',
      O(3) => \Data_Out_int_reg[30]_i_47_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_47_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_47_n_6\,
      O(0) => \NLW_Data_Out_int_reg[30]_i_47_O_UNCONNECTED\(0),
      S(3) => \Data_Out_int[30]_i_63_n_0\,
      S(2) => \Data_Out_int[30]_i_64_n_0\,
      S(1) => \Data_Out_int[30]_i_65_n_0\,
      S(0) => '1'
    );
\Data_Out_int_reg[30]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_11_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[30]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]\(1),
      CO(0) => \Data_Out_int_reg[30]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]\(2),
      DI(0) => \Data_Out_int_reg[30]_i_8_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[30]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_1\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[30]_i_15\(0),
      S(0) => \Data_Out_int[30]_i_13_n_0\
    );
\Data_Out_int_reg[30]_i_52\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Data_Out_int_reg[30]_i_52_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_52_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_52_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_52_n_3\,
      CYINIT => \^slv_reg2_reg[15]\(2),
      DI(3) => \Data_Out_int_reg[30]_i_47_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_47_n_6\,
      DI(1) => \Data_Out_int[30]_i_66_n_0\,
      DI(0) => '0',
      O(3) => \Data_Out_int_reg[30]_i_52_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_52_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_52_n_6\,
      O(0) => \NLW_Data_Out_int_reg[30]_i_52_O_UNCONNECTED\(0),
      S(3) => \Data_Out_int[30]_i_67_n_0\,
      S(2) => \Data_Out_int[30]_i_68_n_0\,
      S(1) => \Data_Out_int[30]_i_69_n_0\,
      S(0) => '1'
    );
\Data_Out_int_reg[30]_i_57\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Data_Out_int_reg[30]_i_57_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_57_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_57_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_57_n_3\,
      CYINIT => \^slv_reg2_reg[15]\(1),
      DI(3) => \Data_Out_int_reg[30]_i_52_n_5\,
      DI(2) => \Data_Out_int_reg[30]_i_52_n_6\,
      DI(1) => \Data_Out_int[30]_i_70_n_0\,
      DI(0) => '0',
      O(3) => \Data_Out_int_reg[30]_i_57_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_57_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_57_n_6\,
      O(0) => \NLW_Data_Out_int_reg[30]_i_57_O_UNCONNECTED\(0),
      S(3) => \Data_Out_int[30]_i_71_n_0\,
      S(2) => \Data_Out_int[30]_i_72_n_0\,
      S(1) => \Data_Out_int[30]_i_73_n_0\,
      S(0) => '1'
    );
\Data_Out_int_reg[30]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_14_n_0\,
      CO(3 downto 2) => \NLW_Data_Out_int_reg[30]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]\(0),
      CO(0) => \Data_Out_int_reg[30]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]\(1),
      DI(0) => \Data_Out_int_reg[30]_i_11_n_4\,
      O(3 downto 1) => \NLW_Data_Out_int_reg[30]_i_6_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_2\(0),
      S(3 downto 2) => B"00",
      S(1) => \Data_Out_int[26]_i_8\(0),
      S(0) => \Data_Out_int[30]_i_16_n_0\
    );
\Data_Out_int_reg[30]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int[30]_i_3\(0),
      CO(3 downto 1) => \NLW_Data_Out_int_reg[30]_i_7_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^l_carry__2\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Data_Out_int_reg[30]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Data_Out_int_reg[30]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[30]_i_17_n_0\,
      CO(3) => \Data_Out_int_reg[30]_i_8_n_0\,
      CO(2) => \Data_Out_int_reg[30]_i_8_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_8_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \Data_Out_int_reg[30]_i_4_0\(1 downto 0),
      DI(1 downto 0) => \Data_Out_int_reg[30]_i_8_0\(3 downto 2),
      O(3) => \Data_Out_int_reg[30]_i_8_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_8_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_8_n_6\,
      O(0) => \Data_Out_int_reg[30]_i_8_n_7\,
      S(3) => \Data_Out_int[30]_i_18_n_0\,
      S(2) => \Data_Out_int[30]_i_19_n_0\,
      S(1) => \Data_Out_int[30]_i_20_n_0\,
      S(0) => \Data_Out_int[30]_i_21_n_0\
    );
\L__972_carry__0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_2_n_0\,
      CO(3) => \L__972_carry__0_i_1_n_0\,
      CO(2) => \L__972_carry__0_i_1_n_1\,
      CO(1) => \L__972_carry__0_i_1_n_2\,
      CO(0) => \L__972_carry__0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \L__972_carry__0_i_6_n_5\,
      DI(2) => \L__972_carry__0_i_6_n_6\,
      DI(1) => \L__972_carry__0_i_6_n_7\,
      DI(0) => \L__972_carry_i_12_n_4\,
      O(3 downto 0) => \^ampl_sig_reg[6]_0\(3 downto 0),
      S(3) => \L__972_carry__0_i_7_n_0\,
      S(2) => \L__972_carry__0_i_8_n_0\,
      S(1) => \L__972_carry__0_i_9_n_0\,
      S(0) => \L__972_carry__0_i_10_n_0\
    );
\L__972_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry_i_12_n_4\,
      O => \L__972_carry__0_i_10_n_0\
    );
\L__972_carry__0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_26_n_0\,
      CO(3) => \L__972_carry__0_i_11_n_0\,
      CO(2) => \L__972_carry__0_i_11_n_1\,
      CO(1) => \L__972_carry__0_i_11_n_2\,
      CO(0) => \L__972_carry__0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \L__972_carry_i_36_n_5\,
      DI(2) => \L__972_carry_i_36_n_6\,
      DI(1) => \L__972_carry_i_36_n_7\,
      DI(0) => \L__972_carry_i_41_n_4\,
      O(3) => \L__972_carry__0_i_11_n_4\,
      O(2) => \L__972_carry__0_i_11_n_5\,
      O(1) => \L__972_carry__0_i_11_n_6\,
      O(0) => \L__972_carry__0_i_11_n_7\,
      S(3) => \L__972_carry__0_i_16_n_0\,
      S(2) => \L__972_carry__0_i_17_n_0\,
      S(1) => \L__972_carry__0_i_18_n_0\,
      S(0) => \L__972_carry__0_i_19_n_0\
    );
\L__972_carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry__0_i_11_n_5\,
      O => \L__972_carry__0_i_12_n_0\
    );
\L__972_carry__0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry__0_i_11_n_6\,
      O => \L__972_carry__0_i_13_n_0\
    );
\L__972_carry__0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry__0_i_11_n_7\,
      O => \L__972_carry__0_i_14_n_0\
    );
\L__972_carry__0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_26_n_4\,
      O => \L__972_carry__0_i_15_n_0\
    );
\L__972_carry__0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_36_n_5\,
      O => \L__972_carry__0_i_16_n_0\
    );
\L__972_carry__0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_36_n_6\,
      O => \L__972_carry__0_i_17_n_0\
    );
\L__972_carry__0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \L__972_carry_i_18_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_36_n_7\,
      O => \L__972_carry__0_i_18_n_0\
    );
\L__972_carry__0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_41_n_4\,
      O => \L__972_carry__0_i_19_n_0\
    );
\L__972_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^ampl_sig_reg[6]_0\(3),
      O => \ampl_sig_reg[7]_2\(3)
    );
\L__972_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^ampl_sig_reg[6]_0\(2),
      O => \ampl_sig_reg[7]_2\(2)
    );
\L__972_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^ampl_sig_reg[6]_0\(1),
      O => \ampl_sig_reg[7]_2\(1)
    );
\L__972_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^ampl_sig_reg[6]_0\(0),
      O => \ampl_sig_reg[7]_2\(0)
    );
\L__972_carry__0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_12_n_0\,
      CO(3) => \L__972_carry__0_i_6_n_0\,
      CO(2) => \L__972_carry__0_i_6_n_1\,
      CO(1) => \L__972_carry__0_i_6_n_2\,
      CO(0) => \L__972_carry__0_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \L__972_carry__0_i_11_n_5\,
      DI(2) => \L__972_carry__0_i_11_n_6\,
      DI(1) => \L__972_carry__0_i_11_n_7\,
      DI(0) => \L__972_carry_i_26_n_4\,
      O(3) => \L__972_carry__0_i_6_n_4\,
      O(2) => \L__972_carry__0_i_6_n_5\,
      O(1) => \L__972_carry__0_i_6_n_6\,
      O(0) => \L__972_carry__0_i_6_n_7\,
      S(3) => \L__972_carry__0_i_12_n_0\,
      S(2) => \L__972_carry__0_i_13_n_0\,
      S(1) => \L__972_carry__0_i_14_n_0\,
      S(0) => \L__972_carry__0_i_15_n_0\
    );
\L__972_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry__0_i_6_n_5\,
      O => \L__972_carry__0_i_7_n_0\
    );
\L__972_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry__0_i_6_n_6\,
      O => \L__972_carry__0_i_8_n_0\
    );
\L__972_carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry__0_i_6_n_7\,
      O => \L__972_carry__0_i_9_n_0\
    );
\L__972_carry__1_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry__0_i_1_n_0\,
      CO(3) => \L__972_carry__1_i_1_n_0\,
      CO(2) => \L__972_carry__1_i_1_n_1\,
      CO(1) => \L__972_carry__1_i_1_n_2\,
      CO(0) => \L__972_carry__1_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \L__972_carry__1_i_6_n_5\,
      DI(2) => \L__972_carry__1_i_6_n_6\,
      DI(1) => \L__972_carry__1_i_6_n_7\,
      DI(0) => \L__972_carry__0_i_6_n_4\,
      O(3 downto 0) => \^slv_reg2_reg[10]\(3 downto 0),
      S(3) => \L__972_carry__1_i_7_n_0\,
      S(2) => \L__972_carry__1_i_8_n_0\,
      S(1) => \L__972_carry__1_i_9_n_0\,
      S(0) => \L__972_carry__1_i_10_n_0\
    );
\L__972_carry__1_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry__0_i_6_n_4\,
      O => \L__972_carry__1_i_10_n_0\
    );
\L__972_carry__1_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_21_n_5\,
      O => \L__972_carry__1_i_11_n_0\
    );
\L__972_carry__1_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_21_n_6\,
      O => \L__972_carry__1_i_12_n_0\
    );
\L__972_carry__1_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_21_n_7\,
      O => \L__972_carry__1_i_13_n_0\
    );
\L__972_carry__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry__0_i_11_n_4\,
      O => \L__972_carry__1_i_14_n_0\
    );
\L__972_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg2_reg[10]\(3),
      O => \ampl_sig_reg[11]_2\(3)
    );
\L__972_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg2_reg[10]\(2),
      O => \ampl_sig_reg[11]_2\(2)
    );
\L__972_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg2_reg[10]\(1),
      O => \ampl_sig_reg[11]_2\(1)
    );
\L__972_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg2_reg[10]\(0),
      O => \ampl_sig_reg[11]_2\(0)
    );
\L__972_carry__1_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry__0_i_6_n_0\,
      CO(3) => \L__972_carry__1_i_6_n_0\,
      CO(2) => \L__972_carry__1_i_6_n_1\,
      CO(1) => \L__972_carry__1_i_6_n_2\,
      CO(0) => \L__972_carry__1_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \L__972_carry_i_21_n_5\,
      DI(2) => \L__972_carry_i_21_n_6\,
      DI(1) => \L__972_carry_i_21_n_7\,
      DI(0) => \L__972_carry__0_i_11_n_4\,
      O(3) => \L__972_carry__1_i_6_n_4\,
      O(2) => \L__972_carry__1_i_6_n_5\,
      O(1) => \L__972_carry__1_i_6_n_6\,
      O(0) => \L__972_carry__1_i_6_n_7\,
      S(3) => \L__972_carry__1_i_11_n_0\,
      S(2) => \L__972_carry__1_i_12_n_0\,
      S(1) => \L__972_carry__1_i_13_n_0\,
      S(0) => \L__972_carry__1_i_14_n_0\
    );
\L__972_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry__1_i_6_n_5\,
      O => \L__972_carry__1_i_7_n_0\
    );
\L__972_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry__1_i_6_n_6\,
      O => \L__972_carry__1_i_8_n_0\
    );
\L__972_carry__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry__1_i_6_n_7\,
      O => \L__972_carry__1_i_9_n_0\
    );
\L__972_carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry__1_i_1_n_0\,
      CO(3) => \L__972_carry__2_i_1_n_0\,
      CO(2) => \L__972_carry__2_i_1_n_1\,
      CO(1) => \L__972_carry__2_i_1_n_2\,
      CO(0) => \L__972_carry__2_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \L__972_carry_i_9_n_5\,
      DI(2) => \L__972_carry_i_9_n_6\,
      DI(1) => \L__972_carry_i_9_n_7\,
      DI(0) => \L__972_carry__1_i_6_n_4\,
      O(3 downto 0) => \^slv_reg2_reg[14]\(3 downto 0),
      S(3) => \L__972_carry__2_i_6_n_0\,
      S(2) => \L__972_carry__2_i_7_n_0\,
      S(1) => \L__972_carry__2_i_8_n_0\,
      S(0) => \L__972_carry__2_i_9_n_0\
    );
\L__972_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg2_reg[14]\(3),
      O => \slv_reg2_reg[15]_24\(3)
    );
\L__972_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg2_reg[14]\(2),
      O => \slv_reg2_reg[15]_24\(2)
    );
\L__972_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg2_reg[14]\(1),
      O => \slv_reg2_reg[15]_24\(1)
    );
\L__972_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg2_reg[14]\(0),
      O => \slv_reg2_reg[15]_24\(0)
    );
\L__972_carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry_i_9_n_5\,
      O => \L__972_carry__2_i_6_n_0\
    );
\L__972_carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry_i_9_n_6\,
      O => \L__972_carry__2_i_7_n_0\
    );
\L__972_carry__2_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry_i_9_n_7\,
      O => \L__972_carry__2_i_8_n_0\
    );
\L__972_carry__2_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry__1_i_6_n_4\,
      O => \L__972_carry__2_i_9_n_0\
    );
\L__972_carry_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry__2_i_1_n_0\,
      CO(3 downto 2) => \NLW_L__972_carry_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_21\(0),
      CO(0) => \L__972_carry_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]_21\(1),
      DI(0) => \L__972_carry_i_9_n_4\,
      O(3 downto 1) => \NLW_L__972_carry_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_23\(0),
      S(3 downto 2) => B"00",
      S(1) => \L__972_carry__3_i_1\(0),
      S(0) => \L__972_carry_i_11_n_0\
    );
\L__972_carry_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry_i_9_n_4\,
      O => \L__972_carry_i_11_n_0\
    );
\L__972_carry_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \L__972_carry_i_12_n_0\,
      CO(2) => \L__972_carry_i_12_n_1\,
      CO(1) => \L__972_carry_i_12_n_2\,
      CO(0) => \L__972_carry_i_12_n_3\,
      CYINIT => \^slv_reg2_reg[15]_19\(0),
      DI(3) => \L__972_carry_i_26_n_5\,
      DI(2) => \L__972_carry_i_26_n_6\,
      DI(1) => \L__972_carry_i_27_n_0\,
      DI(0) => '0',
      O(3) => \L__972_carry_i_12_n_4\,
      O(2) => \L__972_carry_i_12_n_5\,
      O(1) => \L__972_carry_i_12_n_6\,
      O(0) => \NLW_L__972_carry_i_12_O_UNCONNECTED\(0),
      S(3) => \L__972_carry_i_28_n_0\,
      S(2) => \L__972_carry_i_29_n_0\,
      S(1) => \L__972_carry_i_30_n_0\,
      S(0) => '1'
    );
\L__972_carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_21\(1),
      O => \L__972_carry_i_13_n_0\
    );
\L__972_carry_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry_i_12_n_5\,
      O => \L__972_carry_i_14_n_0\
    );
\L__972_carry_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(1),
      I4 => \L__972_carry_i_12_n_6\,
      O => \L__972_carry_i_15_n_0\
    );
\L__972_carry_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_21\(1),
      I1 => p_1_in_0(0),
      I2 => DOADO(1),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(1),
      O => \L__972_carry_i_16_n_0\
    );
\L__972_carry_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[11]_0\(0),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^wavesel\,
      O => \L__972_carry_i_17_n_0\
    );
\L__972_carry_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_21_n_0\,
      CO(3) => \L__972_carry_i_18_n_0\,
      CO(2) => \L__972_carry_i_18_n_1\,
      CO(1) => \L__972_carry_i_18_n_2\,
      CO(0) => \L__972_carry_i_18_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[22]_i_16_n_5\,
      DI(2) => \Data_Out_int_reg[22]_i_16_n_6\,
      DI(1) => \Data_Out_int_reg[22]_i_16_n_7\,
      DI(0) => \L__972_carry_i_31_n_4\,
      O(3) => \L__972_carry_i_18_n_4\,
      O(2) => \L__972_carry_i_18_n_5\,
      O(1) => \L__972_carry_i_18_n_6\,
      O(0) => \L__972_carry_i_18_n_7\,
      S(3) => \L__972_carry_i_32_n_0\,
      S(2) => \L__972_carry_i_33_n_0\,
      S(1) => \L__972_carry_i_34_n_0\,
      S(0) => \L__972_carry_i_35_n_0\
    );
\L__972_carry_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \L__972_carry_i_2_n_0\,
      CO(2) => \L__972_carry_i_2_n_1\,
      CO(1) => \L__972_carry_i_2_n_2\,
      CO(0) => \L__972_carry_i_2_n_3\,
      CYINIT => \^slv_reg2_reg[15]_21\(1),
      DI(3) => \L__972_carry_i_12_n_5\,
      DI(2) => \L__972_carry_i_12_n_6\,
      DI(1) => \L__972_carry_i_13_n_0\,
      DI(0) => '0',
      O(3 downto 1) => \^slv_reg0_reg[0]_rep__1\(3 downto 1),
      O(0) => \NLW_L__972_carry_i_2_O_UNCONNECTED\(0),
      S(3) => \L__972_carry_i_14_n_0\,
      S(2) => \L__972_carry_i_15_n_0\,
      S(1) => \L__972_carry_i_16_n_0\,
      S(0) => '1'
    );
\L__972_carry_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(15),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(15),
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_18_n_4\,
      O => \L__972_carry_i_20_n_0\
    );
\L__972_carry_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry__0_i_11_n_0\,
      CO(3) => \L__972_carry_i_21_n_0\,
      CO(2) => \L__972_carry_i_21_n_1\,
      CO(1) => \L__972_carry_i_21_n_2\,
      CO(0) => \L__972_carry_i_21_n_3\,
      CYINIT => '0',
      DI(3) => \L__972_carry_i_31_n_5\,
      DI(2) => \L__972_carry_i_31_n_6\,
      DI(1) => \L__972_carry_i_31_n_7\,
      DI(0) => \L__972_carry_i_36_n_4\,
      O(3) => \L__972_carry_i_21_n_4\,
      O(2) => \L__972_carry_i_21_n_5\,
      O(1) => \L__972_carry_i_21_n_6\,
      O(0) => \L__972_carry_i_21_n_7\,
      S(3) => \L__972_carry_i_37_n_0\,
      S(2) => \L__972_carry_i_38_n_0\,
      S(1) => \L__972_carry_i_39_n_0\,
      S(0) => \L__972_carry_i_40_n_0\
    );
\L__972_carry_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_18_n_5\,
      O => \L__972_carry_i_22_n_0\
    );
\L__972_carry_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_18_n_6\,
      O => \L__972_carry_i_23_n_0\
    );
\L__972_carry_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_18_n_7\,
      O => \L__972_carry_i_24_n_0\
    );
\L__972_carry_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_21_n_4\,
      O => \L__972_carry_i_25_n_0\
    );
\L__972_carry_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \L__972_carry_i_26_n_0\,
      CO(2) => \L__972_carry_i_26_n_1\,
      CO(1) => \L__972_carry_i_26_n_2\,
      CO(0) => \L__972_carry_i_26_n_3\,
      CYINIT => \^slv_reg2_reg[15]_17\(0),
      DI(3) => \L__972_carry_i_41_n_5\,
      DI(2) => \L__972_carry_i_41_n_6\,
      DI(1) => \L__972_carry_i_42_n_0\,
      DI(0) => '0',
      O(3) => \L__972_carry_i_26_n_4\,
      O(2) => \L__972_carry_i_26_n_5\,
      O(1) => \L__972_carry_i_26_n_6\,
      O(0) => \NLW_L__972_carry_i_26_O_UNCONNECTED\(0),
      S(3) => \L__972_carry_i_43_n_0\,
      S(2) => \L__972_carry_i_44_n_0\,
      S(1) => \L__972_carry_i_45_n_0\,
      S(0) => '1'
    );
\L__972_carry_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_19\(0),
      O => \L__972_carry_i_27_n_0\
    );
\L__972_carry_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_26_n_5\,
      O => \L__972_carry_i_28_n_0\
    );
\L__972_carry_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_19\(0),
      I4 => \L__972_carry_i_26_n_6\,
      O => \L__972_carry_i_29_n_0\
    );
\L__972_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_21\(0),
      O => \^slv_reg0_reg[0]_rep__1\(0)
    );
\L__972_carry_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_19\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(2),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(2),
      O => \L__972_carry_i_30_n_0\
    );
\L__972_carry_i_31\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_36_n_0\,
      CO(3) => \L__972_carry_i_31_n_0\,
      CO(2) => \L__972_carry_i_31_n_1\,
      CO(1) => \L__972_carry_i_31_n_2\,
      CO(0) => \L__972_carry_i_31_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[22]_i_29_n_5\,
      DI(2) => \Data_Out_int_reg[22]_i_29_n_6\,
      DI(1) => \Data_Out_int_reg[22]_i_29_n_7\,
      DI(0) => \L__972_carry_i_46_n_4\,
      O(3) => \L__972_carry_i_31_n_4\,
      O(2) => \L__972_carry_i_31_n_5\,
      O(1) => \L__972_carry_i_31_n_6\,
      O(0) => \L__972_carry_i_31_n_7\,
      S(3) => \L__972_carry_i_47_n_0\,
      S(2) => \L__972_carry_i_48_n_0\,
      S(1) => \L__972_carry_i_49_n_0\,
      S(0) => \L__972_carry_i_50_n_0\
    );
\L__972_carry_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(14),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(14),
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \Data_Out_int_reg[22]_i_16_n_5\,
      O => \L__972_carry_i_32_n_0\
    );
\L__972_carry_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(13),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(13),
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \Data_Out_int_reg[22]_i_16_n_6\,
      O => \L__972_carry_i_33_n_0\
    );
\L__972_carry_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(12),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => ampl_sig_reg(12),
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \Data_Out_int_reg[22]_i_16_n_7\,
      O => \L__972_carry_i_34_n_0\
    );
\L__972_carry_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_31_n_4\,
      O => \L__972_carry_i_35_n_0\
    );
\L__972_carry_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_41_n_0\,
      CO(3) => \L__972_carry_i_36_n_0\,
      CO(2) => \L__972_carry_i_36_n_1\,
      CO(1) => \L__972_carry_i_36_n_2\,
      CO(0) => \L__972_carry_i_36_n_3\,
      CYINIT => '0',
      DI(3) => \L__972_carry_i_46_n_5\,
      DI(2) => \L__972_carry_i_46_n_6\,
      DI(1) => \L__972_carry_i_46_n_7\,
      DI(0) => \L__972_carry_i_51_n_4\,
      O(3) => \L__972_carry_i_36_n_4\,
      O(2) => \L__972_carry_i_36_n_5\,
      O(1) => \L__972_carry_i_36_n_6\,
      O(0) => \L__972_carry_i_36_n_7\,
      S(3) => \L__972_carry_i_52_n_0\,
      S(2) => \L__972_carry_i_53_n_0\,
      S(1) => \L__972_carry_i_54_n_0\,
      S(0) => \L__972_carry_i_55_n_0\
    );
\L__972_carry_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_31_n_5\,
      O => \L__972_carry_i_37_n_0\
    );
\L__972_carry_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_31_n_6\,
      O => \L__972_carry_i_38_n_0\
    );
\L__972_carry_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_31_n_7\,
      O => \L__972_carry_i_39_n_0\
    );
\L__972_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg0_reg[0]_rep__1\(3),
      O => \ampl_sig_reg[3]_0\(3)
    );
\L__972_carry_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_36_n_4\,
      O => \L__972_carry_i_40_n_0\
    );
\L__972_carry_i_41\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \L__972_carry_i_41_n_0\,
      CO(2) => \L__972_carry_i_41_n_1\,
      CO(1) => \L__972_carry_i_41_n_2\,
      CO(0) => \L__972_carry_i_41_n_3\,
      CYINIT => \^slv_reg2_reg[15]_15\(0),
      DI(3) => \L__972_carry_i_51_n_5\,
      DI(2) => \L__972_carry_i_51_n_6\,
      DI(1) => \L__972_carry_i_56_n_0\,
      DI(0) => '0',
      O(3) => \L__972_carry_i_41_n_4\,
      O(2) => \L__972_carry_i_41_n_5\,
      O(1) => \L__972_carry_i_41_n_6\,
      O(0) => \NLW_L__972_carry_i_41_O_UNCONNECTED\(0),
      S(3) => \L__972_carry_i_57_n_0\,
      S(2) => \L__972_carry_i_58_n_0\,
      S(1) => \L__972_carry_i_59_n_0\,
      S(0) => '1'
    );
\L__972_carry_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_17\(0),
      O => \L__972_carry_i_42_n_0\
    );
\L__972_carry_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_41_n_5\,
      O => \L__972_carry_i_43_n_0\
    );
\L__972_carry_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_17\(0),
      I4 => \L__972_carry_i_41_n_6\,
      O => \L__972_carry_i_44_n_0\
    );
\L__972_carry_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_17\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(3),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(3),
      O => \L__972_carry_i_45_n_0\
    );
\L__972_carry_i_46\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_51_n_0\,
      CO(3) => \L__972_carry_i_46_n_0\,
      CO(2) => \L__972_carry_i_46_n_1\,
      CO(1) => \L__972_carry_i_46_n_2\,
      CO(0) => \L__972_carry_i_46_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Out_int_reg[22]_i_43_n_5\,
      DI(2) => \Data_Out_int_reg[22]_i_43_n_6\,
      DI(1) => \Data_Out_int_reg[22]_i_43_n_7\,
      DI(0) => \L__972_carry_i_60_n_4\,
      O(3) => \L__972_carry_i_46_n_4\,
      O(2) => \L__972_carry_i_46_n_5\,
      O(1) => \L__972_carry_i_46_n_6\,
      O(0) => \L__972_carry_i_46_n_7\,
      S(3) => \L__972_carry_i_61_n_0\,
      S(2) => \L__972_carry_i_62_n_0\,
      S(1) => \L__972_carry_i_63_n_0\,
      S(0) => \L__972_carry_i_64_n_0\
    );
\L__972_carry_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(10),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(10),
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \Data_Out_int_reg[22]_i_29_n_5\,
      O => \L__972_carry_i_47_n_0\
    );
\L__972_carry_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \Data_Out_int_reg[22]_i_29_n_6\,
      O => \L__972_carry_i_48_n_0\
    );
\L__972_carry_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(8),
      I1 => \L__972_carry_i_18_0\,
      I2 => ampl_sig_reg(8),
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \Data_Out_int_reg[22]_i_29_n_7\,
      O => \L__972_carry_i_49_n_0\
    );
\L__972_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg0_reg[0]_rep__1\(2),
      O => \ampl_sig_reg[3]_0\(2)
    );
\L__972_carry_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \L__972_carry_i_46_n_4\,
      O => \L__972_carry_i_50_n_0\
    );
\L__972_carry_i_51\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \L__972_carry_i_51_n_0\,
      CO(2) => \L__972_carry_i_51_n_1\,
      CO(1) => \L__972_carry_i_51_n_2\,
      CO(0) => \L__972_carry_i_51_n_3\,
      CYINIT => \^slv_reg2_reg[15]_13\(0),
      DI(3) => \L__972_carry_i_60_n_5\,
      DI(2) => \L__972_carry_i_60_n_6\,
      DI(1) => \L__972_carry_i_65_n_0\,
      DI(0) => '0',
      O(3) => \L__972_carry_i_51_n_4\,
      O(2) => \L__972_carry_i_51_n_5\,
      O(1) => \L__972_carry_i_51_n_6\,
      O(0) => \NLW_L__972_carry_i_51_O_UNCONNECTED\(0),
      S(3) => \L__972_carry_i_66_n_0\,
      S(2) => \L__972_carry_i_67_n_0\,
      S(1) => \L__972_carry_i_68_n_0\,
      S(0) => '1'
    );
\L__972_carry_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \L__972_carry_i_46_n_5\,
      O => \L__972_carry_i_52_n_0\
    );
\L__972_carry_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \L__972_carry_i_46_n_6\,
      O => \L__972_carry_i_53_n_0\
    );
\L__972_carry_i_54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \L__972_carry_i_18_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \L__972_carry_i_46_n_7\,
      O => \L__972_carry_i_54_n_0\
    );
\L__972_carry_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \L__972_carry_i_51_n_4\,
      O => \L__972_carry_i_55_n_0\
    );
\L__972_carry_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_15\(0),
      O => \L__972_carry_i_56_n_0\
    );
\L__972_carry_i_57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \L__972_carry_i_51_n_5\,
      O => \L__972_carry_i_57_n_0\
    );
\L__972_carry_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_15\(0),
      I4 => \L__972_carry_i_51_n_6\,
      O => \L__972_carry_i_58_n_0\
    );
\L__972_carry_i_59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_15\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(4),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(4),
      O => \L__972_carry_i_59_n_0\
    );
\L__972_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_21\(0),
      I4 => \^slv_reg0_reg[0]_rep__1\(1),
      O => \ampl_sig_reg[3]_0\(1)
    );
\L__972_carry_i_60\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \L__972_carry_i_60_n_0\,
      CO(2) => \L__972_carry_i_60_n_1\,
      CO(1) => \L__972_carry_i_60_n_2\,
      CO(0) => \L__972_carry_i_60_n_3\,
      CYINIT => \^slv_reg2_reg[15]_11\(0),
      DI(3) => \Data_Out_int_reg[22]_i_52_n_5\,
      DI(2) => \Data_Out_int_reg[22]_i_52_n_6\,
      DI(1) => \L__972_carry_i_69_n_0\,
      DI(0) => '0',
      O(3) => \L__972_carry_i_60_n_4\,
      O(2) => \L__972_carry_i_60_n_5\,
      O(1) => \L__972_carry_i_60_n_6\,
      O(0) => \NLW_L__972_carry_i_60_O_UNCONNECTED\(0),
      S(3) => \L__972_carry_i_70_n_0\,
      S(2) => \L__972_carry_i_71_n_0\,
      S(1) => \L__972_carry_i_72_n_0\,
      S(0) => '1'
    );
\L__972_carry_i_61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_43_n_5\,
      O => \L__972_carry_i_61_n_0\
    );
\L__972_carry_i_62\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_43_n_6\,
      O => \L__972_carry_i_62_n_0\
    );
\L__972_carry_i_63\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(4),
      I1 => \L__972_carry_i_18_0\,
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \Data_Out_int_reg[22]_i_43_n_7\,
      O => \L__972_carry_i_63_n_0\
    );
\L__972_carry_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \L__972_carry_i_18_0\,
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \L__972_carry_i_60_n_4\,
      O => \L__972_carry_i_64_n_0\
    );
\L__972_carry_i_65\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_13\(0),
      O => \L__972_carry_i_65_n_0\
    );
\L__972_carry_i_66\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \L__972_carry_i_60_n_5\,
      O => \L__972_carry_i_66_n_0\
    );
\L__972_carry_i_67\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_13\(0),
      I4 => \L__972_carry_i_60_n_6\,
      O => \L__972_carry_i_67_n_0\
    );
\L__972_carry_i_68\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_13\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(5),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(5),
      O => \L__972_carry_i_68_n_0\
    );
\L__972_carry_i_69\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => \^slv_reg2_reg[15]_11\(0),
      O => \L__972_carry_i_69_n_0\
    );
\L__972_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_21\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(0),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(0),
      O => \ampl_sig_reg[3]_0\(0)
    );
\L__972_carry_i_70\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B84747B8"
    )
        port map (
      I0 => \L_carry__2_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_52_n_5\,
      O => \L__972_carry_i_70_n_0\
    );
\L__972_carry_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CA3535CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      I3 => \^slv_reg2_reg[15]_11\(0),
      I4 => \Data_Out_int_reg[22]_i_52_n_6\,
      O => \L__972_carry_i_71_n_0\
    );
\L__972_carry_i_72\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \^slv_reg2_reg[15]_11\(0),
      I1 => p_1_in_0(0),
      I2 => DOADO(6),
      I3 => \L__972_carry_i_17_n_0\,
      I4 => L_carry(6),
      O => \L__972_carry_i_72_n_0\
    );
\L__972_carry_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_i_9_n_0\,
      CO(3 downto 2) => \NLW_L__972_carry_i_8_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^slv_reg2_reg[15]_21\(1),
      CO(0) => \L__972_carry_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^slv_reg2_reg[15]_19\(0),
      DI(0) => \L__972_carry_i_18_n_4\,
      O(3 downto 1) => \NLW_L__972_carry_i_8_O_UNCONNECTED\(3 downto 1),
      O(0) => \slv_reg2_reg[15]_22\(0),
      S(3 downto 2) => B"00",
      S(1) => \L__972_carry_i_10\(0),
      S(0) => \L__972_carry_i_20_n_0\
    );
\L__972_carry_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry__1_i_6_n_0\,
      CO(3) => \L__972_carry_i_9_n_0\,
      CO(2) => \L__972_carry_i_9_n_1\,
      CO(1) => \L__972_carry_i_9_n_2\,
      CO(0) => \L__972_carry_i_9_n_3\,
      CYINIT => '0',
      DI(3) => \L__972_carry_i_18_n_5\,
      DI(2) => \L__972_carry_i_18_n_6\,
      DI(1) => \L__972_carry_i_18_n_7\,
      DI(0) => \L__972_carry_i_21_n_4\,
      O(3) => \L__972_carry_i_9_n_4\,
      O(2) => \L__972_carry_i_9_n_5\,
      O(1) => \L__972_carry_i_9_n_6\,
      O(0) => \L__972_carry_i_9_n_7\,
      S(3) => \L__972_carry_i_22_n_0\,
      S(2) => \L__972_carry_i_23_n_0\,
      S(1) => \L__972_carry_i_24_n_0\,
      S(0) => \L__972_carry_i_25_n_0\
    );
\L_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[26]_i_44_0\,
      I1 => \L_carry__2_0\(7),
      I2 => \^ampl_sig_reg[7]_0\(7),
      O => \slv_reg0_reg[0]_rep\(3)
    );
\L_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[26]_i_44_0\,
      I1 => \L_carry__2_0\(6),
      I2 => \^ampl_sig_reg[7]_0\(6),
      O => \slv_reg0_reg[0]_rep\(2)
    );
\L_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[26]_i_44_0\,
      I1 => \L_carry__2_0\(5),
      I2 => \^ampl_sig_reg[7]_0\(5),
      O => \slv_reg0_reg[0]_rep\(1)
    );
\L_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(4),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(4),
      O => \slv_reg0_reg[0]_rep\(0)
    );
\L_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[26]_i_44_0\,
      I1 => \L_carry__2_0\(7),
      I2 => \^ampl_sig_reg[7]_0\(7),
      O => \slv_reg0_reg[0]_rep_1\(3)
    );
\L_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[26]_i_44_0\,
      I1 => \L_carry__2_0\(6),
      I2 => \^ampl_sig_reg[7]_0\(6),
      O => \slv_reg0_reg[0]_rep_1\(2)
    );
\L_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[26]_i_44_0\,
      I1 => \L_carry__2_0\(5),
      I2 => \^ampl_sig_reg[7]_0\(5),
      O => \slv_reg0_reg[0]_rep_1\(1)
    );
\L_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(4),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(4),
      O => \slv_reg0_reg[0]_rep_1\(0)
    );
\L_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[26]_i_44_0\,
      I1 => \L_carry__2_0\(11),
      I2 => ampl_sig_reg(11),
      O => \slv_reg0_reg[0]_rep_0\(3)
    );
\L_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(10),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(10),
      O => \slv_reg0_reg[0]_rep_0\(2)
    );
\L_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[26]_i_44_0\,
      I1 => \L_carry__2_0\(9),
      I2 => ampl_sig_reg(9),
      O => \slv_reg0_reg[0]_rep_0\(1)
    );
\L_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(8),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(8),
      O => \slv_reg0_reg[0]_rep_0\(0)
    );
\L_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[26]_i_44_0\,
      I1 => \L_carry__2_0\(11),
      I2 => ampl_sig_reg(11),
      O => \slv_reg0_reg[0]_rep_2\(3)
    );
\L_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(10),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(10),
      O => \slv_reg0_reg[0]_rep_2\(2)
    );
\L_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[26]_i_44_0\,
      I1 => \L_carry__2_0\(9),
      I2 => ampl_sig_reg(9),
      O => \slv_reg0_reg[0]_rep_2\(1)
    );
\L_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(8),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(8),
      O => \slv_reg0_reg[0]_rep_2\(0)
    );
\L_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(15),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(15),
      O => \ampl_sig_reg[15]_1\(3)
    );
\L_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(14),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(14),
      O => \ampl_sig_reg[15]_1\(2)
    );
\L_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(13),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(13),
      O => \ampl_sig_reg[15]_1\(1)
    );
\L_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(12),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(12),
      O => \ampl_sig_reg[15]_1\(0)
    );
\L_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(15),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(15),
      O => \ampl_sig_reg[15]_2\(3)
    );
\L_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(14),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(14),
      O => \ampl_sig_reg[15]_2\(2)
    );
\L_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(13),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(13),
      O => \ampl_sig_reg[15]_2\(1)
    );
\L_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => ampl_sig_reg(12),
      I1 => \Data_Out_int_reg[26]_i_44_0\,
      I2 => \L_carry__2_0\(12),
      O => \ampl_sig_reg[15]_2\(0)
    );
L_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(3),
      I2 => \^ampl_sig_reg[7]_0\(3),
      O => DI(3)
    );
L_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \L_carry__2_0\(2),
      O => DI(2)
    );
L_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(1),
      I2 => \^ampl_sig_reg[7]_0\(1),
      O => DI(1)
    );
L_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(0),
      O => DI(0)
    );
L_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(3),
      I2 => \^ampl_sig_reg[7]_0\(3),
      O => \slv_reg0_reg[0]_rep__1_0\(3)
    );
L_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(2),
      I1 => \Data_Out_int_reg[30]_i_47_0\,
      I2 => \L_carry__2_0\(2),
      O => \slv_reg0_reg[0]_rep__1_0\(2)
    );
L_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_47_0\,
      I1 => \L_carry__2_0\(1),
      I2 => \^ampl_sig_reg[7]_0\(1),
      O => \slv_reg0_reg[0]_rep__1_0\(1)
    );
L_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA999A955599959"
    )
        port map (
      I0 => p_1_in_0(0),
      I1 => DOADO(15),
      I2 => \^wavesel\,
      I3 => \Data_Out_int_reg[30]_i_47_0\,
      I4 => \axi_rdata_reg[11]_0\(0),
      I5 => L_carry(15),
      O => \slv_reg0_reg[0]_rep__1_0\(0)
    );
L_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(0),
      I1 => \L_carry__2_0\(0),
      I2 => \Data_Out_int_reg[30]_i_47_0\,
      O => p_1_in_0(0)
    );
\ampl_sig1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ampl_sig1_inferred__0/i__carry_n_0\,
      CO(2) => \ampl_sig1_inferred__0/i__carry_n_1\,
      CO(1) => \ampl_sig1_inferred__0/i__carry_n_2\,
      CO(0) => \ampl_sig1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ampl_sig1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\ampl_sig1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ampl_sig1_inferred__0/i__carry_n_0\,
      CO(3) => CO(0),
      CO(2) => \ampl_sig1_inferred__0/i__carry__0_n_1\,
      CO(1) => \ampl_sig1_inferred__0/i__carry__0_n_2\,
      CO(0) => \ampl_sig1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ampl_sig1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\ampl_sig[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^ampl_sig_reg[11]_0\(2),
      I1 => \^ampl_sig_reg[11]_0\(0),
      I2 => \^ampl_sig_reg[11]_0\(1),
      O => \ampl_sig_reg[11]_1\
    );
\ampl_sig[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => switch(3),
      O => \ampl_sig[0]_i_18_n_0\
    );
\ampl_sig[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(2),
      I1 => switch(2),
      O => \ampl_sig[0]_i_19_n_0\
    );
\ampl_sig[0]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => switch(1),
      O => \ampl_sig[0]_i_20_n_0\
    );
\ampl_sig[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(0),
      I1 => switch(0),
      O => \ampl_sig[0]_i_21_n_0\
    );
\ampl_sig[0]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => switch(7),
      I1 => \^ampl_sig_reg[7]_0\(7),
      O => \ampl_sig[0]_i_24_n_0\
    );
\ampl_sig[0]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => switch(6),
      I1 => \^ampl_sig_reg[7]_0\(6),
      O => \ampl_sig[0]_i_25_n_0\
    );
\ampl_sig[0]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => switch(5),
      I1 => \^ampl_sig_reg[7]_0\(5),
      O => \ampl_sig[0]_i_26_n_0\
    );
\ampl_sig[0]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => switch(4),
      I1 => \^ampl_sig_reg[7]_0\(4),
      O => \ampl_sig[0]_i_27_n_0\
    );
\ampl_sig[0]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => switch(3),
      I1 => \^ampl_sig_reg[7]_0\(3),
      O => \ampl_sig[0]_i_28_n_0\
    );
\ampl_sig[0]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => switch(2),
      I1 => \^ampl_sig_reg[7]_0\(2),
      O => \ampl_sig[0]_i_29_n_0\
    );
\ampl_sig[0]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => switch(1),
      I1 => \^ampl_sig_reg[7]_0\(1),
      O => \ampl_sig[0]_i_30_n_0\
    );
\ampl_sig[0]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => switch(0),
      I1 => \^ampl_sig_reg[7]_0\(0),
      O => \ampl_sig[0]_i_31_n_0\
    );
\ampl_sig[12]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(12),
      O => \ampl_sig[12]_i_10_n_0\
    );
\ampl_sig[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ampl_sig_reg(15),
      I1 => \ampl_sig_reg[15]_3\,
      I2 => C(15),
      O => \ampl_sig[12]_i_2_n_0\
    );
\ampl_sig[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ampl_sig_reg(14),
      I1 => \ampl_sig_reg[15]_3\,
      I2 => C(14),
      O => \ampl_sig[12]_i_3_n_0\
    );
\ampl_sig[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ampl_sig_reg(13),
      I1 => \ampl_sig_reg[15]_3\,
      I2 => C(13),
      O => \ampl_sig[12]_i_4_n_0\
    );
\ampl_sig[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ampl_sig_reg(12),
      I1 => \ampl_sig_reg[15]_3\,
      I2 => C(12),
      O => \ampl_sig[12]_i_5_n_0\
    );
\ampl_sig[12]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(15),
      O => \ampl_sig[12]_i_7_n_0\
    );
\ampl_sig[12]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(14),
      O => \ampl_sig[12]_i_8_n_0\
    );
\ampl_sig[12]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(13),
      O => \ampl_sig[12]_i_9_n_0\
    );
\ampl_sig[4]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => switch(7),
      O => \ampl_sig[4]_i_11_n_0\
    );
\ampl_sig[4]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => switch(6),
      O => \ampl_sig[4]_i_12_n_0\
    );
\ampl_sig[4]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => switch(5),
      O => \ampl_sig[4]_i_13_n_0\
    );
\ampl_sig[4]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(4),
      I1 => switch(4),
      O => \ampl_sig[4]_i_14_n_0\
    );
\ampl_sig[8]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(8),
      O => \ampl_sig[8]_i_10_n_0\
    );
\ampl_sig[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \ampl_sig_reg[15]_3\,
      I2 => C(11),
      O => \ampl_sig[8]_i_2_n_0\
    );
\ampl_sig[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ampl_sig_reg(10),
      I1 => \ampl_sig_reg[15]_3\,
      I2 => C(10),
      O => \ampl_sig[8]_i_3_n_0\
    );
\ampl_sig[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \ampl_sig_reg[15]_3\,
      I2 => C(9),
      O => \ampl_sig[8]_i_4_n_0\
    );
\ampl_sig[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ampl_sig_reg(8),
      I1 => \ampl_sig_reg[15]_3\,
      I2 => C(8),
      O => \ampl_sig[8]_i_5_n_0\
    );
\ampl_sig[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(11),
      O => \ampl_sig[8]_i_7_n_0\
    );
\ampl_sig[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(10),
      O => \ampl_sig[8]_i_8_n_0\
    );
\ampl_sig[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(9),
      O => \ampl_sig[8]_i_9_n_0\
    );
\ampl_sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => O(0),
      Q => \^ampl_sig_reg[7]_0\(0),
      R => \^rst\
    );
\ampl_sig_reg[0]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ampl_sig_reg[0]_i_15_n_0\,
      CO(2) => \ampl_sig_reg[0]_i_15_n_1\,
      CO(1) => \ampl_sig_reg[0]_i_15_n_2\,
      CO(0) => \ampl_sig_reg[0]_i_15_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^ampl_sig_reg[7]_0\(3 downto 0),
      O(3 downto 0) => \ampl_sig_reg[7]_1\(3 downto 0),
      S(3) => \ampl_sig[0]_i_18_n_0\,
      S(2) => \ampl_sig[0]_i_19_n_0\,
      S(1) => \ampl_sig[0]_i_20_n_0\,
      S(0) => \ampl_sig[0]_i_21_n_0\
    );
\ampl_sig_reg[0]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \ampl_sig_reg[0]_i_22_n_0\,
      CO(3) => \ampl_sig_reg[0]_i_16_n_0\,
      CO(2) => \ampl_sig_reg[0]_i_16_n_1\,
      CO(1) => \ampl_sig_reg[0]_i_16_n_2\,
      CO(0) => \ampl_sig_reg[0]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^ampl_sig_reg[11]_0\(3 downto 0),
      S(3 downto 0) => ampl_sig_reg(11 downto 8)
    );
\ampl_sig_reg[0]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \ampl_sig_reg[0]_i_16_n_0\,
      CO(3) => \NLW_ampl_sig_reg[0]_i_17_CO_UNCONNECTED\(3),
      CO(2) => \ampl_sig_reg[0]_i_17_n_1\,
      CO(1) => \ampl_sig_reg[0]_i_17_n_2\,
      CO(0) => \ampl_sig_reg[0]_i_17_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \ampl_sig_reg[15]_0\(3 downto 0),
      S(3 downto 0) => ampl_sig_reg(15 downto 12)
    );
\ampl_sig_reg[0]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \ampl_sig_reg[0]_i_23_n_0\,
      CO(3) => \ampl_sig_reg[0]_i_22_n_0\,
      CO(2) => \ampl_sig_reg[0]_i_22_n_1\,
      CO(1) => \ampl_sig_reg[0]_i_22_n_2\,
      CO(0) => \ampl_sig_reg[0]_i_22_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^ampl_sig_reg[7]_0\(7 downto 4),
      O(3 downto 0) => \NLW_ampl_sig_reg[0]_i_22_O_UNCONNECTED\(3 downto 0),
      S(3) => \ampl_sig[0]_i_24_n_0\,
      S(2) => \ampl_sig[0]_i_25_n_0\,
      S(1) => \ampl_sig[0]_i_26_n_0\,
      S(0) => \ampl_sig[0]_i_27_n_0\
    );
\ampl_sig_reg[0]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ampl_sig_reg[0]_i_23_n_0\,
      CO(2) => \ampl_sig_reg[0]_i_23_n_1\,
      CO(1) => \ampl_sig_reg[0]_i_23_n_2\,
      CO(0) => \ampl_sig_reg[0]_i_23_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^ampl_sig_reg[7]_0\(3 downto 0),
      O(3 downto 0) => \NLW_ampl_sig_reg[0]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3) => \ampl_sig[0]_i_28_n_0\,
      S(2) => \ampl_sig[0]_i_29_n_0\,
      S(1) => \ampl_sig[0]_i_30_n_0\,
      S(0) => \ampl_sig[0]_i_31_n_0\
    );
\ampl_sig_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[8]_i_1_n_5\,
      Q => ampl_sig_reg(10),
      R => \^rst\
    );
\ampl_sig_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[8]_i_1_n_4\,
      Q => ampl_sig_reg(11),
      R => \^rst\
    );
\ampl_sig_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[12]_i_1_n_7\,
      Q => ampl_sig_reg(12),
      R => \^rst\
    );
\ampl_sig_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ampl_sig_reg[8]_i_1_n_0\,
      CO(3) => \NLW_ampl_sig_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ampl_sig_reg[12]_i_1_n_1\,
      CO(1) => \ampl_sig_reg[12]_i_1_n_2\,
      CO(0) => \ampl_sig_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ampl_sig_reg[12]_i_1_n_4\,
      O(2) => \ampl_sig_reg[12]_i_1_n_5\,
      O(1) => \ampl_sig_reg[12]_i_1_n_6\,
      O(0) => \ampl_sig_reg[12]_i_1_n_7\,
      S(3) => \ampl_sig[12]_i_2_n_0\,
      S(2) => \ampl_sig[12]_i_3_n_0\,
      S(1) => \ampl_sig[12]_i_4_n_0\,
      S(0) => \ampl_sig[12]_i_5_n_0\
    );
\ampl_sig_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \ampl_sig_reg[8]_i_6_n_0\,
      CO(3) => \NLW_ampl_sig_reg[12]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \ampl_sig_reg[12]_i_6_n_1\,
      CO(1) => \ampl_sig_reg[12]_i_6_n_2\,
      CO(0) => \ampl_sig_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => ampl_sig_reg(14 downto 12),
      O(3 downto 0) => C(15 downto 12),
      S(3) => \ampl_sig[12]_i_7_n_0\,
      S(2) => \ampl_sig[12]_i_8_n_0\,
      S(1) => \ampl_sig[12]_i_9_n_0\,
      S(0) => \ampl_sig[12]_i_10_n_0\
    );
\ampl_sig_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[12]_i_1_n_6\,
      Q => ampl_sig_reg(13),
      R => \^rst\
    );
\ampl_sig_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[12]_i_1_n_5\,
      Q => ampl_sig_reg(14),
      R => \^rst\
    );
\ampl_sig_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[12]_i_1_n_4\,
      Q => ampl_sig_reg(15),
      R => \^rst\
    );
\ampl_sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => O(1),
      Q => \^ampl_sig_reg[7]_0\(1),
      R => \^rst\
    );
\ampl_sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => O(2),
      Q => \^ampl_sig_reg[7]_0\(2),
      R => \^rst\
    );
\ampl_sig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => O(3),
      Q => \^ampl_sig_reg[7]_0\(3),
      R => \^rst\
    );
\ampl_sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[7]_3\(0),
      Q => \^ampl_sig_reg[7]_0\(4),
      R => \^rst\
    );
\ampl_sig_reg[4]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \ampl_sig_reg[0]_i_15_n_0\,
      CO(3) => \ampl_sig_reg[4]_i_10_n_0\,
      CO(2) => \ampl_sig_reg[4]_i_10_n_1\,
      CO(1) => \ampl_sig_reg[4]_i_10_n_2\,
      CO(0) => \ampl_sig_reg[4]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^ampl_sig_reg[7]_0\(7 downto 4),
      O(3 downto 0) => \ampl_sig_reg[7]_1\(7 downto 4),
      S(3) => \ampl_sig[4]_i_11_n_0\,
      S(2) => \ampl_sig[4]_i_12_n_0\,
      S(1) => \ampl_sig[4]_i_13_n_0\,
      S(0) => \ampl_sig[4]_i_14_n_0\
    );
\ampl_sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[7]_3\(1),
      Q => \^ampl_sig_reg[7]_0\(5),
      R => \^rst\
    );
\ampl_sig_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[7]_3\(2),
      Q => \^ampl_sig_reg[7]_0\(6),
      S => \^rst\
    );
\ampl_sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[7]_3\(3),
      Q => \^ampl_sig_reg[7]_0\(7),
      R => \^rst\
    );
\ampl_sig_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[8]_i_1_n_7\,
      Q => ampl_sig_reg(8),
      R => \^rst\
    );
\ampl_sig_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ampl_sig_reg[11]_3\(0),
      CO(3) => \ampl_sig_reg[8]_i_1_n_0\,
      CO(2) => \ampl_sig_reg[8]_i_1_n_1\,
      CO(1) => \ampl_sig_reg[8]_i_1_n_2\,
      CO(0) => \ampl_sig_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ampl_sig_reg[8]_i_1_n_4\,
      O(2) => \ampl_sig_reg[8]_i_1_n_5\,
      O(1) => \ampl_sig_reg[8]_i_1_n_6\,
      O(0) => \ampl_sig_reg[8]_i_1_n_7\,
      S(3) => \ampl_sig[8]_i_2_n_0\,
      S(2) => \ampl_sig[8]_i_3_n_0\,
      S(1) => \ampl_sig[8]_i_4_n_0\,
      S(0) => \ampl_sig[8]_i_5_n_0\
    );
\ampl_sig_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \ampl_sig_reg[4]_i_10_n_0\,
      CO(3) => \ampl_sig_reg[8]_i_6_n_0\,
      CO(2) => \ampl_sig_reg[8]_i_6_n_1\,
      CO(1) => \ampl_sig_reg[8]_i_6_n_2\,
      CO(0) => \ampl_sig_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => ampl_sig_reg(11 downto 8),
      O(3 downto 0) => C(11 downto 8),
      S(3) => \ampl_sig[8]_i_7_n_0\,
      S(2) => \ampl_sig[8]_i_8_n_0\,
      S(1) => \ampl_sig[8]_i_9_n_0\,
      S(0) => \ampl_sig[8]_i_10_n_0\
    );
\ampl_sig_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ampl_sig,
      D => \ampl_sig_reg[8]_i_1_n_6\,
      Q => ampl_sig_reg(9),
      R => \^rst\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF30B000B0"
    )
        port map (
      I0 => \L_carry__2_0\(0),
      I1 => axi_araddr(1),
      I2 => \axi_rdata_reg[11]\(0),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[15]_0\(0),
      I5 => \axi_rdata[0]_i_2_n_0\,
      O => D(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000CAF0C000CA00"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(0),
      I1 => \axi_rdata_reg[11]_0\(0),
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => \axi_rdata_reg[11]\(0),
      I5 => \^q\(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAEAAFEAAAEA"
    )
        port map (
      I0 => \axi_rdata_reg[10]\,
      I1 => p_2_in(10),
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => ampl_sig_reg(10),
      I5 => \axi_rdata_reg[11]\(0),
      O => D(10)
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(10),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(10),
      O => p_2_in(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => p_2_in(11),
      I1 => \axi_rdata_reg[11]\(7),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[11]_0\(7),
      I5 => \axi_rdata[11]_i_3_n_0\,
      O => D(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(11),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(11),
      O => p_2_in(11)
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => \L_carry__2_0\(11),
      I2 => \axi_rdata_reg[11]\(0),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAEAAFEAAAEA"
    )
        port map (
      I0 => \axi_rdata_reg[12]\,
      I1 => p_2_in(12),
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => ampl_sig_reg(12),
      I5 => \axi_rdata_reg[11]\(0),
      O => D(12)
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(12),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(12),
      O => p_2_in(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAEAAFEAAAEA"
    )
        port map (
      I0 => \axi_rdata_reg[13]\,
      I1 => p_2_in(13),
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => ampl_sig_reg(13),
      I5 => \axi_rdata_reg[11]\(0),
      O => D(13)
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(13),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(13),
      O => p_2_in(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAEAAFEAAAEA"
    )
        port map (
      I0 => \axi_rdata_reg[14]\,
      I1 => p_2_in(14),
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => ampl_sig_reg(14),
      I5 => \axi_rdata_reg[11]\(0),
      O => D(14)
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(14),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(14),
      O => p_2_in(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAEAAFEAAAEA"
    )
        port map (
      I0 => \axi_rdata_reg[15]\,
      I1 => \axi_rdata[15]_i_3_n_0\,
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => ampl_sig_reg(15),
      I5 => \axi_rdata_reg[11]\(0),
      O => D(15)
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(15),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(15),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata_reg[11]\(1),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[11]_0\(1),
      I5 => p_2_in(1),
      O => D(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => \L_carry__2_0\(1),
      I2 => \axi_rdata_reg[11]\(0),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(1),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(1),
      O => p_2_in(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAEAAFEAAAEA"
    )
        port map (
      I0 => \axi_rdata_reg[2]\,
      I1 => p_2_in(2),
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => \^ampl_sig_reg[7]_0\(2),
      I5 => \axi_rdata_reg[11]\(0),
      O => D(2)
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(2),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(2),
      O => p_2_in(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata_reg[11]\(2),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[11]_0\(2),
      I5 => p_2_in(3),
      O => D(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => \L_carry__2_0\(3),
      I2 => \axi_rdata_reg[11]\(0),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(3),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(3),
      O => p_2_in(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAEAAFEAAAEA"
    )
        port map (
      I0 => \axi_rdata_reg[4]\,
      I1 => p_2_in(4),
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => \^ampl_sig_reg[7]_0\(4),
      I5 => \axi_rdata_reg[11]\(0),
      O => D(4)
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(4),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(4),
      O => p_2_in(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata_reg[11]\(3),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[11]_0\(3),
      I5 => p_2_in(5),
      O => D(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => \L_carry__2_0\(5),
      I2 => \axi_rdata_reg[11]\(0),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(5),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(5),
      O => p_2_in(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \axi_rdata_reg[11]\(4),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[11]_0\(4),
      I5 => p_2_in(6),
      O => D(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(6),
      I1 => \L_carry__2_0\(6),
      I2 => \axi_rdata_reg[11]\(0),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(6),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(6),
      O => p_2_in(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFC0AFCFA0C0A0C"
    )
        port map (
      I0 => p_2_in(7),
      I1 => \axi_rdata_reg[11]\(5),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[11]_0\(5),
      I5 => \axi_rdata[7]_i_3_n_0\,
      O => D(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(7),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(7),
      O => p_2_in(7)
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => \L_carry__2_0\(7),
      I2 => \axi_rdata_reg[11]\(0),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAEAAFEAAAEA"
    )
        port map (
      I0 => \axi_rdata_reg[8]\,
      I1 => p_2_in(8),
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => ampl_sig_reg(8),
      I5 => \axi_rdata_reg[11]\(0),
      O => D(8)
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(8),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(8),
      O => p_2_in(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAC0FACF0AC00AC"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata_reg[11]\(6),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[11]_0\(6),
      I5 => p_2_in(9),
      O => D(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => \L_carry__2_0\(9),
      I2 => \axi_rdata_reg[11]\(0),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[15]_0\(9),
      I1 => \axi_rdata_reg[11]\(0),
      I2 => \^q\(9),
      O => p_2_in(9)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ampl_sig_reg(15),
      I1 => ampl_sig_reg(14),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ampl_sig_reg(13),
      I1 => ampl_sig_reg(12),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ampl_sig_reg(11),
      I1 => ampl_sig_reg(10),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ampl_sig_reg(9),
      I1 => ampl_sig_reg(8),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(14),
      I1 => ampl_sig_reg(15),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(12),
      I1 => ampl_sig_reg(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(10),
      I1 => ampl_sig_reg(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ampl_sig_reg(8),
      I1 => ampl_sig_reg(9),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => switch(6),
      I1 => \^ampl_sig_reg[7]_0\(6),
      I2 => \^ampl_sig_reg[7]_0\(7),
      I3 => switch(7),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => switch(4),
      I1 => \^ampl_sig_reg[7]_0\(4),
      I2 => \^ampl_sig_reg[7]_0\(5),
      I3 => switch(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => switch(2),
      I1 => \^ampl_sig_reg[7]_0\(2),
      I2 => \^ampl_sig_reg[7]_0\(3),
      I3 => switch(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => switch(0),
      I1 => \^ampl_sig_reg[7]_0\(0),
      I2 => \^ampl_sig_reg[7]_0\(1),
      I3 => switch(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(7),
      I1 => switch(7),
      I2 => \^ampl_sig_reg[7]_0\(6),
      I3 => switch(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(5),
      I1 => switch(5),
      I2 => \^ampl_sig_reg[7]_0\(4),
      I3 => switch(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(3),
      I1 => switch(3),
      I2 => \^ampl_sig_reg[7]_0\(2),
      I3 => switch(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ampl_sig_reg[7]_0\(1),
      I1 => switch(1),
      I2 => \^ampl_sig_reg[7]_0\(0),
      I3 => switch(0),
      O => \i__carry_i_8_n_0\
    );
phase_sig2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => phase_sig2_carry_n_0,
      CO(2) => phase_sig2_carry_n_1,
      CO(1) => phase_sig2_carry_n_2,
      CO(0) => phase_sig2_carry_n_3,
      CYINIT => '0',
      DI(3) => phase_sig2_carry_i_1_n_0,
      DI(2) => phase_sig2_carry_i_2_n_0,
      DI(1) => phase_sig2_carry_i_3_n_0,
      DI(0) => phase_sig2_carry_i_4_n_0,
      O(3 downto 0) => NLW_phase_sig2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => phase_sig2_carry_i_5_n_0,
      S(2) => phase_sig2_carry_i_6_n_0,
      S(1) => phase_sig2_carry_i_7_n_0,
      S(0) => phase_sig2_carry_i_8_n_0
    );
\phase_sig2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => phase_sig2_carry_n_0,
      CO(3) => \^phase_sig_reg[14]_0\(0),
      CO(2) => \phase_sig2_carry__0_n_1\,
      CO(1) => \phase_sig2_carry__0_n_2\,
      CO(0) => \phase_sig2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \phase_sig2_carry__0_i_1_n_0\,
      DI(2) => \phase_sig2_carry__0_i_2_n_0\,
      DI(1) => \phase_sig2_carry__0_i_3_n_0\,
      DI(0) => \phase_sig2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_phase_sig2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \phase_sig2_carry__0_i_5_n_0\,
      S(2) => \phase_sig2_carry__0_i_6_n_0\,
      S(1) => \phase_sig2_carry__0_i_7_n_0\,
      S(0) => \phase_sig2_carry__0_i_8_n_0\
    );
\phase_sig2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(15),
      O => \phase_sig2_carry__0_i_1_n_0\
    );
\phase_sig2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => \phase_sig2_carry__0_i_2_n_0\
    );
\phase_sig2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => \phase_sig2_carry__0_i_3_n_0\
    );
\phase_sig2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \phase_sig2_carry__0_i_4_n_0\
    );
\phase_sig2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(14),
      O => \phase_sig2_carry__0_i_5_n_0\
    );
\phase_sig2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(12),
      O => \phase_sig2_carry__0_i_6_n_0\
    );
\phase_sig2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(10),
      O => \phase_sig2_carry__0_i_7_n_0\
    );
\phase_sig2_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      O => \phase_sig2_carry__0_i_8_n_0\
    );
phase_sig2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(7),
      I1 => switch(7),
      I2 => \^q\(6),
      I3 => switch(6),
      O => phase_sig2_carry_i_1_n_0
    );
phase_sig2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(5),
      I1 => switch(5),
      I2 => \^q\(4),
      I3 => switch(4),
      O => phase_sig2_carry_i_2_n_0
    );
phase_sig2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(3),
      I1 => switch(3),
      I2 => \^q\(2),
      I3 => switch(2),
      O => phase_sig2_carry_i_3_n_0
    );
phase_sig2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(1),
      I1 => switch(1),
      I2 => \^q\(0),
      I3 => switch(0),
      O => phase_sig2_carry_i_4_n_0
    );
phase_sig2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => switch(7),
      I1 => \^q\(7),
      I2 => switch(6),
      I3 => \^q\(6),
      O => phase_sig2_carry_i_5_n_0
    );
phase_sig2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => switch(5),
      I1 => \^q\(5),
      I2 => switch(4),
      I3 => \^q\(4),
      O => phase_sig2_carry_i_6_n_0
    );
phase_sig2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => switch(3),
      I1 => \^q\(3),
      I2 => switch(2),
      I3 => \^q\(2),
      O => phase_sig2_carry_i_7_n_0
    );
phase_sig2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => switch(1),
      I1 => \^q\(1),
      I2 => switch(0),
      I3 => \^q\(0),
      O => phase_sig2_carry_i_8_n_0
    );
\phase_sig[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFACCC0000ACCC"
    )
        port map (
      I0 => \phase_sig_reg[3]_i_3_n_7\,
      I1 => \phase_sig_reg[3]_i_2_n_7\,
      I2 => \^phase_sig_reg[14]_0\(0),
      I3 => left_btn,
      I4 => cntr_btn,
      I5 => \^wavesel\,
      O => \phase_sig[0]_i_1_n_0\
    );
\phase_sig[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(11),
      O => \phase_sig[11]_i_4_n_0\
    );
\phase_sig[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(10),
      O => \phase_sig[11]_i_5_n_0\
    );
\phase_sig[11]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => \phase_sig[11]_i_6_n_0\
    );
\phase_sig[11]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \phase_sig[11]_i_7_n_0\
    );
\phase_sig[15]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(15),
      O => \phase_sig[15]_i_10_n_0\
    );
\phase_sig[15]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(14),
      O => \phase_sig[15]_i_11_n_0\
    );
\phase_sig[15]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(13),
      O => \phase_sig[15]_i_12_n_0\
    );
\phase_sig[15]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      O => \phase_sig[15]_i_13_n_0\
    );
\phase_sig[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8A888888888"
    )
        port map (
      I0 => \^phase_sig_reg[11]_0\(2),
      I1 => \^phase_sig_reg[11]_0\(1),
      I2 => \^phase_sig_reg[11]_0\(0),
      I3 => \phase_sig[15]_i_9_n_0\,
      I4 => \^phase_sig_reg[7]_0\(0),
      I5 => \phase_sig_reg[11]_i_2_n_6\,
      O => \phase_sig_reg[11]_2\
    );
\phase_sig[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^phase_sig_reg[15]_0\(1),
      I1 => \^phase_sig_reg[15]_0\(2),
      O => \phase_sig_reg[15]_1\
    );
\phase_sig[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555777F"
    )
        port map (
      I0 => \phase_sig_reg[7]_i_2_n_6\,
      I1 => \^phase_sig_reg[3]_0\(1),
      I2 => \phase_sig_reg[3]_i_2_n_5\,
      I3 => \^phase_sig_reg[3]_0\(0),
      I4 => \phase_sig_reg[7]_i_2_n_7\,
      I5 => \phase_sig_reg[7]_i_2_n_5\,
      O => \phase_sig[15]_i_9_n_0\
    );
\phase_sig[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFACCC0000ACCC"
    )
        port map (
      I0 => \phase_sig_reg[3]_i_3_n_5\,
      I1 => \phase_sig_reg[3]_i_2_n_5\,
      I2 => \^phase_sig_reg[14]_0\(0),
      I3 => left_btn,
      I4 => cntr_btn,
      I5 => \^wavesel\,
      O => \phase_sig[2]_i_1_n_0\
    );
\phase_sig[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => switch(1),
      I1 => \^q\(1),
      O => \phase_sig[3]_i_10_n_0\
    );
\phase_sig[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => switch(0),
      I1 => \^q\(0),
      O => \phase_sig[3]_i_11_n_0\
    );
\phase_sig[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => switch(3),
      O => \phase_sig[3]_i_4_n_0\
    );
\phase_sig[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => switch(2),
      O => \phase_sig[3]_i_5_n_0\
    );
\phase_sig[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => switch(1),
      O => \phase_sig[3]_i_6_n_0\
    );
\phase_sig[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => switch(0),
      O => \phase_sig[3]_i_7_n_0\
    );
\phase_sig[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => switch(3),
      I1 => \^q\(3),
      O => \phase_sig[3]_i_8_n_0\
    );
\phase_sig[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => switch(2),
      I1 => \^q\(2),
      O => \phase_sig[3]_i_9_n_0\
    );
\phase_sig[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CAAAFFFFCAAA"
    )
        port map (
      I0 => \phase_sig_reg[7]_i_2_n_7\,
      I1 => \phase_sig_reg[7]_i_3_n_7\,
      I2 => \^phase_sig_reg[14]_0\(0),
      I3 => left_btn,
      I4 => cntr_btn,
      I5 => \^wavesel\,
      O => \phase_sig[4]_i_1_n_0\
    );
\phase_sig[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F0C2E2E2E2E2E2E"
    )
        port map (
      I0 => \phase_sig_reg[7]_i_2_n_6\,
      I1 => cntr_btn,
      I2 => \^wavesel\,
      I3 => \phase_sig_reg[7]_i_3_n_6\,
      I4 => \^phase_sig_reg[14]_0\(0),
      I5 => left_btn,
      O => \phase_sig[5]_i_1_n_0\
    );
\phase_sig[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFACCC0000ACCC"
    )
        port map (
      I0 => \phase_sig_reg[7]_i_3_n_5\,
      I1 => \phase_sig_reg[7]_i_2_n_5\,
      I2 => \^phase_sig_reg[14]_0\(0),
      I3 => left_btn,
      I4 => cntr_btn,
      I5 => \^wavesel\,
      O => \phase_sig[6]_i_1_n_0\
    );
\phase_sig[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => switch(5),
      I1 => \^q\(5),
      O => \phase_sig[7]_i_10_n_0\
    );
\phase_sig[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => switch(4),
      I1 => \^q\(4),
      O => \phase_sig[7]_i_11_n_0\
    );
\phase_sig[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(7),
      I1 => switch(7),
      O => \phase_sig[7]_i_4_n_0\
    );
\phase_sig[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => switch(6),
      O => \phase_sig[7]_i_5_n_0\
    );
\phase_sig[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => switch(5),
      O => \phase_sig[7]_i_6_n_0\
    );
\phase_sig[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => switch(4),
      O => \phase_sig[7]_i_7_n_0\
    );
\phase_sig[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => switch(7),
      I1 => \^q\(7),
      O => \phase_sig[7]_i_8_n_0\
    );
\phase_sig[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => switch(6),
      I1 => \^q\(6),
      O => \phase_sig[7]_i_9_n_0\
    );
\phase_sig[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3C0E2E2E2E2E2E2"
    )
        port map (
      I0 => \phase_sig_reg[11]_i_2_n_6\,
      I1 => cntr_btn,
      I2 => \^wavesel\,
      I3 => \phase_sig_reg[11]_i_3_n_6\,
      I4 => \^phase_sig_reg[14]_0\(0),
      I5 => left_btn,
      O => \phase_sig[9]_i_1_n_0\
    );
\phase_sig_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig[0]_i_1_n_0\,
      Q => \^q\(0),
      S => \^rst\
    );
\phase_sig_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig_reg[15]_2\(4),
      Q => \^q\(10),
      R => SR(0)
    );
\phase_sig_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig_reg[15]_2\(5),
      Q => \^q\(11),
      R => SR(0)
    );
\phase_sig_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_sig_reg[7]_i_2_n_0\,
      CO(3) => \phase_sig_reg[11]_i_2_n_0\,
      CO(2) => \phase_sig_reg[11]_i_2_n_1\,
      CO(1) => \phase_sig_reg[11]_i_2_n_2\,
      CO(0) => \phase_sig_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \^phase_sig_reg[11]_0\(2 downto 1),
      O(1) => \phase_sig_reg[11]_i_2_n_6\,
      O(0) => \^phase_sig_reg[11]_0\(0),
      S(3 downto 0) => \^q\(11 downto 8)
    );
\phase_sig_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_sig_reg[7]_i_3_n_0\,
      CO(3) => \phase_sig_reg[11]_i_3_n_0\,
      CO(2) => \phase_sig_reg[11]_i_3_n_1\,
      CO(1) => \phase_sig_reg[11]_i_3_n_2\,
      CO(0) => \phase_sig_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(11 downto 8),
      O(3 downto 2) => \phase_sig_reg[11]_1\(2 downto 1),
      O(1) => \phase_sig_reg[11]_i_3_n_6\,
      O(0) => \phase_sig_reg[11]_1\(0),
      S(3) => \phase_sig[11]_i_4_n_0\,
      S(2) => \phase_sig[11]_i_5_n_0\,
      S(1) => \phase_sig[11]_i_6_n_0\,
      S(0) => \phase_sig[11]_i_7_n_0\
    );
\phase_sig_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig_reg[15]_2\(6),
      Q => \^q\(12),
      R => SR(0)
    );
\phase_sig_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig_reg[15]_2\(7),
      Q => \^q\(13),
      R => SR(0)
    );
\phase_sig_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig_reg[15]_2\(8),
      Q => \^q\(14),
      R => SR(0)
    );
\phase_sig_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig_reg[15]_2\(9),
      Q => \^q\(15),
      R => SR(0)
    );
\phase_sig_reg[15]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_sig_reg[11]_i_2_n_0\,
      CO(3) => \NLW_phase_sig_reg[15]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \phase_sig_reg[15]_i_6_n_1\,
      CO(1) => \phase_sig_reg[15]_i_6_n_2\,
      CO(0) => \phase_sig_reg[15]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^phase_sig_reg[15]_0\(3 downto 0),
      S(3 downto 0) => \^q\(15 downto 12)
    );
\phase_sig_reg[15]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_sig_reg[11]_i_3_n_0\,
      CO(3) => \NLW_phase_sig_reg[15]_i_8_CO_UNCONNECTED\(3),
      CO(2) => \phase_sig_reg[15]_i_8_n_1\,
      CO(1) => \phase_sig_reg[15]_i_8_n_2\,
      CO(0) => \phase_sig_reg[15]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^q\(14 downto 12),
      O(3 downto 0) => \phase_sig_reg[14]_1\(3 downto 0),
      S(3) => \phase_sig[15]_i_10_n_0\,
      S(2) => \phase_sig[15]_i_11_n_0\,
      S(1) => \phase_sig[15]_i_12_n_0\,
      S(0) => \phase_sig[15]_i_13_n_0\
    );
\phase_sig_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig_reg[15]_2\(0),
      Q => \^q\(1),
      S => SR(0)
    );
\phase_sig_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig[2]_i_1_n_0\,
      Q => \^q\(2),
      S => \^rst\
    );
\phase_sig_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig_reg[15]_2\(1),
      Q => \^q\(3),
      S => SR(0)
    );
\phase_sig_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \phase_sig_reg[3]_i_2_n_0\,
      CO(2) => \phase_sig_reg[3]_i_2_n_1\,
      CO(1) => \phase_sig_reg[3]_i_2_n_2\,
      CO(0) => \phase_sig_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3) => \^phase_sig_reg[3]_0\(1),
      O(2) => \phase_sig_reg[3]_i_2_n_5\,
      O(1) => \^phase_sig_reg[3]_0\(0),
      O(0) => \phase_sig_reg[3]_i_2_n_7\,
      S(3) => \phase_sig[3]_i_4_n_0\,
      S(2) => \phase_sig[3]_i_5_n_0\,
      S(1) => \phase_sig[3]_i_6_n_0\,
      S(0) => \phase_sig[3]_i_7_n_0\
    );
\phase_sig_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \phase_sig_reg[3]_i_3_n_0\,
      CO(2) => \phase_sig_reg[3]_i_3_n_1\,
      CO(1) => \phase_sig_reg[3]_i_3_n_2\,
      CO(0) => \phase_sig_reg[3]_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3) => \phase_sig_reg[3]_1\(1),
      O(2) => \phase_sig_reg[3]_i_3_n_5\,
      O(1) => \phase_sig_reg[3]_1\(0),
      O(0) => \phase_sig_reg[3]_i_3_n_7\,
      S(3) => \phase_sig[3]_i_8_n_0\,
      S(2) => \phase_sig[3]_i_9_n_0\,
      S(1) => \phase_sig[3]_i_10_n_0\,
      S(0) => \phase_sig[3]_i_11_n_0\
    );
\phase_sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \^rst\
    );
\phase_sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \^rst\
    );
\phase_sig_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig[6]_i_1_n_0\,
      Q => \^q\(6),
      S => \^rst\
    );
\phase_sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig_reg[15]_2\(2),
      Q => \^q\(7),
      R => SR(0)
    );
\phase_sig_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_sig_reg[3]_i_2_n_0\,
      CO(3) => \phase_sig_reg[7]_i_2_n_0\,
      CO(2) => \phase_sig_reg[7]_i_2_n_1\,
      CO(1) => \phase_sig_reg[7]_i_2_n_2\,
      CO(0) => \phase_sig_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3) => \^phase_sig_reg[7]_0\(0),
      O(2) => \phase_sig_reg[7]_i_2_n_5\,
      O(1) => \phase_sig_reg[7]_i_2_n_6\,
      O(0) => \phase_sig_reg[7]_i_2_n_7\,
      S(3) => \phase_sig[7]_i_4_n_0\,
      S(2) => \phase_sig[7]_i_5_n_0\,
      S(1) => \phase_sig[7]_i_6_n_0\,
      S(0) => \phase_sig[7]_i_7_n_0\
    );
\phase_sig_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_sig_reg[3]_i_3_n_0\,
      CO(3) => \phase_sig_reg[7]_i_3_n_0\,
      CO(2) => \phase_sig_reg[7]_i_3_n_1\,
      CO(1) => \phase_sig_reg[7]_i_3_n_2\,
      CO(0) => \phase_sig_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3) => \phase_sig_reg[7]_1\(0),
      O(2) => \phase_sig_reg[7]_i_3_n_5\,
      O(1) => \phase_sig_reg[7]_i_3_n_6\,
      O(0) => \phase_sig_reg[7]_i_3_n_7\,
      S(3) => \phase_sig[7]_i_8_n_0\,
      S(2) => \phase_sig[7]_i_9_n_0\,
      S(1) => \phase_sig[7]_i_10_n_0\,
      S(0) => \phase_sig[7]_i_11_n_0\
    );
\phase_sig_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig_reg[15]_2\(3),
      Q => \^q\(8),
      R => SR(0)
    );
\phase_sig_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \phase_sig[9]_i_1_n_0\,
      Q => \^q\(9),
      S => \^rst\
    );
signalSel_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => signalSel_reg_0,
      Q => \^wavesel\,
      R => \^rst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO : entity is "unimacro_BRAM_SDP_MACRO";
end lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO is
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \sdp_bl.ramb18_dp_bl.ram18_bl\ : label is "PRIMITIVE";
begin
\sdp_bl.ramb18_dp_bl.ram18_bl\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"743B750375CC7694775D782578EE79B77A807B487C117CDA7DA37E6C7F357FFF",
      INIT_01 => X"67CB689169576A1D6AE36BA96C706D376DFE6EC56F8C7053711B71E372AB7373",
      INIT_02 => X"5B975C585D1A5DDB5E9D5F5F602260E561A8626B632F63F364B8657C66416706",
      INIT_03 => X"4FBD5078513251EE52AA5366542354E0559D565B571957D8589759575A175AD7",
      INIT_04 => X"445A450C45BF4672472647DA488F494549FB4AB14B684C204CD84D914E4A4F03",
      INIT_05 => X"398A3A323ADB3B843C2E3CD93D853E313EDE3F8B403940E84197424742F743A8",
      INIT_06 => X"2F67300430A1313F31DE327E331E33BF3461350435A7364B36F03795383B38E2",
      INIT_07 => X"260B269B272B27BC284E28E129752A0A2A9F2B352BCC2C642CFD2D962E302ECB",
      INIT_08 => X"1D8D1E0E1E901F131F97201C20A1212821AF223822C1234B23D6246224EF257D",
      INIT_09 => X"1602167316E5175917CD184218B9193019A81A211A9C1B171B931C101C8E1D0D",
      INIT_0A => X"0F7C0FDC103E10A01104116911CE1235129D1306137013DB144714B415231592",
      INIT_0B => X"0A0B0A5A0AAA0AFB0B4D0BA00BF40C490CA00CF80D500DAA0E050E610EBE0F1D",
      INIT_0C => X"05BD05FA0637067506B506F60738077B07BF0805084B089308DC0926097109BE",
      INIT_0D => X"029D02C602F0031C0348037603A503D50407043A046D04A204D9051005490582",
      INIT_0E => X"00B200C700DE00F6010F012A01450162018001A001C001E202050229024E0275",
      INIT_0F => X"0000000200050009000F0016001E00270031003D004A005800680078008A009D",
      INIT_10 => X"008A007800680058004A003D00310027001E0016000F00090005000200000000",
      INIT_11 => X"024E0229020501E201C001A0018001620145012A010F00F600DE00C700B2009D",
      INIT_12 => X"0549051004D904A2046D043A040703D503A503760348031C02F002C6029D0275",
      INIT_13 => X"0971092608DC0893084B080507BF077B073806F606B50675063705FA05BD0582",
      INIT_14 => X"0EBE0E610E050DAA0D500CF80CA00C490BF40BA00B4D0AFB0AAA0A5A0A0B09BE",
      INIT_15 => X"152314B4144713DB13701306129D123511CE1169110410A0103E0FDC0F7C0F1D",
      INIT_16 => X"1C8E1C101B931B171A9C1A2119A8193018B9184217CD175916E5167316021592",
      INIT_17 => X"24EF246223D6234B22C1223821AF212820A1201C1F971F131E901E0E1D8D1D0D",
      INIT_18 => X"2E302D962CFD2C642BCC2B352A9F2A0A297528E1284E27BC272B269B260B257D",
      INIT_19 => X"383B379536F0364B35A73504346133BF331E327E31DE313F30A130042F672ECB",
      INIT_1A => X"42F74247419740E840393F8B3EDE3E313D853CD93C2E3B843ADB3A32398A38E2",
      INIT_1B => X"4E4A4D914CD84C204B684AB149FB4945488F47DA4726467245BF450C445A43A8",
      INIT_1C => X"5A175957589757D85719565B559D54E05423536652AA51EE513250784FBD4F03",
      INIT_1D => X"6641657C64B863F3632F626B61A860E560225F5F5E9D5DDB5D1A5C585B975AD7",
      INIT_1E => X"72AB71E3711B70536F8C6EC56DFE6D376C706BA96AE36A1D6957689167CB6706",
      INIT_1F => X"7F357E6C7DA37CDA7C117B487A8079B778EE7825775D769475CC7503743B7373",
      INIT_20 => X"8BC28AFA8A31896988A087D8870F8646857D84B583EC8323825A819180C87FFE",
      INIT_21 => X"9832976C96A695E0951A9454938D92C691FF913890718FAA8EE28E1A8D528C8A",
      INIT_22 => X"A466A3A5A2E3A222A160A09E9FDB9F189E559D929CCE9C0A9B459A8199BC98F7",
      INIT_23 => X"B040AF85AECBAE0FAD53AC97ABDAAB1DAA60A9A2A8E4A825A766A6A6A5E6A526",
      INIT_24 => X"BBA3BAF1BA3EB98BB8D7B823B76EB6B8B602B54CB495B3DDB325B26CB1B3B0FA",
      INIT_25 => X"C673C5CBC522C479C3CFC324C278C1CCC11FC072BFC4BF15BE66BDB6BD06BC55",
      INIT_26 => X"D096CFF9CF5CCEBECE1FCD7FCCDFCC3ECB9CCAF9CA56C9B2C90DC868C7C2C71B",
      INIT_27 => X"D9F2D962D8D2D841D7AFD71CD688D5F3D55ED4C8D431D399D300D267D1CDD132",
      INIT_28 => X"E270E1EFE16DE0EAE066DFE1DF5CDED5DE4EDDC5DD3CDCB2DC27DB9BDB0EDA80",
      INIT_29 => X"E9FBE98AE918E8A4E830E7BBE744E6CDE655E5DCE561E4E6E46AE3EDE36FE2F0",
      INIT_2A => X"F081F021EFBFEF5DEEF9EE94EE2FEDC8ED60ECF7EC8DEC22EBB6EB49EADAEA6B",
      INIT_2B => X"F5F2F5A3F553F502F4B0F45DF409F3B4F35DF305F2ADF253F1F8F19CF13FF0E0",
      INIT_2C => X"FA40FA03F9C6F988F948F907F8C5F882F83EF7F8F7B2F76AF721F6D7F68CF63F",
      INIT_2D => X"FD60FD37FD0DFCE1FCB5FC87FC58FC28FBF6FBC3FB90FB5BFB24FAEDFAB4FA7B",
      INIT_2E => X"FF4BFF36FF1FFF07FEEEFED3FEB8FE9BFE7DFE5DFE3DFE1BFDF8FDD4FDAFFD88",
      INIT_2F => X"FFFDFFFBFFF8FFF4FFEEFFE7FFDFFFD6FFCCFFC0FFB3FFA5FF95FF85FF73FF60",
      INIT_30 => X"FF73FF85FF95FFA5FFB3FFC0FFCCFFD6FFDFFFE7FFEEFFF4FFF8FFFBFFFDFFFE",
      INIT_31 => X"FDAFFDD4FDF8FE1BFE3DFE5DFE7DFE9BFEB8FED3FEEEFF07FF1FFF36FF4BFF60",
      INIT_32 => X"FAB4FAEDFB24FB5BFB90FBC3FBF6FC28FC58FC87FCB5FCE1FD0DFD37FD60FD88",
      INIT_33 => X"F68CF6D7F721F76AF7B2F7F8F83EF882F8C5F907F948F988F9C6FA03FA40FA7B",
      INIT_34 => X"F13FF19CF1F8F253F2ADF305F35DF3B4F409F45DF4B0F502F553F5A3F5F2F63F",
      INIT_35 => X"EADAEB49EBB6EC22EC8DECF7ED60EDC8EE2FEE94EEF9EF5DEFBFF021F081F0E0",
      INIT_36 => X"E36FE3EDE46AE4E6E561E5DCE655E6CDE744E7BBE830E8A4E918E98AE9FBEA6B",
      INIT_37 => X"DB0EDB9BDC27DCB2DD3CDDC5DE4EDED5DF5CDFE1E066E0EAE16DE1EFE270E2F0",
      INIT_38 => X"D1CDD267D300D399D431D4C8D55ED5F3D688D71CD7AFD841D8D2D962D9F2DA80",
      INIT_39 => X"C7C2C868C90DC9B2CA56CAF9CB9CCC3ECCDFCD7FCE1FCEBECF5CCFF9D096D132",
      INIT_3A => X"BD06BDB6BE66BF15BFC4C072C11FC1CCC278C324C3CFC479C522C5CBC673C71B",
      INIT_3B => X"B1B3B26CB325B3DDB495B54CB602B6B8B76EB823B8D7B98BBA3EBAF1BBA3BC55",
      INIT_3C => X"A5E6A6A6A766A825A8E4A9A2AA60AB1DABDAAC97AD53AE0FAECBAF85B040B0FA",
      INIT_3D => X"99BC9A819B459C0A9CCE9D929E559F189FDBA09EA160A222A2E3A3A5A466A526",
      INIT_3E => X"8D528E1A8EE28FAA9071913891FF92C6938D9454951A95E096A6976C983298F7",
      INIT_3F => X"80C88191825A832383EC84B5857D8646870F87D888A089698A318AFA8BC28C8A",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => Q(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"00000000001111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => DOADO(15 downto 0),
      DOBDO(15 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => rst,
      RSTRAMB => rst,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"1111"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO__parameterized0\ is
  port (
    \sdp_bl.ramb18_dp_bl.ram18_bl_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO__parameterized0\ : entity is "unimacro_BRAM_SDP_MACRO";
end \lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO__parameterized0\;

architecture STRUCTURE of \lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO__parameterized0\ is
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \sdp_bl.ramb18_dp_bl.ram18_bl\ : label is "PRIMITIVE";
begin
\sdp_bl.ramb18_dp_bl.ram18_bl\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"148C16EC1A1E1E2022ED287F2ECD35CC3D7245B14E7857B961606B5C75987FFF",
      INIT_01 => X"4D0446073F3B38B2327A2CA42740225C1E071A4D173B14DC13381259124512FF",
      INIT_02 => X"AA42A70EA3659F489ABB95C290638AA5848F7E2C778770AA69A462815B515422",
      INIT_03 => X"A96AAB58AD2BAEDAB05EB1ADB2BFB38DB40EB43AB40BB37AB282B11DAF48ACFF",
      INIT_04 => X"8E468F4D906C91A592F9946A95F7979F99619B3B9D299F28A133A346A559A768",
      INIT_05 => X"806781A682CD83DC84D685BC86928759881688CC897E8A328AEA8BAB8C798D56",
      INIT_06 => X"646D660B67C569956B756D616F5271447332751876F178BB7A717C127D9C7F0E",
      INIT_07 => X"65CE63F4625360ED5FC55EDD5E355DCE5DA85DC15E175EA85F70606D619962F0",
      INIT_08 => X"8E968C838A3F87D0853E828E7FC97CF67A1C7743747371B36F0A6C7F6A1867DB",
      INIT_09 => X"8D518F2990D8925793A094AE957C9608964D964C960295709496937792149073",
      INIT_0A => X"72A372FE73A1748875B0771178A77A6B7C567E60808182B084E5871989418B57",
      INIT_0B => X"8F7A8C9189A986CB840081527ECA7C6E7A48785B76AF75487429735572CD7292",
      INIT_0C => X"A137A2BAA3D5A487A4D1A4B4A435A357A220A0979EC19CA99A5697D195249259",
      INIT_0D => X"63E168406CC3715F76077AAE7F4783C788228C4C903B93E697449A4E9CFD9F4C",
      INIT_0E => X"50664E064C214ABE49DD498249AB4A584B844D2C4F4B51D854CC581F5BC55FB4",
      INIT_0F => X"997594F990398B43862480EB7BA7766571366C266745629E5E3F5A335684533D",
      INIT_10 => X"A2B0A5EDA8B9AB09ACD8AE20AEDCAF0BAEACADC0AC4AAA4DA7CFA4D8A1709DA1",
      INIT_11 => X"5BEB5F1162A5669B6AE66F78744179327E3C834F885A8D4E921B96B39B079F0A",
      INIT_12 => X"74CC6F666A5D65BD61935DEA5ACA583A564154E2542053F9546D55795716593F",
      INIT_13 => X"C744C4F1C1FABE69BA4CB5AFB0A2AB34A5789F7D995793178CCF869380737A80",
      INIT_14 => X"8D7995709D0BA43BAAEDB115B6A4BB90BFCEC357C625C833C980CA0BC9D8C8E9",
      INIT_15 => X"1B751EF9233F283C2DE434283AFA424749FF520F5A6362E66B85742B7CC38539",
      INIT_16 => X"4F9D475E3F8E383E317E2B5E25EB21301D391A0E17B61636159015C516D518BC",
      INIT_17 => X"D2CCCD5CC74BC0A4B972B1C3A9A5A127985A8F50861B7CCF737F6A3E6120583A",
      INIT_18 => X"CCC4D1A3D612DA06DD73E04DE28CE426E514E551E4D7E3A4E1B5DF0CDBABD794",
      INIT_19 => X"6D5C727177D07D73835189628F9C95F79C65A2DCA94FAFB2B5F5BC0DC1ECC782",
      INIT_1A => X"48A448C0491449A54A784B924CF74EAC50B4531155C758D75C41600564226895",
      INIT_1B => X"5652550D53D1529F517550544F3D4E314D334C444B674AA149F5496748FC48B9",
      INIT_1C => X"7625733270666DC16B4268E966B3649F62AB60D45F185D745BE65A6A58FF57A2",
      INIT_1D => X"B0FCAD7EA9D8A614A2389E4E9A5A966692778E948AC2870683647FE07C7E793F",
      INIT_1E => X"BF0AC123C2D1C411C4E2C546C53EC4CAC3F0C2B2C116BF20BCD7BA41B766B44C",
      INIT_1F => X"76EC7C30818A86EF8C5491B096F69C1DA11AA5E4AA70AEB7B2B1B655B99FBC87",
      INIT_20 => X"4848486548E749D04B204CD94EF9517F546757AE5B4F5F446385680D6CD171C9",
      INIT_21 => X"68A165F36335606E5DA75AE8583955A4533250EB4ED74CFF4B6B4A22492B488B",
      INIT_22 => X"7DD67DC57D977D457CCC7C277B537A4D791477A876087436723570076DB16B38",
      INIT_23 => X"848982DB816B80397F407E7F7DF07D8F7D557D3B7D3C7D517D717D957DB77DCF",
      INIT_24 => X"B690B34EAFE0AC54A8B5A50DA1679DCE9A4B96E693A790968DB88B1188A58678",
      INIT_25 => X"B444B867BBFABEF9C162C337C479C52BC552C4F4C417C2C4C104BEE1BC65B99C",
      INIT_26 => X"43D74B2852BF5A8B62786A75726F7A56821889A590EE97E59E7CA4A7AA5DAF94",
      INIT_27 => X"20AE1D141A48184F172B16DC176118B71AD81DBD215E25B02AA73035364C3CDD",
      INIT_28 => X"9F7496808D4F83F87A8F712967DC5EBC55DF4D58453A3D97367F30022A2E250E",
      INIT_29 => X"DCC5DED9E01BE086E018DECFDCAED9B7D5EFD15FCC10C60DBF64B822B058A818",
      INIT_2A => X"74FF7CA3847B8C7294769C72A451AC00B36ABA7DC124C750CCEED1F0D647D9E7",
      INIT_2B => X"41BC3FF33ED53E673EAE3FAC416143CD46EB4AB64F28543659D75FFD669B6DA1",
      INIT_2C => X"91B48C4D86A780D27ADE74DC6EDD68F2632D5D9D585453634ED74AC1472D4428",
      INIT_2D => X"A8D6AB63AD75AF02B006B07BB05EAFAEAE6AAC95AA32A746A3D69FEC9B9196D0",
      INIT_2E => X"62CC66C16AFE6F7A742778FA7DE782DF87D58CBB918496209A839EA0A26AA5D4",
      INIT_2F => X"5AAB582255EB54115298518750E350B050F151A652D0546E567E58FB5BE15F29",
      INIT_30 => X"91868EC08BC0888B8527819D7DF37A32766372916EC46B07676563E760975D80",
      INIT_31 => X"9AD29BD69CB89D749E029E5F9E849E6D9E169D7C9C9D9B769A0798509651940D",
      INIT_32 => X"8A6D8AE08B6E8C188CDD8DBE8EB78FC790EB9220936294AB95F79740988299B4",
      INIT_33 => X"882988B18917895F898D89A689AE89AB89A08994898A8988899189A989D48A14",
      INIT_34 => X"6AD36D80702572BD754077A979F47C1D7E1F7FF981A8832A848085AA86A8877D",
      INIT_35 => X"524451D351BA51F752875366548F55FE57AC59945BAE5DF3605C62E2657C6825",
      INIT_36 => X"812E7CEE78B5748D70806C9568D5654A61F95EEB5C2459AA578155AE5431530E",
      INIT_37 => X"ADE6AD5BAC75AB33A996A7A0A555A2B99FD19CA39935958F91B88DBB899E856C",
      INIT_38 => X"927E952097CA9A729D0F9F9AA209A453A671A85BAA08AB73AC96AD69ADEAAE15",
      INIT_39 => X"7E117DCC7DB57DD27E267EB27F7A807C81BA833184DF86C088D18B0D8D6C8FEA",
      INIT_3A => X"84A9855685BE85E585D1858A8516847E83C98300822C815580837FBF7F117E7F",
      INIT_3B => X"54E0591E5D5C618E65A8699F6D6A7100745977707A3E7CC17EF580D9826D83B1",
      INIT_3C => X"395E3726359834B0346934BE35A5371639083B6E3E3E416944E548A24C9450AD",
      INIT_3D => X"A7D89E9A955F8C3A833F7A7F720D69F8624F5B2154794E6248E444063FCF3C41",
      INIT_3E => X"FFBDFFFEFF4AFDA6FB19F7AAF366EE57E88BE213DAFFD361CB4BC2D1BA08B103",
      INIT_3F => X"8B6996BCA1E0ACBDB73DC14ACAD1D3BEDBFEE382EA3BF01DF51DF932FC56FE85",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => Q(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"00000000001111",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \sdp_bl.ramb18_dp_bl.ram18_bl_0\(15 downto 0),
      DOBDO(15 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => rst,
      RSTRAMB => rst,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"1111"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_audio_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_audio_clk_wiz : entity is "audio_clk_wiz";
end lab4_design_lab4_ip_0_6_audio_clk_wiz;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_audio_clk_wiz is
begin
inst: entity work.lab4_design_lab4_ip_0_6_audio_clk_wiz_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      clk_out2 => clk_out2,
      resetn => resetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_audio_init is
  port (
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    CLK : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_audio_init : entity is "audio_init";
end lab4_design_lab4_ip_0_6_audio_init;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_audio_init is
  signal data0 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_i[7]_i_1_n_0\ : STD_LOGIC;
  signal delayEn : STD_LOGIC;
  signal delayEn_i_1_n_0 : STD_LOGIC;
  signal delayEn_i_2_n_0 : STD_LOGIC;
  signal delaycnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal delaycnt0 : STD_LOGIC;
  signal \delaycnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__0_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__1_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__2_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__3_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__4_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_1\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_4\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__5_n_7\ : STD_LOGIC;
  signal \delaycnt0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \delaycnt0_carry__6_n_2\ : STD_LOGIC;
  signal \delaycnt0_carry__6_n_3\ : STD_LOGIC;
  signal \delaycnt0_carry__6_n_5\ : STD_LOGIC;
  signal \delaycnt0_carry__6_n_6\ : STD_LOGIC;
  signal \delaycnt0_carry__6_n_7\ : STD_LOGIC;
  signal delaycnt0_carry_i_1_n_0 : STD_LOGIC;
  signal delaycnt0_carry_i_2_n_0 : STD_LOGIC;
  signal delaycnt0_carry_i_3_n_0 : STD_LOGIC;
  signal delaycnt0_carry_i_4_n_0 : STD_LOGIC;
  signal delaycnt0_carry_n_0 : STD_LOGIC;
  signal delaycnt0_carry_n_1 : STD_LOGIC;
  signal delaycnt0_carry_n_2 : STD_LOGIC;
  signal delaycnt0_carry_n_3 : STD_LOGIC;
  signal delaycnt0_carry_n_4 : STD_LOGIC;
  signal delaycnt0_carry_n_5 : STD_LOGIC;
  signal delaycnt0_carry_n_6 : STD_LOGIC;
  signal delaycnt0_carry_n_7 : STD_LOGIC;
  signal \delaycnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \initA[0]_i_1_n_0\ : STD_LOGIC;
  signal \initA[6]_i_3_n_0\ : STD_LOGIC;
  signal initA_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal initEn : STD_LOGIC;
  signal \initWord[0]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[10]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[11]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[12]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[13]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[14]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[15]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[16]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[17]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[18]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[19]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[20]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[21]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[23]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[30]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[30]_i_2_n_0\ : STD_LOGIC;
  signal \initWord[30]_i_3_n_0\ : STD_LOGIC;
  signal \initWord[5]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[8]_i_1_n_0\ : STD_LOGIC;
  signal \initWord[9]_i_1_n_0\ : STD_LOGIC;
  signal \initWord_reg_n_0_[0]\ : STD_LOGIC;
  signal \initWord_reg_n_0_[5]\ : STD_LOGIC;
  signal msg : STD_LOGIC;
  signal msg0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_10_n_0\ : STD_LOGIC;
  signal \state[3]_i_11_n_0\ : STD_LOGIC;
  signal \state[3]_i_12_n_0\ : STD_LOGIC;
  signal \state[3]_i_13_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal \state[3]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_7_n_0\ : STD_LOGIC;
  signal \state[3]_i_8_n_0\ : STD_LOGIC;
  signal \state[3]_i_9_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal stb : STD_LOGIC;
  signal stb_i_1_n_0 : STD_LOGIC;
  signal twi_controller_n_0 : STD_LOGIC;
  signal twi_controller_n_1 : STD_LOGIC;
  signal twi_controller_n_2 : STD_LOGIC;
  signal twi_controller_n_3 : STD_LOGIC;
  signal twi_controller_n_4 : STD_LOGIC;
  signal twi_controller_n_5 : STD_LOGIC;
  signal twi_controller_n_6 : STD_LOGIC;
  signal \NLW_delaycnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_delaycnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_i[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_i[5]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of delayEn_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \delaycnt[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \initA[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \initA[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \initA[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \initA[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \initA[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \initWord[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \initWord[11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \initWord[30]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \initWord[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of msg_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \state[1]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \state[3]_i_10\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of stb_i_1 : label is "soft_lutpair26";
begin
\data_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FF0"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \data_i[0]_i_2_n_0\,
      O => \data_i[0]_i_1_n_0\
    );
\data_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44FFF0004400F000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \initWord_reg_n_0_[0]\,
      I2 => data2(0),
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => data1(0),
      O => \data_i[0]_i_2_n_0\
    );
\data_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002C00000020"
    )
        port map (
      I0 => data1(1),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => data2(1),
      O => \data_i[1]_i_1_n_0\
    );
\data_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFEAAAEA"
    )
        port map (
      I0 => \data_i[5]_i_2_n_0\,
      I1 => data2(2),
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => data1(2),
      O => \data_i[2]_i_1_n_0\
    );
\data_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFEAAAEA"
    )
        port map (
      I0 => \data_i[5]_i_2_n_0\,
      I1 => data2(3),
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => data1(3),
      O => \data_i[3]_i_1_n_0\
    );
\data_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0C0A00000C0A000"
    )
        port map (
      I0 => data2(4),
      I1 => data1(4),
      I2 => \state[1]_i_2_n_0\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \initWord_reg_n_0_[5]\,
      O => \data_i[4]_i_1_n_0\
    );
\data_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFEAAAEA"
    )
        port map (
      I0 => \data_i[5]_i_2_n_0\,
      I1 => data2(5),
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => data1(5),
      O => \data_i[5]_i_1_n_0\
    );
\data_i[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3EFCFCFC"
    )
        port map (
      I0 => \initWord_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \data_i[5]_i_2_n_0\
    );
\data_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80010000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => data0(6),
      I5 => \data_i[6]_i_2_n_0\,
      O => \data_i[6]_i_1_n_0\
    );
\data_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8380000C8080000"
    )
        port map (
      I0 => data2(6),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \initWord_reg_n_0_[5]\,
      I4 => \state[1]_i_2_n_0\,
      I5 => data1(7),
      O => \data_i[6]_i_2_n_0\
    );
\data_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002C00000020"
    )
        port map (
      I0 => data1(7),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => data2(7),
      O => \data_i[7]_i_1_n_0\
    );
\data_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[0]_i_1_n_0\,
      Q => data_i(0),
      R => '0'
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[1]_i_1_n_0\,
      Q => data_i(1),
      R => '0'
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[2]_i_1_n_0\,
      Q => data_i(2),
      R => '0'
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[3]_i_1_n_0\,
      Q => data_i(3),
      R => '0'
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[4]_i_1_n_0\,
      Q => data_i(4),
      R => '0'
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[5]_i_1_n_0\,
      Q => data_i(5),
      R => '0'
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[6]_i_1_n_0\,
      Q => data_i(6),
      R => '0'
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => \data_i[7]_i_1_n_0\,
      Q => data_i(7),
      R => '0'
    );
delayEn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAEAAA00000000"
    )
        port map (
      I0 => delayEn,
      I1 => delayEn_i_2_n_0,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state[3]_i_3_n_0\,
      I5 => s00_axi_aresetn,
      O => delayEn_i_1_n_0
    );
delayEn_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      O => delayEn_i_2_n_0
    );
delayEn_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => delayEn_i_1_n_0,
      Q => delayEn,
      R => '0'
    );
delaycnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delaycnt0_carry_n_0,
      CO(2) => delaycnt0_carry_n_1,
      CO(1) => delaycnt0_carry_n_2,
      CO(0) => delaycnt0_carry_n_3,
      CYINIT => delaycnt(0),
      DI(3 downto 0) => delaycnt(4 downto 1),
      O(3) => delaycnt0_carry_n_4,
      O(2) => delaycnt0_carry_n_5,
      O(1) => delaycnt0_carry_n_6,
      O(0) => delaycnt0_carry_n_7,
      S(3) => delaycnt0_carry_i_1_n_0,
      S(2) => delaycnt0_carry_i_2_n_0,
      S(1) => delaycnt0_carry_i_3_n_0,
      S(0) => delaycnt0_carry_i_4_n_0
    );
\delaycnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delaycnt0_carry_n_0,
      CO(3) => \delaycnt0_carry__0_n_0\,
      CO(2) => \delaycnt0_carry__0_n_1\,
      CO(1) => \delaycnt0_carry__0_n_2\,
      CO(0) => \delaycnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(8 downto 5),
      O(3) => \delaycnt0_carry__0_n_4\,
      O(2) => \delaycnt0_carry__0_n_5\,
      O(1) => \delaycnt0_carry__0_n_6\,
      O(0) => \delaycnt0_carry__0_n_7\,
      S(3) => \delaycnt0_carry__0_i_1_n_0\,
      S(2) => \delaycnt0_carry__0_i_2_n_0\,
      S(1) => \delaycnt0_carry__0_i_3_n_0\,
      S(0) => \delaycnt0_carry__0_i_4_n_0\
    );
\delaycnt0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(8),
      O => \delaycnt0_carry__0_i_1_n_0\
    );
\delaycnt0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(7),
      O => \delaycnt0_carry__0_i_2_n_0\
    );
\delaycnt0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(6),
      O => \delaycnt0_carry__0_i_3_n_0\
    );
\delaycnt0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(5),
      O => \delaycnt0_carry__0_i_4_n_0\
    );
\delaycnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__0_n_0\,
      CO(3) => \delaycnt0_carry__1_n_0\,
      CO(2) => \delaycnt0_carry__1_n_1\,
      CO(1) => \delaycnt0_carry__1_n_2\,
      CO(0) => \delaycnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(12 downto 9),
      O(3) => \delaycnt0_carry__1_n_4\,
      O(2) => \delaycnt0_carry__1_n_5\,
      O(1) => \delaycnt0_carry__1_n_6\,
      O(0) => \delaycnt0_carry__1_n_7\,
      S(3) => \delaycnt0_carry__1_i_1_n_0\,
      S(2) => \delaycnt0_carry__1_i_2_n_0\,
      S(1) => \delaycnt0_carry__1_i_3_n_0\,
      S(0) => \delaycnt0_carry__1_i_4_n_0\
    );
\delaycnt0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(12),
      O => \delaycnt0_carry__1_i_1_n_0\
    );
\delaycnt0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(11),
      O => \delaycnt0_carry__1_i_2_n_0\
    );
\delaycnt0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(10),
      O => \delaycnt0_carry__1_i_3_n_0\
    );
\delaycnt0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(9),
      O => \delaycnt0_carry__1_i_4_n_0\
    );
\delaycnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__1_n_0\,
      CO(3) => \delaycnt0_carry__2_n_0\,
      CO(2) => \delaycnt0_carry__2_n_1\,
      CO(1) => \delaycnt0_carry__2_n_2\,
      CO(0) => \delaycnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(16 downto 13),
      O(3) => \delaycnt0_carry__2_n_4\,
      O(2) => \delaycnt0_carry__2_n_5\,
      O(1) => \delaycnt0_carry__2_n_6\,
      O(0) => \delaycnt0_carry__2_n_7\,
      S(3) => \delaycnt0_carry__2_i_1_n_0\,
      S(2) => \delaycnt0_carry__2_i_2_n_0\,
      S(1) => \delaycnt0_carry__2_i_3_n_0\,
      S(0) => \delaycnt0_carry__2_i_4_n_0\
    );
\delaycnt0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(16),
      O => \delaycnt0_carry__2_i_1_n_0\
    );
\delaycnt0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(15),
      O => \delaycnt0_carry__2_i_2_n_0\
    );
\delaycnt0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(14),
      O => \delaycnt0_carry__2_i_3_n_0\
    );
\delaycnt0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(13),
      O => \delaycnt0_carry__2_i_4_n_0\
    );
\delaycnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__2_n_0\,
      CO(3) => \delaycnt0_carry__3_n_0\,
      CO(2) => \delaycnt0_carry__3_n_1\,
      CO(1) => \delaycnt0_carry__3_n_2\,
      CO(0) => \delaycnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(20 downto 17),
      O(3) => \delaycnt0_carry__3_n_4\,
      O(2) => \delaycnt0_carry__3_n_5\,
      O(1) => \delaycnt0_carry__3_n_6\,
      O(0) => \delaycnt0_carry__3_n_7\,
      S(3) => \delaycnt0_carry__3_i_1_n_0\,
      S(2) => \delaycnt0_carry__3_i_2_n_0\,
      S(1) => \delaycnt0_carry__3_i_3_n_0\,
      S(0) => \delaycnt0_carry__3_i_4_n_0\
    );
\delaycnt0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(20),
      O => \delaycnt0_carry__3_i_1_n_0\
    );
\delaycnt0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(19),
      O => \delaycnt0_carry__3_i_2_n_0\
    );
\delaycnt0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(18),
      O => \delaycnt0_carry__3_i_3_n_0\
    );
\delaycnt0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(17),
      O => \delaycnt0_carry__3_i_4_n_0\
    );
\delaycnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__3_n_0\,
      CO(3) => \delaycnt0_carry__4_n_0\,
      CO(2) => \delaycnt0_carry__4_n_1\,
      CO(1) => \delaycnt0_carry__4_n_2\,
      CO(0) => \delaycnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(24 downto 21),
      O(3) => \delaycnt0_carry__4_n_4\,
      O(2) => \delaycnt0_carry__4_n_5\,
      O(1) => \delaycnt0_carry__4_n_6\,
      O(0) => \delaycnt0_carry__4_n_7\,
      S(3) => \delaycnt0_carry__4_i_1_n_0\,
      S(2) => \delaycnt0_carry__4_i_2_n_0\,
      S(1) => \delaycnt0_carry__4_i_3_n_0\,
      S(0) => \delaycnt0_carry__4_i_4_n_0\
    );
\delaycnt0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(24),
      O => \delaycnt0_carry__4_i_1_n_0\
    );
\delaycnt0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(23),
      O => \delaycnt0_carry__4_i_2_n_0\
    );
\delaycnt0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(22),
      O => \delaycnt0_carry__4_i_3_n_0\
    );
\delaycnt0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(21),
      O => \delaycnt0_carry__4_i_4_n_0\
    );
\delaycnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__4_n_0\,
      CO(3) => \delaycnt0_carry__5_n_0\,
      CO(2) => \delaycnt0_carry__5_n_1\,
      CO(1) => \delaycnt0_carry__5_n_2\,
      CO(0) => \delaycnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delaycnt(28 downto 25),
      O(3) => \delaycnt0_carry__5_n_4\,
      O(2) => \delaycnt0_carry__5_n_5\,
      O(1) => \delaycnt0_carry__5_n_6\,
      O(0) => \delaycnt0_carry__5_n_7\,
      S(3) => \delaycnt0_carry__5_i_1_n_0\,
      S(2) => \delaycnt0_carry__5_i_2_n_0\,
      S(1) => \delaycnt0_carry__5_i_3_n_0\,
      S(0) => \delaycnt0_carry__5_i_4_n_0\
    );
\delaycnt0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(28),
      O => \delaycnt0_carry__5_i_1_n_0\
    );
\delaycnt0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(27),
      O => \delaycnt0_carry__5_i_2_n_0\
    );
\delaycnt0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(26),
      O => \delaycnt0_carry__5_i_3_n_0\
    );
\delaycnt0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(25),
      O => \delaycnt0_carry__5_i_4_n_0\
    );
\delaycnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \delaycnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_delaycnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \delaycnt0_carry__6_n_2\,
      CO(0) => \delaycnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => delaycnt(30 downto 29),
      O(3) => \NLW_delaycnt0_carry__6_O_UNCONNECTED\(3),
      O(2) => \delaycnt0_carry__6_n_5\,
      O(1) => \delaycnt0_carry__6_n_6\,
      O(0) => \delaycnt0_carry__6_n_7\,
      S(3) => '0',
      S(2) => \delaycnt0_carry__6_i_1_n_0\,
      S(1) => \delaycnt0_carry__6_i_2_n_0\,
      S(0) => \delaycnt0_carry__6_i_3_n_0\
    );
\delaycnt0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(31),
      O => \delaycnt0_carry__6_i_1_n_0\
    );
\delaycnt0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(30),
      O => \delaycnt0_carry__6_i_2_n_0\
    );
\delaycnt0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(29),
      O => \delaycnt0_carry__6_i_3_n_0\
    );
delaycnt0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(4),
      O => delaycnt0_carry_i_1_n_0
    );
delaycnt0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(3),
      O => delaycnt0_carry_i_2_n_0
    );
delaycnt0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(2),
      O => delaycnt0_carry_i_3_n_0
    );
delaycnt0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(1),
      O => delaycnt0_carry_i_4_n_0
    );
\delaycnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delaycnt(0),
      O => \delaycnt[0]_i_1_n_0\
    );
\delaycnt[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delayEn,
      O => delaycnt0
    );
\delaycnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt[0]_i_1_n_0\,
      Q => delaycnt(0),
      R => delaycnt0
    );
\delaycnt_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__1_n_6\,
      Q => delaycnt(10),
      S => delaycnt0
    );
\delaycnt_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__1_n_5\,
      Q => delaycnt(11),
      S => delaycnt0
    );
\delaycnt_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__1_n_4\,
      Q => delaycnt(12),
      S => delaycnt0
    );
\delaycnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__2_n_7\,
      Q => delaycnt(13),
      R => delaycnt0
    );
\delaycnt_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__2_n_6\,
      Q => delaycnt(14),
      S => delaycnt0
    );
\delaycnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__2_n_5\,
      Q => delaycnt(15),
      R => delaycnt0
    );
\delaycnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__2_n_4\,
      Q => delaycnt(16),
      R => delaycnt0
    );
\delaycnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__3_n_7\,
      Q => delaycnt(17),
      R => delaycnt0
    );
\delaycnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__3_n_6\,
      Q => delaycnt(18),
      R => delaycnt0
    );
\delaycnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__3_n_5\,
      Q => delaycnt(19),
      R => delaycnt0
    );
\delaycnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => delaycnt0_carry_n_7,
      Q => delaycnt(1),
      R => delaycnt0
    );
\delaycnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__3_n_4\,
      Q => delaycnt(20),
      R => delaycnt0
    );
\delaycnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__4_n_7\,
      Q => delaycnt(21),
      R => delaycnt0
    );
\delaycnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__4_n_6\,
      Q => delaycnt(22),
      R => delaycnt0
    );
\delaycnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__4_n_5\,
      Q => delaycnt(23),
      R => delaycnt0
    );
\delaycnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__4_n_4\,
      Q => delaycnt(24),
      R => delaycnt0
    );
\delaycnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__5_n_7\,
      Q => delaycnt(25),
      R => delaycnt0
    );
\delaycnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__5_n_6\,
      Q => delaycnt(26),
      R => delaycnt0
    );
\delaycnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__5_n_5\,
      Q => delaycnt(27),
      R => delaycnt0
    );
\delaycnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__5_n_4\,
      Q => delaycnt(28),
      R => delaycnt0
    );
\delaycnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__6_n_7\,
      Q => delaycnt(29),
      R => delaycnt0
    );
\delaycnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => delaycnt0_carry_n_6,
      Q => delaycnt(2),
      R => delaycnt0
    );
\delaycnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__6_n_6\,
      Q => delaycnt(30),
      R => delaycnt0
    );
\delaycnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__6_n_5\,
      Q => delaycnt(31),
      R => delaycnt0
    );
\delaycnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => delaycnt0_carry_n_5,
      Q => delaycnt(3),
      R => delaycnt0
    );
\delaycnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => delaycnt0_carry_n_4,
      Q => delaycnt(4),
      R => delaycnt0
    );
\delaycnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__0_n_7\,
      Q => delaycnt(5),
      R => delaycnt0
    );
\delaycnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__0_n_6\,
      Q => delaycnt(6),
      S => delaycnt0
    );
\delaycnt_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__0_n_5\,
      Q => delaycnt(7),
      S => delaycnt0
    );
\delaycnt_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__0_n_4\,
      Q => delaycnt(8),
      S => delaycnt0
    );
\delaycnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \delaycnt0_carry__1_n_7\,
      Q => delaycnt(9),
      R => delaycnt0
    );
\initA[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => initA_reg(0),
      O => \initA[0]_i_1_n_0\
    );
\initA[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      O => p_1_in(1)
    );
\initA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(0),
      I2 => initA_reg(1),
      O => p_1_in(2)
    );
\initA[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(2),
      I2 => initA_reg(1),
      I3 => initA_reg(0),
      O => p_1_in(3)
    );
\initA[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FF00"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(0),
      I2 => initA_reg(1),
      I3 => initA_reg(4),
      I4 => initA_reg(2),
      O => p_1_in(4)
    );
\initA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => initA_reg(5),
      I1 => initA_reg(3),
      I2 => initA_reg(0),
      I3 => initA_reg(1),
      I4 => initA_reg(4),
      I5 => initA_reg(2),
      O => p_1_in(5)
    );
\initA[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => initA_reg(6),
      I1 => initA_reg(5),
      I2 => initA_reg(2),
      I3 => initA_reg(4),
      I4 => \initWord[30]_i_3_n_0\,
      I5 => initA_reg(3),
      O => p_1_in(6)
    );
\initA[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \state[3]_i_3_n_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => initEn,
      O => \initA[6]_i_3_n_0\
    );
\initA_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => \initA[0]_i_1_n_0\,
      Q => initA_reg(0),
      R => rst
    );
\initA_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => p_1_in(1),
      Q => initA_reg(1),
      R => rst
    );
\initA_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => p_1_in(2),
      Q => initA_reg(2),
      R => rst
    );
\initA_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => p_1_in(3),
      Q => initA_reg(3),
      R => rst
    );
\initA_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => p_1_in(4),
      Q => initA_reg(4),
      R => rst
    );
\initA_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => p_1_in(5),
      Q => initA_reg(5),
      R => rst
    );
\initA_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_5,
      D => p_1_in(6),
      Q => initA_reg(6),
      R => rst
    );
initEn_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => twi_controller_n_6,
      Q => initEn,
      R => '0'
    );
\initWord[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => initA_reg(5),
      I1 => initA_reg(0),
      I2 => initA_reg(1),
      O => \initWord[0]_i_1_n_0\
    );
\initWord[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0050004800180002"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(2),
      I2 => initA_reg(4),
      I3 => initA_reg(5),
      I4 => initA_reg(1),
      I5 => initA_reg(0),
      O => \initWord[10]_i_1_n_0\
    );
\initWord[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03030002"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(1),
      I2 => initA_reg(0),
      I3 => initA_reg(4),
      I4 => initA_reg(5),
      O => \initWord[11]_i_1_n_0\
    );
\initWord[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010004"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(3),
      I2 => initA_reg(5),
      I3 => initA_reg(0),
      I4 => initA_reg(2),
      I5 => initA_reg(4),
      O => \initWord[12]_i_1_n_0\
    );
\initWord[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F002614040"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(4),
      I2 => initA_reg(1),
      I3 => initA_reg(0),
      I4 => initA_reg(3),
      I5 => initA_reg(5),
      O => \initWord[13]_i_1_n_0\
    );
\initWord[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000106100000A00"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      I2 => initA_reg(2),
      I3 => initA_reg(4),
      I4 => initA_reg(5),
      I5 => initA_reg(3),
      O => \initWord[14]_i_1_n_0\
    );
\initWord[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000C02"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(1),
      I2 => initA_reg(2),
      I3 => initA_reg(4),
      I4 => initA_reg(5),
      I5 => initA_reg(3),
      O => \initWord[15]_i_1_n_0\
    );
\initWord[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007A008400A0003F"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(1),
      I2 => initA_reg(3),
      I3 => initA_reg(5),
      I4 => initA_reg(0),
      I5 => initA_reg(4),
      O => \initWord[16]_i_1_n_0\
    );
\initWord[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B0B382A0B182A1A"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(5),
      I2 => initA_reg(1),
      I3 => initA_reg(3),
      I4 => initA_reg(4),
      I5 => initA_reg(2),
      O => \initWord[17]_i_1_n_0\
    );
\initWord[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8690000A9A1"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(2),
      I2 => initA_reg(4),
      I3 => initA_reg(0),
      I4 => initA_reg(5),
      I5 => initA_reg(1),
      O => \initWord[18]_i_1_n_0\
    );
\initWord[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF003CFE123C"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(3),
      I2 => initA_reg(2),
      I3 => initA_reg(1),
      I4 => initA_reg(4),
      I5 => initA_reg(5),
      O => \initWord[19]_i_1_n_0\
    );
\initWord[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000900A1005F"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      I2 => initA_reg(3),
      I3 => initA_reg(5),
      I4 => initA_reg(4),
      I5 => initA_reg(2),
      O => \initWord[20]_i_1_n_0\
    );
\initWord[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4545050415141404"
    )
        port map (
      I0 => initA_reg(5),
      I1 => initA_reg(3),
      I2 => initA_reg(4),
      I3 => initA_reg(0),
      I4 => initA_reg(1),
      I5 => initA_reg(2),
      O => \initWord[21]_i_1_n_0\
    );
\initWord[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0000800000038"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(1),
      I2 => initA_reg(3),
      I3 => initA_reg(5),
      I4 => initA_reg(4),
      I5 => initA_reg(2),
      O => \initWord[23]_i_1_n_0\
    );
\initWord[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => initA_reg(5),
      I1 => \initWord[30]_i_3_n_0\,
      I2 => initA_reg(4),
      I3 => initA_reg(2),
      I4 => initA_reg(3),
      I5 => initA_reg(6),
      O => \initWord[30]_i_1_n_0\
    );
\initWord[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => initA_reg(5),
      I1 => initA_reg(1),
      O => \initWord[30]_i_2_n_0\
    );
\initWord[30]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      O => \initWord[30]_i_3_n_0\
    );
\initWord[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      I2 => initA_reg(5),
      O => \initWord[5]_i_1_n_0\
    );
\initWord[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0EFF5FFB5FFA0AF"
    )
        port map (
      I0 => initA_reg(5),
      I1 => initA_reg(4),
      I2 => initA_reg(1),
      I3 => initA_reg(0),
      I4 => initA_reg(3),
      I5 => initA_reg(2),
      O => \initWord[8]_i_1_n_0\
    );
\initWord[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0204070203060502"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(4),
      I2 => initA_reg(5),
      I3 => initA_reg(3),
      I4 => initA_reg(1),
      I5 => initA_reg(0),
      O => \initWord[9]_i_1_n_0\
    );
\initWord_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[0]_i_1_n_0\,
      Q => \initWord_reg_n_0_[0]\,
      R => '0'
    );
\initWord_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[10]_i_1_n_0\,
      Q => data2(2),
      R => '0'
    );
\initWord_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[11]_i_1_n_0\,
      Q => data2(3),
      R => '0'
    );
\initWord_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[12]_i_1_n_0\,
      Q => data2(4),
      R => '0'
    );
\initWord_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[13]_i_1_n_0\,
      Q => data2(5),
      R => '0'
    );
\initWord_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[14]_i_1_n_0\,
      Q => data2(6),
      R => '0'
    );
\initWord_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[15]_i_1_n_0\,
      Q => data2(7),
      R => '0'
    );
\initWord_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[16]_i_1_n_0\,
      Q => data1(0),
      R => '0'
    );
\initWord_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[17]_i_1_n_0\,
      Q => data1(1),
      R => '0'
    );
\initWord_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[18]_i_1_n_0\,
      Q => data1(2),
      R => '0'
    );
\initWord_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[19]_i_1_n_0\,
      Q => data1(3),
      R => '0'
    );
\initWord_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[20]_i_1_n_0\,
      Q => data1(4),
      R => '0'
    );
\initWord_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[21]_i_1_n_0\,
      Q => data1(5),
      R => '0'
    );
\initWord_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[23]_i_1_n_0\,
      Q => data1(7),
      R => '0'
    );
\initWord_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[30]_i_2_n_0\,
      Q => data0(6),
      R => '0'
    );
\initWord_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[5]_i_1_n_0\,
      Q => \initWord_reg_n_0_[5]\,
      R => '0'
    );
\initWord_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[8]_i_1_n_0\,
      Q => data2(0),
      R => '0'
    );
\initWord_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[9]_i_1_n_0\,
      Q => data2(1),
      R => '0'
    );
msg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      O => msg0
    );
msg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => msg0,
      Q => msg,
      R => '0'
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => initA_reg(6),
      I1 => initA_reg(5),
      I2 => initA_reg(0),
      I3 => initA_reg(1),
      I4 => \state[1]_i_4_n_0\,
      I5 => \state[1]_i_5_n_0\,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(2),
      I2 => initA_reg(4),
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \initWord_reg_n_0_[0]\,
      I2 => \initWord_reg_n_0_[5]\,
      O => \state[1]_i_5_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020200000002"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \initWord_reg_n_0_[5]\,
      I4 => \initWord_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[2]_i_2_n_0\
    );
\state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(3),
      I1 => delaycnt(2),
      I2 => delaycnt(1),
      I3 => delaycnt(0),
      O => \state[3]_i_10_n_0\
    );
\state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(10),
      I1 => delaycnt(11),
      I2 => delaycnt(9),
      I3 => delaycnt(8),
      O => \state[3]_i_11_n_0\
    );
\state[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(19),
      I1 => delaycnt(18),
      I2 => delaycnt(16),
      I3 => delaycnt(17),
      O => \state[3]_i_12_n_0\
    );
\state[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(27),
      I1 => delaycnt(26),
      I2 => delaycnt(25),
      I3 => delaycnt(24),
      O => \state[3]_i_13_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \state[3]_i_5_n_0\,
      I1 => \state[3]_i_6_n_0\,
      I2 => \state[3]_i_7_n_0\,
      I3 => \state[3]_i_8_n_0\,
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => data1(5),
      I1 => data1(1),
      I2 => data1(4),
      I3 => data1(3),
      I4 => \state[3]_i_9_n_0\,
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => delaycnt(5),
      I1 => delaycnt(6),
      I2 => delaycnt(4),
      I3 => delaycnt(7),
      I4 => \state[3]_i_10_n_0\,
      O => \state[3]_i_5_n_0\
    );
\state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => delaycnt(12),
      I1 => delaycnt(14),
      I2 => delaycnt(15),
      I3 => delaycnt(13),
      I4 => \state[3]_i_11_n_0\,
      O => \state[3]_i_6_n_0\
    );
\state[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => delaycnt(20),
      I1 => delaycnt(22),
      I2 => delaycnt(21),
      I3 => delaycnt(23),
      I4 => \state[3]_i_12_n_0\,
      O => \state[3]_i_7_n_0\
    );
\state[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => delaycnt(29),
      I1 => delaycnt(31),
      I2 => delaycnt(28),
      I3 => delaycnt(30),
      I4 => \state[3]_i_13_n_0\,
      O => \state[3]_i_8_n_0\
    );
\state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => data1(2),
      I2 => data1(7),
      I3 => data1(0),
      O => \state[3]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => twi_controller_n_3,
      Q => \state_reg_n_0_[0]\,
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => twi_controller_n_2,
      Q => \state_reg_n_0_[1]\,
      S => rst
    );
\state_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => twi_controller_n_1,
      Q => \state_reg_n_0_[2]\,
      S => rst
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => twi_controller_n_4,
      D => twi_controller_n_0,
      Q => \state_reg_n_0_[3]\,
      R => rst
    );
stb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"800F"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[3]\,
      I3 => \state_reg_n_0_[2]\,
      O => stb_i_1_n_0
    );
stb_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => s00_axi_aresetn,
      D => stb_i_1_n_0,
      Q => stb,
      R => '0'
    );
twi_controller: entity work.lab4_design_lab4_ip_0_6_TWICtl
     port map (
      CLK => CLK,
      D(3) => twi_controller_n_0,
      D(2) => twi_controller_n_1,
      D(1) => twi_controller_n_2,
      D(0) => twi_controller_n_3,
      DONE_O_reg_0(0) => twi_controller_n_5,
      E(0) => twi_controller_n_4,
      Q(7 downto 0) => data_i(7 downto 0),
      initEn => initEn,
      initEn_reg => \initA[6]_i_3_n_0\,
      msg => msg,
      s00_axi_aresetn => s00_axi_aresetn,
      scl => scl,
      sda => sda,
      \state_reg[0]\(3) => \state_reg_n_0_[3]\,
      \state_reg[0]\(2) => \state_reg_n_0_[2]\,
      \state_reg[0]\(1) => \state_reg_n_0_[1]\,
      \state_reg[0]\(0) => \state_reg_n_0_[0]\,
      \state_reg[0]_0\ => \state[3]_i_3_n_0\,
      \state_reg[1]\ => \state[1]_i_2_n_0\,
      \state_reg[1]_0\ => \state[3]_i_4_n_0\,
      \state_reg[1]_1\ => \state[1]_i_3_n_0\,
      \state_reg[2]\ => twi_controller_n_6,
      \state_reg[2]_0\ => \state[2]_i_2_n_0\,
      stb => stb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_Audio_Codec_Wrapper is
  port (
    ac_mclk : out STD_LOGIC;
    BCLK_int_reg : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    sw : out STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Data_Out_int_reg[22]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[26]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[30]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_Audio_Codec_Wrapper : entity is "Audio_Codec_Wrapper";
end lab4_design_lab4_ip_0_6_Audio_Codec_Wrapper;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_Audio_Codec_Wrapper is
  signal \ac_lrclk_count__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ac_lrclk_sig_prev_reg_n_0 : STD_LOGIC;
  signal audio_inout_n_2 : STD_LOGIC;
  signal audio_inout_n_3 : STD_LOGIC;
  signal audio_inout_n_4 : STD_LOGIC;
  signal audio_inout_n_5 : STD_LOGIC;
  signal audio_inout_n_6 : STD_LOGIC;
  signal clk_50 : STD_LOGIC;
  signal \^sw\ : STD_LOGIC;
begin
  sw <= \^sw\;
\ac_lrclk_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_6,
      Q => \ac_lrclk_count__0\(0),
      R => '0'
    );
\ac_lrclk_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_5,
      Q => \ac_lrclk_count__0\(1),
      R => '0'
    );
\ac_lrclk_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_4,
      Q => \ac_lrclk_count__0\(2),
      R => '0'
    );
ac_lrclk_sig_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_2,
      Q => ac_lrclk_sig_prev_reg_n_0,
      R => '0'
    );
audio_inout: entity work.lab4_design_lab4_ip_0_6_i2s_ctl
     port map (
      BCLK_int_reg_0 => BCLK_int_reg,
      CO(0) => CO(0),
      \Data_Out_int_reg[22]_0\(3 downto 0) => \Data_Out_int_reg[22]\(3 downto 0),
      \Data_Out_int_reg[26]_0\(3 downto 0) => \Data_Out_int_reg[26]\(3 downto 0),
      \Data_Out_int_reg[30]_0\(3 downto 0) => \Data_Out_int_reg[30]\(3 downto 0),
      LRCLK_reg_0 => LRCLK_reg,
      O(2 downto 0) => O(2 downto 0),
      ac_dac_sdata => ac_dac_sdata,
      \ac_lrclk_count__0\(2 downto 0) => \ac_lrclk_count__0\(2 downto 0),
      \ac_lrclk_count_reg[2]\ => ac_lrclk_sig_prev_reg_n_0,
      ready_sig_reg => audio_inout_n_3,
      rst => rst,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => audio_inout_n_2,
      s00_axi_aresetn_1 => audio_inout_n_4,
      s00_axi_aresetn_2 => audio_inout_n_5,
      s00_axi_aresetn_3 => audio_inout_n_6,
      sw => \^sw\
    );
audiocodec_master_clock: entity work.lab4_design_lab4_ip_0_6_audio_clk_wiz
     port map (
      clk_in1 => s00_axi_aclk,
      clk_out1 => ac_mclk,
      clk_out2 => clk_50,
      resetn => s00_axi_aresetn
    );
initialize_audio: entity work.lab4_design_lab4_ip_0_6_audio_init
     port map (
      CLK => clk_50,
      rst => rst,
      s00_axi_aresetn => s00_axi_aresetn,
      scl => scl,
      sda => sda
    );
ready_sig_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_3,
      Q => \^sw\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_lab4_datapath is
  port (
    ac_mclk : out STD_LOGIC;
    DOADO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[0]_rep\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[0]_rep_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ampl_sig_reg[15]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    BCLK_int_reg : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    sw : out STD_LOGIC;
    \L_carry__2_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \L__972_carry_i_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_dac_sdata : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 14 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int[30]_i_64\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int[30]_i_49\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int[30]_i_49_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int[30]_i_34\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int[30]_i_34_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int[30]_i_19\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int[30]_i_19_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[18]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \L__972_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \L__972_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \L__972_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \L__972_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \L__972_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \L__972_carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \L__972_carry__3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \L__972_carry__3_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[18]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[22]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[22]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[22]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[22]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[26]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[26]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[26]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[26]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[30]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[30]_i_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \L__972_carry_i_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \L__972_carry__3_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_lab4_datapath : entity is "lab4_datapath";
end lab4_design_lab4_ip_0_6_lab4_datapath;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_lab4_datapath is
  signal \Data_Out_int_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[18]_i_2_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[18]_i_2_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[18]_i_2_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[18]_i_2_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_2_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_2_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_2_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_2_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_2_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_2_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[22]_i_2_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_2_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_2_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_2_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_2_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_2_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[26]_i_2_n_7\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_2_n_1\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_2_n_2\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_2_n_3\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_2_n_4\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_2_n_5\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_2_n_6\ : STD_LOGIC;
  signal \Data_Out_int_reg[30]_i_2_n_7\ : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \L__972_carry__0_n_0\ : STD_LOGIC;
  signal \L__972_carry__0_n_1\ : STD_LOGIC;
  signal \L__972_carry__0_n_2\ : STD_LOGIC;
  signal \L__972_carry__0_n_3\ : STD_LOGIC;
  signal \L__972_carry__1_n_0\ : STD_LOGIC;
  signal \L__972_carry__1_n_1\ : STD_LOGIC;
  signal \L__972_carry__1_n_2\ : STD_LOGIC;
  signal \L__972_carry__1_n_3\ : STD_LOGIC;
  signal \L__972_carry__2_n_0\ : STD_LOGIC;
  signal \L__972_carry__2_n_1\ : STD_LOGIC;
  signal \L__972_carry__2_n_2\ : STD_LOGIC;
  signal \L__972_carry__2_n_3\ : STD_LOGIC;
  signal \L__972_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \L__972_carry_n_0\ : STD_LOGIC;
  signal \L__972_carry_n_1\ : STD_LOGIC;
  signal \L__972_carry_n_2\ : STD_LOGIC;
  signal \L__972_carry_n_3\ : STD_LOGIC;
  signal \L_carry__0_n_0\ : STD_LOGIC;
  signal \L_carry__0_n_1\ : STD_LOGIC;
  signal \L_carry__0_n_2\ : STD_LOGIC;
  signal \L_carry__0_n_3\ : STD_LOGIC;
  signal \L_carry__1_n_0\ : STD_LOGIC;
  signal \L_carry__1_n_1\ : STD_LOGIC;
  signal \L_carry__1_n_2\ : STD_LOGIC;
  signal \L_carry__1_n_3\ : STD_LOGIC;
  signal \L_carry__2_n_1\ : STD_LOGIC;
  signal \L_carry__2_n_2\ : STD_LOGIC;
  signal \L_carry__2_n_3\ : STD_LOGIC;
  signal \L_carry__2_n_4\ : STD_LOGIC;
  signal L_carry_n_0 : STD_LOGIC;
  signal L_carry_n_1 : STD_LOGIC;
  signal L_carry_n_2 : STD_LOGIC;
  signal L_carry_n_3 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_Data_Out_int_reg[18]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Data_Out_int_reg[30]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_L__972_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_L__972_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_L__972_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_L__972_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_L__972_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_L__972_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
\Data_Out_int[30]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Out_int_reg[30]_i_4\(0),
      I1 => \L_carry__2_n_4\,
      O => \L_carry__2_0\(0)
    );
\Data_Out_int_reg[18]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Data_Out_int_reg[18]_i_2_n_0\,
      CO(2) => \Data_Out_int_reg[18]_i_2_n_1\,
      CO(1) => \Data_Out_int_reg[18]_i_2_n_2\,
      CO(0) => \Data_Out_int_reg[18]_i_2_n_3\,
      CYINIT => L(0),
      DI(3 downto 0) => B"0000",
      O(3) => \Data_Out_int_reg[18]_i_2_n_4\,
      O(2) => \Data_Out_int_reg[18]_i_2_n_5\,
      O(1) => \Data_Out_int_reg[18]_i_2_n_6\,
      O(0) => \NLW_Data_Out_int_reg[18]_i_2_O_UNCONNECTED\(0),
      S(3) => \Data_Out_int_reg[18]_0\(0),
      S(2 downto 1) => \Data_Out_int_reg[18]\(1 downto 0),
      S(0) => '1'
    );
\Data_Out_int_reg[22]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[18]_i_2_n_0\,
      CO(3) => \Data_Out_int_reg[22]_i_2_n_0\,
      CO(2) => \Data_Out_int_reg[22]_i_2_n_1\,
      CO(1) => \Data_Out_int_reg[22]_i_2_n_2\,
      CO(0) => \Data_Out_int_reg[22]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Data_Out_int_reg[22]_i_2_n_4\,
      O(2) => \Data_Out_int_reg[22]_i_2_n_5\,
      O(1) => \Data_Out_int_reg[22]_i_2_n_6\,
      O(0) => \Data_Out_int_reg[22]_i_2_n_7\,
      S(3) => \Data_Out_int_reg[22]\(0),
      S(2) => \Data_Out_int_reg[22]_0\(0),
      S(1) => \Data_Out_int_reg[22]_1\(0),
      S(0) => \Data_Out_int_reg[22]_2\(0)
    );
\Data_Out_int_reg[26]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[22]_i_2_n_0\,
      CO(3) => \Data_Out_int_reg[26]_i_2_n_0\,
      CO(2) => \Data_Out_int_reg[26]_i_2_n_1\,
      CO(1) => \Data_Out_int_reg[26]_i_2_n_2\,
      CO(0) => \Data_Out_int_reg[26]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Data_Out_int_reg[26]_i_2_n_4\,
      O(2) => \Data_Out_int_reg[26]_i_2_n_5\,
      O(1) => \Data_Out_int_reg[26]_i_2_n_6\,
      O(0) => \Data_Out_int_reg[26]_i_2_n_7\,
      S(3) => \Data_Out_int_reg[26]\(0),
      S(2) => \Data_Out_int_reg[26]_0\(0),
      S(1) => \Data_Out_int_reg[26]_1\(0),
      S(0) => \Data_Out_int_reg[26]_2\(0)
    );
\Data_Out_int_reg[30]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Data_Out_int_reg[26]_i_2_n_0\,
      CO(3) => \NLW_Data_Out_int_reg[30]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \Data_Out_int_reg[30]_i_2_n_1\,
      CO(1) => \Data_Out_int_reg[30]_i_2_n_2\,
      CO(0) => \Data_Out_int_reg[30]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Data_Out_int_reg[30]_i_2_n_4\,
      O(2) => \Data_Out_int_reg[30]_i_2_n_5\,
      O(1) => \Data_Out_int_reg[30]_i_2_n_6\,
      O(0) => \Data_Out_int_reg[30]_i_2_n_7\,
      S(3 downto 0) => \Data_Out_int_reg[30]\(3 downto 0)
    );
\L__972_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \L__972_carry_n_0\,
      CO(2) => \L__972_carry_n_1\,
      CO(1) => \L__972_carry_n_2\,
      CO(0) => \L__972_carry_n_3\,
      CYINIT => \Data_Out_int_reg[18]\(0),
      DI(3 downto 0) => \L__972_carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_L__972_carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \L__972_carry__0_1\(3 downto 0)
    );
\L__972_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry_n_0\,
      CO(3) => \L__972_carry__0_n_0\,
      CO(2) => \L__972_carry__0_n_1\,
      CO(1) => \L__972_carry__0_n_2\,
      CO(0) => \L__972_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \L__972_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_L__972_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \L__972_carry__1_1\(3 downto 0)
    );
\L__972_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry__0_n_0\,
      CO(3) => \L__972_carry__1_n_0\,
      CO(2) => \L__972_carry__1_n_1\,
      CO(1) => \L__972_carry__1_n_2\,
      CO(0) => \L__972_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \L__972_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_L__972_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \L__972_carry__2_1\(3 downto 0)
    );
\L__972_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry__1_n_0\,
      CO(3) => \L__972_carry__2_n_0\,
      CO(2) => \L__972_carry__2_n_1\,
      CO(1) => \L__972_carry__2_n_2\,
      CO(0) => \L__972_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \L__972_carry__3_0\(3 downto 0),
      O(3 downto 0) => \NLW_L__972_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \L__972_carry__3_1\(3 downto 0)
    );
\L__972_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__972_carry__2_n_0\,
      CO(3 downto 1) => \NLW_L__972_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => L(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \Data_Out_int_reg[18]\(0),
      O(3 downto 0) => \NLW_L__972_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \L__972_carry__3_i_1_n_0\
    );
\L__972_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Out_int_reg[18]\(0),
      I1 => \L__972_carry__3_2\(0),
      O => \L__972_carry__3_i_1_n_0\
    );
\L__972_carry_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Out_int_reg[18]\(1),
      I1 => \L__972_carry_i_1\(0),
      O => \L__972_carry_i_8\(0)
    );
L_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => L_carry_n_0,
      CO(2) => L_carry_n_1,
      CO(1) => L_carry_n_2,
      CO(0) => L_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3 downto 0) => \Data_Out_int[30]_i_64\(3 downto 0)
    );
\L_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => L_carry_n_0,
      CO(3) => \L_carry__0_n_0\,
      CO(2) => \L_carry__0_n_1\,
      CO(1) => \L_carry__0_n_2\,
      CO(0) => \L_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Out_int[30]_i_49\(3 downto 0),
      O(3 downto 0) => \slv_reg0_reg[0]_rep\(3 downto 0),
      S(3 downto 0) => \Data_Out_int[30]_i_49_0\(3 downto 0)
    );
\L_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \L_carry__0_n_0\,
      CO(3) => \L_carry__1_n_0\,
      CO(2) => \L_carry__1_n_1\,
      CO(1) => \L_carry__1_n_2\,
      CO(0) => \L_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Out_int[30]_i_34\(3 downto 0),
      O(3 downto 0) => \slv_reg0_reg[0]_rep_0\(3 downto 0),
      S(3 downto 0) => \Data_Out_int[30]_i_34_0\(3 downto 0)
    );
\L_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \L_carry__1_n_0\,
      CO(3) => CO(0),
      CO(2) => \L_carry__2_n_1\,
      CO(1) => \L_carry__2_n_2\,
      CO(0) => \L_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Out_int[30]_i_19\(3 downto 0),
      O(3) => \L_carry__2_n_4\,
      O(2 downto 0) => \ampl_sig_reg[15]\(2 downto 0),
      S(3 downto 0) => \Data_Out_int[30]_i_19_0\(3 downto 0)
    );
audio_inst: entity work.lab4_design_lab4_ip_0_6_Audio_Codec_Wrapper
     port map (
      BCLK_int_reg => BCLK_int_reg,
      CO(0) => L(0),
      \Data_Out_int_reg[22]\(3) => \Data_Out_int_reg[22]_i_2_n_4\,
      \Data_Out_int_reg[22]\(2) => \Data_Out_int_reg[22]_i_2_n_5\,
      \Data_Out_int_reg[22]\(1) => \Data_Out_int_reg[22]_i_2_n_6\,
      \Data_Out_int_reg[22]\(0) => \Data_Out_int_reg[22]_i_2_n_7\,
      \Data_Out_int_reg[26]\(3) => \Data_Out_int_reg[26]_i_2_n_4\,
      \Data_Out_int_reg[26]\(2) => \Data_Out_int_reg[26]_i_2_n_5\,
      \Data_Out_int_reg[26]\(1) => \Data_Out_int_reg[26]_i_2_n_6\,
      \Data_Out_int_reg[26]\(0) => \Data_Out_int_reg[26]_i_2_n_7\,
      \Data_Out_int_reg[30]\(3) => \Data_Out_int_reg[30]_i_2_n_4\,
      \Data_Out_int_reg[30]\(2) => \Data_Out_int_reg[30]_i_2_n_5\,
      \Data_Out_int_reg[30]\(1) => \Data_Out_int_reg[30]_i_2_n_6\,
      \Data_Out_int_reg[30]\(0) => \Data_Out_int_reg[30]_i_2_n_7\,
      LRCLK_reg => LRCLK_reg,
      O(2) => \Data_Out_int_reg[18]_i_2_n_4\,
      O(1) => \Data_Out_int_reg[18]_i_2_n_5\,
      O(0) => \Data_Out_int_reg[18]_i_2_n_6\,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
      rst => rst,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      scl => scl,
      sda => sda,
      sw => sw
    );
bram_inst_chord: entity work.\lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO__parameterized0\
     port map (
      Q(9 downto 0) => \^q\(15 downto 6),
      rst => rst,
      s00_axi_aclk => s00_axi_aclk,
      \sdp_bl.ramb18_dp_bl.ram18_bl_0\(15 downto 0) => \sdp_bl.ramb18_dp_bl.ram18_bl\(15 downto 0)
    );
bram_inst_sine: entity work.lab4_design_lab4_ip_0_6_unimacro_BRAM_SDP_MACRO
     port map (
      DOADO(15 downto 0) => DOADO(15 downto 0),
      Q(9 downto 0) => \^q\(15 downto 6),
      rst => rst,
      s00_axi_aclk => s00_axi_aclk
    );
counter_inst: entity work.lab4_design_lab4_ip_0_6_addr_counter
     port map (
      E(0) => E(0),
      Q(15 downto 0) => \^q\(15 downto 0),
      S(3 downto 0) => S(3 downto 0),
      SR(0) => SR(0),
      p_0_in(14 downto 0) => p_0_in(14 downto 0),
      \processCount_reg[11]_0\(3 downto 0) => \processCount_reg[11]\(3 downto 0),
      \processCount_reg[15]_0\(3 downto 0) => \processCount_reg[15]\(3 downto 0),
      \processCount_reg[7]_0\(3 downto 0) => \processCount_reg[7]\(3 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_lab4_ip_v1_0_S00_AXI is
  port (
    ac_mclk : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    BCLK_int_reg : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[15]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_7\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[15]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_11\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_12\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_13\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_dac_sdata : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \Data_Out_int[30]_i_15\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_11\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_17\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_11\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_17\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[18]_i_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \L__972_carry_i_19\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \L__972_carry_i_10\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[30]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    switch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_lab4_ip_v1_0_S00_AXI : entity is "lab4_ip_v1_0_S00_AXI";
end lab4_design_lab4_ip_0_6_lab4_ip_v1_0_S00_AXI;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_lab4_ip_v1_0_S00_AXI is
  signal C : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DO : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal L : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^s\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ampl_sig : STD_LOGIC;
  signal ampl_sig1 : STD_LOGIC;
  signal ampl_sig_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \audio_inst/rst\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal cntr_btn : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal \counter_inst/p_0_in\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal cu_inst_n_0 : STD_LOGIC;
  signal cu_inst_n_16 : STD_LOGIC;
  signal cu_inst_n_17 : STD_LOGIC;
  signal cu_inst_n_18 : STD_LOGIC;
  signal cu_inst_n_19 : STD_LOGIC;
  signal cu_inst_n_20 : STD_LOGIC;
  signal cu_inst_n_21 : STD_LOGIC;
  signal cu_inst_n_22 : STD_LOGIC;
  signal cu_inst_n_23 : STD_LOGIC;
  signal cu_inst_n_24 : STD_LOGIC;
  signal cu_inst_n_25 : STD_LOGIC;
  signal cu_inst_n_26 : STD_LOGIC;
  signal cu_inst_n_27 : STD_LOGIC;
  signal cu_inst_n_28 : STD_LOGIC;
  signal cu_inst_n_29 : STD_LOGIC;
  signal cu_inst_n_30 : STD_LOGIC;
  signal cu_inst_n_31 : STD_LOGIC;
  signal cu_inst_n_32 : STD_LOGIC;
  signal dp_inst_n_27 : STD_LOGIC;
  signal dp_inst_n_28 : STD_LOGIC;
  signal dp_inst_n_29 : STD_LOGIC;
  signal dp_inst_n_30 : STD_LOGIC;
  signal dp_inst_n_31 : STD_LOGIC;
  signal dp_inst_n_32 : STD_LOGIC;
  signal dp_inst_n_49 : STD_LOGIC;
  signal dp_inst_n_50 : STD_LOGIC;
  signal dp_inst_n_51 : STD_LOGIC;
  signal dp_inst_n_52 : STD_LOGIC;
  signal dp_inst_n_53 : STD_LOGIC;
  signal dp_inst_n_54 : STD_LOGIC;
  signal dp_inst_n_55 : STD_LOGIC;
  signal dp_inst_n_56 : STD_LOGIC;
  signal dp_inst_n_57 : STD_LOGIC;
  signal dp_inst_n_58 : STD_LOGIC;
  signal dp_inst_n_59 : STD_LOGIC;
  signal dp_inst_n_60 : STD_LOGIC;
  signal dp_inst_n_61 : STD_LOGIC;
  signal dp_inst_n_62 : STD_LOGIC;
  signal dp_inst_n_63 : STD_LOGIC;
  signal dp_inst_n_64 : STD_LOGIC;
  signal dp_inst_n_68 : STD_LOGIC;
  signal dp_inst_n_69 : STD_LOGIC;
  signal inst_cntr_btn_n_1 : STD_LOGIC;
  signal inst_cntr_btn_n_2 : STD_LOGIC;
  signal inst_cntr_btn_n_3 : STD_LOGIC;
  signal inst_cntr_btn_n_4 : STD_LOGIC;
  signal inst_down_btn_n_0 : STD_LOGIC;
  signal inst_down_btn_n_1 : STD_LOGIC;
  signal inst_down_btn_n_10 : STD_LOGIC;
  signal inst_down_btn_n_2 : STD_LOGIC;
  signal inst_down_btn_n_3 : STD_LOGIC;
  signal inst_down_btn_n_4 : STD_LOGIC;
  signal inst_down_btn_n_5 : STD_LOGIC;
  signal inst_down_btn_n_6 : STD_LOGIC;
  signal inst_down_btn_n_7 : STD_LOGIC;
  signal inst_down_btn_n_8 : STD_LOGIC;
  signal inst_down_btn_n_9 : STD_LOGIC;
  signal inst_left_btn_n_1 : STD_LOGIC;
  signal inst_left_btn_n_10 : STD_LOGIC;
  signal inst_left_btn_n_2 : STD_LOGIC;
  signal inst_left_btn_n_3 : STD_LOGIC;
  signal inst_left_btn_n_4 : STD_LOGIC;
  signal inst_left_btn_n_5 : STD_LOGIC;
  signal inst_left_btn_n_6 : STD_LOGIC;
  signal inst_left_btn_n_7 : STD_LOGIC;
  signal inst_left_btn_n_8 : STD_LOGIC;
  signal inst_left_btn_n_9 : STD_LOGIC;
  signal left_btn : STD_LOGIC;
  signal phase_ampl_inst_n_100 : STD_LOGIC;
  signal phase_ampl_inst_n_101 : STD_LOGIC;
  signal phase_ampl_inst_n_102 : STD_LOGIC;
  signal phase_ampl_inst_n_103 : STD_LOGIC;
  signal phase_ampl_inst_n_104 : STD_LOGIC;
  signal phase_ampl_inst_n_105 : STD_LOGIC;
  signal phase_ampl_inst_n_106 : STD_LOGIC;
  signal phase_ampl_inst_n_107 : STD_LOGIC;
  signal phase_ampl_inst_n_108 : STD_LOGIC;
  signal phase_ampl_inst_n_12 : STD_LOGIC;
  signal phase_ampl_inst_n_125 : STD_LOGIC;
  signal phase_ampl_inst_n_126 : STD_LOGIC;
  signal phase_ampl_inst_n_127 : STD_LOGIC;
  signal phase_ampl_inst_n_128 : STD_LOGIC;
  signal phase_ampl_inst_n_129 : STD_LOGIC;
  signal phase_ampl_inst_n_13 : STD_LOGIC;
  signal phase_ampl_inst_n_130 : STD_LOGIC;
  signal phase_ampl_inst_n_131 : STD_LOGIC;
  signal phase_ampl_inst_n_132 : STD_LOGIC;
  signal phase_ampl_inst_n_133 : STD_LOGIC;
  signal phase_ampl_inst_n_134 : STD_LOGIC;
  signal phase_ampl_inst_n_135 : STD_LOGIC;
  signal phase_ampl_inst_n_136 : STD_LOGIC;
  signal phase_ampl_inst_n_137 : STD_LOGIC;
  signal phase_ampl_inst_n_138 : STD_LOGIC;
  signal phase_ampl_inst_n_139 : STD_LOGIC;
  signal phase_ampl_inst_n_140 : STD_LOGIC;
  signal phase_ampl_inst_n_141 : STD_LOGIC;
  signal phase_ampl_inst_n_142 : STD_LOGIC;
  signal phase_ampl_inst_n_143 : STD_LOGIC;
  signal phase_ampl_inst_n_144 : STD_LOGIC;
  signal phase_ampl_inst_n_145 : STD_LOGIC;
  signal phase_ampl_inst_n_146 : STD_LOGIC;
  signal phase_ampl_inst_n_147 : STD_LOGIC;
  signal phase_ampl_inst_n_148 : STD_LOGIC;
  signal phase_ampl_inst_n_149 : STD_LOGIC;
  signal phase_ampl_inst_n_150 : STD_LOGIC;
  signal phase_ampl_inst_n_151 : STD_LOGIC;
  signal phase_ampl_inst_n_152 : STD_LOGIC;
  signal phase_ampl_inst_n_153 : STD_LOGIC;
  signal phase_ampl_inst_n_154 : STD_LOGIC;
  signal phase_ampl_inst_n_155 : STD_LOGIC;
  signal phase_ampl_inst_n_156 : STD_LOGIC;
  signal phase_ampl_inst_n_157 : STD_LOGIC;
  signal phase_ampl_inst_n_158 : STD_LOGIC;
  signal phase_ampl_inst_n_159 : STD_LOGIC;
  signal phase_ampl_inst_n_160 : STD_LOGIC;
  signal phase_ampl_inst_n_161 : STD_LOGIC;
  signal phase_ampl_inst_n_162 : STD_LOGIC;
  signal phase_ampl_inst_n_163 : STD_LOGIC;
  signal phase_ampl_inst_n_164 : STD_LOGIC;
  signal phase_ampl_inst_n_165 : STD_LOGIC;
  signal phase_ampl_inst_n_166 : STD_LOGIC;
  signal phase_ampl_inst_n_167 : STD_LOGIC;
  signal phase_ampl_inst_n_168 : STD_LOGIC;
  signal phase_ampl_inst_n_169 : STD_LOGIC;
  signal phase_ampl_inst_n_170 : STD_LOGIC;
  signal phase_ampl_inst_n_171 : STD_LOGIC;
  signal phase_ampl_inst_n_172 : STD_LOGIC;
  signal phase_ampl_inst_n_173 : STD_LOGIC;
  signal phase_ampl_inst_n_174 : STD_LOGIC;
  signal phase_ampl_inst_n_175 : STD_LOGIC;
  signal phase_ampl_inst_n_30 : STD_LOGIC;
  signal phase_ampl_inst_n_31 : STD_LOGIC;
  signal phase_ampl_inst_n_32 : STD_LOGIC;
  signal phase_ampl_inst_n_33 : STD_LOGIC;
  signal phase_ampl_inst_n_34 : STD_LOGIC;
  signal phase_ampl_inst_n_35 : STD_LOGIC;
  signal phase_ampl_inst_n_36 : STD_LOGIC;
  signal phase_ampl_inst_n_37 : STD_LOGIC;
  signal phase_ampl_inst_n_38 : STD_LOGIC;
  signal phase_ampl_inst_n_39 : STD_LOGIC;
  signal phase_ampl_inst_n_40 : STD_LOGIC;
  signal phase_ampl_inst_n_41 : STD_LOGIC;
  signal phase_ampl_inst_n_42 : STD_LOGIC;
  signal phase_ampl_inst_n_43 : STD_LOGIC;
  signal phase_ampl_inst_n_44 : STD_LOGIC;
  signal phase_ampl_inst_n_45 : STD_LOGIC;
  signal phase_ampl_inst_n_46 : STD_LOGIC;
  signal phase_ampl_inst_n_47 : STD_LOGIC;
  signal phase_ampl_inst_n_56 : STD_LOGIC;
  signal phase_ampl_inst_n_57 : STD_LOGIC;
  signal phase_ampl_inst_n_58 : STD_LOGIC;
  signal phase_ampl_inst_n_59 : STD_LOGIC;
  signal phase_ampl_inst_n_60 : STD_LOGIC;
  signal phase_ampl_inst_n_61 : STD_LOGIC;
  signal phase_ampl_inst_n_62 : STD_LOGIC;
  signal phase_ampl_inst_n_63 : STD_LOGIC;
  signal phase_ampl_inst_n_91 : STD_LOGIC;
  signal phase_ampl_inst_n_92 : STD_LOGIC;
  signal phase_ampl_inst_n_93 : STD_LOGIC;
  signal phase_ampl_inst_n_94 : STD_LOGIC;
  signal phase_ampl_inst_n_95 : STD_LOGIC;
  signal phase_ampl_inst_n_96 : STD_LOGIC;
  signal phase_ampl_inst_n_97 : STD_LOGIC;
  signal phase_ampl_inst_n_98 : STD_LOGIC;
  signal phase_ampl_inst_n_99 : STD_LOGIC;
  signal phase_sig : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal phase_sig2 : STD_LOGIC;
  signal readChord : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal right_btn : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg[0]_rep__0_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg[0]_rep__1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_reg2_reg[15]_12\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg2_reg[15]_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^slv_reg2_reg[15]_7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal sw : STD_LOGIC;
  signal up_btn : STD_LOGIC;
  signal waveSel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair49";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \slv_reg0_reg[0]\ : label is "slv_reg0_reg[0]";
  attribute ORIG_CELL_NAME of \slv_reg0_reg[0]_rep\ : label is "slv_reg0_reg[0]";
  attribute ORIG_CELL_NAME of \slv_reg0_reg[0]_rep__0\ : label is "slv_reg0_reg[0]";
  attribute ORIG_CELL_NAME of \slv_reg0_reg[0]_rep__1\ : label is "slv_reg0_reg[0]";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair49";
begin
  CO(0) <= \^co\(0);
  S(2 downto 0) <= \^s\(2 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  \slv_reg2_reg[15]_12\(0) <= \^slv_reg2_reg[15]_12\(0);
  \slv_reg2_reg[15]_2\(3 downto 0) <= \^slv_reg2_reg[15]_2\(3 downto 0);
  \slv_reg2_reg[15]_7\(3 downto 0) <= \^slv_reg2_reg[15]_7\(3 downto 0);
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \audio_inst/rst\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => \audio_inst/rst\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => \audio_inst/rst\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => \audio_inst/rst\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => \audio_inst/rst\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => \audio_inst/rst\
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => \audio_inst/rst\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \audio_inst/rst\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08800FFF0880000"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \slv_reg2_reg_n_0_[10]\,
      I2 => \slv_reg3_reg_n_0_[10]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[10]\,
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08800FFF0880000"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \slv_reg2_reg_n_0_[12]\,
      I2 => \slv_reg3_reg_n_0_[12]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[12]\,
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08800FFF0880000"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \slv_reg2_reg_n_0_[13]\,
      I2 => \slv_reg3_reg_n_0_[13]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[13]\,
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08800FFF0880000"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \slv_reg2_reg_n_0_[14]\,
      I2 => \slv_reg3_reg_n_0_[14]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[14]\,
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08800FFF0880000"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \slv_reg2_reg_n_0_[15]\,
      I2 => \slv_reg3_reg_n_0_[15]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[15]\,
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[16]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[17]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[18]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[19]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[21]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[23]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[23]\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[24]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[25]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[26]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[28]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[29]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08800FFF0880000"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \slv_reg2_reg_n_0_[2]\,
      I2 => \slv_reg3_reg_n_0_[2]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[31]\,
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \slv_reg3_reg_n_0_[31]\,
      O => reg_data_out(31)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08800FFF0880000"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \slv_reg2_reg_n_0_[4]\,
      I2 => \slv_reg3_reg_n_0_[4]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08800FFF0880000"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => \slv_reg2_reg_n_0_[8]\,
      I2 => \slv_reg3_reg_n_0_[8]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[8]\,
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \audio_inst/rst\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \audio_inst/rst\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \audio_inst/rst\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => \audio_inst/rst\
    );
cu_inst: entity work.lab4_design_lab4_ip_0_6_lab4_controlunit
     port map (
      E(0) => cu_inst_n_0,
      Q(15 downto 6) => count(15 downto 6),
      Q(5) => dp_inst_n_27,
      Q(4) => dp_inst_n_28,
      Q(3) => dp_inst_n_29,
      Q(2) => dp_inst_n_30,
      Q(1) => dp_inst_n_31,
      Q(0) => dp_inst_n_32,
      S(3) => cu_inst_n_16,
      S(2) => cu_inst_n_17,
      S(1) => cu_inst_n_18,
      S(0) => cu_inst_n_19,
      SR(0) => cu_inst_n_32,
      \count_ctrl_reg[0]_0\(3) => cu_inst_n_20,
      \count_ctrl_reg[0]_0\(2) => cu_inst_n_21,
      \count_ctrl_reg[0]_0\(1) => cu_inst_n_22,
      \count_ctrl_reg[0]_0\(0) => cu_inst_n_23,
      \count_ctrl_reg[0]_1\(3) => cu_inst_n_24,
      \count_ctrl_reg[0]_1\(2) => cu_inst_n_25,
      \count_ctrl_reg[0]_1\(1) => cu_inst_n_26,
      \count_ctrl_reg[0]_1\(0) => cu_inst_n_27,
      p_0_in(14 downto 0) => \counter_inst/p_0_in\(14 downto 0),
      \processCount_reg[15]\(3) => cu_inst_n_28,
      \processCount_reg[15]\(2) => cu_inst_n_29,
      \processCount_reg[15]\(1) => cu_inst_n_30,
      \processCount_reg[15]\(0) => cu_inst_n_31,
      \processCount_reg[15]_0\(15 downto 0) => phase_sig(15 downto 0),
      \processCount_reg[15]_1\(15) => \slv_reg1_reg_n_0_[15]\,
      \processCount_reg[15]_1\(14) => \slv_reg1_reg_n_0_[14]\,
      \processCount_reg[15]_1\(13) => \slv_reg1_reg_n_0_[13]\,
      \processCount_reg[15]_1\(12) => \slv_reg1_reg_n_0_[12]\,
      \processCount_reg[15]_1\(11) => \slv_reg1_reg_n_0_[11]\,
      \processCount_reg[15]_1\(10) => \slv_reg1_reg_n_0_[10]\,
      \processCount_reg[15]_1\(9) => \slv_reg1_reg_n_0_[9]\,
      \processCount_reg[15]_1\(8) => \slv_reg1_reg_n_0_[8]\,
      \processCount_reg[15]_1\(7) => \slv_reg1_reg_n_0_[7]\,
      \processCount_reg[15]_1\(6) => \slv_reg1_reg_n_0_[6]\,
      \processCount_reg[15]_1\(5) => \slv_reg1_reg_n_0_[5]\,
      \processCount_reg[15]_1\(4) => \slv_reg1_reg_n_0_[4]\,
      \processCount_reg[15]_1\(3) => \slv_reg1_reg_n_0_[3]\,
      \processCount_reg[15]_1\(2) => \slv_reg1_reg_n_0_[2]\,
      \processCount_reg[15]_1\(1) => \slv_reg1_reg_n_0_[1]\,
      \processCount_reg[15]_1\(0) => \slv_reg1_reg_n_0_[0]\,
      \processCount_reg[3]\ => \slv_reg0_reg[0]_rep_n_0\,
      rst => \audio_inst/rst\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sw => sw
    );
dp_inst: entity work.lab4_design_lab4_ip_0_6_lab4_datapath
     port map (
      BCLK_int_reg => BCLK_int_reg,
      CO(0) => dp_inst_n_61,
      DI(3) => phase_ampl_inst_n_125,
      DI(2) => phase_ampl_inst_n_126,
      DI(1) => phase_ampl_inst_n_127,
      DI(0) => phase_ampl_inst_n_128,
      DOADO(15 downto 0) => DO(15 downto 0),
      \Data_Out_int[30]_i_19\(3) => phase_ampl_inst_n_137,
      \Data_Out_int[30]_i_19\(2) => phase_ampl_inst_n_138,
      \Data_Out_int[30]_i_19\(1) => phase_ampl_inst_n_139,
      \Data_Out_int[30]_i_19\(0) => phase_ampl_inst_n_140,
      \Data_Out_int[30]_i_19_0\(3) => phase_ampl_inst_n_156,
      \Data_Out_int[30]_i_19_0\(2) => phase_ampl_inst_n_157,
      \Data_Out_int[30]_i_19_0\(1) => phase_ampl_inst_n_158,
      \Data_Out_int[30]_i_19_0\(0) => phase_ampl_inst_n_159,
      \Data_Out_int[30]_i_34\(3) => phase_ampl_inst_n_133,
      \Data_Out_int[30]_i_34\(2) => phase_ampl_inst_n_134,
      \Data_Out_int[30]_i_34\(1) => phase_ampl_inst_n_135,
      \Data_Out_int[30]_i_34\(0) => phase_ampl_inst_n_136,
      \Data_Out_int[30]_i_34_0\(3) => phase_ampl_inst_n_152,
      \Data_Out_int[30]_i_34_0\(2) => phase_ampl_inst_n_153,
      \Data_Out_int[30]_i_34_0\(1) => phase_ampl_inst_n_154,
      \Data_Out_int[30]_i_34_0\(0) => phase_ampl_inst_n_155,
      \Data_Out_int[30]_i_49\(3) => phase_ampl_inst_n_129,
      \Data_Out_int[30]_i_49\(2) => phase_ampl_inst_n_130,
      \Data_Out_int[30]_i_49\(1) => phase_ampl_inst_n_131,
      \Data_Out_int[30]_i_49\(0) => phase_ampl_inst_n_132,
      \Data_Out_int[30]_i_49_0\(3) => phase_ampl_inst_n_148,
      \Data_Out_int[30]_i_49_0\(2) => phase_ampl_inst_n_149,
      \Data_Out_int[30]_i_49_0\(1) => phase_ampl_inst_n_150,
      \Data_Out_int[30]_i_49_0\(0) => phase_ampl_inst_n_151,
      \Data_Out_int[30]_i_64\(3) => phase_ampl_inst_n_144,
      \Data_Out_int[30]_i_64\(2) => phase_ampl_inst_n_145,
      \Data_Out_int[30]_i_64\(1) => phase_ampl_inst_n_146,
      \Data_Out_int[30]_i_64\(0) => phase_ampl_inst_n_147,
      \Data_Out_int_reg[18]\(1 downto 0) => L(2 downto 1),
      \Data_Out_int_reg[18]_0\(0) => \^slv_reg2_reg[15]_12\(0),
      \Data_Out_int_reg[22]\(0) => \^slv_reg2_reg[15]_7\(3),
      \Data_Out_int_reg[22]_0\(0) => \^slv_reg2_reg[15]_7\(2),
      \Data_Out_int_reg[22]_1\(0) => \^slv_reg2_reg[15]_7\(1),
      \Data_Out_int_reg[22]_2\(0) => \^slv_reg2_reg[15]_7\(0),
      \Data_Out_int_reg[26]\(0) => \^slv_reg2_reg[15]_2\(3),
      \Data_Out_int_reg[26]_0\(0) => \^slv_reg2_reg[15]_2\(2),
      \Data_Out_int_reg[26]_1\(0) => \^slv_reg2_reg[15]_2\(1),
      \Data_Out_int_reg[26]_2\(0) => \^slv_reg2_reg[15]_2\(0),
      \Data_Out_int_reg[30]\(3) => \Data_Out_int_reg[30]\(0),
      \Data_Out_int_reg[30]\(2 downto 0) => \^s\(2 downto 0),
      \Data_Out_int_reg[30]_i_4\(0) => \^co\(0),
      E(0) => cu_inst_n_0,
      LRCLK_reg => LRCLK_reg,
      \L__972_carry__0_0\(3) => phase_ampl_inst_n_92,
      \L__972_carry__0_0\(2) => phase_ampl_inst_n_93,
      \L__972_carry__0_0\(1) => phase_ampl_inst_n_94,
      \L__972_carry__0_0\(0) => phase_ampl_inst_n_95,
      \L__972_carry__0_1\(3) => phase_ampl_inst_n_160,
      \L__972_carry__0_1\(2) => phase_ampl_inst_n_161,
      \L__972_carry__0_1\(1) => phase_ampl_inst_n_162,
      \L__972_carry__0_1\(0) => phase_ampl_inst_n_163,
      \L__972_carry__1_0\(3) => phase_ampl_inst_n_96,
      \L__972_carry__1_0\(2) => phase_ampl_inst_n_97,
      \L__972_carry__1_0\(1) => phase_ampl_inst_n_98,
      \L__972_carry__1_0\(0) => phase_ampl_inst_n_99,
      \L__972_carry__1_1\(3) => phase_ampl_inst_n_164,
      \L__972_carry__1_1\(2) => phase_ampl_inst_n_165,
      \L__972_carry__1_1\(1) => phase_ampl_inst_n_166,
      \L__972_carry__1_1\(0) => phase_ampl_inst_n_167,
      \L__972_carry__2_0\(3) => phase_ampl_inst_n_100,
      \L__972_carry__2_0\(2) => phase_ampl_inst_n_101,
      \L__972_carry__2_0\(1) => phase_ampl_inst_n_102,
      \L__972_carry__2_0\(0) => phase_ampl_inst_n_103,
      \L__972_carry__2_1\(3) => phase_ampl_inst_n_168,
      \L__972_carry__2_1\(2) => phase_ampl_inst_n_169,
      \L__972_carry__2_1\(1) => phase_ampl_inst_n_170,
      \L__972_carry__2_1\(0) => phase_ampl_inst_n_171,
      \L__972_carry__3_0\(3) => phase_ampl_inst_n_104,
      \L__972_carry__3_0\(2) => phase_ampl_inst_n_105,
      \L__972_carry__3_0\(1) => phase_ampl_inst_n_106,
      \L__972_carry__3_0\(0) => phase_ampl_inst_n_107,
      \L__972_carry__3_1\(3) => phase_ampl_inst_n_172,
      \L__972_carry__3_1\(2) => phase_ampl_inst_n_173,
      \L__972_carry__3_1\(1) => phase_ampl_inst_n_174,
      \L__972_carry__3_1\(0) => phase_ampl_inst_n_175,
      \L__972_carry__3_2\(0) => phase_ampl_inst_n_108,
      \L__972_carry_i_1\(0) => phase_ampl_inst_n_91,
      \L__972_carry_i_8\(0) => dp_inst_n_69,
      \L_carry__2_0\(0) => dp_inst_n_68,
      O(3) => dp_inst_n_49,
      O(2) => dp_inst_n_50,
      O(1) => dp_inst_n_51,
      O(0) => dp_inst_n_52,
      Q(15 downto 6) => count(15 downto 6),
      Q(5) => dp_inst_n_27,
      Q(4) => dp_inst_n_28,
      Q(3) => dp_inst_n_29,
      Q(2) => dp_inst_n_30,
      Q(1) => dp_inst_n_31,
      Q(0) => dp_inst_n_32,
      S(3) => cu_inst_n_16,
      S(2) => cu_inst_n_17,
      S(1) => cu_inst_n_18,
      S(0) => cu_inst_n_19,
      SR(0) => cu_inst_n_32,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
      \ampl_sig_reg[15]\(2) => dp_inst_n_62,
      \ampl_sig_reg[15]\(1) => dp_inst_n_63,
      \ampl_sig_reg[15]\(0) => dp_inst_n_64,
      p_0_in(14 downto 0) => \counter_inst/p_0_in\(14 downto 0),
      \processCount_reg[11]\(3) => cu_inst_n_24,
      \processCount_reg[11]\(2) => cu_inst_n_25,
      \processCount_reg[11]\(1) => cu_inst_n_26,
      \processCount_reg[11]\(0) => cu_inst_n_27,
      \processCount_reg[15]\(3) => cu_inst_n_28,
      \processCount_reg[15]\(2) => cu_inst_n_29,
      \processCount_reg[15]\(1) => cu_inst_n_30,
      \processCount_reg[15]\(0) => cu_inst_n_31,
      \processCount_reg[7]\(3) => cu_inst_n_20,
      \processCount_reg[7]\(2) => cu_inst_n_21,
      \processCount_reg[7]\(1) => cu_inst_n_22,
      \processCount_reg[7]\(0) => cu_inst_n_23,
      rst => \audio_inst/rst\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      scl => scl,
      sda => sda,
      \sdp_bl.ramb18_dp_bl.ram18_bl\(15 downto 0) => readChord(15 downto 0),
      \slv_reg0_reg[0]_rep\(3) => dp_inst_n_53,
      \slv_reg0_reg[0]_rep\(2) => dp_inst_n_54,
      \slv_reg0_reg[0]_rep\(1) => dp_inst_n_55,
      \slv_reg0_reg[0]_rep\(0) => dp_inst_n_56,
      \slv_reg0_reg[0]_rep_0\(3) => dp_inst_n_57,
      \slv_reg0_reg[0]_rep_0\(2) => dp_inst_n_58,
      \slv_reg0_reg[0]_rep_0\(1) => dp_inst_n_59,
      \slv_reg0_reg[0]_rep_0\(0) => dp_inst_n_60,
      sw => sw
    );
inst_cntr_btn: entity work.lab4_design_lab4_ip_0_6_btn_reader
     port map (
      CO(0) => ampl_sig1,
      E(0) => inst_cntr_btn_n_3,
      O(1) => phase_ampl_inst_n_34,
      O(0) => phase_ampl_inst_n_37,
      SR(0) => inst_cntr_btn_n_1,
      \ampl_sig_reg[15]\ => phase_ampl_inst_n_141,
      \ampl_sig_reg[15]_0\ => inst_down_btn_n_10,
      btn(0) => btn(4),
      btn_press_reg_0 => inst_cntr_btn_n_2,
      btn_press_reg_1 => inst_cntr_btn_n_4,
      cntr_btn => cntr_btn,
      left_btn => left_btn,
      \phase_sig_reg[15]\ => phase_ampl_inst_n_143,
      \phase_sig_reg[15]_0\ => phase_ampl_inst_n_142,
      \phase_sig_reg[15]_1\(0) => phase_sig2,
      right_btn => right_btn,
      rst => \audio_inst/rst\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      up_btn => up_btn,
      waveSel => waveSel
    );
inst_down_btn: entity work.lab4_design_lab4_ip_0_6_btn_reader_0
     port map (
      C(7 downto 0) => C(7 downto 0),
      CO(0) => inst_down_btn_n_4,
      O(3) => inst_down_btn_n_0,
      O(2) => inst_down_btn_n_1,
      O(1) => inst_down_btn_n_2,
      O(0) => inst_down_btn_n_3,
      \ampl_sig[0]_i_3\(3) => phase_ampl_inst_n_56,
      \ampl_sig[0]_i_3\(2) => phase_ampl_inst_n_57,
      \ampl_sig[0]_i_3\(1) => phase_ampl_inst_n_58,
      \ampl_sig[0]_i_3\(0) => phase_ampl_inst_n_59,
      \ampl_sig[0]_i_3_0\(3) => phase_ampl_inst_n_60,
      \ampl_sig[0]_i_3_0\(2) => phase_ampl_inst_n_61,
      \ampl_sig[0]_i_3_0\(1) => phase_ampl_inst_n_62,
      \ampl_sig[0]_i_3_0\(0) => phase_ampl_inst_n_63,
      ampl_sig_reg(7 downto 0) => ampl_sig_reg(7 downto 0),
      \ampl_sig_reg[11]\ => inst_down_btn_n_9,
      btn(0) => btn(2),
      btn_press_reg_0 => inst_down_btn_n_10,
      rst => \audio_inst/rst\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      switch(7 downto 0) => switch(7 downto 0),
      \switch[7]\(3) => inst_down_btn_n_5,
      \switch[7]\(2) => inst_down_btn_n_6,
      \switch[7]\(1) => inst_down_btn_n_7,
      \switch[7]\(0) => inst_down_btn_n_8
    );
inst_left_btn: entity work.lab4_design_lab4_ip_0_6_btn_reader_1
     port map (
      D(9) => inst_left_btn_n_1,
      D(8) => inst_left_btn_n_2,
      D(7) => inst_left_btn_n_3,
      D(6) => inst_left_btn_n_4,
      D(5) => inst_left_btn_n_5,
      D(4) => inst_left_btn_n_6,
      D(3) => inst_left_btn_n_7,
      D(2) => inst_left_btn_n_8,
      D(1) => inst_left_btn_n_9,
      D(0) => inst_left_btn_n_10,
      O(3) => phase_ampl_inst_n_34,
      O(2) => phase_ampl_inst_n_35,
      O(1) => phase_ampl_inst_n_36,
      O(0) => phase_ampl_inst_n_37,
      btn(0) => btn(1),
      left_btn => left_btn,
      \phase_sig_reg[11]\(2) => phase_ampl_inst_n_31,
      \phase_sig_reg[11]\(1) => phase_ampl_inst_n_32,
      \phase_sig_reg[11]\(0) => phase_ampl_inst_n_33,
      \phase_sig_reg[11]_0\(2) => phase_ampl_inst_n_41,
      \phase_sig_reg[11]_0\(1) => phase_ampl_inst_n_42,
      \phase_sig_reg[11]_0\(0) => phase_ampl_inst_n_43,
      \phase_sig_reg[15]\(0) => phase_sig2,
      \phase_sig_reg[15]_0\(3) => phase_ampl_inst_n_44,
      \phase_sig_reg[15]_0\(2) => phase_ampl_inst_n_45,
      \phase_sig_reg[15]_0\(1) => phase_ampl_inst_n_46,
      \phase_sig_reg[15]_0\(0) => phase_ampl_inst_n_47,
      \phase_sig_reg[3]\(1) => phase_ampl_inst_n_12,
      \phase_sig_reg[3]\(0) => phase_ampl_inst_n_13,
      \phase_sig_reg[3]_0\(1) => phase_ampl_inst_n_38,
      \phase_sig_reg[3]_0\(0) => phase_ampl_inst_n_39,
      \phase_sig_reg[7]\(0) => phase_ampl_inst_n_30,
      \phase_sig_reg[7]_0\(0) => phase_ampl_inst_n_40,
      rst => \audio_inst/rst\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
inst_right_btn: entity work.lab4_design_lab4_ip_0_6_btn_reader_2
     port map (
      O(1) => phase_ampl_inst_n_34,
      O(0) => phase_ampl_inst_n_37,
      ampl_sig => ampl_sig,
      \ampl_sig_reg[15]\ => phase_ampl_inst_n_143,
      \ampl_sig_reg[15]_0\ => phase_ampl_inst_n_142,
      \ampl_sig_reg[15]_1\ => inst_cntr_btn_n_2,
      btn(0) => btn(3),
      right_btn => right_btn,
      rst => \audio_inst/rst\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
inst_up_btn: entity work.lab4_design_lab4_ip_0_6_btn_reader_3
     port map (
      btn(0) => btn(0),
      rst => \audio_inst/rst\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      up_btn => up_btn
    );
phase_ampl_inst: entity work.lab4_design_lab4_ip_0_6_phase_ampl_manager
     port map (
      CO(0) => ampl_sig1,
      D(15 downto 0) => reg_data_out(15 downto 0),
      DI(3) => phase_ampl_inst_n_125,
      DI(2) => phase_ampl_inst_n_126,
      DI(1) => phase_ampl_inst_n_127,
      DI(0) => phase_ampl_inst_n_128,
      DOADO(15 downto 0) => DO(15 downto 0),
      \Data_Out_int[18]_i_4\(0) => \Data_Out_int[18]_i_4\(0),
      \Data_Out_int[22]_i_11\(0) => \Data_Out_int[22]_i_11\(0),
      \Data_Out_int[22]_i_14\(0) => \Data_Out_int[22]_i_14\(0),
      \Data_Out_int[22]_i_17\(0) => \Data_Out_int[22]_i_17\(0),
      \Data_Out_int[22]_i_8\(0) => \Data_Out_int[22]_i_8\(0),
      \Data_Out_int[26]_i_11\(0) => \Data_Out_int[26]_i_11\(0),
      \Data_Out_int[26]_i_14\(0) => \Data_Out_int[26]_i_14\(0),
      \Data_Out_int[26]_i_17\(0) => \Data_Out_int[26]_i_17\(0),
      \Data_Out_int[26]_i_8\(0) => \Data_Out_int[26]_i_8\(0),
      \Data_Out_int[30]_i_12\(0) => dp_inst_n_68,
      \Data_Out_int[30]_i_15\(0) => \Data_Out_int[30]_i_15\(0),
      \Data_Out_int[30]_i_3\(0) => dp_inst_n_61,
      \Data_Out_int_reg[26]_i_44_0\ => \slv_reg0_reg[0]_rep_n_0\,
      \Data_Out_int_reg[30]_i_17_0\(3) => dp_inst_n_53,
      \Data_Out_int_reg[30]_i_17_0\(2) => dp_inst_n_54,
      \Data_Out_int_reg[30]_i_17_0\(1) => dp_inst_n_55,
      \Data_Out_int_reg[30]_i_17_0\(0) => dp_inst_n_56,
      \Data_Out_int_reg[30]_i_32_0\(3) => dp_inst_n_49,
      \Data_Out_int_reg[30]_i_32_0\(2) => dp_inst_n_50,
      \Data_Out_int_reg[30]_i_32_0\(1) => dp_inst_n_51,
      \Data_Out_int_reg[30]_i_32_0\(0) => dp_inst_n_52,
      \Data_Out_int_reg[30]_i_47_0\ => \slv_reg0_reg[0]_rep__1_n_0\,
      \Data_Out_int_reg[30]_i_4_0\(2) => dp_inst_n_62,
      \Data_Out_int_reg[30]_i_4_0\(1) => dp_inst_n_63,
      \Data_Out_int_reg[30]_i_4_0\(0) => dp_inst_n_64,
      \Data_Out_int_reg[30]_i_8_0\(3) => dp_inst_n_57,
      \Data_Out_int_reg[30]_i_8_0\(2) => dp_inst_n_58,
      \Data_Out_int_reg[30]_i_8_0\(1) => dp_inst_n_59,
      \Data_Out_int_reg[30]_i_8_0\(0) => dp_inst_n_60,
      E(0) => inst_cntr_btn_n_3,
      \L__972_carry__3_i_1\(0) => dp_inst_n_69,
      \L__972_carry_i_10\(0) => \L__972_carry_i_10\(0),
      \L__972_carry_i_18_0\ => \slv_reg0_reg[0]_rep__0_n_0\,
      \L__972_carry_i_19\(0) => \L__972_carry_i_19\(0),
      L_carry(15 downto 0) => readChord(15 downto 0),
      \L_carry__2\(0) => \^co\(0),
      \L_carry__2_0\(15) => \slv_reg2_reg_n_0_[15]\,
      \L_carry__2_0\(14) => \slv_reg2_reg_n_0_[14]\,
      \L_carry__2_0\(13) => \slv_reg2_reg_n_0_[13]\,
      \L_carry__2_0\(12) => \slv_reg2_reg_n_0_[12]\,
      \L_carry__2_0\(11) => \slv_reg2_reg_n_0_[11]\,
      \L_carry__2_0\(10) => \slv_reg2_reg_n_0_[10]\,
      \L_carry__2_0\(9) => \slv_reg2_reg_n_0_[9]\,
      \L_carry__2_0\(8) => \slv_reg2_reg_n_0_[8]\,
      \L_carry__2_0\(7) => \slv_reg2_reg_n_0_[7]\,
      \L_carry__2_0\(6) => \slv_reg2_reg_n_0_[6]\,
      \L_carry__2_0\(5) => \slv_reg2_reg_n_0_[5]\,
      \L_carry__2_0\(4) => \slv_reg2_reg_n_0_[4]\,
      \L_carry__2_0\(3) => \slv_reg2_reg_n_0_[3]\,
      \L_carry__2_0\(2) => \slv_reg2_reg_n_0_[2]\,
      \L_carry__2_0\(1) => \slv_reg2_reg_n_0_[1]\,
      \L_carry__2_0\(0) => \slv_reg2_reg_n_0_[0]\,
      O(3) => inst_down_btn_n_0,
      O(2) => inst_down_btn_n_1,
      O(1) => inst_down_btn_n_2,
      O(0) => inst_down_btn_n_3,
      Q(15 downto 0) => phase_sig(15 downto 0),
      SR(0) => inst_cntr_btn_n_1,
      ampl_sig => ampl_sig,
      \ampl_sig_reg[11]_0\(3) => phase_ampl_inst_n_56,
      \ampl_sig_reg[11]_0\(2) => phase_ampl_inst_n_57,
      \ampl_sig_reg[11]_0\(1) => phase_ampl_inst_n_58,
      \ampl_sig_reg[11]_0\(0) => phase_ampl_inst_n_59,
      \ampl_sig_reg[11]_1\ => phase_ampl_inst_n_141,
      \ampl_sig_reg[11]_2\(3) => phase_ampl_inst_n_168,
      \ampl_sig_reg[11]_2\(2) => phase_ampl_inst_n_169,
      \ampl_sig_reg[11]_2\(1) => phase_ampl_inst_n_170,
      \ampl_sig_reg[11]_2\(0) => phase_ampl_inst_n_171,
      \ampl_sig_reg[11]_3\(0) => inst_down_btn_n_4,
      \ampl_sig_reg[15]_0\(3) => phase_ampl_inst_n_60,
      \ampl_sig_reg[15]_0\(2) => phase_ampl_inst_n_61,
      \ampl_sig_reg[15]_0\(1) => phase_ampl_inst_n_62,
      \ampl_sig_reg[15]_0\(0) => phase_ampl_inst_n_63,
      \ampl_sig_reg[15]_1\(3) => phase_ampl_inst_n_137,
      \ampl_sig_reg[15]_1\(2) => phase_ampl_inst_n_138,
      \ampl_sig_reg[15]_1\(1) => phase_ampl_inst_n_139,
      \ampl_sig_reg[15]_1\(0) => phase_ampl_inst_n_140,
      \ampl_sig_reg[15]_2\(3) => phase_ampl_inst_n_156,
      \ampl_sig_reg[15]_2\(2) => phase_ampl_inst_n_157,
      \ampl_sig_reg[15]_2\(1) => phase_ampl_inst_n_158,
      \ampl_sig_reg[15]_2\(0) => phase_ampl_inst_n_159,
      \ampl_sig_reg[15]_3\ => inst_down_btn_n_9,
      \ampl_sig_reg[3]_0\(3) => phase_ampl_inst_n_160,
      \ampl_sig_reg[3]_0\(2) => phase_ampl_inst_n_161,
      \ampl_sig_reg[3]_0\(1) => phase_ampl_inst_n_162,
      \ampl_sig_reg[3]_0\(0) => phase_ampl_inst_n_163,
      \ampl_sig_reg[6]_0\(3) => phase_ampl_inst_n_96,
      \ampl_sig_reg[6]_0\(2) => phase_ampl_inst_n_97,
      \ampl_sig_reg[6]_0\(1) => phase_ampl_inst_n_98,
      \ampl_sig_reg[6]_0\(0) => phase_ampl_inst_n_99,
      \ampl_sig_reg[7]_0\(7 downto 0) => ampl_sig_reg(7 downto 0),
      \ampl_sig_reg[7]_1\(7 downto 0) => C(7 downto 0),
      \ampl_sig_reg[7]_2\(3) => phase_ampl_inst_n_164,
      \ampl_sig_reg[7]_2\(2) => phase_ampl_inst_n_165,
      \ampl_sig_reg[7]_2\(1) => phase_ampl_inst_n_166,
      \ampl_sig_reg[7]_2\(0) => phase_ampl_inst_n_167,
      \ampl_sig_reg[7]_3\(3) => inst_down_btn_n_5,
      \ampl_sig_reg[7]_3\(2) => inst_down_btn_n_6,
      \ampl_sig_reg[7]_3\(1) => inst_down_btn_n_7,
      \ampl_sig_reg[7]_3\(0) => inst_down_btn_n_8,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      \axi_rdata_reg[10]\ => \axi_rdata[10]_i_2_n_0\,
      \axi_rdata_reg[11]\(7) => \slv_reg0_reg_n_0_[11]\,
      \axi_rdata_reg[11]\(6) => \slv_reg0_reg_n_0_[9]\,
      \axi_rdata_reg[11]\(5) => \slv_reg0_reg_n_0_[7]\,
      \axi_rdata_reg[11]\(4) => \slv_reg0_reg_n_0_[6]\,
      \axi_rdata_reg[11]\(3) => \slv_reg0_reg_n_0_[5]\,
      \axi_rdata_reg[11]\(2) => \slv_reg0_reg_n_0_[3]\,
      \axi_rdata_reg[11]\(1) => \slv_reg0_reg_n_0_[1]\,
      \axi_rdata_reg[11]\(0) => slv_reg0(0),
      \axi_rdata_reg[11]_0\(7) => \slv_reg3_reg_n_0_[11]\,
      \axi_rdata_reg[11]_0\(6) => \slv_reg3_reg_n_0_[9]\,
      \axi_rdata_reg[11]_0\(5) => \slv_reg3_reg_n_0_[7]\,
      \axi_rdata_reg[11]_0\(4) => \slv_reg3_reg_n_0_[6]\,
      \axi_rdata_reg[11]_0\(3) => \slv_reg3_reg_n_0_[5]\,
      \axi_rdata_reg[11]_0\(2) => \slv_reg3_reg_n_0_[3]\,
      \axi_rdata_reg[11]_0\(1) => \slv_reg3_reg_n_0_[1]\,
      \axi_rdata_reg[11]_0\(0) => slv_reg3(0),
      \axi_rdata_reg[12]\ => \axi_rdata[12]_i_2_n_0\,
      \axi_rdata_reg[13]\ => \axi_rdata[13]_i_2_n_0\,
      \axi_rdata_reg[14]\ => \axi_rdata[14]_i_2_n_0\,
      \axi_rdata_reg[15]\ => \axi_rdata[15]_i_2_n_0\,
      \axi_rdata_reg[15]_0\(15) => \slv_reg1_reg_n_0_[15]\,
      \axi_rdata_reg[15]_0\(14) => \slv_reg1_reg_n_0_[14]\,
      \axi_rdata_reg[15]_0\(13) => \slv_reg1_reg_n_0_[13]\,
      \axi_rdata_reg[15]_0\(12) => \slv_reg1_reg_n_0_[12]\,
      \axi_rdata_reg[15]_0\(11) => \slv_reg1_reg_n_0_[11]\,
      \axi_rdata_reg[15]_0\(10) => \slv_reg1_reg_n_0_[10]\,
      \axi_rdata_reg[15]_0\(9) => \slv_reg1_reg_n_0_[9]\,
      \axi_rdata_reg[15]_0\(8) => \slv_reg1_reg_n_0_[8]\,
      \axi_rdata_reg[15]_0\(7) => \slv_reg1_reg_n_0_[7]\,
      \axi_rdata_reg[15]_0\(6) => \slv_reg1_reg_n_0_[6]\,
      \axi_rdata_reg[15]_0\(5) => \slv_reg1_reg_n_0_[5]\,
      \axi_rdata_reg[15]_0\(4) => \slv_reg1_reg_n_0_[4]\,
      \axi_rdata_reg[15]_0\(3) => \slv_reg1_reg_n_0_[3]\,
      \axi_rdata_reg[15]_0\(2) => \slv_reg1_reg_n_0_[2]\,
      \axi_rdata_reg[15]_0\(1) => \slv_reg1_reg_n_0_[1]\,
      \axi_rdata_reg[15]_0\(0) => \slv_reg1_reg_n_0_[0]\,
      \axi_rdata_reg[2]\ => \axi_rdata[2]_i_2_n_0\,
      \axi_rdata_reg[4]\ => \axi_rdata[4]_i_2_n_0\,
      \axi_rdata_reg[8]\ => \axi_rdata[8]_i_2_n_0\,
      cntr_btn => cntr_btn,
      left_btn => left_btn,
      \phase_sig_reg[11]_0\(2) => phase_ampl_inst_n_31,
      \phase_sig_reg[11]_0\(1) => phase_ampl_inst_n_32,
      \phase_sig_reg[11]_0\(0) => phase_ampl_inst_n_33,
      \phase_sig_reg[11]_1\(2) => phase_ampl_inst_n_41,
      \phase_sig_reg[11]_1\(1) => phase_ampl_inst_n_42,
      \phase_sig_reg[11]_1\(0) => phase_ampl_inst_n_43,
      \phase_sig_reg[11]_2\ => phase_ampl_inst_n_143,
      \phase_sig_reg[14]_0\(0) => phase_sig2,
      \phase_sig_reg[14]_1\(3) => phase_ampl_inst_n_44,
      \phase_sig_reg[14]_1\(2) => phase_ampl_inst_n_45,
      \phase_sig_reg[14]_1\(1) => phase_ampl_inst_n_46,
      \phase_sig_reg[14]_1\(0) => phase_ampl_inst_n_47,
      \phase_sig_reg[15]_0\(3) => phase_ampl_inst_n_34,
      \phase_sig_reg[15]_0\(2) => phase_ampl_inst_n_35,
      \phase_sig_reg[15]_0\(1) => phase_ampl_inst_n_36,
      \phase_sig_reg[15]_0\(0) => phase_ampl_inst_n_37,
      \phase_sig_reg[15]_1\ => phase_ampl_inst_n_142,
      \phase_sig_reg[15]_2\(9) => inst_left_btn_n_1,
      \phase_sig_reg[15]_2\(8) => inst_left_btn_n_2,
      \phase_sig_reg[15]_2\(7) => inst_left_btn_n_3,
      \phase_sig_reg[15]_2\(6) => inst_left_btn_n_4,
      \phase_sig_reg[15]_2\(5) => inst_left_btn_n_5,
      \phase_sig_reg[15]_2\(4) => inst_left_btn_n_6,
      \phase_sig_reg[15]_2\(3) => inst_left_btn_n_7,
      \phase_sig_reg[15]_2\(2) => inst_left_btn_n_8,
      \phase_sig_reg[15]_2\(1) => inst_left_btn_n_9,
      \phase_sig_reg[15]_2\(0) => inst_left_btn_n_10,
      \phase_sig_reg[3]_0\(1) => phase_ampl_inst_n_12,
      \phase_sig_reg[3]_0\(0) => phase_ampl_inst_n_13,
      \phase_sig_reg[3]_1\(1) => phase_ampl_inst_n_38,
      \phase_sig_reg[3]_1\(0) => phase_ampl_inst_n_39,
      \phase_sig_reg[7]_0\(0) => phase_ampl_inst_n_30,
      \phase_sig_reg[7]_1\(0) => phase_ampl_inst_n_40,
      rst => \audio_inst/rst\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      signalSel_reg_0 => inst_cntr_btn_n_4,
      \slv_reg0_reg[0]_rep\(3) => phase_ampl_inst_n_129,
      \slv_reg0_reg[0]_rep\(2) => phase_ampl_inst_n_130,
      \slv_reg0_reg[0]_rep\(1) => phase_ampl_inst_n_131,
      \slv_reg0_reg[0]_rep\(0) => phase_ampl_inst_n_132,
      \slv_reg0_reg[0]_rep_0\(3) => phase_ampl_inst_n_133,
      \slv_reg0_reg[0]_rep_0\(2) => phase_ampl_inst_n_134,
      \slv_reg0_reg[0]_rep_0\(1) => phase_ampl_inst_n_135,
      \slv_reg0_reg[0]_rep_0\(0) => phase_ampl_inst_n_136,
      \slv_reg0_reg[0]_rep_1\(3) => phase_ampl_inst_n_148,
      \slv_reg0_reg[0]_rep_1\(2) => phase_ampl_inst_n_149,
      \slv_reg0_reg[0]_rep_1\(1) => phase_ampl_inst_n_150,
      \slv_reg0_reg[0]_rep_1\(0) => phase_ampl_inst_n_151,
      \slv_reg0_reg[0]_rep_2\(3) => phase_ampl_inst_n_152,
      \slv_reg0_reg[0]_rep_2\(2) => phase_ampl_inst_n_153,
      \slv_reg0_reg[0]_rep_2\(1) => phase_ampl_inst_n_154,
      \slv_reg0_reg[0]_rep_2\(0) => phase_ampl_inst_n_155,
      \slv_reg0_reg[0]_rep__1\(3) => phase_ampl_inst_n_92,
      \slv_reg0_reg[0]_rep__1\(2) => phase_ampl_inst_n_93,
      \slv_reg0_reg[0]_rep__1\(1) => phase_ampl_inst_n_94,
      \slv_reg0_reg[0]_rep__1\(0) => phase_ampl_inst_n_95,
      \slv_reg0_reg[0]_rep__1_0\(3) => phase_ampl_inst_n_144,
      \slv_reg0_reg[0]_rep__1_0\(2) => phase_ampl_inst_n_145,
      \slv_reg0_reg[0]_rep__1_0\(1) => phase_ampl_inst_n_146,
      \slv_reg0_reg[0]_rep__1_0\(0) => phase_ampl_inst_n_147,
      \slv_reg2_reg[10]\(3) => phase_ampl_inst_n_100,
      \slv_reg2_reg[10]\(2) => phase_ampl_inst_n_101,
      \slv_reg2_reg[10]\(1) => phase_ampl_inst_n_102,
      \slv_reg2_reg[10]\(0) => phase_ampl_inst_n_103,
      \slv_reg2_reg[14]\(3) => phase_ampl_inst_n_104,
      \slv_reg2_reg[14]\(2) => phase_ampl_inst_n_105,
      \slv_reg2_reg[14]\(1) => phase_ampl_inst_n_106,
      \slv_reg2_reg[14]\(0) => phase_ampl_inst_n_107,
      \slv_reg2_reg[15]\(2 downto 0) => \^s\(2 downto 0),
      \slv_reg2_reg[15]_0\(0) => O(0),
      \slv_reg2_reg[15]_1\(0) => \slv_reg2_reg[15]_0\(0),
      \slv_reg2_reg[15]_10\(0) => \slv_reg2_reg[15]_6\(0),
      \slv_reg2_reg[15]_11\(0) => \^slv_reg2_reg[15]_7\(3),
      \slv_reg2_reg[15]_12\(0) => \slv_reg2_reg[15]_8\(0),
      \slv_reg2_reg[15]_13\(0) => \^slv_reg2_reg[15]_7\(2),
      \slv_reg2_reg[15]_14\(0) => \slv_reg2_reg[15]_9\(0),
      \slv_reg2_reg[15]_15\(0) => \^slv_reg2_reg[15]_7\(1),
      \slv_reg2_reg[15]_16\(0) => \slv_reg2_reg[15]_10\(0),
      \slv_reg2_reg[15]_17\(0) => \^slv_reg2_reg[15]_7\(0),
      \slv_reg2_reg[15]_18\(0) => \slv_reg2_reg[15]_11\(0),
      \slv_reg2_reg[15]_19\(0) => \^slv_reg2_reg[15]_12\(0),
      \slv_reg2_reg[15]_2\(0) => \slv_reg2_reg[15]_1\(0),
      \slv_reg2_reg[15]_20\(0) => \slv_reg2_reg[15]_13\(0),
      \slv_reg2_reg[15]_21\(1 downto 0) => L(2 downto 1),
      \slv_reg2_reg[15]_22\(0) => phase_ampl_inst_n_91,
      \slv_reg2_reg[15]_23\(0) => phase_ampl_inst_n_108,
      \slv_reg2_reg[15]_24\(3) => phase_ampl_inst_n_172,
      \slv_reg2_reg[15]_24\(2) => phase_ampl_inst_n_173,
      \slv_reg2_reg[15]_24\(1) => phase_ampl_inst_n_174,
      \slv_reg2_reg[15]_24\(0) => phase_ampl_inst_n_175,
      \slv_reg2_reg[15]_3\(0) => \^slv_reg2_reg[15]_2\(3),
      \slv_reg2_reg[15]_4\(0) => \slv_reg2_reg[15]_3\(0),
      \slv_reg2_reg[15]_5\(0) => \^slv_reg2_reg[15]_2\(2),
      \slv_reg2_reg[15]_6\(0) => \slv_reg2_reg[15]_4\(0),
      \slv_reg2_reg[15]_7\(0) => \^slv_reg2_reg[15]_2\(1),
      \slv_reg2_reg[15]_8\(0) => \slv_reg2_reg[15]_5\(0),
      \slv_reg2_reg[15]_9\(0) => \^slv_reg2_reg[15]_2\(0),
      switch(7 downto 0) => switch(7 downto 0),
      waveSel => waveSel
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => \audio_inst/rst\
    );
\slv_reg0_reg[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg[0]_rep_n_0\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[0]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg[0]_rep__0_n_0\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[0]_rep__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg[0]_rep__1_n_0\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => \audio_inst/rst\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => \audio_inst/rst\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => \audio_inst/rst\
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => \audio_inst/rst\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg2_reg_n_0_[0]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg2_reg_n_0_[1]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg2_reg_n_0_[4]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2_reg_n_0_[5]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg2_reg_n_0_[8]\,
      R => \audio_inst/rst\
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2_reg_n_0_[9]\,
      R => \audio_inst/rst\
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wready_reg_0\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => \audio_inst/rst\
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg3_reg_n_0_[24]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg3_reg_n_0_[25]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg3_reg_n_0_[29]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg3_reg_n_0_[30]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg3_reg_n_0_[31]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg3_reg_n_0_[8]\,
      R => \audio_inst/rst\
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => \audio_inst/rst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6_lab4_ip_v1_0 is
  port (
    ac_mclk : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    \L_carry__2\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    BCLK_int_reg : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[15]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_dac_sdata : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_11\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[26]_i_17\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_11\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_14\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[22]_i_17\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int[18]_i_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \L__972_carry_i_19\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \L__972_carry_i_10\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[30]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    switch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab4_design_lab4_ip_0_6_lab4_ip_v1_0 : entity is "lab4_ip_v1_0";
end lab4_design_lab4_ip_0_6_lab4_ip_v1_0;

architecture STRUCTURE of lab4_design_lab4_ip_0_6_lab4_ip_v1_0 is
begin
lab4_ip_v1_0_S00_AXI_inst: entity work.lab4_design_lab4_ip_0_6_lab4_ip_v1_0_S00_AXI
     port map (
      BCLK_int_reg => BCLK_int_reg,
      CO(0) => \L_carry__2\(12),
      \Data_Out_int[18]_i_4\(0) => \Data_Out_int[18]_i_4\(0),
      \Data_Out_int[22]_i_11\(0) => \Data_Out_int[22]_i_11\(0),
      \Data_Out_int[22]_i_14\(0) => \Data_Out_int[22]_i_14\(0),
      \Data_Out_int[22]_i_17\(0) => \Data_Out_int[22]_i_17\(0),
      \Data_Out_int[22]_i_8\(0) => \Data_Out_int[22]_i_8\(0),
      \Data_Out_int[26]_i_11\(0) => \Data_Out_int[26]_i_11\(0),
      \Data_Out_int[26]_i_14\(0) => \Data_Out_int[26]_i_14\(0),
      \Data_Out_int[26]_i_17\(0) => \Data_Out_int[26]_i_17\(0),
      \Data_Out_int[26]_i_8\(0) => \Data_Out_int[26]_i_8\(0),
      \Data_Out_int[30]_i_15\(0) => S(0),
      \Data_Out_int_reg[30]\(0) => \Data_Out_int_reg[30]\(0),
      LRCLK_reg => LRCLK_reg,
      \L__972_carry_i_10\(0) => \L__972_carry_i_10\(0),
      \L__972_carry_i_19\(0) => \L__972_carry_i_19\(0),
      O(0) => O(0),
      S(2 downto 0) => \L_carry__2\(11 downto 9),
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_wready_reg_0 => axi_wready_reg,
      btn(4 downto 0) => btn(4 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      scl => scl,
      sda => sda,
      \slv_reg2_reg[15]_0\(0) => \slv_reg2_reg[15]\(0),
      \slv_reg2_reg[15]_1\(0) => \slv_reg2_reg[15]_0\(0),
      \slv_reg2_reg[15]_10\(0) => \slv_reg2_reg[15]_7\(0),
      \slv_reg2_reg[15]_11\(0) => \slv_reg2_reg[15]_8\(0),
      \slv_reg2_reg[15]_12\(0) => \L_carry__2\(0),
      \slv_reg2_reg[15]_13\(0) => \slv_reg2_reg[15]_9\(0),
      \slv_reg2_reg[15]_2\(3 downto 0) => \L_carry__2\(8 downto 5),
      \slv_reg2_reg[15]_3\(0) => \slv_reg2_reg[15]_1\(0),
      \slv_reg2_reg[15]_4\(0) => \slv_reg2_reg[15]_2\(0),
      \slv_reg2_reg[15]_5\(0) => \slv_reg2_reg[15]_3\(0),
      \slv_reg2_reg[15]_6\(0) => \slv_reg2_reg[15]_4\(0),
      \slv_reg2_reg[15]_7\(3 downto 0) => \L_carry__2\(4 downto 1),
      \slv_reg2_reg[15]_8\(0) => \slv_reg2_reg[15]_5\(0),
      \slv_reg2_reg[15]_9\(0) => \slv_reg2_reg[15]_6\(0),
      switch(7 downto 0) => switch(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab4_design_lab4_ip_0_6 is
  port (
    ac_mclk : out STD_LOGIC;
    ac_adc_sdata : in STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    ac_bclk : out STD_LOGIC;
    ac_lrclk : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    switch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of lab4_design_lab4_ip_0_6 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of lab4_design_lab4_ip_0_6 : entity is "lab4_design_lab4_ip_0_6,lab4_ip_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of lab4_design_lab4_ip_0_6 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of lab4_design_lab4_ip_0_6 : entity is "lab4_ip_v1_0,Vivado 2019.1";
end lab4_design_lab4_ip_0_6;

architecture STRUCTURE of lab4_design_lab4_ip_0_6 is
  signal \<const0>\ : STD_LOGIC;
  signal \Data_Out_int[18]_i_4_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_11_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_14_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_17_n_0\ : STD_LOGIC;
  signal \Data_Out_int[22]_i_8_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_11_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_14_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_17_n_0\ : STD_LOGIC;
  signal \Data_Out_int[26]_i_8_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_12_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_15_n_0\ : STD_LOGIC;
  signal \Data_Out_int[30]_i_3_n_0\ : STD_LOGIC;
  signal \L__972_carry_i_19_n_0\ : STD_LOGIC;
  signal U0_n_21 : STD_LOGIC;
  signal U0_n_22 : STD_LOGIC;
  signal U0_n_23 : STD_LOGIC;
  signal U0_n_24 : STD_LOGIC;
  signal U0_n_25 : STD_LOGIC;
  signal U0_n_26 : STD_LOGIC;
  signal U0_n_27 : STD_LOGIC;
  signal U0_n_28 : STD_LOGIC;
  signal U0_n_29 : STD_LOGIC;
  signal U0_n_30 : STD_LOGIC;
  signal U0_n_31 : STD_LOGIC;
  signal U0_n_32 : STD_LOGIC;
  signal \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\ : STD_LOGIC_VECTOR ( 15 downto 3 );
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
\Data_Out_int[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(4),
      I1 => U0_n_31,
      O => \Data_Out_int[18]_i_4_n_0\
    );
\Data_Out_int[22]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(7),
      I1 => U0_n_28,
      O => \Data_Out_int[22]_i_11_n_0\
    );
\Data_Out_int[22]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(6),
      I1 => U0_n_29,
      O => \Data_Out_int[22]_i_14_n_0\
    );
\Data_Out_int[22]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(5),
      I1 => U0_n_30,
      O => \Data_Out_int[22]_i_17_n_0\
    );
\Data_Out_int[22]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(8),
      I1 => U0_n_27,
      O => \Data_Out_int[22]_i_8_n_0\
    );
\Data_Out_int[26]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(11),
      I1 => U0_n_24,
      O => \Data_Out_int[26]_i_11_n_0\
    );
\Data_Out_int[26]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(10),
      I1 => U0_n_25,
      O => \Data_Out_int[26]_i_14_n_0\
    );
\Data_Out_int[26]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(9),
      I1 => U0_n_26,
      O => \Data_Out_int[26]_i_17_n_0\
    );
\Data_Out_int[26]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(12),
      I1 => U0_n_23,
      O => \Data_Out_int[26]_i_8_n_0\
    );
\Data_Out_int[30]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(14),
      I1 => U0_n_21,
      O => \Data_Out_int[30]_i_12_n_0\
    );
\Data_Out_int[30]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(13),
      I1 => U0_n_22,
      O => \Data_Out_int[30]_i_15_n_0\
    );
\Data_Out_int[30]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(15),
      O => \Data_Out_int[30]_i_3_n_0\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\L__972_carry_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(3),
      I1 => U0_n_32,
      O => \L__972_carry_i_19_n_0\
    );
U0: entity work.lab4_design_lab4_ip_0_6_lab4_ip_v1_0
     port map (
      BCLK_int_reg => ac_bclk,
      \Data_Out_int[18]_i_4\(0) => \Data_Out_int[22]_i_17_n_0\,
      \Data_Out_int[22]_i_11\(0) => \Data_Out_int[22]_i_8_n_0\,
      \Data_Out_int[22]_i_14\(0) => \Data_Out_int[22]_i_11_n_0\,
      \Data_Out_int[22]_i_17\(0) => \Data_Out_int[22]_i_14_n_0\,
      \Data_Out_int[22]_i_8\(0) => \Data_Out_int[26]_i_17_n_0\,
      \Data_Out_int[26]_i_11\(0) => \Data_Out_int[26]_i_8_n_0\,
      \Data_Out_int[26]_i_14\(0) => \Data_Out_int[26]_i_11_n_0\,
      \Data_Out_int[26]_i_17\(0) => \Data_Out_int[26]_i_14_n_0\,
      \Data_Out_int[26]_i_8\(0) => \Data_Out_int[30]_i_15_n_0\,
      \Data_Out_int_reg[30]\(0) => \Data_Out_int[30]_i_3_n_0\,
      LRCLK_reg => ac_lrclk,
      \L__972_carry_i_10\(0) => \L__972_carry_i_19_n_0\,
      \L__972_carry_i_19\(0) => \Data_Out_int[18]_i_4_n_0\,
      \L_carry__2\(12 downto 0) => \lab4_ip_v1_0_S00_AXI_inst/dp_inst/L\(15 downto 3),
      O(0) => U0_n_21,
      S(0) => \Data_Out_int[30]_i_12_n_0\,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_wready_reg => s00_axi_wready,
      btn(4 downto 0) => btn(4 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      scl => scl,
      sda => sda,
      \slv_reg2_reg[15]\(0) => U0_n_22,
      \slv_reg2_reg[15]_0\(0) => U0_n_23,
      \slv_reg2_reg[15]_1\(0) => U0_n_24,
      \slv_reg2_reg[15]_2\(0) => U0_n_25,
      \slv_reg2_reg[15]_3\(0) => U0_n_26,
      \slv_reg2_reg[15]_4\(0) => U0_n_27,
      \slv_reg2_reg[15]_5\(0) => U0_n_28,
      \slv_reg2_reg[15]_6\(0) => U0_n_29,
      \slv_reg2_reg[15]_7\(0) => U0_n_30,
      \slv_reg2_reg[15]_8\(0) => U0_n_31,
      \slv_reg2_reg[15]_9\(0) => U0_n_32,
      switch(7 downto 0) => switch(7 downto 0)
    );
end STRUCTURE;
