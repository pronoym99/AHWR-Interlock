# Created by Microsemi Libero Software 11.9.0.4
# Thu Jun 13 12:16:20 2019

# (OPEN DESIGN)

open_design "code_1_a.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "code_1_a_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\Trainee\APK\AHWR interlock\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VHDL93" -netlist

save_design
