v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1110 -560 1110 -540 { lab=GND}
N 1110 -650 1110 -620 { lab=Vout}
N 820 -420 820 -400 { lab=GND}
N 820 -680 840 -680 {
lab=Vp}
N 1080 -650 1110 -650 {
lab=Vout}
N 1020 -650 1080 -650 {
lab=Vout}
N 1050 -650 1050 -520 {
lab=Vout}
N 970 -520 1050 -520 {
lab=Vout}
N 820 -520 820 -500 {
lab=Vm}
N 820 -520 910 -520 {
lab=Vm}
N 820 -620 820 -520 {
lab=Vm}
N 820 -620 840 -620 {
lab=Vm}
N 920 -740 920 -720 {
lab=VDD}
N 820 -500 820 -480 {
lab=Vm}
C {devices/code_shown.sym} 118.75 -871.875 0 0 {name=NGSPICE
only_toplevel=true
value=".options savecurrents
VDD VDD 0 DC 3.3
Vp Vp 0 DC 1.65 AC 1
.control
save all
ac dec 200 10 1000Meg
settype decibel out
plot vdb(Vout)
let phase_val = 180/PI*cph(Vout)
let phase_margin_val = 180 + 180/PI*cph(Vout)
settype phase phase_val
plot phase_val
meas ac phase_margin find phase_margin_val when vdb(Vout)=0
meas ac crossover_freq WHEN vdb(Vout)=0
op
print v(Vp)
print v(Vm)
print v(Vout)
let v_offset = v(Vp)-v(Vm)
print v_offset
write OTA_1_folded_cascode_ac.raw
.endc
"}
C {devices/lab_pin.sym} 820 -620 0 0 {name=l19 sig_type=std_logic lab=Vm
}
C {devices/lab_pin.sym} 820 -680 0 0 {name=l20 sig_type=std_logic lab=Vp
}
C {devices/lab_pin.sym} 1110 -650 2 0 {name=l23 sig_type=std_logic lab=Vout
}
C {devices/capa.sym} 1110 -590 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1110 -540 0 0 {name=l24 lab=GND}
C {devices/res.sym} 940 -520 1 0 {name=R1
value=100E6
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 820 -450 0 0 {name=C2
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 820 -400 0 0 {name=l4 lab=GND}
C {OTA_1_folded_cascode.sym} 660 -460 0 0 {name=x1}
C {devices/gnd.sym} 920 -580 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 920 -740 0 0 {name=l1 sig_type=std_logic lab=VDD
}
C {devices/iopin.sym} 695 -515 0 0 {name=p7 lab=VDD}
C {devices/ipin.sym} 740 -480 0 0 {name=p9 lab=Vp}
C {devices/code.sym} 670 -855 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 385 -435 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/OTA_1_folded_cascode_ac.raw"}
