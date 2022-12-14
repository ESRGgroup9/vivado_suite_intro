connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351AB72D9A" && level==0} -index 1
fpga -file /home/tomas/Downloads/xilinxIntro/examples/fulladder/vitis/proj/fulladder/_ide/bitstream/fulladder_bd_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/tomas/Vivado/fulladder/vitis/proj/fulladder_1/export/fulladder_1/hw/fulladder_bd_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/tomas/Downloads/xilinxIntro/examples/fulladder/vitis/proj/fulladder/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/tomas/Downloads/xilinxIntro/examples/fulladder/vitis/proj/fulladder/Debug/fulladder.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
