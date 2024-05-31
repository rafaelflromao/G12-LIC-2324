transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/Serial/SerialController.vhd}
vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/Serial/SerialDispatcher/SerialDispatcher.vhd}
vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/Serial/SerialReceiver/SerialReceiver.vhd}
vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/Serial/SerialReceiver/SerialControl.vhd}
vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/Serial/SerialReceiver/ParityCheck.vhd}
vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/Serial/SerialReceiver/ShiftRegister.vhd}
vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/common/counter.vhd}

vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/SpaceInvadersGame/../Serial/SerialController_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  SerialController_tb

add wave *
view structure
view signals
run -all
