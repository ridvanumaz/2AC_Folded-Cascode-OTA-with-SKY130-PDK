# A Folded-Cascode OTA with SKY130 PDK

A folded-cascode OTA designed with Google-skywater 130nm pdk that is supplied with 3.3V is presented in this repo.

### EDA tools, PDK and requirements
For tools, PDK and bias circuit that are used in this repo, check [my previous repo](https://github.com/ridvanumaz/1AC_Beta-multiplier-and-bias-circuit-with-SKY130-PDK) 

### Schematic
<p align="center">
  <img src="/Results_schematics/cascode_schematic.png">
</p>

### Results

#### 1) Operating point analysis (op)
<p align="center">
  <img src="/Results_schematics/cascode_op.png">
</p>

#### 2) Open-loop response 
##### Testbench
<p align="center">
  <img src="/Results_schematics/openloop_schematic.png">
</p>

##### Gain and phase 
<p float="left">
  <img src="/Results_schematics/openloop_gain.png" width="45%" />
  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;
  <img src="/Results_schematics/openloop_phase.png" width="45%" /> 
</p>

#### 3) Step response 
##### Testbench and plot 
<p float="left">
  <img src="/Results_schematics/step_tb.png"  height="145%" width="45%" />
  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;
  <img src="/Results_schematics/step_result.png" width="45%" /> 
</p>

#### 4) Slew-rate 
##### Testbench and plot 
<p float="left">
  <img src="/Results_schematics/slew_rate_tb.png"  width="45%" />
  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;
  <img src="/Results_schematics/slew_rate.png" width="45%" /> 
</p>
