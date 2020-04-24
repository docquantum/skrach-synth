-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Apr 23 19:54:43 2020
-- Host        : QuantumNet-L4 running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim
--               /home/docquantum/homework/ce446_solovey/final/code/Skrach.srcs/sources_1/bd/skrach_design/ip/skrach_design_lab4_ip_0_1/skrach_design_lab4_ip_0_1_sim_netlist.vhdl
-- Design      : skrach_design_lab4_ip_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity skrach_design_lab4_ip_0_1_TWICtl is
  port (
    initA_reg_0_sp_1 : out STD_LOGIC;
    initA_reg_2_sp_1 : out STD_LOGIC;
    \initA_reg[2]_0\ : out STD_LOGIC;
    initA_reg_5_sp_1 : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn_1 : out STD_LOGIC;
    \initA_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]\ : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    clk_out2 : in STD_LOGIC;
    initA_reg : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \initA_reg[5]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    stb : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    initA_reg_6_sp_1 : in STD_LOGIC;
    \state_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[1]\ : in STD_LOGIC;
    \state_reg[1]_0\ : in STD_LOGIC;
    \state_reg[1]_1\ : in STD_LOGIC;
    \state_reg[3]_0\ : in STD_LOGIC;
    initA_reg_1_sp_1 : in STD_LOGIC;
    initEn : in STD_LOGIC;
    \initA_reg[1]_0\ : in STD_LOGIC;
    \initA_reg[1]_1\ : in STD_LOGIC;
    \initA[2]_i_2_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \initA[2]_i_2_1\ : in STD_LOGIC;
    initEn_reg : in STD_LOGIC;
    msg : in STD_LOGIC;
    initEn_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_TWICtl : entity is "TWICtl";
end skrach_design_lab4_ip_0_1_TWICtl;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_TWICtl is
  signal DONE_O_i_1_n_0 : STD_LOGIC;
  signal DONE_O_i_2_n_0 : STD_LOGIC;
  signal DONE_O_i_3_n_0 : STD_LOGIC;
  signal DONE_O_i_4_n_0 : STD_LOGIC;
  signal DONE_O_i_5_n_0 : STD_LOGIC;
  signal ERR_O_i_1_n_0 : STD_LOGIC;
  signal \FSM_gray_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[3]_i_16_n_0\ : STD_LOGIC;
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
  signal \dataByte[0]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[1]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[2]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[3]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[4]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[5]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[6]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_2_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_5_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_6_n_0\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[0]\ : STD_LOGIC;
  signal ddSda : STD_LOGIC;
  signal done : STD_LOGIC;
  signal error : STD_LOGIC;
  signal iSda : STD_LOGIC;
  signal \initA[2]_i_2_n_0\ : STD_LOGIC;
  signal \initA[2]_i_4_n_0\ : STD_LOGIC;
  signal \initA[2]_i_6_n_0\ : STD_LOGIC;
  signal initA_reg_0_sn_1 : STD_LOGIC;
  signal initA_reg_1_sn_1 : STD_LOGIC;
  signal initA_reg_2_sn_1 : STD_LOGIC;
  signal initA_reg_5_sn_1 : STD_LOGIC;
  signal initA_reg_6_sn_1 : STD_LOGIC;
  signal initEn_i_2_n_0 : STD_LOGIC;
  signal int_Rst : STD_LOGIC;
  signal int_Rst_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rScl : STD_LOGIC;
  signal rScl_i_1_n_0 : STD_LOGIC;
  signal rSda : STD_LOGIC;
  signal rSda_i_1_n_0 : STD_LOGIC;
  signal rSda_i_3_n_0 : STD_LOGIC;
  signal rSda_i_4_n_0 : STD_LOGIC;
  signal sclCnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sclCnt0_0 : STD_LOGIC;
  signal \sclCnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \sclCnt[6]_i_4_n_0\ : STD_LOGIC;
  signal sclCnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal scl_INST_0_i_1_n_0 : STD_LOGIC;
  signal sda_INST_0_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \subState[0]_i_1_n_0\ : STD_LOGIC;
  signal \subState[1]_i_1_n_0\ : STD_LOGIC;
  signal \subState[1]_i_2_n_0\ : STD_LOGIC;
  signal \subState[1]_i_3_n_0\ : STD_LOGIC;
  signal \subState_reg_n_0_[0]\ : STD_LOGIC;
  signal \subState_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DONE_O_i_2 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of DONE_O_i_5 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_gray_state[1]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_gray_state[2]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_10\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_11\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_12\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_14\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_15\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_16\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_gray_state[3]_i_9\ : label is "soft_lutpair28";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[0]\ : label is "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[1]\ : label is "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[2]\ : label is "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[3]\ : label is "stwrite:0000,stread:0010,ststart:0101,stidle:0001,stmnackstart:0111,stmack:0110,stsack:0011,stmnackstop:0100,ststop:1111";
  attribute SOFT_HLUTNM of \bitCount[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bitCount[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \busFreeCnt[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \busFreeCnt[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \busFreeCnt[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \busFreeCnt[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dataByte[7]_i_6\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \initA[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \initA[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \initA[2]_i_6\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of rScl_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of rSda_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of rSda_i_4 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sclCnt[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sclCnt[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sclCnt[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sclCnt[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sclCnt[6]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of sda_INST_0_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \subState[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \subState[1]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \subState[1]_i_3\ : label is "soft_lutpair25";
begin
  initA_reg_0_sp_1 <= initA_reg_0_sn_1;
  initA_reg_1_sn_1 <= initA_reg_1_sp_1;
  initA_reg_2_sp_1 <= initA_reg_2_sn_1;
  initA_reg_5_sp_1 <= initA_reg_5_sn_1;
  initA_reg_6_sn_1 <= initA_reg_6_sp_1;
DONE_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000D0FF"
    )
        port map (
      I0 => addrNData,
      I1 => p_0_in(0),
      I2 => DONE_O_i_2_n_0,
      I3 => DONE_O_i_3_n_0,
      I4 => DONE_O_i_4_n_0,
      I5 => DONE_O_i_5_n_0,
      O => DONE_O_i_1_n_0
    );
DONE_O_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      O => DONE_O_i_2_n_0
    );
DONE_O_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => bitCount(0),
      I1 => bitCount(1),
      I2 => bitCount(2),
      I3 => \dataByte[7]_i_6_n_0\,
      I4 => state(1),
      I5 => state(0),
      O => DONE_O_i_3_n_0
    );
DONE_O_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \subState_reg_n_0_[0]\,
      I1 => \subState_reg_n_0_[1]\,
      I2 => \subState[1]_i_2_n_0\,
      O => DONE_O_i_4_n_0
    );
DONE_O_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_12_n_0\,
      I1 => p_0_in(0),
      I2 => dScl,
      I3 => rSda,
      O => DONE_O_i_5_n_0
    );
DONE_O_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => DONE_O_i_1_n_0,
      Q => done,
      R => '0'
    );
ERR_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => \subState[1]_i_2_n_0\,
      I1 => \subState_reg_n_0_[1]\,
      I2 => \subState_reg_n_0_[0]\,
      I3 => DONE_O_i_2_n_0,
      I4 => p_0_in(0),
      I5 => DONE_O_i_5_n_0,
      O => ERR_O_i_1_n_0
    );
ERR_O_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => ERR_O_i_1_n_0,
      Q => error,
      R => '0'
    );
\FSM_gray_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FF4FFF5FFF5F"
    )
        port map (
      I0 => \FSM_gray_state[0]_i_2_n_0\,
      I1 => \FSM_gray_state[2]_i_2_n_0\,
      I2 => state(1),
      I3 => state(3),
      I4 => state(2),
      I5 => state(0),
      O => \FSM_gray_state[0]_i_1_n_0\
    );
\FSM_gray_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5515"
    )
        port map (
      I0 => state(0),
      I1 => stb,
      I2 => msg,
      I3 => int_Rst,
      I4 => state(2),
      O => \FSM_gray_state[0]_i_2_n_0\
    );
\FSM_gray_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000003A303A"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_9_n_0\,
      I1 => \FSM_gray_state[1]_i_2_n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      I5 => state(3),
      O => \FSM_gray_state[1]_i_1_n_0\
    );
\FSM_gray_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504F0FF05040000"
    )
        port map (
      I0 => \dataByte_reg_n_0_[0]\,
      I1 => addrNData,
      I2 => int_Rst,
      I3 => stb,
      I4 => state(0),
      I5 => \FSM_gray_state[1]_i_3_n_0\,
      O => \FSM_gray_state[1]_i_2_n_0\
    );
\FSM_gray_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \FSM_gray_state[1]_i_3_n_0\
    );
\FSM_gray_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A00ACFF0"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_9_n_0\,
      I1 => \FSM_gray_state[2]_i_2_n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      I5 => state(3),
      O => \FSM_gray_state[2]_i_1_n_0\
    );
\FSM_gray_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF0B"
    )
        port map (
      I0 => msg,
      I1 => stb,
      I2 => addrNData,
      I3 => \dataByte_reg_n_0_[0]\,
      I4 => int_Rst,
      O => \FSM_gray_state[2]_i_2_n_0\
    );
\FSM_gray_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF33FF23"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_3_n_0\,
      I1 => \FSM_gray_state[3]_i_4_n_0\,
      I2 => \FSM_gray_state[3]_i_5_n_0\,
      I3 => \FSM_gray_state[3]_i_6_n_0\,
      I4 => \FSM_gray_state[3]_i_7_n_0\,
      I5 => \FSM_gray_state[3]_i_8_n_0\,
      O => \FSM_gray_state[3]_i_1_n_0\
    );
\FSM_gray_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => int_Rst,
      I1 => \dataByte_reg_n_0_[0]\,
      I2 => addrNData,
      I3 => stb,
      O => \FSM_gray_state[3]_i_10_n_0\
    );
\FSM_gray_state[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => bitCount(1),
      I1 => bitCount(0),
      I2 => bitCount(2),
      O => \FSM_gray_state[3]_i_11_n_0\
    );
\FSM_gray_state[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      O => \FSM_gray_state[3]_i_12_n_0\
    );
\FSM_gray_state[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => state(3),
      I4 => \subState_reg_n_0_[0]\,
      I5 => \subState_reg_n_0_[1]\,
      O => \FSM_gray_state[3]_i_13_n_0\
    );
\FSM_gray_state[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \subState_reg_n_0_[0]\,
      I1 => \subState_reg_n_0_[1]\,
      O => \FSM_gray_state[3]_i_14_n_0\
    );
\FSM_gray_state[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \FSM_gray_state[3]_i_15_n_0\
    );
\FSM_gray_state[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      O => \FSM_gray_state[3]_i_16_n_0\
    );
\FSM_gray_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004011000040"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => \FSM_gray_state[3]_i_9_n_0\,
      I3 => state(1),
      I4 => state(0),
      I5 => \FSM_gray_state[3]_i_10_n_0\,
      O => \FSM_gray_state[3]_i_2_n_0\
    );
\FSM_gray_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      O => \FSM_gray_state[3]_i_3_n_0\
    );
