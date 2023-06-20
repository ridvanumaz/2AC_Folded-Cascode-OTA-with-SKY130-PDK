v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1130 -560 1130 -540 { lab=GND}
N 1130 -650 1130 -620 { lab=Voutc}
N 720 -680 860 -680 {
lab=Vp}
N 1100 -650 1130 -650 {
lab=Voutc}
N 1040 -650 1100 -650 {
lab=Voutc}
N 1070 -650 1070 -520 {
lab=Voutc}
N 990 -520 1070 -520 {
lab=Voutc}
N 840 -520 930 -520 {
lab=Vmc}
N 840 -620 840 -520 {
lab=Vmc}
N 840 -620 860 -620 {
lab=Vmc}
N 940 -740 940 -720 {
lab=VDD}
N 1130 -920 1130 -900 { lab=GND}
N 1130 -1010 1130 -980 { lab=Voutd}
N 840 -780 840 -760 { lab=GND}
N 840 -1040 860 -1040 {
lab=Vp}
N 1100 -1010 1130 -1010 {
lab=Voutd}
N 1040 -1010 1100 -1010 {
lab=Voutd}
N 1070 -1010 1070 -880 {
lab=Voutd}
N 990 -880 1070 -880 {
lab=Voutd}
N 840 -880 840 -860 {
lab=Vmd}
N 840 -880 930 -880 {
lab=Vmd}
N 840 -980 840 -880 {
lab=Vmd}
N 840 -980 860 -980 {
lab=Vmd}
N 940 -1100 940 -1080 {
lab=VDD}
N 840 -860 840 -840 {
lab=Vmd}
N 820 -520 840 -520 {
lab=Vmc}
N 750 -520 760 -520 {
lab=Vp}
N 750 -680 750 -520 {
lab=Vp}
C {devices/code_shown.sym} 218.75 -1071.875 0 0 {name=NGSPICE
only_toplevel=true
value=".options savecurrents
VDD VDD 0 DC 3.3
Vp Vp 0 DC 1.65 AC 1
.control
save all
ac dec 200 10 1000Meg
*** differential mode
settype decibel Voutd
plot vdb(Voutd)
let phase_d = 180/PI*cph(Voutd)
settype phase phase_d
plot phase_d
*** common-mode
settype decibel Voutc
plot vdb(Voutc)
let phase_c = 180/PI*cph(Voutc)
settype phase phase_c
plot phase_c
*** CMRR 
let CMRR = Voutd/Voutc
plot vdb(CMRR)
let phase_cmrr = 180/PI*cph(Voutd/Voutc)
settype phase phase_cmrr
plot phase_cmrr
********
meas ac Voutd_fun WHEN vdb(Voutd)=0
meas ac Voutd_gain FIND vdb(Voutd) AT=100
let Voutd_gain_f3dB = Voutd_gain-3
meas ac Voutd_f3dB WHEN vdb(Voutd)=Voutd_gain_f3dB
meas ac cmrr_gain FIND vdb(CMRR) AT=100
********
op
write OTA_1_folded_cascode_cmrr.raw
.endc
"}
C {devices/lab_pin.sym} 840 -620 0 0 {name=l19 sig_type=std_logic lab=Vmc
}
C {devices/lab_pin.sym} 720 -680 0 0 {name=l20 sig_type=std_logic lab=Vp
}
C {devices/lab_pin.sym} 1130 -650 2 0 {name=l23 sig_type=std_logic lab=Voutc
}
C {devices/capa.sym} 1130 -590 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1130 -540 0 0 {name=l24 lab=GND}
C {devices/res.sym} 960 -520 1 0 {name=R1
value=100E6
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 790 -520 1 0 {name=C2
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {OTA_1_folded_cascode.sym} 680 -460 0 0 {name=x1}
C {devices/gnd.sym} 940 -580 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 940 -740 0 0 {name=l1 sig_type=std_logic lab=VDD
}
C {devices/iopin.sym} 1355 -615 0 0 {name=p7 lab=VDD}
C {devices/ipin.sym} 1390 -570 0 0 {name=p9 lab=Vp}
C {devices/code.sym} 1380 -1005 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 1335 -765 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/OTA_1_folded_cascode_cmrr.raw"}
C {devices/lab_pin.sym} 840 -980 0 0 {name=l2 sig_type=std_logic lab=Vmd
}
C {devices/lab_pin.sym} 840 -1040 0 0 {name=l3 sig_type=std_logic lab=Vp
}
C {devices/lab_pin.sym} 1130 -1010 2 0 {name=l6 sig_type=std_logic lab=Voutd
}
C {devices/capa.sym} 1130 -950 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1130 -900 0 0 {name=l7 lab=GND}
C {devices/res.sym} 960 -880 1 0 {name=R2
value=100E6
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 840 -810 0 0 {name=C4
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 840 -760 0 0 {name=l8 lab=GND}
C {OTA_1_folded_cascode.sym} 680 -820 0 0 {name=x2}
C {devices/gnd.sym} 940 -940 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 940 -1100 0 0 {name=l10 sig_type=std_logic lab=VDD
}
