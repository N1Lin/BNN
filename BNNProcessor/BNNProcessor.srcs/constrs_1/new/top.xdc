set_property PACKAGE_PIN Y9 [get_ports sysclk]
set_property PACKAGE_PIN F22 [get_ports RST]
set_property PACKAGE_PIN Y11 [get_ports SRAMDOUT]
set_property PACKAGE_PIN AA11 [get_ports TRIGGER]


create_clock -period 10.000 -waveform {0.000 5.000} [get_ports sysclk]

set_property IOSTANDARD LVCMOS33 [get_ports sysclk]
set_property IOSTANDARD LVCMOS33 [get_ports RST]
set_property IOSTANDARD LVCMOS33 [get_ports SRAMDOUT]
set_property IOSTANDARD LVCMOS33 [get_ports TRIGGER]