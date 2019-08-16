--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Fri Aug 16 15:21:54 2019
--Host        : thebe.esat.kuleuven.be running 64-bit CentOS Linux release 7.6.1810 (Core)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DDR_0_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_0_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_0_cas_n : inout STD_LOGIC;
    DDR_0_ck_n : inout STD_LOGIC;
    DDR_0_ck_p : inout STD_LOGIC;
    DDR_0_cke : inout STD_LOGIC;
    DDR_0_cs_n : inout STD_LOGIC;
    DDR_0_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_0_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_odt : inout STD_LOGIC;
    DDR_0_ras_n : inout STD_LOGIC;
    DDR_0_reset_n : inout STD_LOGIC;
    DDR_0_we_n : inout STD_LOGIC;
    FIXED_IO_0_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_0_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_0_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_0_ps_clk : inout STD_LOGIC;
    FIXED_IO_0_ps_porb : inout STD_LOGIC;
    FIXED_IO_0_ps_srstb : inout STD_LOGIC;
    GPIO_tri_io : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    cam_p_clk_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_p_clk_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_rxn_0 : in STD_LOGIC;
    clk_rxn_1 : in STD_LOGIC;
    clk_rxp_0 : in STD_LOGIC;
    clk_rxp_1 : in STD_LOGIC;
    data_lp_n_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_n_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxp_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxp_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iic_0_scl_io : inout STD_LOGIC;
    iic_0_sda_io : inout STD_LOGIC;
    iic_1_scl_io : inout STD_LOGIC;
    iic_1_sda_io : inout STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    DDR_0_cas_n : inout STD_LOGIC;
    DDR_0_cke : inout STD_LOGIC;
    DDR_0_ck_n : inout STD_LOGIC;
    DDR_0_ck_p : inout STD_LOGIC;
    DDR_0_cs_n : inout STD_LOGIC;
    DDR_0_reset_n : inout STD_LOGIC;
    DDR_0_odt : inout STD_LOGIC;
    DDR_0_ras_n : inout STD_LOGIC;
    DDR_0_we_n : inout STD_LOGIC;
    DDR_0_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_0_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_0_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_0_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    iic_0_sda_i : in STD_LOGIC;
    iic_0_sda_o : out STD_LOGIC;
    iic_0_sda_t : out STD_LOGIC;
    iic_0_scl_i : in STD_LOGIC;
    iic_0_scl_o : out STD_LOGIC;
    iic_0_scl_t : out STD_LOGIC;
    iic_1_sda_i : in STD_LOGIC;
    iic_1_sda_o : out STD_LOGIC;
    iic_1_sda_t : out STD_LOGIC;
    iic_1_scl_i : in STD_LOGIC;
    iic_1_scl_o : out STD_LOGIC;
    iic_1_scl_t : out STD_LOGIC;
    FIXED_IO_0_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_0_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_0_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_0_ps_srstb : inout STD_LOGIC;
    FIXED_IO_0_ps_clk : inout STD_LOGIC;
    FIXED_IO_0_ps_porb : inout STD_LOGIC;
    GPIO_tri_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_tri_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_tri_t : out STD_LOGIC_VECTOR ( 63 downto 0 );
    data_rxn_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_n_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxp_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_rxp_0 : in STD_LOGIC;
    clk_rxn_0 : in STD_LOGIC;
    cam_p_clk_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_p_clk_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_rxn_1 : in STD_LOGIC;
    clk_rxp_1 : in STD_LOGIC;
    data_lp_n_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_lp_p_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxn_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_rxp_1 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal GPIO_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal GPIO_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal GPIO_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal GPIO_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal GPIO_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal GPIO_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal GPIO_tri_i_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal GPIO_tri_i_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal GPIO_tri_i_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal GPIO_tri_i_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal GPIO_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_tri_i_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal GPIO_tri_i_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal GPIO_tri_i_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal GPIO_tri_i_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal GPIO_tri_i_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal GPIO_tri_i_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal GPIO_tri_i_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal GPIO_tri_i_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal GPIO_tri_i_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal GPIO_tri_i_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal GPIO_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_tri_i_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal GPIO_tri_i_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal GPIO_tri_i_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal GPIO_tri_i_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal GPIO_tri_i_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal GPIO_tri_i_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal GPIO_tri_i_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal GPIO_tri_i_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal GPIO_tri_i_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal GPIO_tri_i_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal GPIO_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_tri_i_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal GPIO_tri_i_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal GPIO_tri_i_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal GPIO_tri_i_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal GPIO_tri_i_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal GPIO_tri_i_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal GPIO_tri_i_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal GPIO_tri_i_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal GPIO_tri_i_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal GPIO_tri_i_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal GPIO_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal GPIO_tri_i_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal GPIO_tri_i_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal GPIO_tri_i_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal GPIO_tri_i_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal GPIO_tri_i_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal GPIO_tri_i_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal GPIO_tri_i_56 : STD_LOGIC_VECTOR ( 56 to 56 );
  signal GPIO_tri_i_57 : STD_LOGIC_VECTOR ( 57 to 57 );
  signal GPIO_tri_i_58 : STD_LOGIC_VECTOR ( 58 to 58 );
  signal GPIO_tri_i_59 : STD_LOGIC_VECTOR ( 59 to 59 );
  signal GPIO_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal GPIO_tri_i_60 : STD_LOGIC_VECTOR ( 60 to 60 );
  signal GPIO_tri_i_61 : STD_LOGIC_VECTOR ( 61 to 61 );
  signal GPIO_tri_i_62 : STD_LOGIC_VECTOR ( 62 to 62 );
  signal GPIO_tri_i_63 : STD_LOGIC_VECTOR ( 63 to 63 );
  signal GPIO_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal GPIO_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal GPIO_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal GPIO_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal GPIO_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal GPIO_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal GPIO_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal GPIO_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal GPIO_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal GPIO_tri_io_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal GPIO_tri_io_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal GPIO_tri_io_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal GPIO_tri_io_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal GPIO_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_tri_io_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal GPIO_tri_io_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal GPIO_tri_io_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal GPIO_tri_io_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal GPIO_tri_io_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal GPIO_tri_io_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal GPIO_tri_io_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal GPIO_tri_io_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal GPIO_tri_io_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal GPIO_tri_io_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal GPIO_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_tri_io_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal GPIO_tri_io_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal GPIO_tri_io_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal GPIO_tri_io_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal GPIO_tri_io_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal GPIO_tri_io_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal GPIO_tri_io_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal GPIO_tri_io_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal GPIO_tri_io_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal GPIO_tri_io_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal GPIO_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_tri_io_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal GPIO_tri_io_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal GPIO_tri_io_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal GPIO_tri_io_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal GPIO_tri_io_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal GPIO_tri_io_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal GPIO_tri_io_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal GPIO_tri_io_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal GPIO_tri_io_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal GPIO_tri_io_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal GPIO_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal GPIO_tri_io_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal GPIO_tri_io_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal GPIO_tri_io_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal GPIO_tri_io_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal GPIO_tri_io_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal GPIO_tri_io_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal GPIO_tri_io_56 : STD_LOGIC_VECTOR ( 56 to 56 );
  signal GPIO_tri_io_57 : STD_LOGIC_VECTOR ( 57 to 57 );
  signal GPIO_tri_io_58 : STD_LOGIC_VECTOR ( 58 to 58 );
  signal GPIO_tri_io_59 : STD_LOGIC_VECTOR ( 59 to 59 );
  signal GPIO_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal GPIO_tri_io_60 : STD_LOGIC_VECTOR ( 60 to 60 );
  signal GPIO_tri_io_61 : STD_LOGIC_VECTOR ( 61 to 61 );
  signal GPIO_tri_io_62 : STD_LOGIC_VECTOR ( 62 to 62 );
  signal GPIO_tri_io_63 : STD_LOGIC_VECTOR ( 63 to 63 );
  signal GPIO_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal GPIO_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal GPIO_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal GPIO_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal GPIO_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal GPIO_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal GPIO_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal GPIO_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal GPIO_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal GPIO_tri_o_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal GPIO_tri_o_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal GPIO_tri_o_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal GPIO_tri_o_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal GPIO_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_tri_o_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal GPIO_tri_o_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal GPIO_tri_o_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal GPIO_tri_o_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal GPIO_tri_o_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal GPIO_tri_o_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal GPIO_tri_o_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal GPIO_tri_o_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal GPIO_tri_o_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal GPIO_tri_o_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal GPIO_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_tri_o_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal GPIO_tri_o_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal GPIO_tri_o_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal GPIO_tri_o_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal GPIO_tri_o_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal GPIO_tri_o_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal GPIO_tri_o_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal GPIO_tri_o_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal GPIO_tri_o_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal GPIO_tri_o_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal GPIO_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_tri_o_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal GPIO_tri_o_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal GPIO_tri_o_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal GPIO_tri_o_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal GPIO_tri_o_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal GPIO_tri_o_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal GPIO_tri_o_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal GPIO_tri_o_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal GPIO_tri_o_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal GPIO_tri_o_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal GPIO_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal GPIO_tri_o_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal GPIO_tri_o_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal GPIO_tri_o_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal GPIO_tri_o_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal GPIO_tri_o_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal GPIO_tri_o_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal GPIO_tri_o_56 : STD_LOGIC_VECTOR ( 56 to 56 );
  signal GPIO_tri_o_57 : STD_LOGIC_VECTOR ( 57 to 57 );
  signal GPIO_tri_o_58 : STD_LOGIC_VECTOR ( 58 to 58 );
  signal GPIO_tri_o_59 : STD_LOGIC_VECTOR ( 59 to 59 );
  signal GPIO_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal GPIO_tri_o_60 : STD_LOGIC_VECTOR ( 60 to 60 );
  signal GPIO_tri_o_61 : STD_LOGIC_VECTOR ( 61 to 61 );
  signal GPIO_tri_o_62 : STD_LOGIC_VECTOR ( 62 to 62 );
  signal GPIO_tri_o_63 : STD_LOGIC_VECTOR ( 63 to 63 );
  signal GPIO_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal GPIO_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal GPIO_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal GPIO_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal GPIO_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal GPIO_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal GPIO_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal GPIO_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal GPIO_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal GPIO_tri_t_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal GPIO_tri_t_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal GPIO_tri_t_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal GPIO_tri_t_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal GPIO_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_tri_t_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal GPIO_tri_t_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal GPIO_tri_t_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal GPIO_tri_t_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal GPIO_tri_t_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal GPIO_tri_t_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal GPIO_tri_t_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal GPIO_tri_t_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal GPIO_tri_t_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal GPIO_tri_t_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal GPIO_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_tri_t_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal GPIO_tri_t_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal GPIO_tri_t_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal GPIO_tri_t_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal GPIO_tri_t_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal GPIO_tri_t_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal GPIO_tri_t_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal GPIO_tri_t_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal GPIO_tri_t_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal GPIO_tri_t_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal GPIO_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_tri_t_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal GPIO_tri_t_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal GPIO_tri_t_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal GPIO_tri_t_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal GPIO_tri_t_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal GPIO_tri_t_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal GPIO_tri_t_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal GPIO_tri_t_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal GPIO_tri_t_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal GPIO_tri_t_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal GPIO_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal GPIO_tri_t_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal GPIO_tri_t_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal GPIO_tri_t_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal GPIO_tri_t_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal GPIO_tri_t_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal GPIO_tri_t_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal GPIO_tri_t_56 : STD_LOGIC_VECTOR ( 56 to 56 );
  signal GPIO_tri_t_57 : STD_LOGIC_VECTOR ( 57 to 57 );
  signal GPIO_tri_t_58 : STD_LOGIC_VECTOR ( 58 to 58 );
  signal GPIO_tri_t_59 : STD_LOGIC_VECTOR ( 59 to 59 );
  signal GPIO_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal GPIO_tri_t_60 : STD_LOGIC_VECTOR ( 60 to 60 );
  signal GPIO_tri_t_61 : STD_LOGIC_VECTOR ( 61 to 61 );
  signal GPIO_tri_t_62 : STD_LOGIC_VECTOR ( 62 to 62 );
  signal GPIO_tri_t_63 : STD_LOGIC_VECTOR ( 63 to 63 );
  signal GPIO_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal GPIO_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal GPIO_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal iic_0_scl_i : STD_LOGIC;
  signal iic_0_scl_o : STD_LOGIC;
  signal iic_0_scl_t : STD_LOGIC;
  signal iic_0_sda_i : STD_LOGIC;
  signal iic_0_sda_o : STD_LOGIC;
  signal iic_0_sda_t : STD_LOGIC;
  signal iic_1_scl_i : STD_LOGIC;
  signal iic_1_scl_o : STD_LOGIC;
  signal iic_1_scl_t : STD_LOGIC;
  signal iic_1_sda_i : STD_LOGIC;
  signal iic_1_sda_o : STD_LOGIC;
  signal iic_1_sda_t : STD_LOGIC;