\FSM_gray_state[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => \subState_reg_n_0_[0]\,
      I2 => \subState[1]_i_2_n_0\,
      O => \FSM_gray_state[3]_i_4_n_0\
    );
\FSM_gray_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB7FFB3"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => \FSM_gray_state[3]_i_11_n_0\,
      O => \FSM_gray_state[3]_i_5_n_0\
    );
\FSM_gray_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \subState[1]_i_3_n_0\,
      I2 => \busState_reg_n_0_[1]\,
      I3 => stb,
      I4 => \busState_reg_n_0_[0]\,
      I5 => DONE_O_i_5_n_0,
      O => \FSM_gray_state[3]_i_6_n_0\
    );
\FSM_gray_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_12_n_0\,
      I1 => bitCount(0),
      I2 => bitCount(1),
      I3 => bitCount(2),
      O => \FSM_gray_state[3]_i_7_n_0\
    );
\FSM_gray_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0A0B3F3"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_13_n_0\,
      I1 => \FSM_gray_state[3]_i_9_n_0\,
      I2 => \subState[1]_i_2_n_0\,
      I3 => \FSM_gray_state[3]_i_14_n_0\,
      I4 => \FSM_gray_state[3]_i_15_n_0\,
      I5 => \FSM_gray_state[3]_i_16_n_0\,
      O => \FSM_gray_state[3]_i_8_n_0\
    );
\FSM_gray_state[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => rSda,
      I1 => dScl,
      I2 => p_0_in(0),
      O => \FSM_gray_state[3]_i_9_n_0\
    );
\FSM_gray_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_gray_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_gray_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
\FSM_gray_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \FSM_gray_state[3]_i_1_n_0\,
      D => \FSM_gray_state[3]_i_2_n_0\,
      Q => state(3),
      R => '0'
    );
addrNData_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEEAAAAEEEEAAAA"
    )
        port map (
      I0 => addrNData,
      I1 => \FSM_gray_state[3]_i_3_n_0\,
      I2 => \subState_reg_n_0_[1]\,
      I3 => \subState_reg_n_0_[0]\,
      I4 => \subState[1]_i_2_n_0\,
      I5 => DONE_O_i_2_n_0,
      O => addrNData_i_1_n_0
    );
addrNData_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
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
\bitCount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
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
      C => clk_out2,
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
      C => clk_out2,
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
      O => busFreeCnt0(1)
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
      INIT => X"FE01"
    )
        port map (
      I0 => busFreeCnt_reg(1),
      I1 => busFreeCnt_reg(0),
      I2 => busFreeCnt_reg(2),
      I3 => busFreeCnt_reg(3),
      O => busFreeCnt0(3)
    );
\busFreeCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => busFreeCnt_reg(3),
      I1 => busFreeCnt_reg(2),
      I2 => busFreeCnt_reg(0),
      I3 => busFreeCnt_reg(1),
      I4 => busFreeCnt_reg(4),
      O => busFreeCnt0(4)
    );
\busFreeCnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => busFreeCnt_reg(4),
      I1 => busFreeCnt_reg(1),
      I2 => busFreeCnt_reg(0),
      I3 => busFreeCnt_reg(2),
      I4 => busFreeCnt_reg(3),
      I5 => busFreeCnt_reg(5),
      O => busFreeCnt0(5)
    );
\busFreeCnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => int_Rst,
      I2 => dScl,
      O => busFreeCnt0_1
    );
\busFreeCnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => busFreeCnt_reg(6),
      I1 => \busFreeCnt[6]_i_3_n_0\,
      O => busFreeCnt0(6)
    );
\busFreeCnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => busFreeCnt_reg(5),
      I1 => busFreeCnt_reg(3),
      I2 => busFreeCnt_reg(2),
      I3 => busFreeCnt_reg(0),
      I4 => busFreeCnt_reg(1),
      I5 => busFreeCnt_reg(4),
      O => \busFreeCnt[6]_i_3_n_0\
    );
\busFreeCnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
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
      C => clk_out2,
      CE => '1',
      D => busFreeCnt0(1),
      Q => busFreeCnt_reg(1),
      R => busFreeCnt0_1
    );
\busFreeCnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
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
      C => clk_out2,
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
      C => clk_out2,
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
      C => clk_out2,
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
      C => clk_out2,
      CE => '1',
      D => busFreeCnt0(6),
      Q => busFreeCnt_reg(6),
      S => busFreeCnt0_1
    );
\busState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BFFFFF00BF0000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => dScl,
      I2 => ddSda,
      I3 => int_Rst,
      I4 => busState0,
      I5 => \busState_reg_n_0_[0]\,
      O => \busState[0]_i_1_n_0\
    );
\busState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => ddSda,
      I1 => dScl,
      I2 => p_0_in(0),
      I3 => int_Rst,
      I4 => busState0,
      I5 => \busState_reg_n_0_[1]\,
      O => \busState[1]_i_1_n_0\
    );
\busState[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FF40FF40FFFF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => dScl,
      I2 => ddSda,
      I3 => int_Rst,
      I4 => \busFreeCnt[6]_i_3_n_0\,
      I5 => busFreeCnt_reg(6),
      O => busState0
    );
\busState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
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
      C => clk_out2,
      CE => '1',
      D => \busState[1]_i_1_n_0\,
      Q => \busState_reg_n_0_[1]\,
      R => '0'
    );
dScl_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => scl,
      Q => dScl,
      R => '0'
    );
dSda_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => sda,
      Q => p_0_in(0),
      R => '0'
    );
\dataByte[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \dataByte[7]_i_5_n_0\,
      I2 => Q(0),
      I3 => \FSM_gray_state[3]_i_3_n_0\,
      O => \dataByte[0]_i_1_n_0\
    );
\dataByte[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_3_n_0\,
      I1 => Q(1),
      I2 => \dataByte[7]_i_5_n_0\,
      I3 => \dataByte_reg_n_0_[0]\,
      O => \dataByte[1]_i_1_n_0\
    );
\dataByte[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_3_n_0\,
      I1 => Q(2),
      I2 => \dataByte[7]_i_5_n_0\,
      I3 => dataByte(1),
      O => \dataByte[2]_i_1_n_0\
    );
\dataByte[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => dataByte(2),
      I1 => \dataByte[7]_i_5_n_0\,
      I2 => Q(3),
      I3 => \FSM_gray_state[3]_i_3_n_0\,
      O => \dataByte[3]_i_1_n_0\
    );
\dataByte[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_3_n_0\,
      I1 => Q(4),
      I2 => \dataByte[7]_i_5_n_0\,
      I3 => dataByte(3),
      O => \dataByte[4]_i_1_n_0\
    );
\dataByte[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_3_n_0\,
      I1 => Q(5),
      I2 => \dataByte[7]_i_5_n_0\,
      I3 => dataByte(4),
      O => \dataByte[5]_i_1_n_0\
    );
\dataByte[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0E"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_3_n_0\,
      I1 => Q(6),
      I2 => \dataByte[7]_i_5_n_0\,
      I3 => dataByte(5),
      O => \dataByte[6]_i_1_n_0\
    );
\dataByte[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dataByte1,
      I1 => dataByte0,
      O => \dataByte[7]_i_1_n_0\
    );
\dataByte[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => dataByte(6),
      I1 => \dataByte[7]_i_5_n_0\,
      I2 => Q(7),
      I3 => \FSM_gray_state[3]_i_3_n_0\,
      O => \dataByte[7]_i_2_n_0\
    );
\dataByte[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000400C000000000"
    )
        port map (
      I0 => \FSM_gray_state[3]_i_14_n_0\,
      I1 => \subState[1]_i_2_n_0\,
      I2 => state(2),
      I3 => state(3),
      I4 => state(1),
      I5 => state(0),
      O => dataByte1
    );
\dataByte[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000040008000"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => \subState_reg_n_0_[0]\,
      I2 => \subState[1]_i_2_n_0\,
      I3 => \dataByte[7]_i_6_n_0\,
      I4 => state(1),
      I5 => state(0),
      O => dataByte0
    );
\dataByte[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF5FFFFFFFFF"
    )
        port map (
      I0 => \subState[1]_i_2_n_0\,
      I1 => \FSM_gray_state[3]_i_14_n_0\,
      I2 => state(2),
      I3 => state(3),
      I4 => state(1),
      I5 => state(0),
      O => \dataByte[7]_i_5_n_0\
    );
\dataByte[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      O => \dataByte[7]_i_6_n_0\
    );
\dataByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[0]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[0]\,
      R => '0'
    );
\dataByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[1]_i_1_n_0\,
      Q => dataByte(1),
      R => '0'
    );
\dataByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[2]_i_1_n_0\,
      Q => dataByte(2),
      R => '0'
    );
\dataByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[3]_i_1_n_0\,
      Q => dataByte(3),
      R => '0'
    );
\dataByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[4]_i_1_n_0\,
      Q => dataByte(4),
      R => '0'
    );
\dataByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[5]_i_1_n_0\,
      Q => dataByte(5),
      R => '0'
    );
\dataByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[6]_i_1_n_0\,
      Q => dataByte(6),
      R => '0'
    );
\dataByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[7]_i_2_n_0\,
      Q => dataByte(7),
      R => '0'
    );
ddSda_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => p_0_in(0),
      Q => ddSda,
      R => '0'
    );
\initA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \initA[2]_i_2_n_0\,
      I1 => s00_axi_aresetn,
      I2 => initA_reg(0),
      O => s00_axi_aresetn_1
    );
\initA[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B400"
    )
        port map (
      I0 => \initA[2]_i_2_n_0\,
      I1 => initA_reg(0),
      I2 => initA_reg(1),
      I3 => s00_axi_aresetn,
      O => \initA_reg[0]_0\
    );
\initA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8CCC4000"
    )
        port map (
      I0 => \initA[2]_i_2_n_0\,
      I1 => s00_axi_aresetn,
      I2 => initA_reg(1),
      I3 => initA_reg(0),
      I4 => initA_reg(2),
      O => s00_axi_aresetn_0
    );
\initA[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBABBB"
    )
        port map (
      I0 => initA_reg_1_sn_1,
      I1 => \initA[2]_i_4_n_0\,
      I2 => initEn,
      I3 => \state_reg[3]\(2),
      I4 => \initA_reg[1]_0\,
      I5 => \initA_reg[1]_1\,
      O => \initA[2]_i_2_n_0\
    );
\initA[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \state_reg[3]\(2),
      I1 => \initA[2]_i_6_n_0\,
      I2 => \initA[2]_i_2_0\(2),
      I3 => \initA[2]_i_2_0\(1),
      I4 => \initA[2]_i_2_0\(0),
      I5 => \initA[2]_i_2_1\,
      O => \initA[2]_i_4_n_0\
    );
\initA[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => done,
      I1 => error,
      O => \initA[2]_i_6_n_0\
    );
\initA[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(0),
      I2 => initA_reg(1),
      I3 => \initA[2]_i_2_n_0\,
      I4 => initA_reg(3),
      O => \initA_reg[2]_0\
    );
