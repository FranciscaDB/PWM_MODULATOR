###############################################################################
# Created by write_sdc
# Tue Oct 17 05:35:45 2023
###############################################################################
current_design Top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name CLK_* -period 7.8000 \
    [list [get_ports {CLK_EXT}]\
          [get_ports {CLK_PLL}]\
          [get_ports {CLK_SR}]]
set_clock_transition 0.1500 [get_clocks {CLK_*}]
set_clock_uncertainty 0.2500 CLK_*
set_propagated_clock [get_clocks {CLK_*}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {Data_SR}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {RST}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d1[0]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d1[1]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d1[2]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d1[3]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d1[4]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d1[5]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d2[0]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d2[1]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d2[2]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d2[3]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d2[4]}]
set_input_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {d2[5]}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {NMOS1_PS1}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {NMOS1_PS2}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {NMOS2_PS1}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {NMOS2_PS2}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {NMOS_PS3}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {PMOS1_PS1}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {PMOS1_PS2}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {PMOS2_PS1}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {PMOS2_PS2}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {PMOS_PS3}]
set_output_delay 1.5600 -clock [get_clocks {CLK_*}] -add_delay [get_ports {SIGNAL_OUTPUT}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {NMOS1_PS1}]
set_load -pin_load 0.0334 [get_ports {NMOS1_PS2}]
set_load -pin_load 0.0334 [get_ports {NMOS2_PS1}]
set_load -pin_load 0.0334 [get_ports {NMOS2_PS2}]
set_load -pin_load 0.0334 [get_ports {NMOS_PS3}]
set_load -pin_load 0.0334 [get_ports {PMOS1_PS1}]
set_load -pin_load 0.0334 [get_ports {PMOS1_PS2}]
set_load -pin_load 0.0334 [get_ports {PMOS2_PS1}]
set_load -pin_load 0.0334 [get_ports {PMOS2_PS2}]
set_load -pin_load 0.0334 [get_ports {PMOS_PS3}]
set_load -pin_load 0.0334 [get_ports {SIGNAL_OUTPUT}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {CLK_EXT}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {CLK_PLL}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {CLK_SR}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {Data_SR}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {RST}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d1[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d1[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d1[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d1[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d1[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d1[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d2[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d2[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d2[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d2[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d2[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d2[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
