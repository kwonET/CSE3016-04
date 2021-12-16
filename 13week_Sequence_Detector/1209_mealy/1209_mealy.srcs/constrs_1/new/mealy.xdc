set_property PACKAGE_PIN J4 [get_ports clk]
set_property PACKAGE_PIN E21 [get_ports in]
set_property PACKAGE_PIN F15 [get_ports out]
set_property PACKAGE_PIN L3 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports in]
set_property IOSTANDARD LVCMOS18 [get_ports out]
set_property IOSTANDARD LVCMOS18 [get_ports reset]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets out_OBUF]

set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1] 

set_property SEVERITY {Warning} [get_drc_checks NSTD-1]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]