begin
GPIO_tri_iobuf_0: component IOBUF
     port map (
      I => GPIO_tri_o_0(0),
      IO => GPIO_tri_io(0),
      O => GPIO_tri_i_0(0),
      T => GPIO_tri_t_0(0)
    );
GPIO_tri_iobuf_1: component IOBUF
     port map (
      I => GPIO_tri_o_1(1),
      IO => GPIO_tri_io(1),
      O => GPIO_tri_i_1(1),
      T => GPIO_tri_t_1(1)
    );
GPIO_tri_iobuf_10: component IOBUF
     port map (
      I => GPIO_tri_o_10(10),
      IO => GPIO_tri_io(10),
      O => GPIO_tri_i_10(10),
      T => GPIO_tri_t_10(10)
    );
GPIO_tri_iobuf_11: component IOBUF
     port map (
      I => GPIO_tri_o_11(11),
      IO => GPIO_tri_io(11),
      O => GPIO_tri_i_11(11),
      T => GPIO_tri_t_11(11)
    );
GPIO_tri_iobuf_12: component IOBUF
     port map (
      I => GPIO_tri_o_12(12),
      IO => GPIO_tri_io(12),
      O => GPIO_tri_i_12(12),
      T => GPIO_tri_t_12(12)
    );
GPIO_tri_iobuf_13: component IOBUF
     port map (
      I => GPIO_tri_o_13(13),
      IO => GPIO_tri_io(13),
      O => GPIO_tri_i_13(13),
      T => GPIO_tri_t_13(13)
    );
