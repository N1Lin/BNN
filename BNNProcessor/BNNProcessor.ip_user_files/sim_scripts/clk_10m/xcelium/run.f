-makelib xcelium_lib/xpm -sv \
  "D:/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BNNProcessor.srcs/sources_1/ip/clk_10m/clk_10m_clk_wiz.v" \
  "../../../../BNNProcessor.srcs/sources_1/ip/clk_10m/clk_10m.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