\initA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(1),
      I2 => initA_reg(3),
      I3 => initA_reg(2),
      I4 => \initA[2]_i_2_n_0\,
      I5 => initA_reg(4),
      O => initA_reg_0_sn_1
    );
\initA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00000800"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(3),
      I2 => \initA_reg[5]_0\,
      I3 => initA_reg(4),
      I4 => \initA[2]_i_2_n_0\,
      I5 => initA_reg(5),
      O => initA_reg_2_sn_1
    );
\initA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000008"
    )
        port map (
      I0 => initA_reg(5),
      I1 => initA_reg(4),
      I2 => \initA_reg[5]_0\,
      I3 => initA_reg_6_sn_1,
      I4 => \initA[2]_i_2_n_0\,
      I5 => initA_reg(6),
      O => initA_reg_5_sn_1
    );
initEn_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75774544"
    )
        port map (
      I0 => \state_reg[3]\(2),
      I1 => initEn_i_2_n_0,
      I2 => initEn_reg,
      I3 => initEn_reg_0,
      I4 => initEn,
      O => \state_reg[2]\
    );
initEn_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \state_reg[3]\(3),
      I1 => \state_reg[3]\(2),
      I2 => error,
      I3 => done,
      I4 => s00_axi_aresetn,
      I5 => \state_reg[1]_0\,
      O => initEn_i_2_n_0
    );
int_Rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA2FFFFFFFF"
    )
        port map (
      I0 => int_Rst,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      I5 => s00_axi_aresetn,
      O => int_Rst_i_1_n_0
    );
int_Rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => int_Rst_i_1_n_0,
      Q => int_Rst,
      R => '0'
    );
rScl_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F2828"
    )
        port map (
      I0 => \subState[1]_i_3_n_0\,
      I1 => \subState_reg_n_0_[0]\,
      I2 => \subState_reg_n_0_[1]\,
      I3 => state(3),
      I4 => rScl,
      O => rScl_i_1_n_0
    );
rScl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => rScl_i_1_n_0,
      Q => rScl,
      R => '0'
    );
rSda_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => iSda,
      I1 => rSda_i_3_n_0,
      I2 => rSda,
      O => rSda_i_1_n_0
    );
rSda_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"272F242C250C250C"
    )
        port map (
      I0 => state(3),
      I1 => \subState_reg_n_0_[0]\,
      I2 => \subState_reg_n_0_[1]\,
      I3 => rSda_i_4_n_0,
      I4 => dataByte(7),
      I5 => \FSM_gray_state[3]_i_12_n_0\,
      O => iSda
    );
rSda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400AEAAAEAAFEFF"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => \subState_reg_n_0_[1]\,
      I5 => \subState_reg_n_0_[0]\,
      O => rSda_i_3_n_0
    );
rSda_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => rSda_i_4_n_0
    );
rSda_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
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
      O => sclCnt0(1)
    );
\sclCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => sclCnt_reg(2),
      I1 => sclCnt_reg(0),
      I2 => sclCnt_reg(1),
      O => sclCnt0(2)
    );
\sclCnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => sclCnt_reg(1),
      I1 => sclCnt_reg(0),
      I2 => sclCnt_reg(2),
      I3 => sclCnt_reg(3),
      O => sclCnt0(3)
    );
\sclCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => sclCnt_reg(3),
      I1 => sclCnt_reg(2),
      I2 => sclCnt_reg(0),
      I3 => sclCnt_reg(1),
      I4 => sclCnt_reg(4),
      O => sclCnt0(4)
    );
\sclCnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => sclCnt_reg(5),
      I1 => sclCnt_reg(4),
      I2 => sclCnt_reg(1),
      I3 => sclCnt_reg(0),
      I4 => sclCnt_reg(2),
      I5 => sclCnt_reg(3),
      O => sclCnt0(5)
    );
\sclCnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \subState[1]_i_2_n_0\,
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
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
      I0 => sclCnt_reg(3),
      I1 => sclCnt_reg(2),
      I2 => sclCnt_reg(0),
      I3 => sclCnt_reg(1),
      I4 => sclCnt_reg(4),
      I5 => sclCnt_reg(5),
      O => \sclCnt[6]_i_4_n_0\
    );
\sclCnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
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
      C => clk_out2,
      CE => \sclCnt[6]_i_2_n_0\,
      D => sclCnt0(1),
      Q => sclCnt_reg(1),
      S => sclCnt0_0
    );
\sclCnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
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
      C => clk_out2,
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
      C => clk_out2,
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
      C => clk_out2,
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
      C => clk_out2,
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
      INIT => X"55551011"
    )
        port map (
      I0 => error,
      I1 => \state_reg[3]\(2),
      I2 => \state_reg[3]\(1),
      I3 => \state_reg[3]\(0),
      I4 => \state_reg[3]\(3),
      O => D(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0000000E000E00"
    )
        port map (
      I0 => \state_reg[3]\(1),
      I1 => \state_reg[3]\(0),
      I2 => error,
      I3 => \state_reg[1]\,
      I4 => \state_reg[1]_0\,
      I5 => \state_reg[1]_1\,
      O => D(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F301"
    )
        port map (
      I0 => \state_reg[1]_0\,
      I1 => \state_reg[3]\(2),
      I2 => \state_reg[3]\(3),
      I3 => error,
      O => D(2)
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"883F00AA003300AA"
    )
        port map (
      I0 => done,
      I1 => \state_reg[3]\(0),
      I2 => initEn_reg,
      I3 => \state_reg[3]\(3),
      I4 => \state_reg[3]\(2),
      I5 => \state_reg[3]\(1),
      O => E(0)
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \state_reg[3]\(0),
      I1 => \state_reg[3]\(1),
      I2 => \state_reg[3]\(2),
      I3 => \state_reg[3]\(3),
      I4 => error,
      I5 => \state_reg[3]_0\,
      O => D(3)
    );
\subState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666666606"
    )
        port map (
      I0 => \subState_reg_n_0_[0]\,
      I1 => \subState[1]_i_2_n_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => state(3),
      O => \subState[0]_i_1_n_0\
    );
\subState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \subState_reg_n_0_[1]\,
      I1 => \subState[1]_i_2_n_0\,
      I2 => \subState_reg_n_0_[0]\,
      I3 => \subState[1]_i_3_n_0\,
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
      INIT => X"FFFD"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      O => \subState[1]_i_3_n_0\
    );
\subState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
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
      C => clk_out2,
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
entity skrach_design_lab4_ip_0_1_addr_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \processCount_reg[15]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \processCount_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_addr_counter : entity is "addr_counter";
end skrach_design_lab4_ip_0_1_addr_counter;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_addr_counter is
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
      DI(3 downto 0) => \processCount_reg[15]_0\(3 downto 0),
      O(3 downto 0) => processCount1_in(3 downto 0),
      S(3 downto 0) => \processCount_reg[3]_0\(3 downto 0)
    );
\processCount0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \processCount0_inferred__0/i__carry_n_0\,
      CO(3) => \processCount0_inferred__0/i__carry__0_n_0\,
      CO(2) => \processCount0_inferred__0/i__carry__0_n_1\,
      CO(1) => \processCount0_inferred__0/i__carry__0_n_2\,
      CO(0) => \processCount0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \processCount_reg[15]_0\(7 downto 4),
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
      DI(3 downto 0) => \processCount_reg[15]_0\(11 downto 8),
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
      DI(2 downto 0) => \processCount_reg[15]_0\(14 downto 12),
      O(3 downto 0) => processCount1_in(15 downto 12),
      S(3 downto 0) => S(3 downto 0)
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
entity skrach_design_lab4_ip_0_1_audio_clk_wiz_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_audio_clk_wiz_clk_wiz : entity is "audio_clk_wiz_clk_wiz";
end skrach_design_lab4_ip_0_1_audio_clk_wiz_clk_wiz;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_audio_clk_wiz_clk_wiz is
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
      LOCKED => locked,
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
entity skrach_design_lab4_ip_0_1_i2s_ctl is
  port (
    BCLK_int_reg_0 : out STD_LOGIC;
    LRCLK_reg_0 : out STD_LOGIC;
    ac_lrclk_sig_prev_reg : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    \ac_lrclk_count_reg[2]\ : out STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    BCLK_int_reg_1 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    ac_lrclk_sig_prev_reg_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    ac_lrclk_count : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sw : in STD_LOGIC;
    minusOp : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \Data_Out_int_reg[15]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_i2s_ctl : entity is "i2s_ctl";
end skrach_design_lab4_ip_0_1_i2s_ctl;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_i2s_ctl is
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
  signal \Data_Out_int[31]_i_4_n_0\ : STD_LOGIC;
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
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal \NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of BCLK_int_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Cnt_Bclk[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Cnt_Bclk[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Cnt_Bclk[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Cnt_Bclk[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Cnt_Lrclk[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Data_Out_int[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Data_Out_int[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Data_Out_int[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Data_Out_int[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Data_Out_int[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Data_Out_int[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Data_Out_int[22]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Data_Out_int[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Data_Out_int[24]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Data_Out_int[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Data_Out_int[26]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Data_Out_int[27]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Data_Out_int[28]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Data_Out_int[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Data_Out_int[30]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Data_Out_int[31]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Data_Out_int[31]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of LRCLK_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of LRCLK_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ac_lrclk_sig_prev_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ready_sig_i_2 : label is "soft_lutpair14";
begin
  BCLK_int_reg_0 <= \^bclk_int_reg_0\;
  LRCLK_reg_0 <= \^lrclk_reg_0\;
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
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
      R => BCLK_int_reg_1
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
      S(0) => \i__carry_i_2_n_0\
    );
\Cnt_Bclk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cnt_Bclk_reg(0),
      O => p_0_in(0)
    );
\Cnt_Bclk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Cnt_Bclk_reg(0),
      I1 => Cnt_Bclk_reg(1),
      O => p_0_in(1)
    );
\Cnt_Bclk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Cnt_Bclk_reg(2),
      I1 => Cnt_Bclk_reg(1),
      I2 => Cnt_Bclk_reg(0),
      O => p_0_in(2)
    );
\Cnt_Bclk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => Cnt_Bclk_reg(3),
      I1 => Cnt_Bclk_reg(2),
      I2 => Cnt_Bclk_reg(0),
      I3 => Cnt_Bclk_reg(1),
      O => p_0_in(3)
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
      I1 => Cnt_Bclk_reg(1),
      I2 => Cnt_Bclk_reg(0),
      I3 => Cnt_Bclk_reg(2),
      I4 => Cnt_Bclk_reg(3),
      O => p_0_in(4)
    );
\Cnt_Bclk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(0),
      Q => Cnt_Bclk_reg(0),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(1),
      Q => Cnt_Bclk_reg(1),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(2),
      Q => Cnt_Bclk_reg(2),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(3),
      Q => Cnt_Bclk_reg(3),
      R => \Cnt_Bclk[4]_i_1_n_0\
    );
\Cnt_Bclk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(4),
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
      I0 => Cnt_Lrclk(0),
      I1 => Cnt_Lrclk(1),
      O => \Cnt_Lrclk[1]_i_1_n_0\
    );
\Cnt_Lrclk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Cnt_Lrclk(2),
      I1 => Cnt_Lrclk(1),
      I2 => Cnt_Lrclk(0),
      O => \Cnt_Lrclk[2]_i_1_n_0\
    );
\Cnt_Lrclk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => Cnt_Lrclk(3),
      I1 => Cnt_Lrclk(0),
      I2 => Cnt_Lrclk(1),
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
      I2 => Cnt_Lrclk(1),
      I3 => Cnt_Lrclk(0),
      I4 => Cnt_Lrclk(3),
      O => \Cnt_Lrclk[4]_i_2_n_0\
    );
\Cnt_Lrclk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[0]_i_1_n_0\,
      Q => Cnt_Lrclk(0),
      R => BCLK_int_reg_1
    );
\Cnt_Lrclk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[1]_i_1_n_0\,
      Q => Cnt_Lrclk(1),
      R => BCLK_int_reg_1
    );
\Cnt_Lrclk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[2]_i_1_n_0\,
      Q => Cnt_Lrclk(2),
      R => BCLK_int_reg_1
    );
\Cnt_Lrclk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[3]_i_1_n_0\,
      Q => Cnt_Lrclk(3),
      R => BCLK_int_reg_1
    );
\Cnt_Lrclk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => BCLK_Fall_int,
      D => \Cnt_Lrclk[4]_i_2_n_0\,
      Q => Cnt_Lrclk(4),
      R => BCLK_int_reg_1
    );
\Data_Out_int[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[15]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(0),
      O => \Data_Out_int[16]_i_1_n_0\
    );
\Data_Out_int[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[16]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(1),
      O => \Data_Out_int[17]_i_1_n_0\
    );
\Data_Out_int[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[17]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(2),
      O => \Data_Out_int[18]_i_1_n_0\
    );
\Data_Out_int[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[18]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(3),
      O => \Data_Out_int[19]_i_1_n_0\
    );
\Data_Out_int[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[19]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(4),
      O => \Data_Out_int[20]_i_1_n_0\
    );
\Data_Out_int[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[20]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(5),
      O => \Data_Out_int[21]_i_1_n_0\
    );
\Data_Out_int[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[21]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(6),
      O => \Data_Out_int[22]_i_1_n_0\
    );
\Data_Out_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[22]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(7),
      O => \Data_Out_int[23]_i_1_n_0\
    );
