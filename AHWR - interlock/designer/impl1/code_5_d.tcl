# Created by Microsemi Libero Software 11.9.0.4
# Mon Jun 17 14:58:33 2019

# (OPEN DESIGN)

open_design "code_5_d.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "code_5_d_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\Trainee\APK\AHWR interlock\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VHDL93" -netlist

save_design
