v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1021.25 -537.5 1021.25 -517.5 { lab=GND}
N 1021.25 -627.5 1021.25 -597.5 { lab=Vout}
N 731.25 -657.5 751.25 -657.5 {
lab=Vp}
N 991.25 -627.5 1021.25 -627.5 {
lab=Vout}
N 931.25 -627.5 991.25 -627.5 {
lab=Vout}
N 961.25 -627.5 961.25 -497.5 {
lab=Vout}
N 881.25 -497.5 961.25 -497.5 {
lab=Vout}
N 731.25 -497.5 821.25 -497.5 {
lab=Vout}
N 731.25 -597.5 731.25 -497.5 {
lab=Vout}
N 731.25 -597.5 751.25 -597.5 {
lab=Vout}
N 831.25 -717.5 831.25 -697.5 {
lab=VDD}
N 821.25 -497.5 881.25 -497.5 {
lab=Vout}
C {devices/code_shown.sym} 485 -781.25 0 0 {name=NGSPICE
only_toplevel=true
value="VDD VDD 0 DC 3.3
Vp Vp 0 DC pulse(1.65 1.655 0.5u 0.1n 0.1n 0.25u 2u)
.control
save all
tran 10n 5u
plot Vp Vout
.endc
"}
C {devices/lab_pin.sym} 731.25 -657.5 0 0 {name=l20 sig_type=std_logic lab=Vp
}
C {devices/lab_pin.sym} 1021.25 -627.5 2 0 {name=l23 sig_type=std_logic lab=Vout
}
C {devices/capa.sym} 1021.25 -567.5 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1021.25 -517.5 0 0 {name=l24 lab=GND}
C {OTA_1_folded_cascode.sym} 571.25 -437.5 0 0 {name=x1}
C {devices/gnd.sym} 831.25 -557.5 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 831.25 -717.5 0 0 {name=l1 sig_type=std_logic lab=VDD
}
C {devices/iopin.sym} 629.375 -594.375 0 0 {name=p7 lab=VDD}
C {devices/ipin.sym} 674.375 -559.375 0 0 {name=p9 lab=Vp}
C {devices/code.sym} 482.5 -613.75 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
