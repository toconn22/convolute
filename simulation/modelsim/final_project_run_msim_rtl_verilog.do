transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog/audio {G:/Shared drives/logic/final_project/verilog/audio/audio_time.v}
vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog/audio {G:/Shared drives/logic/final_project/verilog/audio/audio_player.v}
vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog/audio {G:/Shared drives/logic/final_project/verilog/audio/audio_counter.v}
vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog {G:/Shared drives/logic/final_project/verilog/controller.v}
vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog {G:/Shared drives/logic/final_project/verilog/datapath.v}
vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog {G:/Shared drives/logic/final_project/verilog/processor.v}
vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog {G:/Shared drives/logic/final_project/verilog/system.v}
vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog {G:/Shared drives/logic/final_project/verilog/image_rom.v}
vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog {G:/Shared drives/logic/final_project/verilog/ker_rom.v}
vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog/audio {G:/Shared drives/logic/final_project/verilog/audio/musicrom.v}

vlog -vlog01compat -work work +incdir+G:/Shared\ drives/logic/final_project/verilog {G:/Shared drives/logic/final_project/verilog/system_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  system_tb

add wave *
view structure
view signals
run -all
