quietly set ACTELLIBNAME ProASIC3L
quietly set PROJECT_DIR "D:/Trainee/APK/AHWR interlock"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3l "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vhdl/proasic3l"

vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/hdl/code_3_c.vhd"
vcom -2008 -explicit  -work presynth "${PROJECT_DIR}/stimulus/code_3_c_test.vhd"

vsim -L proasic3l -L presynth  -t 1ps presynth.code_3_c_test
do "wave.do"
add log -r /*
run 200ms