\Data_Out_int[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[23]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(8),
      O => \Data_Out_int[24]_i_1_n_0\
    );
\Data_Out_int[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[24]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(9),
      O => \Data_Out_int[25]_i_1_n_0\
    );
\Data_Out_int[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[25]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(10),
      O => \Data_Out_int[26]_i_1_n_0\
    );
\Data_Out_int[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[26]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(11),
      O => \Data_Out_int[27]_i_1_n_0\
    );
\Data_Out_int[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[27]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(12),
      O => \Data_Out_int[28]_i_1_n_0\
    );
\Data_Out_int[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[28]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(13),
      O => \Data_Out_int[29]_i_1_n_0\
    );
\Data_Out_int[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[29]\,
      I1 => \^s00_axi_aresetn_0\,
      I2 => minusOp(14),
      O => \Data_Out_int[30]_i_1_n_0\
    );
\Data_Out_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^bclk_int_reg_0\,
      I1 => Cnt_Bclk0,
      I2 => \^s00_axi_aresetn_0\,
      O => \Data_Out_int[31]_i_1_n_0\
    );
\Data_Out_int[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Data_Out_int_reg_n_0_[30]\,
      I1 => \^s00_axi_aresetn_0\,
      O => \Data_Out_int[31]_i_2_n_0\
    );
\Data_Out_int[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA2AA"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \Data_Out_int[31]_i_4_n_0\,
      I2 => \^bclk_int_reg_0\,
      I3 => Cnt_Bclk0,
      I4 => Cnt_Lrclk(4),
      I5 => Cnt_Lrclk(3),
      O => \^s00_axi_aresetn_0\
    );
\Data_Out_int[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Cnt_Lrclk(2),
      I1 => Cnt_Lrclk(1),
      I2 => Cnt_Lrclk(0),
      O => \Data_Out_int[31]_i_4_n_0\
    );
\Data_Out_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \Data_Out_int[31]_i_1_n_0\,
      D => \Data_Out_int_reg[15]_0\(0),
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
      I0 => LRCLK_i_2_n_0,
      I1 => \^bclk_int_reg_0\,
      I2 => Cnt_Bclk0,
      I3 => Cnt_Lrclk(4),
      I4 => \^lrclk_reg_0\,
      O => LRCLK_i_1_n_0
    );
LRCLK_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Cnt_Lrclk(3),
      I1 => Cnt_Lrclk(0),
      I2 => Cnt_Lrclk(1),
      I3 => Cnt_Lrclk(2),
      O => LRCLK_i_2_n_0
    );
LRCLK_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => LRCLK_i_1_n_0,
      Q => \^lrclk_reg_0\,
      R => BCLK_int_reg_1
    );
ac_lrclk_sig_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ac_lrclk_sig_prev_reg_0,
      I1 => s00_axi_aresetn,
      I2 => \^lrclk_reg_0\,
      O => ac_lrclk_sig_prev_reg
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
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => Cnt_Bclk_reg(2),
      I1 => Cnt_Bclk_reg(1),
      I2 => Cnt_Bclk_reg(0),
      O => \i__carry_i_2_n_0\
    );
ready_sig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00FF80000000"
    )
        port map (
      I0 => ac_lrclk_count(2),
      I1 => ac_lrclk_count(1),
      I2 => ac_lrclk_count(0),
      I3 => s00_axi_aresetn,
      I4 => ac_lrclk_count0,
      I5 => sw,
      O => \ac_lrclk_count_reg[2]\
    );
ready_sig_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^lrclk_reg_0\,
      I1 => ac_lrclk_sig_prev_reg_0,
      O => ac_lrclk_count0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity skrach_design_lab4_ip_0_1_lab4_controlunit is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ctrl_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ctrl_reg[0]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_ctrl_reg[0]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata_reg[5]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \processCount_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \processCount_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sw : in STD_LOGIC;
    RST : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_lab4_controlunit : entity is "lab4_controlunit";
end skrach_design_lab4_ip_0_1_lab4_controlunit;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_lab4_controlunit is
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
      INIT => X"FAF8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => sw,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => sw,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
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
      S => RST
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
      R => RST
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
      R => RST
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => Q(0),
      I1 => cw(0),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[5]\(0),
      I5 => \processCount_reg[15]\(4),
      O => D(0)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => Q(1),
      I1 => cw(1),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[5]\(1),
      I5 => \processCount_reg[15]\(5),
      O => D(1)
    );
\count_ctrl[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF57AA00"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => cw(0),
      O => \count_ctrl[0]_i_1_n_0\
    );
