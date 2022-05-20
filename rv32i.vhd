--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Thu May 19 19:16:41 2022
--Host        : DESKTOP-4VUAP12 running 64-bit major release  (build 9200)
--Command     : generate_target rv32i.bd
--Design      : rv32i
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rv32i is
  port (
    alua : out STD_LOGIC_VECTOR ( 31 downto 0 );
    alub : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    cont_p : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sal_alu : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valor : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of rv32i : entity is "rv32i,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=rv32i,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=17,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=16,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of rv32i : entity is "rv32i.hwdef";
end rv32i;

architecture STRUCTURE of rv32i is
  component rv32i_mux_4b_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 4 downto 0 );
    b : in STD_LOGIC_VECTOR ( 4 downto 0 );
    cont : in STD_LOGIC;
    sal : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component rv32i_mux_4b_0_0;
  component rv32i_unidor_0_0 is
  port (
    a1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    a2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sal : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component rv32i_unidor_0_0;
  component rv32i_sign_e_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component rv32i_sign_e_0_0;
  component rv32i_mux2_1_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cont : in STD_LOGIC;
    sal : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component rv32i_mux2_1_0_0;
  component rv32i_sum_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 12 downto 0 );
    b : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component rv32i_sum_0_0;
  component rv32i_mux2_1_0_1 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cont : in STD_LOGIC;
    sal : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component rv32i_mux2_1_0_1;
  component rv32i_slicer_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : out STD_LOGIC
  );
  end component rv32i_slicer_0_0;
  component rv32i_sign_oe_0_0 is
  port (
    i1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    i2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sal : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component rv32i_sign_oe_0_0;
  component rv32i_data_m_0_0 is
  port (
    di : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    we : in STD_LOGIC;
    clk : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component rv32i_data_m_0_0;
  component rv32i_alu_0_0 is
  port (
    a1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    opcode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    alu_sal : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component rv32i_alu_0_0;
  component rv32i_cont_0_0 is
  port (
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 12 downto 0 );
    sal : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component rv32i_cont_0_0;
  component rv32i_reg_b_0_0 is
  port (
    d1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    a2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ad : in STD_LOGIC_VECTOR ( 4 downto 0 );
    we : in STD_LOGIC;
    clk : in STD_LOGIC;
    do1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    do2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component rv32i_reg_b_0_0;
  component rv32i_mux_c_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 12 downto 0 );
    c : in STD_LOGIC;
    en : in STD_LOGIC;
    sal : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component rv32i_mux_c_0_0;
  component rv32i_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  end component rv32i_system_ila_0_0;
  component rv32i_CU_0_0 is
  port (
    opcode : in STD_LOGIC_VECTOR ( 6 downto 0 );
    func7 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    func3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wer : out STD_LOGIC;
    alu_scr : out STD_LOGIC;
    alu2reg : out STD_LOGIC;
    wem : out STD_LOGIC;
    imm_rd : out STD_LOGIC;
    ci_en : out STD_LOGIC;
    alu_op : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component rv32i_CU_0_0;
  component rv32i_prog_m_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 12 downto 0 );
    funct7 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    rs2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rs1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    func3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rd : out STD_LOGIC_VECTOR ( 4 downto 0 );
    opcode : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component rv32i_prog_m_0_0;
  component rv32i_mux32_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c : in STD_LOGIC;
    sal : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component rv32i_mux32_0_0;
  signal CU_0_alu2reg : STD_LOGIC;
  signal CU_0_alu_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CU_0_alu_scr : STD_LOGIC;
  signal CU_0_ci_en : STD_LOGIC;
  signal CU_0_imm_rd : STD_LOGIC;
  signal CU_0_wem : STD_LOGIC;
  signal CU_0_wer : STD_LOGIC;
  signal alu_alu_sal : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal cont_0_sal : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute DEBUG : string;
  attribute DEBUG of cont_0_sal : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of cont_0_sal : signal is std.standard.true;
  signal data_m_0_do : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux2_1_0_sal : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux2_1_1_sal : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux32_0_sal : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_4b_0_sal : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mux_c_0_sal : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal prog_m_0_func3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal prog_m_0_funct7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal prog_m_0_opcode : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal prog_m_0_rd : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal prog_m_0_rs1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal prog_m_0_rs2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal reg_b_0_do1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_b_0_do2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sign_e_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sign_oe_0_sal : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal slicer_0_b : STD_LOGIC;
  signal sum_0_dout : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal unidor_0_sal : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  alua(31 downto 0) <= mux2_1_0_sal(31 downto 0);
  alub(31 downto 0) <= reg_b_0_do2(31 downto 0);
  clk_1 <= clk;
  cont_p(12 downto 0) <= cont_0_sal(12 downto 0);
  sal_alu(31 downto 0) <= alu_alu_sal(31 downto 0);
  valor(12 downto 0) <= sign_oe_0_sal(12 downto 0);
CU_0: component rv32i_CU_0_0
     port map (
      alu2reg => CU_0_alu2reg,
      alu_op(3 downto 0) => CU_0_alu_op(3 downto 0),
      alu_scr => CU_0_alu_scr,
      ci_en => CU_0_ci_en,
      func3(2 downto 0) => prog_m_0_func3(2 downto 0),
      func7(6 downto 0) => prog_m_0_funct7(6 downto 0),
      imm_rd => CU_0_imm_rd,
      opcode(6 downto 0) => prog_m_0_opcode(6 downto 0),
      wem => CU_0_wem,
      wer => CU_0_wer
    );
alu: component rv32i_alu_0_0
     port map (
      a1(31 downto 0) => mux2_1_0_sal(31 downto 0),
      a2(31 downto 0) => reg_b_0_do2(31 downto 0),
      alu_sal(31 downto 0) => alu_alu_sal(31 downto 0),
      opcode(3 downto 0) => CU_0_alu_op(3 downto 0)
    );
cont_0: component rv32i_cont_0_0
     port map (
      clk => clk_1,
      din(12 downto 0) => sum_0_dout(12 downto 0),
      sal(12 downto 0) => cont_0_sal(12 downto 0)
    );
data_m_0: component rv32i_data_m_0_0
     port map (
      a(31 downto 0) => mux32_0_sal(31 downto 0),
      clk => clk_1,
      di(31 downto 0) => reg_b_0_do1(31 downto 0),
      dout(31 downto 0) => data_m_0_do(31 downto 0),
      we => CU_0_wem
    );
mux32_0: component rv32i_mux32_0_0
     port map (
      a(31 downto 0) => alu_alu_sal(31 downto 0),
      c => CU_0_wem,
      sal(31 downto 0) => mux32_0_sal(31 downto 0)
    );
mux_SE: component rv32i_mux_4b_0_0
     port map (
      a(4 downto 0) => prog_m_0_rs2(4 downto 0),
      b(4 downto 0) => prog_m_0_rd(4 downto 0),
      cont => CU_0_imm_rd,
      sal(4 downto 0) => mux_4b_0_sal(4 downto 0)
    );
mux_alu: component rv32i_mux2_1_0_0
     port map (
      a(31 downto 0) => sign_e_0_data_out(31 downto 0),
      b(31 downto 0) => reg_b_0_do1(31 downto 0),
      cont => CU_0_alu_scr,
      sal(31 downto 0) => mux2_1_0_sal(31 downto 0)
    );
mux_contador: component rv32i_mux_c_0_0
     port map (
      a(12 downto 0) => sign_oe_0_sal(12 downto 0),
      c => slicer_0_b,
      en => CU_0_ci_en,
      sal(12 downto 0) => mux_c_0_sal(12 downto 0)
    );
mux_m: component rv32i_mux2_1_0_1
     port map (
      a(31 downto 0) => data_m_0_do(31 downto 0),
      b(31 downto 0) => alu_alu_sal(31 downto 0),
      cont => CU_0_alu2reg,
      sal(31 downto 0) => mux2_1_1_sal(31 downto 0)
    );
prog_m_0: component rv32i_prog_m_0_0
     port map (
      a(12 downto 0) => cont_0_sal(12 downto 0),
      func3(2 downto 0) => prog_m_0_func3(2 downto 0),
      funct7(6 downto 0) => prog_m_0_funct7(6 downto 0),
      opcode(6 downto 0) => prog_m_0_opcode(6 downto 0),
      rd(4 downto 0) => prog_m_0_rd(4 downto 0),
      rs1(4 downto 0) => prog_m_0_rs1(4 downto 0),
      rs2(4 downto 0) => prog_m_0_rs2(4 downto 0)
    );
reg_b_0: component rv32i_reg_b_0_0
     port map (
      a1(4 downto 0) => prog_m_0_rs2(4 downto 0),
      a2(4 downto 0) => prog_m_0_rs1(4 downto 0),
      ad(4 downto 0) => prog_m_0_rd(4 downto 0),
      clk => clk_1,
      d1(31 downto 0) => mux2_1_1_sal(31 downto 0),
      do1(31 downto 0) => reg_b_0_do1(31 downto 0),
      do2(31 downto 0) => reg_b_0_do2(31 downto 0),
      we => CU_0_wer
    );
sign_e_0: component rv32i_sign_e_0_0
     port map (
      data_in(11 downto 0) => unidor_0_sal(11 downto 0),
      data_out(31 downto 0) => sign_e_0_data_out(31 downto 0)
    );
sign_oe_0: component rv32i_sign_oe_0_0
     port map (
      i1(6 downto 0) => prog_m_0_funct7(6 downto 0),
      i2(4 downto 0) => prog_m_0_rd(4 downto 0),
      sal(12 downto 0) => sign_oe_0_sal(12 downto 0)
    );
slicer_0: component rv32i_slicer_0_0
     port map (
      a(31 downto 0) => alu_alu_sal(31 downto 0),
      b => slicer_0_b
    );
sum_0: component rv32i_sum_0_0
     port map (
      a(12 downto 0) => mux_c_0_sal(12 downto 0),
      b(12 downto 0) => cont_0_sal(12 downto 0),
      dout(12 downto 0) => sum_0_dout(12 downto 0)
    );
system_ila_0: component rv32i_system_ila_0_0
     port map (
      clk => clk_1,
      probe0(31 downto 0) => alu_alu_sal(31 downto 0),
      probe1(12 downto 0) => cont_0_sal(12 downto 0)
    );
unidor_0: component rv32i_unidor_0_0
     port map (
      a1(6 downto 0) => prog_m_0_funct7(6 downto 0),
      a2(4 downto 0) => mux_4b_0_sal(4 downto 0),
      sal(11 downto 0) => unidor_0_sal(11 downto 0)
    );
end STRUCTURE;
