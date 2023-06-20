v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PSSR+=Voutd/Voutp} 1230 -720 0 0 0.4 0.4 {}
T {PSSR-=Voutd/Voutn} 1230 -400 0 0 0.4 0.4 {}
N 1130 -560 1130 -540 { lab=GND}
N 1130 -650 1130 -620 { lab=Voutp}
N 720 -680 860 -680 {
lab=Vp1}
N 1100 -650 1130 -650 {
lab=Voutp}
N 1040 -650 1100 -650 {
lab=Voutp}
N 1070 -650 1070 -520 {
lab=Voutp}
N 990 -520 1070 -520 {
lab=Voutp}
N 840 -520 930 -520 {
lab=Vmc}
N 840 -620 840 -520 {
lab=Vmc}
N 840 -620 860 -620 {
lab=Vmc}
N 940 -740 940 -720 {
lab=VDD1}
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
lab=GND}
N 1150 -240 1150 -220 { lab=VSS2}
N 1150 -330 1150 -300 { lab=Voutn}
N 740 -360 880 -360 {
lab=Vp2}
N 1120 -330 1150 -330 {
lab=Voutn}
N 1060 -330 1120 -330 {
lab=Voutn}
N 1090 -330 1090 -200 {
lab=Voutn}
N 1010 -200 1090 -200 {
lab=Voutn}
N 860 -200 950 -200 {
lab=#net1}
N 860 -300 860 -200 {
lab=#net1}
N 860 -300 880 -300 {
lab=#net1}
N 960 -420 960 -400 {
lab=VDD}
N 840 -200 860 -200 {
lab=#net1}
N 770 -200 780 -200 {
lab=VSS2}
C {devices/code_shown.sym} 248.75 -1071.875 0 0 {name=NGSPICE
only_toplevel=true
value=".options savecurrents
VDD VDD 0 DC 3.3
VDD1 VDD1 0 DC 3.3 AC 1
Vp Vp 0 DC 1.65 AC 1
Vp1 Vp1 0 DC 1.65 AC 0
VSS2 VSS2 0 DC 0 AC 1
Vp2 Vp2 VSS2 DC 1.65 AC 0
.control
save all
ac dec 200 10 1000Meg
*** PSRRp 
plot vdb(Voutp)
let phase_Voutp = 180/PI*cph(Voutp)
settype phase phase_Voutp
plot phase(phase_Voutp)
let PSRRp = Voutd/Voutp
plot vdb(PSRRp)
let phase_psrrp = 180/PI*cph(Voutd/Voutp)
settype phase phase_psrrp
plot phase_psrrp
meas ac pssrp_gain FIND vdb(PSRRp) AT=1000
*** PSRRn 
plot vdb(Voutn)
let phase_Voutn = 180/PI*cph(Voutn)
settype phase phase_Voutn
plot phase(phase_Voutn)
let PSRRn = Voutd/Voutn
plot vdb(PSRRn)
let phase_psrrn = 180/PI*cph(Voutd/Voutn)
settype phase phase_psrrn
plot phase_psrrn
meas ac pssrn_gain FIND vdb(PSRRn) AT=1000
********
op
write OTA_1_folded_cascode_psrr.raw
.endc
"}
C {devices/lab_pin.sym} 840 -620 0 0 {name=l19 sig_type=std_logic lab=Vmc
}
C {devices/lab_pin.sym} 720 -680 0 0 {name=l20 sig_type=std_logic lab=Vp1
}
C {devices/lab_pin.sym} 1130 -650 2 0 {name=l23 sig_type=std_logic lab=Voutp
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
C {devices/lab_pin.sym} 940 -740 0 0 {name=l1 sig_type=std_logic lab=VDD1
}
C {devices/iopin.sym} 1715 -995 0 0 {name=p7 lab=VDD}
C {devices/ipin.sym} 1750 -950 0 0 {name=p9 lab=Vp}
C {devices/code.sym} 1540 -1015 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} 1695 -795 0 0 {name=h2
descr="View Raw file" 
tclcommand="textwindow $netlist_dir/OTA_1_folded_cascode_psrr.raw"}
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
C {devices/gnd.sym} 750 -520 1 0 {name=l4 lab=GND}
C {devices/iopin.sym} 1785 -995 0 0 {name=p1 lab=VDD1}
C {devices/ipin.sym} 1820 -950 0 0 {name=p2 lab=Vp1}
C {devices/lab_pin.sym} 740 -360 0 0 {name=l12 sig_type=std_logic lab=Vp2
}
C {devices/lab_pin.sym} 1150 -330 2 0 {name=l13 sig_type=std_logic lab=Voutn
}
C {devices/capa.sym} 1150 -270 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 980 -200 1 0 {name=R3
value=100E6
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 810 -200 1 0 {name=C6
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {OTA_1_folded_cascode.sym} 700 -140 0 0 {name=x3}
C {devices/lab_pin.sym} 960 -420 0 0 {name=l17 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 960 -260 0 1 {name=l11 sig_type=std_logic lab=VSS2
}
C {devices/lab_pin.sym} 1150 -220 0 1 {name=l14 sig_type=std_logic lab=VSS2
}
C {devices/lab_pin.sym} 770 -200 0 0 {name=l15 sig_type=std_logic lab=VSS2
}
C {devices/iopin.sym} 1875 -995 0 0 {name=p3 lab=VSS2}
C {devices/ipin.sym} 1900 -950 0 0 {name=p4 lab=Vp2}
