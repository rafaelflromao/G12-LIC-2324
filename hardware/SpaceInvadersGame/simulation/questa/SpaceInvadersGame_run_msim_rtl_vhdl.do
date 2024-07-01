transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/KeyboardReader/RingBuffer/RingBuffer.vhd}
vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/KeyboardReader/RingBuffer/RAM.vhd}
vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/KeyboardReader/RingBuffer/MAC.vhd}
vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/KeyboardReader/RingBuffer/RBC.vhd}
vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/common/counter.vhd}

vcom -93 -work work {C:/Users/zebon/Downloads/LIC/G12-LIC-2324/hardware/SpaceInvadersGame/../KeyboardReader/RingBuffer/RingBuffer_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  RingBuffer_tb

add wave *
view structure
view signals
run -all