GPIO_tri_iobuf_14: component IOBUF
     port map (
      I => GPIO_tri_o_14(14),
      IO => GPIO_tri_io(14),
      O => GPIO_tri_i_14(14),
      T => GPIO_tri_t_14(14)
    );
GPIO_tri_iobuf_15: component IOBUF
     port map (
      I => GPIO_tri_o_15(15),
      IO => GPIO_tri_io(15),
      O => GPIO_tri_i_15(15),
      T => GPIO_tri_t_15(15)
    );
GPIO_tri_iobuf_16: component IOBUF
     port map (
      I => GPIO_tri_o_16(16),
      IO => GPIO_tri_io(16),
      O => GPIO_tri_i_16(16),
      T => GPIO_tri_t_16(16)
    );
GPIO_tri_iobuf_17: component IOBUF
     port map (
      I => GPIO_tri_o_17(17),
      IO => GPIO_tri_io(17),
      O => GPIO_tri_i_17(17),
      T => GPIO_tri_t_17(17)
    );
GPIO_tri_iobuf_18: component IOBUF
     port map (
      I => GPIO_tri_o_18(18),
      IO => GPIO_tri_io(18),
      O => GPIO_tri_i_18(18),
      T => GPIO_tri_t_18(18)
    );
GPIO_tri_iobuf_19: component IOBUF
     port map (
      I => GPIO_tri_o_19(19),
      IO => GPIO_tri_io(19),
      O => GPIO_tri_i_19(19),
      T => GPIO_tri_t_19(19)
    );
GPIO_tri_iobuf_2: component IOBUF
     port map (
      I => GPIO_tri_o_2(2),
      IO => GPIO_tri_io(2),
      O => GPIO_tri_i_2(2),
      T => GPIO_tri_t_2(2)
    );
GPIO_tri_iobuf_20: component IOBUF
     port map (
      I => GPIO_tri_o_20(20),
      IO => GPIO_tri_io(20),
      O => GPIO_tri_i_20(20),
      T => GPIO_tri_t_20(20)
    );
GPIO_tri_iobuf_21: component IOBUF
     port map (
      I => GPIO_tri_o_21(21),
      IO => GPIO_tri_io(21),
      O => GPIO_tri_i_21(21),
      T => GPIO_tri_t_21(21)
    );
GPIO_tri_iobuf_22: component IOBUF
     port map (
      I => GPIO_tri_o_22(22),
      IO => GPIO_tri_io(22),
      O => GPIO_tri_i_22(22),
      T => GPIO_tri_t_22(22)
    );
GPIO_tri_iobuf_23: component IOBUF
     port map (
      I => GPIO_tri_o_23(23),
      IO => GPIO_tri_io(23),
      O => GPIO_tri_i_23(23),
      T => GPIO_tri_t_23(23)
    );
GPIO_tri_iobuf_24: component IOBUF
     port map (
      I => GPIO_tri_o_24(24),
      IO => GPIO_tri_io(24),
      O => GPIO_tri_i_24(24),
      T => GPIO_tri_t_24(24)
    );
