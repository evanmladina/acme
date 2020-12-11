add_files firmware/
remove_files firmware/SimulationInput.vhd
remove_files firmware/SimulationOutput.vhd
remove_files firmware/BDTTestbench.vhd
remove_files firmware/TestUtil.vhd
set_property file_type {VHDL 2008} [get_files]
synth_design -top BDTTop -part xc7vx690tffg1761-2
report_utilization -file util.rpt
write_edif -file my_prj