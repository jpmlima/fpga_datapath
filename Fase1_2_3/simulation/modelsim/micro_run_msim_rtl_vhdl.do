transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/xenomai/Desktop/LSDP13/Fase1_2_3/src/ControlUnit.vhd}