\count_ctrl[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7AAA0"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
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
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(7),
      I3 => \processCount_reg[15]\(7),
      O => \count_ctrl_reg[0]_1\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(6),
      I3 => \processCount_reg[15]\(6),
      O => \count_ctrl_reg[0]_1\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(5),
      I3 => \processCount_reg[15]\(5),
      O => \count_ctrl_reg[0]_1\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(4),
      I3 => \processCount_reg[15]\(4),
      O => \count_ctrl_reg[0]_1\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(11),
      I3 => \processCount_reg[15]\(11),
      O => \count_ctrl_reg[0]_2\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(10),
      I3 => \processCount_reg[15]\(10),
      O => \count_ctrl_reg[0]_2\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(9),
      I3 => \processCount_reg[15]\(9),
      O => \count_ctrl_reg[0]_2\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(8),
      I3 => \processCount_reg[15]\(8),
      O => \count_ctrl_reg[0]_2\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => \processCount_reg[15]\(15),
      I1 => cw(0),
      I2 => cw(1),
      I3 => \processCount_reg[15]_0\(15),
      O => S(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(14),
      I3 => \processCount_reg[15]\(14),
      O => S(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(13),
      I3 => \processCount_reg[15]\(13),
      O => S(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(12),
      I3 => \processCount_reg[15]\(12),
      O => S(0)
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(3),
      I3 => \processCount_reg[15]\(3),
      O => \count_ctrl_reg[0]_0\(3)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(2),
      I3 => \processCount_reg[15]\(2),
      O => \count_ctrl_reg[0]_0\(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(1),
      I3 => \processCount_reg[15]\(1),
      O => \count_ctrl_reg[0]_0\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => cw(0),
      I1 => cw(1),
      I2 => \processCount_reg[15]_0\(0),
      I3 => \processCount_reg[15]\(0),
      O => \count_ctrl_reg[0]_0\(0)
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
entity skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO is
  port (
    \sdp_bl.ramb18_dp_bl.ram18_bl_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sdp_bl.ramb18_dp_bl.ram18_bl_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \sdp_bl.ramb18_dp_bl.ram18_bl_2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \Data_Out_int_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOADO : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Data_Out_int_reg[15]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO : entity is "unimacro_BRAM_SDP_MACRO";
end skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO is
  signal DO : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \^sdp_bl.ramb18_dp_bl.ram18_bl_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \sdp_bl.ramb18_dp_bl.ram18_bl\ : label is "PRIMITIVE";
begin
  \sdp_bl.ramb18_dp_bl.ram18_bl_0\(14 downto 0) <= \^sdp_bl.ramb18_dp_bl.ram18_bl_0\(14 downto 0);
\Data_Out_int[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001D"
    )
        port map (
      I0 => \^sdp_bl.ramb18_dp_bl.ram18_bl_0\(0),
      I1 => \Data_Out_int_reg[15]\(0),
      I2 => DOADO(0),
      I3 => \Data_Out_int_reg[15]_0\,
      O => \sdp_bl.ramb18_dp_bl.ram18_bl_1\(0)
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => DO(15),
      I1 => \Data_Out_int_reg[15]\(0),
      I2 => DOADO(1),
      O => S(0)
    );
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
      DOADO(15) => DO(15),
      DOADO(14 downto 0) => \^sdp_bl.ramb18_dp_bl.ram18_bl_0\(14 downto 0),
      DOBDO(15 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => \sdp_bl.ramb18_dp_bl.ram18_bl_2\,
      RSTRAMB => \sdp_bl.ramb18_dp_bl.ram18_bl_2\,
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
entity \skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO__parameterized0\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 1 downto 0 );
    signalOut : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \sdp_bl.ramb18_dp_bl.ram18_bl_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \minusOp_carry__2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \minusOp_carry__2_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO__parameterized0\ : entity is "unimacro_BRAM_SDP_MACRO";
end \skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO__parameterized0\;

architecture STRUCTURE of \skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO__parameterized0\ is
  signal \^doado\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal readChord : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \sdp_bl.ramb18_dp_bl.ram18_bl\ : label is "PRIMITIVE";
begin
  DOADO(1 downto 0) <= \^doado\(1 downto 0);
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(8),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(8),
      O => signalOut(8)
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(7),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(7),
      O => signalOut(7)
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(6),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(6),
      O => signalOut(6)
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(5),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(5),
      O => signalOut(5)
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(12),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(12),
      O => signalOut(12)
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(11),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(11),
      O => signalOut(11)
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(10),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(10),
      O => signalOut(10)
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(9),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(9),
      O => signalOut(9)
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(14),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(14),
      O => signalOut(14)
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(13),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(13),
      O => signalOut(13)
    );
minusOp_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^doado\(0),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(0),
      O => signalOut(0)
    );
minusOp_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(4),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(4),
      O => signalOut(4)
    );
minusOp_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(3),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(3),
      O => signalOut(3)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(2),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(2),
      O => signalOut(2)
    );
minusOp_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => readChord(1),
      I1 => \minusOp_carry__2\(0),
      I2 => \minusOp_carry__2_0\(1),
      O => signalOut(1)
    );
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
      DOADO(15) => \^doado\(1),
      DOADO(14 downto 1) => readChord(14 downto 1),
      DOADO(0) => \^doado\(0),
      DOBDO(15 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => \sdp_bl.ramb18_dp_bl.ram18_bl_0\,
      RSTRAMB => \sdp_bl.ramb18_dp_bl.ram18_bl_0\,
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
entity skrach_design_lab4_ip_0_1_audio_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_audio_clk_wiz : entity is "audio_clk_wiz";
end skrach_design_lab4_ip_0_1_audio_clk_wiz;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_audio_clk_wiz is
begin
inst: entity work.skrach_design_lab4_ip_0_1_audio_clk_wiz_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      clk_out2 => clk_out2,
      locked => locked,
      resetn => resetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity skrach_design_lab4_ip_0_1_audio_init is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    clk_out2 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_audio_init : entity is "audio_init";
end skrach_design_lab4_ip_0_1_audio_init;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_audio_init is
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
  signal \data_i[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_i[7]_i_1_n_0\ : STD_LOGIC;
  signal delayEn : STD_LOGIC;
  signal delayEn_i_1_n_0 : STD_LOGIC;
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
  signal \initA[2]_i_3_n_0\ : STD_LOGIC;
  signal \initA[2]_i_5_n_0\ : STD_LOGIC;
  signal \initA[2]_i_7_n_0\ : STD_LOGIC;
  signal \initA[2]_i_8_n_0\ : STD_LOGIC;
  signal \initA[6]_i_2_n_0\ : STD_LOGIC;
  signal initA_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal initEn : STD_LOGIC;
  signal initEn_i_3_n_0 : STD_LOGIC;
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
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_10_n_0\ : STD_LOGIC;
  signal \state[3]_i_11_n_0\ : STD_LOGIC;
  signal \state[3]_i_12_n_0\ : STD_LOGIC;
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
  signal twi_controller_n_10 : STD_LOGIC;
  signal twi_controller_n_11 : STD_LOGIC;
  signal twi_controller_n_12 : STD_LOGIC;
  signal twi_controller_n_2 : STD_LOGIC;
  signal twi_controller_n_3 : STD_LOGIC;
  signal twi_controller_n_4 : STD_LOGIC;
  signal twi_controller_n_5 : STD_LOGIC;
  signal twi_controller_n_6 : STD_LOGIC;
  signal twi_controller_n_7 : STD_LOGIC;
  signal twi_controller_n_8 : STD_LOGIC;
  signal twi_controller_n_9 : STD_LOGIC;
  signal \NLW_delaycnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_delaycnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_i[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_i[5]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_i[5]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \delaycnt[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \initA[2]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \initA[6]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \initWord[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \initWord[11]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \initWord[30]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \initWord[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of msg_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \state[1]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \state[2]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \state[3]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of stb_i_1 : label is "soft_lutpair39";
begin
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
BCLK_int_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^s00_axi_aresetn_0\
    );
\data_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3EFEFEFE"
    )
        port map (
      I0 => \data_i[0]_i_2_n_0\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \data_i[0]_i_1_n_0\
    );
\data_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => data2(0),
      I1 => data1(0),
      I2 => \initWord_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \data_i[0]_i_2_n_0\
    );
\data_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020203000000"
    )
        port map (
      I0 => data2(1),
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => data1(1),
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \data_i[1]_i_1_n_0\
    );
\data_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAEAFAAAAAA"
    )
        port map (
      I0 => \data_i[5]_i_2_n_0\,
      I1 => data1(2),
      I2 => \data_i[5]_i_3_n_0\,
      I3 => data2(2),
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \data_i[2]_i_1_n_0\
    );
\data_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAEAFAAAAAA"
    )
        port map (
      I0 => \data_i[5]_i_2_n_0\,
      I1 => data1(3),
      I2 => \data_i[5]_i_3_n_0\,
      I3 => data2(3),
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \data_i[3]_i_1_n_0\
    );
\data_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => data2(4),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => data1(4),
      I4 => \initWord_reg_n_0_[5]\,
      I5 => \state[1]_i_2_n_0\,
      O => \data_i[4]_i_1_n_0\
    );
\data_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAEAFAAAAAA"
    )
        port map (
      I0 => \data_i[5]_i_2_n_0\,
      I1 => data1(5),
      I2 => \data_i[5]_i_3_n_0\,
      I3 => data2(5),
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => \data_i[5]_i_1_n_0\
    );
\data_i[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFFFF80"
    )
        port map (
      I0 => \initWord_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[3]\,
      O => \data_i[5]_i_2_n_0\
    );
\data_i[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => \data_i[5]_i_3_n_0\
    );
\data_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800000FF80000000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => data0(6),
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \data_i[6]_i_2_n_0\,
      O => \data_i[6]_i_1_n_0\
    );
\data_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => data1(7),
      I1 => \initWord_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => data0(6),
      I5 => data2(6),
      O => \data_i[6]_i_2_n_0\
    );
\data_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101100000001000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => data1(7),
      I4 => \state_reg_n_0_[1]\,
      I5 => data2(7),
      O => \data_i[7]_i_1_n_0\
    );
\data_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => s00_axi_aresetn,
      D => \data_i[0]_i_1_n_0\,
      Q => data_i(0),
      R => '0'
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => s00_axi_aresetn,
      D => \data_i[1]_i_1_n_0\,
      Q => data_i(1),
      R => '0'
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => s00_axi_aresetn,
      D => \data_i[2]_i_1_n_0\,
      Q => data_i(2),
      R => '0'
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => s00_axi_aresetn,
      D => \data_i[3]_i_1_n_0\,
      Q => data_i(3),
      R => '0'
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => s00_axi_aresetn,
      D => \data_i[4]_i_1_n_0\,
      Q => data_i(4),
      R => '0'
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => s00_axi_aresetn,
      D => \data_i[5]_i_1_n_0\,
      Q => data_i(5),
      R => '0'
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => s00_axi_aresetn,
      D => \data_i[6]_i_1_n_0\,
      Q => data_i(6),
      R => '0'
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => s00_axi_aresetn,
      D => \data_i[7]_i_1_n_0\,
      Q => data_i(7),
      R => '0'
    );
delayEn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \state[3]_i_3_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => delayEn,
      O => delayEn_i_1_n_0
    );
delayEn_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => delayEn_i_1_n_0,
      Q => delayEn,
      R => \^s00_axi_aresetn_0\
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
      C => clk_out2,
      CE => '1',
      D => \delaycnt[0]_i_1_n_0\,
      Q => delaycnt(0),
      R => delaycnt0
    );
\delaycnt_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__1_n_6\,
      Q => delaycnt(10),
      S => delaycnt0
    );
\delaycnt_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__1_n_5\,
      Q => delaycnt(11),
      S => delaycnt0
    );
\delaycnt_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__1_n_4\,
      Q => delaycnt(12),
      S => delaycnt0
    );
\delaycnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__2_n_7\,
      Q => delaycnt(13),
      R => delaycnt0
    );
\delaycnt_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__2_n_6\,
      Q => delaycnt(14),
      S => delaycnt0
    );
\delaycnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__2_n_5\,
      Q => delaycnt(15),
      R => delaycnt0
    );
\delaycnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__2_n_4\,
      Q => delaycnt(16),
      R => delaycnt0
    );
\delaycnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__3_n_7\,
      Q => delaycnt(17),
      R => delaycnt0
    );
\delaycnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__3_n_6\,
      Q => delaycnt(18),
      R => delaycnt0
    );
\delaycnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__3_n_5\,
      Q => delaycnt(19),
      R => delaycnt0
    );
\delaycnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => delaycnt0_carry_n_7,
      Q => delaycnt(1),
      R => delaycnt0
    );
\delaycnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__3_n_4\,
      Q => delaycnt(20),
      R => delaycnt0
    );
\delaycnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__4_n_7\,
      Q => delaycnt(21),
      R => delaycnt0
    );
\delaycnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__4_n_6\,
      Q => delaycnt(22),
      R => delaycnt0
    );
\delaycnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__4_n_5\,
      Q => delaycnt(23),
      R => delaycnt0
    );
\delaycnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__4_n_4\,
      Q => delaycnt(24),
      R => delaycnt0
    );
\delaycnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__5_n_7\,
      Q => delaycnt(25),
      R => delaycnt0
    );
\delaycnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__5_n_6\,
      Q => delaycnt(26),
      R => delaycnt0
    );
\delaycnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__5_n_5\,
      Q => delaycnt(27),
      R => delaycnt0
    );
\delaycnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__5_n_4\,
      Q => delaycnt(28),
      R => delaycnt0
    );
\delaycnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__6_n_7\,
      Q => delaycnt(29),
      R => delaycnt0
    );
\delaycnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => delaycnt0_carry_n_6,
      Q => delaycnt(2),
      R => delaycnt0
    );
\delaycnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__6_n_6\,
      Q => delaycnt(30),
      R => delaycnt0
    );
\delaycnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__6_n_5\,
      Q => delaycnt(31),
      R => delaycnt0
    );
\delaycnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => delaycnt0_carry_n_5,
      Q => delaycnt(3),
      R => delaycnt0
    );
\delaycnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => delaycnt0_carry_n_4,
      Q => delaycnt(4),
      R => delaycnt0
    );
\delaycnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__0_n_7\,
      Q => delaycnt(5),
      R => delaycnt0
    );
\delaycnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__0_n_6\,
      Q => delaycnt(6),
      S => delaycnt0
    );
\delaycnt_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__0_n_5\,
      Q => delaycnt(7),
      S => delaycnt0
    );
\delaycnt_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__0_n_4\,
      Q => delaycnt(8),
      S => delaycnt0
    );
\delaycnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => \delaycnt0_carry__1_n_7\,
      Q => delaycnt(9),
      R => delaycnt0
    );
\initA[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      O => \initA[2]_i_3_n_0\
    );
\initA[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \initA[2]_i_7_n_0\,
      I1 => \state[3]_i_12_n_0\,
      I2 => \state[3]_i_11_n_0\,
      I3 => \state[3]_i_10_n_0\,
      I4 => \state[3]_i_9_n_0\,
      I5 => \initA[2]_i_8_n_0\,
      O => \initA[2]_i_5_n_0\
    );
\initA[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(7),
      I1 => delaycnt(8),
      I2 => delaycnt(28),
      I3 => delaycnt(16),
      O => \initA[2]_i_7_n_0\
    );