GPIO_tri_iobuf_25: component IOBUF
     port map (
      I => GPIO_tri_o_25(25),
      IO => GPIO_tri_io(25),
      O => GPIO_tri_i_25(25),
      T => GPIO_tri_t_25(25)
    );
GPIO_tri_iobuf_26: component IOBUF
     port map (
      I => GPIO_tri_o_26(26),
      IO => GPIO_tri_io(26),
      O => GPIO_tri_i_26(26),
      T => GPIO_tri_t_26(26)
    );
GPIO_tri_iobuf_27: component IOBUF
     port map (
      I => GPIO_tri_o_27(27),
      IO => GPIO_tri_io(27),
      O => GPIO_tri_i_27(27),
      T => GPIO_tri_t_27(27)
    );
GPIO_tri_iobuf_28: component IOBUF
     port map (
      I => GPIO_tri_o_28(28),
      IO => GPIO_tri_io(28),
      O => GPIO_tri_i_28(28),
      T => GPIO_tri_t_28(28)
    );
GPIO_tri_iobuf_29: component IOBUF
     port map (
      I => GPIO_tri_o_29(29),
      IO => GPIO_tri_io(29),
      O => GPIO_tri_i_29(29),
      T => GPIO_tri_t_29(29)
    );
GPIO_tri_iobuf_3: component IOBUF
     port map (
      I => GPIO_tri_o_3(3),
      IO => GPIO_tri_io(3),
      O => GPIO_tri_i_3(3),
      T => GPIO_tri_t_3(3)
    );
GPIO_tri_iobuf_30: component IOBUF
     port map (
      I => GPIO_tri_o_30(30),
      IO => GPIO_tri_io(30),
      O => GPIO_tri_i_30(30),
      T => GPIO_tri_t_30(30)
    );
GPIO_tri_iobuf_31: component IOBUF
     port map (
      I => GPIO_tri_o_31(31),
      IO => GPIO_tri_io(31),
      O => GPIO_tri_i_31(31),
      T => GPIO_tri_t_31(31)
    );
GPIO_tri_iobuf_32: component IOBUF
     port map (
      I => GPIO_tri_o_32(32),
      IO => GPIO_tri_io(32),
      O => GPIO_tri_i_32(32),
      T => GPIO_tri_t_32(32)
    );
GPIO_tri_iobuf_33: component IOBUF
     port map (
      I => GPIO_tri_o_33(33),
      IO => GPIO_tri_io(33),
      O => GPIO_tri_i_33(33),
      T => GPIO_tri_t_33(33)
    );
GPIO_tri_iobuf_34: component IOBUF
     port map (
      I => GPIO_tri_o_34(34),
      IO => GPIO_tri_io(34),
      O => GPIO_tri_i_34(34),
      T => GPIO_tri_t_34(34)
    );
GPIO_tri_iobuf_35: component IOBUF
     port map (
      I => GPIO_tri_o_35(35),
      IO => GPIO_tri_io(35),
      O => GPIO_tri_i_35(35),
      T => GPIO_tri_t_35(35)
    );
GPIO_tri_iobuf_36: component IOBUF
     port map (
      I => GPIO_tri_o_36(36),
      IO => GPIO_tri_io(36),
      O => GPIO_tri_i_36(36),
      T => GPIO_tri_t_36(36)
    );
GPIO_tri_iobuf_37: component IOBUF
     port map (
      I => GPIO_tri_o_37(37),
      IO => GPIO_tri_io(37),
      O => GPIO_tri_i_37(37),
      T => GPIO_tri_t_37(37)
    );
GPIO_tri_iobuf_38: component IOBUF
     port map (
      I => GPIO_tri_o_38(38),
      IO => GPIO_tri_io(38),
      O => GPIO_tri_i_38(38),
      T => GPIO_tri_t_38(38)
    );
GPIO_tri_iobuf_39: component IOBUF
     port map (
      I => GPIO_tri_o_39(39),
      IO => GPIO_tri_io(39),
      O => GPIO_tri_i_39(39),
      T => GPIO_tri_t_39(39)
    );
GPIO_tri_iobuf_4: component IOBUF
     port map (
      I => GPIO_tri_o_4(4),
      IO => GPIO_tri_io(4),
      O => GPIO_tri_i_4(4),
      T => GPIO_tri_t_4(4)
    );
GPIO_tri_iobuf_40: component IOBUF
     port map (
      I => GPIO_tri_o_40(40),
      IO => GPIO_tri_io(40),
      O => GPIO_tri_i_40(40),
      T => GPIO_tri_t_40(40)
    );
GPIO_tri_iobuf_41: component IOBUF
     port map (
      I => GPIO_tri_o_41(41),
      IO => GPIO_tri_io(41),
      O => GPIO_tri_i_41(41),
      T => GPIO_tri_t_41(41)
    );
GPIO_tri_iobuf_42: component IOBUF
     port map (
      I => GPIO_tri_o_42(42),
      IO => GPIO_tri_io(42),
      O => GPIO_tri_i_42(42),
      T => GPIO_tri_t_42(42)
    );
GPIO_tri_iobuf_43: component IOBUF
     port map (
      I => GPIO_tri_o_43(43),
      IO => GPIO_tri_io(43),
      O => GPIO_tri_i_43(43),
      T => GPIO_tri_t_43(43)
    );
GPIO_tri_iobuf_44: component IOBUF
     port map (
      I => GPIO_tri_o_44(44),
      IO => GPIO_tri_io(44),
      O => GPIO_tri_i_44(44),
      T => GPIO_tri_t_44(44)
    );
GPIO_tri_iobuf_45: component IOBUF
     port map (
      I => GPIO_tri_o_45(45),
      IO => GPIO_tri_io(45),
      O => GPIO_tri_i_45(45),
      T => GPIO_tri_t_45(45)
    );
GPIO_tri_iobuf_46: component IOBUF
     port map (
      I => GPIO_tri_o_46(46),
      IO => GPIO_tri_io(46),
      O => GPIO_tri_i_46(46),
      T => GPIO_tri_t_46(46)
    );
