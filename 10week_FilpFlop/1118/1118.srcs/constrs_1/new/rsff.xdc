set_property PACKAGE_PIN K3 [get_ports CP]
set_property PACKAGE_PIN J4 [get_ports R]
set_property PACKAGE_PIN L3 [get_ports S]
set_property PACKAGE_PIN F13 [get_ports NQ]
set_property IOSTANDARD LVCMOS18 [get_ports CP]
set_property IOSTANDARD LVCMOS18 [get_ports NQ]
set_property IOSTANDARD LVCMOS18 [get_ports Q]
set_property IOSTANDARD LVCMOS18 [get_ports R]
set_property IOSTANDARD LVCMOS18 [get_ports S]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets NQ_OBUF]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Q_OBUF]
#(����/����� ������ q1�� ��� -> set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets q1_OBUF])

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

set_property PACKAGE_PIN F15 [get_ports Q]