\initA[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => delaycnt(22),
      I1 => delaycnt(31),
      O => \initA[2]_i_8_n_0\
    );
\initA[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(3),
      O => \initA[6]_i_2_n_0\
    );
\initA_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => twi_controller_n_9,
      Q => initA_reg(0),
      R => '0'
    );
\initA_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => twi_controller_n_10,
      Q => initA_reg(1),
      R => '0'
    );
\initA_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => twi_controller_n_4,
      Q => initA_reg(2),
      R => '0'
    );
\initA_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => twi_controller_n_2,
      Q => initA_reg(3),
      R => \^s00_axi_aresetn_0\
    );
\initA_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => twi_controller_n_0,
      Q => initA_reg(4),
      R => \^s00_axi_aresetn_0\
    );
\initA_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => twi_controller_n_1,
      Q => initA_reg(5),
      R => \^s00_axi_aresetn_0\
    );
\initA_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => '1',
      D => twi_controller_n_3,
      Q => initA_reg(6),
      R => \^s00_axi_aresetn_0\
    );
initEn_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => s00_axi_aresetn,
      I3 => initEn,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => initEn_i_3_n_0
    );
initEn_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => '1',
      D => twi_controller_n_12,
      Q => initEn,
      R => '0'
    );
\initWord[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(1),
      I2 => initA_reg(5),
      O => \initWord[0]_i_1_n_0\
    );
\initWord[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002900E40000"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(1),
      I2 => initA_reg(0),
      I3 => initA_reg(5),
      I4 => initA_reg(4),
      I5 => initA_reg(3),
      O => \initWord[10]_i_1_n_0\
    );
\initWord[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0002"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(4),
      I2 => initA_reg(1),
      I3 => initA_reg(0),
      I4 => initA_reg(5),
      O => \initWord[11]_i_1_n_0\
    );
\initWord[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010000"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(0),
      I2 => initA_reg(4),
      I3 => initA_reg(5),
      I4 => initA_reg(3),
      I5 => initA_reg(2),
      O => \initWord[12]_i_1_n_0\
    );
\initWord[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC04CC29CC44CC00"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(1),
      I2 => initA_reg(0),
      I3 => initA_reg(5),
      I4 => initA_reg(4),
      I5 => initA_reg(3),
      O => \initWord[13]_i_1_n_0\
    );
\initWord[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0112000000012200"
    )
        port map (
      I0 => initA_reg(4),
      I1 => initA_reg(5),
      I2 => initA_reg(0),
      I3 => initA_reg(1),
      I4 => initA_reg(3),
      I5 => initA_reg(2),
      O => \initWord[14]_i_1_n_0\
    );
\initWord[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003004082"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(3),
      I2 => initA_reg(2),
      I3 => initA_reg(1),
      I4 => initA_reg(4),
      I5 => initA_reg(5),
      O => \initWord[15]_i_1_n_0\
    );
\initWord[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007CC0913B"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(4),
      I2 => initA_reg(2),
      I3 => initA_reg(3),
      I4 => initA_reg(0),
      I5 => initA_reg(5),
      O => \initWord[16]_i_1_n_0\
    );
\initWord[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA41FC00AAE92A"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(3),
      I2 => initA_reg(2),
      I3 => initA_reg(1),
      I4 => initA_reg(5),
      I5 => initA_reg(4),
      O => \initWord[17]_i_1_n_0\
    );
\initWord[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDCC9DC8D889C88D"
    )
        port map (
      I0 => initA_reg(5),
      I1 => initA_reg(1),
      I2 => initA_reg(2),
      I3 => initA_reg(3),
      I4 => initA_reg(0),
      I5 => initA_reg(4),
      O => \initWord[18]_i_1_n_0\
    );
\initWord[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9898B9B9B9BB9A88"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(5),
      I2 => initA_reg(4),
      I3 => initA_reg(0),
      I4 => initA_reg(2),
      I5 => initA_reg(3),
      O => \initWord[19]_i_1_n_0\
    );
\initWord[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FC01039F"
    )
        port map (
      I0 => initA_reg(0),
      I1 => initA_reg(1),
      I2 => initA_reg(2),
      I3 => initA_reg(3),
      I4 => initA_reg(4),
      I5 => initA_reg(5),
      O => \initWord[20]_i_1_n_0\
    );
\initWord[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000009190FEEA"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(2),
      I2 => initA_reg(1),
      I3 => initA_reg(0),
      I4 => initA_reg(4),
      I5 => initA_reg(5),
      O => \initWord[21]_i_1_n_0\
    );
\initWord[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4011010040000100"
    )
        port map (
      I0 => initA_reg(5),
      I1 => initA_reg(4),
      I2 => initA_reg(2),
      I3 => initA_reg(3),
      I4 => initA_reg(1),
      I5 => initA_reg(0),
      O => \initWord[23]_i_1_n_0\
    );
\initWord[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001000000FFFF"
    )
        port map (
      I0 => initA_reg(4),
      I1 => initA_reg(3),
      I2 => initA_reg(2),
      I3 => \initWord[30]_i_3_n_0\,
      I4 => initA_reg(6),
      I5 => initA_reg(5),
      O => \initWord[30]_i_1_n_0\
    );
\initWord[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => initA_reg(1),
      I1 => initA_reg(5),
      O => \initWord[30]_i_2_n_0\
    );
\initWord[30]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
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
      INIT => X"FF4EFFE60066FFFF"
    )
        port map (
      I0 => initA_reg(3),
      I1 => initA_reg(2),
      I2 => initA_reg(4),
      I3 => initA_reg(5),
      I4 => initA_reg(0),
      I5 => initA_reg(1),
      O => \initWord[8]_i_1_n_0\
    );
\initWord[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000014B2000014DA"
    )
        port map (
      I0 => initA_reg(2),
      I1 => initA_reg(1),
      I2 => initA_reg(3),
      I3 => initA_reg(4),
      I4 => initA_reg(5),
      I5 => initA_reg(0),
      O => \initWord[9]_i_1_n_0\
    );
\initWord_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[0]_i_1_n_0\,
      Q => \initWord_reg_n_0_[0]\,
      R => '0'
    );
\initWord_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[10]_i_1_n_0\,
      Q => data2(2),
      R => '0'
    );
\initWord_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[11]_i_1_n_0\,
      Q => data2(3),
      R => '0'
    );
\initWord_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[12]_i_1_n_0\,
      Q => data2(4),
      R => '0'
    );
\initWord_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[13]_i_1_n_0\,
      Q => data2(5),
      R => '0'
    );
\initWord_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[14]_i_1_n_0\,
      Q => data2(6),
      R => '0'
    );
\initWord_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[15]_i_1_n_0\,
      Q => data2(7),
      R => '0'
    );
\initWord_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[16]_i_1_n_0\,
      Q => data1(0),
      R => '0'
    );
\initWord_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[17]_i_1_n_0\,
      Q => data1(1),
      R => '0'
    );
\initWord_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[18]_i_1_n_0\,
      Q => data1(2),
      R => '0'
    );
\initWord_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[19]_i_1_n_0\,
      Q => data1(3),
      R => '0'
    );
\initWord_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[20]_i_1_n_0\,
      Q => data1(4),
      R => '0'
    );
\initWord_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[21]_i_1_n_0\,
      Q => data1(5),
      R => '0'
    );
\initWord_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[23]_i_1_n_0\,
      Q => data1(7),
      R => '0'
    );
\initWord_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[30]_i_2_n_0\,
      Q => data0(6),
      R => '0'
    );
\initWord_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[5]_i_1_n_0\,
      Q => \initWord_reg_n_0_[5]\,
      R => '0'
    );
\initWord_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => \initWord[30]_i_1_n_0\,
      D => \initWord[8]_i_1_n_0\,
      Q => data2(0),
      R => '0'
    );
\initWord_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
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
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      O => msg0
    );
msg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
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
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[2]\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100010001000"
    )
        port map (
      I0 => \state[1]_i_4_n_0\,
      I1 => initA_reg(0),
      I2 => initA_reg(1),
      I3 => initA_reg(5),
      I4 => \state[3]_i_4_n_0\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => initA_reg(6),
      I1 => initA_reg(4),
      I2 => initA_reg(3),
      I3 => initA_reg(2),
      O => \state[1]_i_4_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F5D"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \initWord_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \initWord_reg_n_0_[0]\,
      O => \state[2]_i_2_n_0\
    );
\state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(20),
      I1 => delaycnt(18),
      I2 => delaycnt(5),
      I3 => delaycnt(3),
      O => \state[3]_i_10_n_0\
    );
\state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(17),
      I1 => delaycnt(15),
      I2 => delaycnt(13),
      I3 => delaycnt(12),
      O => \state[3]_i_11_n_0\
    );
\state[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(25),
      I1 => delaycnt(24),
      I2 => delaycnt(23),
      I3 => delaycnt(21),
      O => \state[3]_i_12_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state[3]_i_5_n_0\,
      I1 => \state[3]_i_6_n_0\,
      I2 => delaycnt(7),
      I3 => delaycnt(8),
      I4 => delaycnt(28),
      I5 => delaycnt(16),
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \state[3]_i_7_n_0\,
      I1 => data1(0),
      I2 => data1(1),
      I3 => data1(2),
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state[3]_i_8_n_0\,
      I1 => delaycnt(0),
      I2 => delaycnt(6),
      I3 => delaycnt(27),
      I4 => delaycnt(29),
      O => \state[3]_i_5_n_0\
    );
\state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => delaycnt(31),
      I1 => delaycnt(22),
      I2 => \state[3]_i_9_n_0\,
      I3 => \state[3]_i_10_n_0\,
      I4 => \state[3]_i_11_n_0\,
      I5 => \state[3]_i_12_n_0\,
      O => \state[3]_i_6_n_0\
    );
\state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => data1(7),
      I1 => data1(5),
      I2 => data1(4),
      I3 => data1(3),
      O => \state[3]_i_7_n_0\
    );
\state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => delaycnt(26),
      I1 => delaycnt(19),
      I2 => delaycnt(14),
      I3 => delaycnt(30),
      I4 => delaycnt(11),
      I5 => delaycnt(9),
      O => \state[3]_i_8_n_0\
    );
\state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delaycnt(10),
      I1 => delaycnt(2),
      I2 => delaycnt(4),
      I3 => delaycnt(1),
      O => \state[3]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => twi_controller_n_11,
      D => twi_controller_n_8,
      Q => \state_reg_n_0_[0]\,
      R => \^s00_axi_aresetn_0\
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
      CE => twi_controller_n_11,
      D => twi_controller_n_7,
      Q => \state_reg_n_0_[1]\,
      S => \^s00_axi_aresetn_0\
    );
\state_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out2,
      CE => twi_controller_n_11,
      D => twi_controller_n_6,
      Q => \state_reg_n_0_[2]\,
      S => \^s00_axi_aresetn_0\
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out2,
      CE => twi_controller_n_11,
      D => twi_controller_n_5,
      Q => \state_reg_n_0_[3]\,
      R => \^s00_axi_aresetn_0\
    );
