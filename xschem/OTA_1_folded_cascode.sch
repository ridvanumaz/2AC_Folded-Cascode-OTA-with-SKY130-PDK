v {xschem version=3.4.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {VDD=3.3V  Ibias=40uA } 20 -350 0 0 0.4 0.4 {}
N 600 -440 600 -420 {
lab=VDD}
N 600 -440 1140 -440 {
lab=VDD}
N 1140 -440 1140 -420 {
lab=VDD}
N 1140 -440 1160 -440 {
lab=VDD}
N 1160 -440 1160 -390 {
lab=VDD}
N 1140 -390 1160 -390 {
lab=VDD}
N 960 -440 960 -420 {
lab=VDD}
N 960 -390 980 -390 {
lab=VDD}
N 980 -440 980 -390 {
lab=VDD}
N 780 -440 780 -420 {
lab=VDD}
N 760 -390 780 -390 {
lab=VDD}
N 760 -440 760 -390 {
lab=VDD}
N 580 -390 600 -390 {
lab=VDD}
N 580 -440 580 -390 {
lab=VDD}
N 580 -440 600 -440 {
lab=VDD}
N 540 -440 580 -440 {
lab=VDD}
N 780 -360 780 -320 {
lab=Vo1}
N 960 -360 960 -320 {
lab=Vo2}
N 980 -390 980 -290 {
lab=VDD}
N 960 -290 980 -290 {
lab=VDD}
N 760 -290 780 -290 {
lab=VDD}
N 760 -390 760 -290 {
lab=VDD}
N 820 -390 920 -390 {
lab=Vtop}
N 1080 -390 1100 -390 {
lab=Vtop}
N 640 -390 660 -390 {
lab=Vtop}
N 820 -290 920 -290 {
lab=Vbias2}
N 840 -390 840 -240 {
lab=Vtop}
N 780 -240 840 -240 {
lab=Vtop}
N 780 -260 780 -240 {
lab=Vtop}
N 380 -340 380 -330 {
lab=Vo1}
N 600 -360 600 -340 {
lab=Vo1}
N 380 -340 600 -340 {
lab=Vo1}
N 380 -330 380 -300 {
lab=Vo1}
N 380 -240 380 -200 {
lab=#net1}
N 580 -240 580 -200 {
lab=#net1}
N 380 -140 380 -120 {
lab=#net2}
N 580 -140 580 -120 {
lab=#net3}
N 380 -270 580 -270 {
lab=VSS}
N 380 -220 580 -220 {
lab=#net1}
N 420 -170 540 -170 {
lab=Vbias3}
N 420 -90 540 -90 {
lab=Vbias4}
N 380 -60 380 -40 {
lab=VSS}
N 380 -40 580 -40 {
lab=VSS}
N 580 -60 580 -40 {
lab=VSS}
N 360 -40 380 -40 {
lab=VSS}
N 580 -170 610 -170 {
lab=VSS}
N 610 -170 610 -40 {
lab=VSS}
N 580 -40 610 -40 {
lab=VSS}
N 580 -90 610 -90 {
lab=VSS}
N 360 -170 380 -170 {
lab=VSS}
N 360 -170 360 -40 {
lab=VSS}
N 360 -90 380 -90 {
lab=VSS}
N 340 -40 360 -40 {
lab=VSS}
N 610 -40 980 -40 {
lab=VSS}
N 780 -60 780 -40 {
lab=VSS}
N 760 -90 780 -90 {
lab=VSS}
N 760 -90 760 -40 {
lab=VSS}
N 760 -170 760 -90 {
lab=VSS}
N 760 -170 780 -170 {
lab=VSS}
N 780 -140 780 -120 {
lab=#net4}
N 780 -240 780 -200 {
lab=Vtop}
N 960 -260 960 -200 {
lab=Vout}
N 960 -140 960 -120 {
lab=#net5}
N 960 -60 960 -40 {
lab=VSS}
N 960 -170 980 -170 {
lab=VSS}
N 980 -170 980 -40 {
lab=VSS}
N 960 -90 980 -90 {
lab=VSS}
N 820 -170 920 -170 {
lab=Vbias3}
N 820 -90 920 -90 {
lab=Vbias4}
N 960 -340 1140 -340 {
lab=Vo2}
N 1140 -360 1140 -340 {
lab=Vo2}
N 580 -320 580 -300 {
lab=Vo2}
N 580 -320 600 -320 {
lab=Vo2}
N 960 -230 1030 -230 {
lab=Vout}
N 620 -270 640 -270 {
lab=Vm}
N 320 -270 340 -270 {
lab=Vp}
N 80 -320 80 -300 {
lab=VDD}
N 80 -61.25 80 -51.25 {
lab=VSS}
N 140 -211.25 160 -211.25 {
lab=Vbias2}
N 140 -191.25 160 -191.25 {
lab=Vbias3}
N 140 -171.25 160 -171.25 {
lab=Vbias4}
N 140 -271.25 160 -271.25 {
lab=Vbiasp}
N 140 -251.25 160 -251.25 {
lab=Vbiasn}
N 140 -231.25 160 -231.25 {
lab=Vbias1}
N 140 -91.25 160 -91.25 {
lab=Vpcas}
N 140 -151.25 160 -151.25 {
lab=Vlow}
N 140 -131.25 160 -131.25 {
lab=Vhigh}
N 140 -111.25 160 -111.25 {
lab=Vncas}
N 600 -340 780 -340 {
lab=Vo1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 620 -390 0 1 {name=M1
L=1
W=5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 360 -270 0 0 {name=M7
L=1
W=5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 800 -390 0 1 {name=M2
L=1
W=5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 940 -390 0 0 {name=M3
L=1
W=5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1120 -390 0 0 {name=M4
L=1
W=5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 800 -290 0 1 {name=M5
L=1
W=5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 940 -290 0 0 {name=M6
L=1
W=5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 880 -290 0 0 {name=l1 sig_type=std_logic lab=Vbias2}
C {devices/lab_wire.sym} 890 -390 0 0 {name=l2 sig_type=std_logic lab=Vtop}
C {devices/lab_wire.sym} 660 -390 2 0 {name=l3 sig_type=std_logic lab=Vtop}
C {devices/lab_wire.sym} 1080 -390 2 1 {name=l4 sig_type=std_logic lab=Vtop}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 600 -270 0 1 {name=M8
L=1
W=5
nf=1
mult=5
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 400 -170 0 1 {name=M9
L=1
W=5
nf=1
mult=1.05
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 560 -170 0 0 {name=M10
L=1
W=5
nf=1
mult=1.05
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 400 -90 0 1 {name=M11
L=1
W=5
nf=1
mult=1.05
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 560 -90 0 0 {name=M12
L=1
W=5
nf=1
mult=1.05
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 470 -270 2 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -170 0 0 {name=l6 sig_type=std_logic lab=Vbias3}
C {devices/lab_wire.sym} 480 -90 0 0 {name=l8 sig_type=std_logic lab=Vbias4}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 800 -170 0 1 {name=M13
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 940 -170 0 0 {name=M14
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 800 -90 0 1 {name=M15
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 940 -90 0 0 {name=M16
L=1
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_wire.sym} 880 -170 0 0 {name=l10 sig_type=std_logic lab=Vbias3}
C {devices/lab_wire.sym} 880 -90 0 0 {name=l11 sig_type=std_logic lab=Vbias4}
C {devices/lab_wire.sym} 600 -340 0 1 {name=l12 sig_type=std_logic lab=Vo1}
C {devices/lab_wire.sym} 600 -320 2 0 {name=l13 sig_type=std_logic lab=Vo2}
C {devices/lab_wire.sym} 1140 -340 2 0 {name=l14 sig_type=std_logic lab=Vo2}
C {devices/lab_wire.sym} 1030 -230 0 1 {name=l15 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 320 -270 0 0 {name=p1 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 640 -270 0 1 {name=p2 sig_type=std_logic lab=Vm}
C {devices/lab_pin.sym} 540 -440 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 -40 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {bias_circuit.sym} -360 -11.25 0 0 {name=x1}
C {devices/lab_pin.sym} 80 -320 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 80 -51.25 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 160 -211.25 0 1 {name=p10 sig_type=std_logic lab=Vbias2}
C {devices/lab_pin.sym} 160 -191.25 0 1 {name=p11 sig_type=std_logic lab=Vbias3}
C {devices/lab_pin.sym} 160 -171.25 0 1 {name=p12 sig_type=std_logic lab=Vbias4}
C {devices/lab_pin.sym} 160 -271.25 0 1 {name=p13 sig_type=std_logic lab=Vbiasp}
C {devices/lab_pin.sym} 160 -251.25 0 1 {name=p14 sig_type=std_logic lab=Vbiasn}
C {devices/lab_pin.sym} 160 -231.25 0 1 {name=p15 sig_type=std_logic lab=Vbias1}
C {devices/lab_pin.sym} 160 -131.25 0 1 {name=p16 sig_type=std_logic lab=Vhigh}
C {devices/lab_pin.sym} 160 -111.25 0 1 {name=p17 sig_type=std_logic lab=Vncas}
C {devices/lab_pin.sym} 160 -91.25 0 1 {name=p18 sig_type=std_logic lab=Vpcas}
C {devices/lab_pin.sym} 160 -151.25 0 1 {name=p19 sig_type=std_logic lab=Vlow}
C {devices/iopin.sym} 175 -475 0 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 175 -445 0 0 {name=p8 lab=VSS}
C {devices/ipin.sym} 100 -470 0 0 {name=p9 lab=Vp}
C {devices/ipin.sym} 105 -440 0 0 {name=p20 lab=Vm}
C {devices/opin.sym} 60 -400 0 0 {name=p21 lab=Vout}