GPIO_tri_iobuf_47: component IOBUF
     port map (
      I => GPIO_tri_o_47(47),
      IO => GPIO_tri_io(47),
      O => GPIO_tri_i_47(47),
      T => GPIO_tri_t_47(47)
    );
GPIO_tri_iobuf_48: component IOBUF
     port map (
      I => GPIO_tri_o_48(48),
      IO => GPIO_tri_io(48),
      O => GPIO_tri_i_48(48),
      T => GPIO_tri_t_48(48)
    );
GPIO_tri_iobuf_49: component IOBUF
     port map (
      I => GPIO_tri_o_49(49),
      IO => GPIO_tri_io(49),
      O => GPIO_tri_i_49(49),
      T => GPIO_tri_t_49(49)
    );
GPIO_tri_iobuf_5: component IOBUF
     port map (
      I => GPIO_tri_o_5(5),
      IO => GPIO_tri_io(5),
      O => GPIO_tri_i_5(5),
      T => GPIO_tri_t_5(5)
    );
GPIO_tri_iobuf_50: component IOBUF
     port map (
      I => GPIO_tri_o_50(50),
      IO => GPIO_tri_io(50),
      O => GPIO_tri_i_50(50),
      T => GPIO_tri_t_50(50)
    );
GPIO_tri_iobuf_51: component IOBUF
     port map (
      I => GPIO_tri_o_51(51),
      IO => GPIO_tri_io(51),
      O => GPIO_tri_i_51(51),
      T => GPIO_tri_t_51(51)
    );
GPIO_tri_iobuf_52: component IOBUF
     port map (
      I => GPIO_tri_o_52(52),
      IO => GPIO_tri_io(52),
      O => GPIO_tri_i_52(52),
      T => GPIO_tri_t_52(52)
    );
GPIO_tri_iobuf_53: component IOBUF
     port map (
      I => GPIO_tri_o_53(53),
      IO => GPIO_tri_io(53),
      O => GPIO_tri_i_53(53),
      T => GPIO_tri_t_53(53)
    );
GPIO_tri_iobuf_54: component IOBUF
     port map (
      I => GPIO_tri_o_54(54),
      IO => GPIO_tri_io(54),
      O => GPIO_tri_i_54(54),
      T => GPIO_tri_t_54(54)
    );
GPIO_tri_iobuf_55: component IOBUF
     port map (
      I => GPIO_tri_o_55(55),
      IO => GPIO_tri_io(55),
      O => GPIO_tri_i_55(55),
      T => GPIO_tri_t_55(55)
    );
GPIO_tri_iobuf_56: component IOBUF
     port map (
      I => GPIO_tri_o_56(56),
      IO => GPIO_tri_io(56),
      O => GPIO_tri_i_56(56),
      T => GPIO_tri_t_56(56)
    );
GPIO_tri_iobuf_57: component IOBUF
     port map (
      I => GPIO_tri_o_57(57),
      IO => GPIO_tri_io(57),
      O => GPIO_tri_i_57(57),
      T => GPIO_tri_t_57(57)
    );
GPIO_tri_iobuf_58: component IOBUF
     port map (
      I => GPIO_tri_o_58(58),
      IO => GPIO_tri_io(58),
      O => GPIO_tri_i_58(58),
      T => GPIO_tri_t_58(58)
    );
GPIO_tri_iobuf_59: component IOBUF
     port map (
      I => GPIO_tri_o_59(59),
      IO => GPIO_tri_io(59),
      O => GPIO_tri_i_59(59),
      T => GPIO_tri_t_59(59)
    );
GPIO_tri_iobuf_6: component IOBUF
     port map (
      I => GPIO_tri_o_6(6),
      IO => GPIO_tri_io(6),
      O => GPIO_tri_i_6(6),
      T => GPIO_tri_t_6(6)
    );
GPIO_tri_iobuf_60: component IOBUF
     port map (
      I => GPIO_tri_o_60(60),
      IO => GPIO_tri_io(60),
      O => GPIO_tri_i_60(60),
      T => GPIO_tri_t_60(60)
    );
GPIO_tri_iobuf_61: component IOBUF
     port map (
      I => GPIO_tri_o_61(61),
      IO => GPIO_tri_io(61),
      O => GPIO_tri_i_61(61),
      T => GPIO_tri_t_61(61)
    );
GPIO_tri_iobuf_62: component IOBUF
     port map (
      I => GPIO_tri_o_62(62),
      IO => GPIO_tri_io(62),
      O => GPIO_tri_i_62(62),
      T => GPIO_tri_t_62(62)
    );
GPIO_tri_iobuf_63: component IOBUF
     port map (
      I => GPIO_tri_o_63(63),
      IO => GPIO_tri_io(63),
      O => GPIO_tri_i_63(63),
      T => GPIO_tri_t_63(63)
    );
GPIO_tri_iobuf_7: component IOBUF
     port map (
      I => GPIO_tri_o_7(7),
      IO => GPIO_tri_io(7),
      O => GPIO_tri_i_7(7),
      T => GPIO_tri_t_7(7)
    );
GPIO_tri_iobuf_8: component IOBUF
     port map (
      I => GPIO_tri_o_8(8),
      IO => GPIO_tri_io(8),
      O => GPIO_tri_i_8(8),
      T => GPIO_tri_t_8(8)
    );
GPIO_tri_iobuf_9: component IOBUF
     port map (
      I => GPIO_tri_o_9(9),
      IO => GPIO_tri_io(9),
      O => GPIO_tri_i_9(9),
      T => GPIO_tri_t_9(9)
    );