stb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"800F"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[3]\,
      O => stb_i_1_n_0
    );
stb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_out2,
      CE => s00_axi_aresetn,
      D => stb_i_1_n_0,
      Q => stb,
      R => '0'
    );
twi_controller: entity work.skrach_design_lab4_ip_0_1_TWICtl
     port map (
      D(3) => twi_controller_n_5,
      D(2) => twi_controller_n_6,
      D(1) => twi_controller_n_7,
      D(0) => twi_controller_n_8,
      E(0) => twi_controller_n_11,
      Q(7 downto 0) => data_i(7 downto 0),
      clk_out2 => clk_out2,
      \initA[2]_i_2_0\(2 downto 0) => data1(2 downto 0),
      \initA[2]_i_2_1\ => \state[3]_i_7_n_0\,
      initA_reg(6 downto 0) => initA_reg(6 downto 0),
      \initA_reg[0]_0\ => twi_controller_n_10,
      \initA_reg[1]_0\ => \initA[2]_i_5_n_0\,
      \initA_reg[1]_1\ => \state[3]_i_5_n_0\,
      \initA_reg[2]_0\ => twi_controller_n_2,
      \initA_reg[5]_0\ => \initWord[30]_i_3_n_0\,
      initA_reg_0_sp_1 => twi_controller_n_0,
      initA_reg_1_sp_1 => \initA[2]_i_3_n_0\,
      initA_reg_2_sp_1 => twi_controller_n_1,
      initA_reg_5_sp_1 => twi_controller_n_3,
      initA_reg_6_sp_1 => \initA[6]_i_2_n_0\,
      initEn => initEn,
      initEn_reg => \state[3]_i_3_n_0\,
      initEn_reg_0 => initEn_i_3_n_0,
      msg => msg,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => twi_controller_n_4,
      s00_axi_aresetn_1 => twi_controller_n_9,
      scl => scl,
      sda => sda,
      \state_reg[1]\ => \state[1]_i_2_n_0\,
      \state_reg[1]_0\ => \state[2]_i_2_n_0\,
      \state_reg[1]_1\ => \state[1]_i_3_n_0\,
      \state_reg[2]\ => twi_controller_n_12,
      \state_reg[3]\(3) => \state_reg_n_0_[3]\,
      \state_reg[3]\(2) => \state_reg_n_0_[2]\,
      \state_reg[3]\(1) => \state_reg_n_0_[1]\,
      \state_reg[3]\(0) => \state_reg_n_0_[0]\,
      \state_reg[3]_0\ => \state[3]_i_4_n_0\,
      stb => stb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity skrach_design_lab4_ip_0_1_Audio_Codec_Wrapper is
  port (
    ac_mclk : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    BCLK_int_reg : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    sw : out STD_LOGIC;
    s00_axi_aresetn_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_dac_sdata : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    minusOp : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Data_Out_int_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_Audio_Codec_Wrapper : entity is "Audio_Codec_Wrapper";
end skrach_design_lab4_ip_0_1_Audio_Codec_Wrapper;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_Audio_Codec_Wrapper is
  signal \^lrclk_reg\ : STD_LOGIC;
  signal ac_lrclk_count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ac_lrclk_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \ac_lrclk_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \ac_lrclk_count[2]_i_1_n_0\ : STD_LOGIC;
  signal ac_lrclk_sig_prev_reg_n_0 : STD_LOGIC;
  signal audio_inout_n_2 : STD_LOGIC;
  signal audio_inout_n_4 : STD_LOGIC;
  signal clk_50 : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal \^sw\ : STD_LOGIC;
  signal NLW_audiocodec_master_clock_locked_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ac_lrclk_count[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ac_lrclk_count[1]_i_1\ : label is "soft_lutpair44";
begin
  LRCLK_reg <= \^lrclk_reg\;
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
  sw <= \^sw\;
\ac_lrclk_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^lrclk_reg\,
      I2 => ac_lrclk_sig_prev_reg_n_0,
      I3 => ac_lrclk_count(0),
      O => \ac_lrclk_count[0]_i_1_n_0\
    );
\ac_lrclk_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A208AA00"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^lrclk_reg\,
      I2 => ac_lrclk_sig_prev_reg_n_0,
      I3 => ac_lrclk_count(1),
      I4 => ac_lrclk_count(0),
      O => \ac_lrclk_count[1]_i_1_n_0\
    );
\ac_lrclk_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8828888888888888"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => ac_lrclk_count(2),
      I2 => \^lrclk_reg\,
      I3 => ac_lrclk_sig_prev_reg_n_0,
      I4 => ac_lrclk_count(1),
      I5 => ac_lrclk_count(0),
      O => \ac_lrclk_count[2]_i_1_n_0\
    );
\ac_lrclk_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ac_lrclk_count[0]_i_1_n_0\,
      Q => ac_lrclk_count(0),
      R => '0'
    );
\ac_lrclk_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ac_lrclk_count[1]_i_1_n_0\,
      Q => ac_lrclk_count(1),
      R => '0'
    );
