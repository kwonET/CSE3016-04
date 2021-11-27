set_property PACKAGE_PIN E21 [get_ports clk]
set_property PACKAGE_PIN D21 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports reset]

set_property PACKAGE_PIN F13 [get_ports {cout[1]}]
set_property PACKAGE_PIN F15 [get_ports {cout[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {cout[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {cout[0]}]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets cout[0]_OBUF]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets cout[1]_OBUF]
#(예시/출력의 변수가 q1인 경우 -> set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets q1_OBUF])



set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