design_1_i: component design_1
     port map (
      DDR_0_addr(14 downto 0) => DDR_0_addr(14 downto 0),
      DDR_0_ba(2 downto 0) => DDR_0_ba(2 downto 0),
      DDR_0_cas_n => DDR_0_cas_n,
      DDR_0_ck_n => DDR_0_ck_n,
      DDR_0_ck_p => DDR_0_ck_p,
      DDR_0_cke => DDR_0_cke,
      DDR_0_cs_n => DDR_0_cs_n,
      DDR_0_dm(3 downto 0) => DDR_0_dm(3 downto 0),
      DDR_0_dq(31 downto 0) => DDR_0_dq(31 downto 0),
      DDR_0_dqs_n(3 downto 0) => DDR_0_dqs_n(3 downto 0),
      DDR_0_dqs_p(3 downto 0) => DDR_0_dqs_p(3 downto 0),
      DDR_0_odt => DDR_0_odt,
      DDR_0_ras_n => DDR_0_ras_n,
      DDR_0_reset_n => DDR_0_reset_n,
      DDR_0_we_n => DDR_0_we_n,
      FIXED_IO_0_ddr_vrn => FIXED_IO_0_ddr_vrn,
      FIXED_IO_0_ddr_vrp => FIXED_IO_0_ddr_vrp,
      FIXED_IO_0_mio(53 downto 0) => FIXED_IO_0_mio(53 downto 0),
      FIXED_IO_0_ps_clk => FIXED_IO_0_ps_clk,
      FIXED_IO_0_ps_porb => FIXED_IO_0_ps_porb,
      FIXED_IO_0_ps_srstb => FIXED_IO_0_ps_srstb,
      GPIO_tri_i(63) => GPIO_tri_i_63(63),
      GPIO_tri_i(62) => GPIO_tri_i_62(62),
      GPIO_tri_i(61) => GPIO_tri_i_61(61),
      GPIO_tri_i(60) => GPIO_tri_i_60(60),
      GPIO_tri_i(59) => GPIO_tri_i_59(59),
      GPIO_tri_i(58) => GPIO_tri_i_58(58),
      GPIO_tri_i(57) => GPIO_tri_i_57(57),
      GPIO_tri_i(56) => GPIO_tri_i_56(56),
      GPIO_tri_i(55) => GPIO_tri_i_55(55),
      GPIO_tri_i(54) => GPIO_tri_i_54(54),
      GPIO_tri_i(53) => GPIO_tri_i_53(53),
      GPIO_tri_i(52) => GPIO_tri_i_52(52),
      GPIO_tri_i(51) => GPIO_tri_i_51(51),
      GPIO_tri_i(50) => GPIO_tri_i_50(50),
      GPIO_tri_i(49) => GPIO_tri_i_49(49),
      GPIO_tri_i(48) => GPIO_tri_i_48(48),
      GPIO_tri_i(47) => GPIO_tri_i_47(47),
      GPIO_tri_i(46) => GPIO_tri_i_46(46),
      GPIO_tri_i(45) => GPIO_tri_i_45(45),
      GPIO_tri_i(44) => GPIO_tri_i_44(44),
      GPIO_tri_i(43) => GPIO_tri_i_43(43),
      GPIO_tri_i(42) => GPIO_tri_i_42(42),
      GPIO_tri_i(41) => GPIO_tri_i_41(41),
      GPIO_tri_i(40) => GPIO_tri_i_40(40),
      GPIO_tri_i(39) => GPIO_tri_i_39(39),
      GPIO_tri_i(38) => GPIO_tri_i_38(38),
      GPIO_tri_i(37) => GPIO_tri_i_37(37),
      GPIO_tri_i(36) => GPIO_tri_i_36(36),
      GPIO_tri_i(35) => GPIO_tri_i_35(35),
      GPIO_tri_i(34) => GPIO_tri_i_34(34),
      GPIO_tri_i(33) => GPIO_tri_i_33(33),
      GPIO_tri_i(32) => GPIO_tri_i_32(32),
      GPIO_tri_i(31) => GPIO_tri_i_31(31),
      GPIO_tri_i(30) => GPIO_tri_i_30(30),
      GPIO_tri_i(29) => GPIO_tri_i_29(29),
      GPIO_tri_i(28) => GPIO_tri_i_28(28),
      GPIO_tri_i(27) => GPIO_tri_i_27(27),
      GPIO_tri_i(26) => GPIO_tri_i_26(26),
      GPIO_tri_i(25) => GPIO_tri_i_25(25),
      GPIO_tri_i(24) => GPIO_tri_i_24(24),
      GPIO_tri_i(23) => GPIO_tri_i_23(23),
      GPIO_tri_i(22) => GPIO_tri_i_22(22),
      GPIO_tri_i(21) => GPIO_tri_i_21(21),
      GPIO_tri_i(20) => GPIO_tri_i_20(20),
      GPIO_tri_i(19) => GPIO_tri_i_19(19),
      GPIO_tri_i(18) => GPIO_tri_i_18(18),
      GPIO_tri_i(17) => GPIO_tri_i_17(17),
      GPIO_tri_i(16) => GPIO_tri_i_16(16),
      GPIO_tri_i(15) => GPIO_tri_i_15(15),
      GPIO_tri_i(14) => GPIO_tri_i_14(14),
      GPIO_tri_i(13) => GPIO_tri_i_13(13),
      GPIO_tri_i(12) => GPIO_tri_i_12(12),
      GPIO_tri_i(11) => GPIO_tri_i_11(11),
      GPIO_tri_i(10) => GPIO_tri_i_10(10),
      GPIO_tri_i(9) => GPIO_tri_i_9(9),
      GPIO_tri_i(8) => GPIO_tri_i_8(8),
      GPIO_tri_i(7) => GPIO_tri_i_7(7),
      GPIO_tri_i(6) => GPIO_tri_i_6(6),
      GPIO_tri_i(5) => GPIO_tri_i_5(5),
      GPIO_tri_i(4) => GPIO_tri_i_4(4),
      GPIO_tri_i(3) => GPIO_tri_i_3(3),
      GPIO_tri_i(2) => GPIO_tri_i_2(2),
      GPIO_tri_i(1) => GPIO_tri_i_1(1),
      GPIO_tri_i(0) => GPIO_tri_i_0(0),
      GPIO_tri_o(63) => GPIO_tri_o_63(63),
      GPIO_tri_o(62) => GPIO_tri_o_62(62),
      GPIO_tri_o(61) => GPIO_tri_o_61(61),
      GPIO_tri_o(60) => GPIO_tri_o_60(60),
      GPIO_tri_o(59) => GPIO_tri_o_59(59),
      GPIO_tri_o(58) => GPIO_tri_o_58(58),
      GPIO_tri_o(57) => GPIO_tri_o_57(57),
      GPIO_tri_o(56) => GPIO_tri_o_56(56),
      GPIO_tri_o(55) => GPIO_tri_o_55(55),
      GPIO_tri_o(54) => GPIO_tri_o_54(54),
      GPIO_tri_o(53) => GPIO_tri_o_53(53),
      GPIO_tri_o(52) => GPIO_tri_o_52(52),
      GPIO_tri_o(51) => GPIO_tri_o_51(51),
      GPIO_tri_o(50) => GPIO_tri_o_50(50),
      GPIO_tri_o(49) => GPIO_tri_o_49(49),
      GPIO_tri_o(48) => GPIO_tri_o_48(48),
      GPIO_tri_o(47) => GPIO_tri_o_47(47),
      GPIO_tri_o(46) => GPIO_tri_o_46(46),
      GPIO_tri_o(45) => GPIO_tri_o_45(45),
      GPIO_tri_o(44) => GPIO_tri_o_44(44),
      GPIO_tri_o(43) => GPIO_tri_o_43(43),
      GPIO_tri_o(42) => GPIO_tri_o_42(42),
      GPIO_tri_o(41) => GPIO_tri_o_41(41),
      GPIO_tri_o(40) => GPIO_tri_o_40(40),
      GPIO_tri_o(39) => GPIO_tri_o_39(39),
      GPIO_tri_o(38) => GPIO_tri_o_38(38),
      GPIO_tri_o(37) => GPIO_tri_o_37(37),
      GPIO_tri_o(36) => GPIO_tri_o_36(36),
      GPIO_tri_o(35) => GPIO_tri_o_35(35),
      GPIO_tri_o(34) => GPIO_tri_o_34(34),
      GPIO_tri_o(33) => GPIO_tri_o_33(33),
      GPIO_tri_o(32) => GPIO_tri_o_32(32),
      GPIO_tri_o(31) => GPIO_tri_o_31(31),
      GPIO_tri_o(30) => GPIO_tri_o_30(30),
      GPIO_tri_o(29) => GPIO_tri_o_29(29),
      GPIO_tri_o(28) => GPIO_tri_o_28(28),
      GPIO_tri_o(27) => GPIO_tri_o_27(27),
      GPIO_tri_o(26) => GPIO_tri_o_26(26),
      GPIO_tri_o(25) => GPIO_tri_o_25(25),
      GPIO_tri_o(24) => GPIO_tri_o_24(24),
      GPIO_tri_o(23) => GPIO_tri_o_23(23),
      GPIO_tri_o(22) => GPIO_tri_o_22(22),
      GPIO_tri_o(21) => GPIO_tri_o_21(21),
      GPIO_tri_o(20) => GPIO_tri_o_20(20),
      GPIO_tri_o(19) => GPIO_tri_o_19(19),
      GPIO_tri_o(18) => GPIO_tri_o_18(18),
      GPIO_tri_o(17) => GPIO_tri_o_17(17),
      GPIO_tri_o(16) => GPIO_tri_o_16(16),
      GPIO_tri_o(15) => GPIO_tri_o_15(15),
      GPIO_tri_o(14) => GPIO_tri_o_14(14),
      GPIO_tri_o(13) => GPIO_tri_o_13(13),
      GPIO_tri_o(12) => GPIO_tri_o_12(12),
      GPIO_tri_o(11) => GPIO_tri_o_11(11),
      GPIO_tri_o(10) => GPIO_tri_o_10(10),
      GPIO_tri_o(9) => GPIO_tri_o_9(9),
      GPIO_tri_o(8) => GPIO_tri_o_8(8),
      GPIO_tri_o(7) => GPIO_tri_o_7(7),
      GPIO_tri_o(6) => GPIO_tri_o_6(6),
      GPIO_tri_o(5) => GPIO_tri_o_5(5),
      GPIO_tri_o(4) => GPIO_tri_o_4(4),
      GPIO_tri_o(3) => GPIO_tri_o_3(3),
      GPIO_tri_o(2) => GPIO_tri_o_2(2),
      GPIO_tri_o(1) => GPIO_tri_o_1(1),
      GPIO_tri_o(0) => GPIO_tri_o_0(0),
      GPIO_tri_t(63) => GPIO_tri_t_63(63),
      GPIO_tri_t(62) => GPIO_tri_t_62(62),
      GPIO_tri_t(61) => GPIO_tri_t_61(61),
      GPIO_tri_t(60) => GPIO_tri_t_60(60),
      GPIO_tri_t(59) => GPIO_tri_t_59(59),
      GPIO_tri_t(58) => GPIO_tri_t_58(58),
      GPIO_tri_t(57) => GPIO_tri_t_57(57),
      GPIO_tri_t(56) => GPIO_tri_t_56(56),
      GPIO_tri_t(55) => GPIO_tri_t_55(55),
      GPIO_tri_t(54) => GPIO_tri_t_54(54),
      GPIO_tri_t(53) => GPIO_tri_t_53(53),
      GPIO_tri_t(52) => GPIO_tri_t_52(52),
      GPIO_tri_t(51) => GPIO_tri_t_51(51),
      GPIO_tri_t(50) => GPIO_tri_t_50(50),
      GPIO_tri_t(49) => GPIO_tri_t_49(49),
      GPIO_tri_t(48) => GPIO_tri_t_48(48),
      GPIO_tri_t(47) => GPIO_tri_t_47(47),
      GPIO_tri_t(46) => GPIO_tri_t_46(46),
      GPIO_tri_t(45) => GPIO_tri_t_45(45),
      GPIO_tri_t(44) => GPIO_tri_t_44(44),
      GPIO_tri_t(43) => GPIO_tri_t_43(43),
      GPIO_tri_t(42) => GPIO_tri_t_42(42),
      GPIO_tri_t(41) => GPIO_tri_t_41(41),
      GPIO_tri_t(40) => GPIO_tri_t_40(40),
      GPIO_tri_t(39) => GPIO_tri_t_39(39),
      GPIO_tri_t(38) => GPIO_tri_t_38(38),
      GPIO_tri_t(37) => GPIO_tri_t_37(37),
      GPIO_tri_t(36) => GPIO_tri_t_36(36),
      GPIO_tri_t(35) => GPIO_tri_t_35(35),
      GPIO_tri_t(34) => GPIO_tri_t_34(34),
      GPIO_tri_t(33) => GPIO_tri_t_33(33),
      GPIO_tri_t(32) => GPIO_tri_t_32(32),
      GPIO_tri_t(31) => GPIO_tri_t_31(31),
      GPIO_tri_t(30) => GPIO_tri_t_30(30),
      GPIO_tri_t(29) => GPIO_tri_t_29(29),
      GPIO_tri_t(28) => GPIO_tri_t_28(28),
      GPIO_tri_t(27) => GPIO_tri_t_27(27),
      GPIO_tri_t(26) => GPIO_tri_t_26(26),
      GPIO_tri_t(25) => GPIO_tri_t_25(25),
      GPIO_tri_t(24) => GPIO_tri_t_24(24),
      GPIO_tri_t(23) => GPIO_tri_t_23(23),
      GPIO_tri_t(22) => GPIO_tri_t_22(22),
      GPIO_tri_t(21) => GPIO_tri_t_21(21),
      GPIO_tri_t(20) => GPIO_tri_t_20(20),
      GPIO_tri_t(19) => GPIO_tri_t_19(19),
      GPIO_tri_t(18) => GPIO_tri_t_18(18),
      GPIO_tri_t(17) => GPIO_tri_t_17(17),
      GPIO_tri_t(16) => GPIO_tri_t_16(16),
      GPIO_tri_t(15) => GPIO_tri_t_15(15),
      GPIO_tri_t(14) => GPIO_tri_t_14(14),
      GPIO_tri_t(13) => GPIO_tri_t_13(13),
      GPIO_tri_t(12) => GPIO_tri_t_12(12),
      GPIO_tri_t(11) => GPIO_tri_t_11(11),
      GPIO_tri_t(10) => GPIO_tri_t_10(10),
      GPIO_tri_t(9) => GPIO_tri_t_9(9),
      GPIO_tri_t(8) => GPIO_tri_t_8(8),
      GPIO_tri_t(7) => GPIO_tri_t_7(7),
      GPIO_tri_t(6) => GPIO_tri_t_6(6),
      GPIO_tri_t(5) => GPIO_tri_t_5(5),
      GPIO_tri_t(4) => GPIO_tri_t_4(4),
      GPIO_tri_t(3) => GPIO_tri_t_3(3),
      GPIO_tri_t(2) => GPIO_tri_t_2(2),
      GPIO_tri_t(1) => GPIO_tri_t_1(1),
      GPIO_tri_t(0) => GPIO_tri_t_0(0),
      cam_p_clk_0(0) => cam_p_clk_0(0),
      cam_p_clk_1(0) => cam_p_clk_1(0),
      clk_rxn_0 => clk_rxn_0,
      clk_rxn_1 => clk_rxn_1,
      clk_rxp_0 => clk_rxp_0,
      clk_rxp_1 => clk_rxp_1,
      data_lp_n_0(3 downto 0) => data_lp_n_0(3 downto 0),
      data_lp_n_1(3 downto 0) => data_lp_n_1(3 downto 0),
      data_lp_p_0(3 downto 0) => data_lp_p_0(3 downto 0),
      data_lp_p_1(3 downto 0) => data_lp_p_1(3 downto 0),
      data_rxn_0(3 downto 0) => data_rxn_0(3 downto 0),
      data_rxn_1(3 downto 0) => data_rxn_1(3 downto 0),
      data_rxp_0(3 downto 0) => data_rxp_0(3 downto 0),
      data_rxp_1(3 downto 0) => data_rxp_1(3 downto 0),
      iic_0_scl_i => iic_0_scl_i,
      iic_0_scl_o => iic_0_scl_o,
      iic_0_scl_t => iic_0_scl_t,
      iic_0_sda_i => iic_0_sda_i,
      iic_0_sda_o => iic_0_sda_o,
      iic_0_sda_t => iic_0_sda_t,
      iic_1_scl_i => iic_1_scl_i,
      iic_1_scl_o => iic_1_scl_o,
      iic_1_scl_t => iic_1_scl_t,
      iic_1_sda_i => iic_1_sda_i,
      iic_1_sda_o => iic_1_sda_o,
      iic_1_sda_t => iic_1_sda_t
    );
iic_0_scl_iobuf: component IOBUF
     port map (
      I => iic_0_scl_o,
      IO => iic_0_scl_io,
      O => iic_0_scl_i,
      T => iic_0_scl_t
    );
iic_0_sda_iobuf: component IOBUF
     port map (
      I => iic_0_sda_o,
      IO => iic_0_sda_io,
      O => iic_0_sda_i,
      T => iic_0_sda_t
    );
iic_1_scl_iobuf: component IOBUF
     port map (
      I => iic_1_scl_o,
      IO => iic_1_scl_io,
      O => iic_1_scl_i,
      T => iic_1_scl_t
    );
iic_1_sda_iobuf: component IOBUF
     port map (
      I => iic_1_sda_o,
      IO => iic_1_sda_io,
      O => iic_1_sda_i,
      T => iic_1_sda_t
    );
end STRUCTURE;