\ac_lrclk_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \ac_lrclk_count[2]_i_1_n_0\,
      Q => ac_lrclk_count(2),
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
audio_inout: entity work.skrach_design_lab4_ip_0_1_i2s_ctl
     port map (
      BCLK_int_reg_0 => BCLK_int_reg,
      BCLK_int_reg_1 => \^s00_axi_aresetn_0\,
      \Data_Out_int_reg[15]_0\(0) => \Data_Out_int_reg[15]\(0),
      LRCLK_reg_0 => \^lrclk_reg\,
      ac_dac_sdata => ac_dac_sdata,
      ac_lrclk_count(2 downto 0) => ac_lrclk_count(2 downto 0),
      \ac_lrclk_count_reg[2]\ => audio_inout_n_4,
      ac_lrclk_sig_prev_reg => audio_inout_n_2,
      ac_lrclk_sig_prev_reg_0 => ac_lrclk_sig_prev_reg_n_0,
      minusOp(14 downto 0) => minusOp(14 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => s00_axi_aresetn_1,
      sw => \^sw\
    );
audiocodec_master_clock: entity work.skrach_design_lab4_ip_0_1_audio_clk_wiz
     port map (
      clk_in1 => s00_axi_aclk,
      clk_out1 => ac_mclk,
      clk_out2 => clk_50,
      locked => NLW_audiocodec_master_clock_locked_UNCONNECTED,
      resetn => s00_axi_aresetn
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(0),
      I1 => \^sw\,
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => \axi_rdata_reg[0]_0\(0),
      I5 => \axi_rdata_reg[0]_1\(0),
      O => D(0)
    );
initialize_audio: entity work.skrach_design_lab4_ip_0_1_audio_init
     port map (
      clk_out2 => clk_50,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^s00_axi_aresetn_0\,
      scl => scl,
      sda => sda
    );
ready_sig_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => audio_inout_n_4,
      Q => \^sw\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity skrach_design_lab4_ip_0_1_lab4_datapath is
  port (
    ac_mclk : out STD_LOGIC;
    RST : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BCLK_int_reg : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    sw : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ac_dac_sdata : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \processCount_reg[15]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \processCount_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \processCount_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Data_Out_int_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_lab4_datapath : entity is "lab4_datapath";
end skrach_design_lab4_ip_0_1_lab4_datapath;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_lab4_datapath is
  signal DO : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^rst\ : STD_LOGIC;
  signal audio_inst_n_5 : STD_LOGIC;
  signal bram_inst_sine_n_15 : STD_LOGIC;
  signal bram_inst_sine_n_16 : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal readChord : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signalOut : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
  RST <= \^rst\;
audio_inst: entity work.skrach_design_lab4_ip_0_1_Audio_Codec_Wrapper
     port map (
      BCLK_int_reg => BCLK_int_reg,
      D(0) => D(0),
      \Data_Out_int_reg[15]\(0) => bram_inst_sine_n_16,
      LRCLK_reg => LRCLK_reg,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      \axi_rdata_reg[0]\(0) => \axi_rdata_reg[0]\(0),
      \axi_rdata_reg[0]_0\(0) => \Data_Out_int_reg[15]\(0),
      \axi_rdata_reg[0]_1\(0) => \processCount_reg[15]\(0),
      minusOp(14 downto 0) => minusOp(15 downto 1),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^rst\,
      s00_axi_aresetn_1 => audio_inst_n_5,
      scl => scl,
      sda => sda,
      sw => sw
    );
bram_inst_chord: entity work.\skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO__parameterized0\
     port map (
      DOADO(1) => readChord(15),
      DOADO(0) => readChord(0),
      Q(9 downto 0) => \^q\(15 downto 6),
      \minusOp_carry__2\(0) => \Data_Out_int_reg[15]\(0),
      \minusOp_carry__2_0\(14 downto 0) => DO(14 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \sdp_bl.ramb18_dp_bl.ram18_bl_0\ => \^rst\,
      signalOut(14 downto 0) => signalOut(14 downto 0)
    );
bram_inst_sine: entity work.skrach_design_lab4_ip_0_1_unimacro_BRAM_SDP_MACRO
     port map (
      DOADO(1) => readChord(15),
      DOADO(0) => readChord(0),
      \Data_Out_int_reg[15]\(0) => \Data_Out_int_reg[15]\(0),
      \Data_Out_int_reg[15]_0\ => audio_inst_n_5,
      Q(9 downto 0) => \^q\(15 downto 6),
      S(0) => bram_inst_sine_n_15,
      s00_axi_aclk => s00_axi_aclk,
      \sdp_bl.ramb18_dp_bl.ram18_bl_0\(14 downto 0) => DO(14 downto 0),
      \sdp_bl.ramb18_dp_bl.ram18_bl_1\(0) => bram_inst_sine_n_16,
      \sdp_bl.ramb18_dp_bl.ram18_bl_2\ => \^rst\
    );
counter_inst: entity work.skrach_design_lab4_ip_0_1_addr_counter
     port map (
      E(0) => E(0),
      Q(15 downto 0) => \^q\(15 downto 0),
      S(3 downto 0) => S(3 downto 0),
      SR(0) => SR(0),
      \processCount_reg[11]_0\(3 downto 0) => \processCount_reg[11]\(3 downto 0),
      \processCount_reg[15]_0\(14 downto 0) => \processCount_reg[15]\(14 downto 0),
      \processCount_reg[3]_0\(3 downto 0) => \processCount_reg[3]\(3 downto 0),
      \processCount_reg[7]_0\(3 downto 0) => \processCount_reg[7]\(3 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => signalOut(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => minusOp(4 downto 1),
      S(3 downto 0) => signalOut(4 downto 1)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => minusOp(8 downto 5),
      S(3 downto 0) => signalOut(8 downto 5)
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => minusOp(12 downto 9),
      S(3 downto 0) => signalOut(12 downto 9)
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => minusOp(15 downto 13),
      S(3) => '0',
      S(2) => bram_inst_sine_n_15,
      S(1 downto 0) => signalOut(14 downto 13)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity skrach_design_lab4_ip_0_1_lab4_ip_v1_0_S00_AXI is
  port (
    ac_mclk : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BCLK_int_reg : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_lab4_ip_v1_0_S00_AXI : entity is "lab4_ip_v1_0_S00_AXI";
end skrach_design_lab4_ip_0_1_lab4_ip_v1_0_S00_AXI;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_lab4_ip_v1_0_S00_AXI is
  signal RST : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal cu_inst_n_0 : STD_LOGIC;
  signal cu_inst_n_1 : STD_LOGIC;
  signal cu_inst_n_10 : STD_LOGIC;
  signal cu_inst_n_11 : STD_LOGIC;
  signal cu_inst_n_12 : STD_LOGIC;
  signal cu_inst_n_13 : STD_LOGIC;
  signal cu_inst_n_14 : STD_LOGIC;
  signal cu_inst_n_15 : STD_LOGIC;
  signal cu_inst_n_16 : STD_LOGIC;
  signal cu_inst_n_17 : STD_LOGIC;
  signal cu_inst_n_18 : STD_LOGIC;
  signal cu_inst_n_19 : STD_LOGIC;
  signal cu_inst_n_4 : STD_LOGIC;
  signal cu_inst_n_5 : STD_LOGIC;
  signal cu_inst_n_6 : STD_LOGIC;
  signal cu_inst_n_7 : STD_LOGIC;
  signal cu_inst_n_8 : STD_LOGIC;
  signal cu_inst_n_9 : STD_LOGIC;
  signal processCount : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal sw : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair45";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
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
      S => RST
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
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
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => RST
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => RST
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => RST
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
      I4 => \^s_axi_awready\,
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
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => RST
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => RST
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => RST
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
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
      R => RST
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => slv_reg1(10),
      I2 => slv_reg2(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => slv_reg1(11),
      I2 => slv_reg2(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => slv_reg1(12),
      I2 => slv_reg2(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(13),
      I1 => slv_reg1(13),
      I2 => slv_reg2(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(14),
      I1 => slv_reg1(14),
      I2 => slv_reg2(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => slv_reg1(15),
      I2 => slv_reg2(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => slv_reg1(16),
      I2 => slv_reg2(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => slv_reg1(17),
      I2 => slv_reg2(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => slv_reg1(18),
      I2 => slv_reg2(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => slv_reg1(19),
      I2 => slv_reg2(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg1(1),
      I2 => slv_reg2(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => slv_reg1(20),
      I2 => slv_reg2(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => slv_reg1(21),
      I2 => slv_reg2(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(22),
      I1 => slv_reg1(22),
      I2 => slv_reg2(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => slv_reg1(23),
      I2 => slv_reg2(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => slv_reg1(24),
      I2 => slv_reg2(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => slv_reg1(25),
      I2 => slv_reg2(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => slv_reg1(26),
      I2 => slv_reg2(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(27),
      I1 => slv_reg1(27),
      I2 => slv_reg2(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(28),
      I1 => slv_reg1(28),
      I2 => slv_reg2(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => slv_reg1(29),
      I2 => slv_reg2(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => slv_reg1(2),
      I2 => slv_reg2(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => slv_reg1(30),
      I2 => slv_reg2(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => slv_reg1(31),
      I2 => slv_reg2(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => slv_reg1(3),
      I2 => slv_reg2(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(3)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(6),
      I1 => slv_reg1(6),
      I2 => slv_reg2(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(7),
      I1 => slv_reg1(7),
      I2 => slv_reg2(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => slv_reg1(8),
      I2 => slv_reg2(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => slv_reg1(9),
      I2 => slv_reg2(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => RST
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => RST
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => RST
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => RST
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => RST
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => RST
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => RST
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => RST
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => RST
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => RST
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => RST
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => RST
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => RST
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => RST
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => RST
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => RST
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => RST
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => RST
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => RST
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => RST
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => RST
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => RST
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => RST
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => RST
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => RST
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => RST
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => RST
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => RST
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => RST
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => RST
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => RST
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => RST
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
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
      R => RST
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => RST
    );
cu_inst: entity work.skrach_design_lab4_ip_0_1_lab4_controlunit
     port map (
      D(1 downto 0) => reg_data_out(5 downto 4),
      E(0) => cu_inst_n_0,
      Q(1 downto 0) => slv_reg2(5 downto 4),
      RST => RST,
      S(3) => cu_inst_n_4,
      S(2) => cu_inst_n_5,
      S(1) => cu_inst_n_6,
      S(0) => cu_inst_n_7,
      SR(0) => cu_inst_n_1,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      \axi_rdata_reg[5]\(1 downto 0) => slv_reg0(5 downto 4),
      \count_ctrl_reg[0]_0\(3) => cu_inst_n_8,
      \count_ctrl_reg[0]_0\(2) => cu_inst_n_9,
      \count_ctrl_reg[0]_0\(1) => cu_inst_n_10,
      \count_ctrl_reg[0]_0\(0) => cu_inst_n_11,
      \count_ctrl_reg[0]_1\(3) => cu_inst_n_12,
      \count_ctrl_reg[0]_1\(2) => cu_inst_n_13,
      \count_ctrl_reg[0]_1\(1) => cu_inst_n_14,
      \count_ctrl_reg[0]_1\(0) => cu_inst_n_15,
      \count_ctrl_reg[0]_2\(3) => cu_inst_n_16,
      \count_ctrl_reg[0]_2\(2) => cu_inst_n_17,
      \count_ctrl_reg[0]_2\(1) => cu_inst_n_18,
      \count_ctrl_reg[0]_2\(0) => cu_inst_n_19,
      \processCount_reg[15]\(15 downto 0) => slv_reg1(15 downto 0),
      \processCount_reg[15]_0\(15 downto 6) => count(15 downto 6),
      \processCount_reg[15]_0\(5 downto 0) => processCount(5 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sw => sw
    );
dp_inst: entity work.skrach_design_lab4_ip_0_1_lab4_datapath
     port map (
      BCLK_int_reg => BCLK_int_reg,
      D(0) => reg_data_out(0),
      \Data_Out_int_reg[15]\(0) => slv_reg0(0),
      E(0) => cu_inst_n_0,
      LRCLK_reg => LRCLK_reg,
      Q(15 downto 6) => count(15 downto 6),
      Q(5 downto 0) => processCount(5 downto 0),
      RST => RST,
      S(3) => cu_inst_n_4,
      S(2) => cu_inst_n_5,
      S(1) => cu_inst_n_6,
      S(0) => cu_inst_n_7,
      SR(0) => cu_inst_n_1,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      \axi_rdata_reg[0]\(0) => slv_reg2(0),
      \processCount_reg[11]\(3) => cu_inst_n_16,
      \processCount_reg[11]\(2) => cu_inst_n_17,
      \processCount_reg[11]\(1) => cu_inst_n_18,
      \processCount_reg[11]\(0) => cu_inst_n_19,
      \processCount_reg[15]\(14 downto 0) => slv_reg1(14 downto 0),
      \processCount_reg[3]\(3) => cu_inst_n_8,
      \processCount_reg[3]\(2) => cu_inst_n_9,
      \processCount_reg[3]\(1) => cu_inst_n_10,
      \processCount_reg[3]\(0) => cu_inst_n_11,
      \processCount_reg[7]\(3) => cu_inst_n_12,
      \processCount_reg[7]\(2) => cu_inst_n_13,
      \processCount_reg[7]\(1) => cu_inst_n_14,
      \processCount_reg[7]\(0) => cu_inst_n_15,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      scl => scl,
      sda => sda,
      sw => sw
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
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
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
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => RST
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => RST
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => RST
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => RST
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => RST
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => RST
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => RST
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => RST
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => RST
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => RST
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => RST
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => RST
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => RST
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => RST
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => RST
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => RST
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => RST
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => RST
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => RST
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => RST
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => RST
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => RST
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => RST
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => RST
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => RST
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => RST
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => RST
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => RST
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => RST
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => RST
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => RST
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => RST
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
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg1[31]_i_1_n_0\
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
      Q => slv_reg1(0),
      R => RST
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => RST
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => RST
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => RST
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => RST
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => RST
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => RST
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => RST
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => RST
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => RST
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => RST
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => RST
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => RST
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => RST
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => RST
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => RST
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => RST
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => RST
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => RST
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => RST
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => RST
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => RST
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => RST
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => RST
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => RST
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => RST
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => RST
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => RST
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => RST
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => RST
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => RST
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => RST
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
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      O => \slv_reg2[31]_i_1_n_0\
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
      Q => slv_reg2(0),
      R => RST
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => RST
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => RST
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => RST
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => RST
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => RST
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => RST
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => RST
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => RST
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => RST
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => RST
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => RST
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => RST
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => RST
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => RST
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => RST
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => RST
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => RST
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => RST
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => RST
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => RST
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => RST
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => RST
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => RST
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => RST
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => RST
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => RST
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => RST
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => RST
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => RST
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => RST
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => RST
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity skrach_design_lab4_ip_0_1_lab4_ip_v1_0 is
  port (
    ac_mclk : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    LRCLK_reg : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BCLK_int_reg : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of skrach_design_lab4_ip_0_1_lab4_ip_v1_0 : entity is "lab4_ip_v1_0";
end skrach_design_lab4_ip_0_1_lab4_ip_v1_0;

architecture STRUCTURE of skrach_design_lab4_ip_0_1_lab4_ip_v1_0 is
begin
lab4_ip_v1_0_S00_AXI_inst: entity work.skrach_design_lab4_ip_0_1_lab4_ip_v1_0_S00_AXI
     port map (
      BCLK_int_reg => BCLK_int_reg,
      LRCLK_reg => LRCLK_reg,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
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
      sda => sda
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity skrach_design_lab4_ip_0_1 is
  port (
    ac_mclk : out STD_LOGIC;
    ac_adc_sdata : in STD_LOGIC;
    ac_dac_sdata : out STD_LOGIC;
    ac_bclk : out STD_LOGIC;
    ac_lrclk : out STD_LOGIC;
    scl : inout STD_LOGIC;
    sda : inout STD_LOGIC;
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
  attribute NotValidForBitStream of skrach_design_lab4_ip_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of skrach_design_lab4_ip_0_1 : entity is "skrach_design_lab4_ip_0_1,lab4_ip_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of skrach_design_lab4_ip_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of skrach_design_lab4_ip_0_1 : entity is "lab4_ip_v1_0,Vivado 2019.1";
end skrach_design_lab4_ip_0_1;

architecture STRUCTURE of skrach_design_lab4_ip_0_1 is
  signal \<const0>\ : STD_LOGIC;
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
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.skrach_design_lab4_ip_0_1_lab4_ip_v1_0
     port map (
      BCLK_int_reg => ac_bclk,
      LRCLK_reg => ac_lrclk,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      ac_dac_sdata => ac_dac_sdata,
      ac_mclk => ac_mclk,
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
      sda => sda
    );
end STRUCTURE;
