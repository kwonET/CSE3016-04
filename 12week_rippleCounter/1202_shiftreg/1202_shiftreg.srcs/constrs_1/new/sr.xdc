set_property PACKAGE_PIN F15 [get_ports {Q[0]}]
set_property PACKAGE_PIN F13 [get_ports {Q[1]}]
set_property PACKAGE_PIN F14 [get_ports {Q[2]}]
set_property PACKAGE_PIN F16 [get_ports {Q[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Q[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Q[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Q[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Q[0]}]
set_property PACKAGE_PIN J4 [get_ports clk]
set_property PACKAGE_PIN L3 [get_ports D]
set_property PACKAGE_PIN K3 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports D]
set_property IOSTANDARD LVCMOS18 [get_ports reset]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Q[0]_OBUF]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Q[1]_OBUF]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Q[2]_OBUF]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Q[3]_OBUF]
#(예시/출력의 변수가 q1인 경우 -> set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets q1_OBUF])

set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1] 

set_property SEVERITY {Warning} [get_drc_checks NSTD-1]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]