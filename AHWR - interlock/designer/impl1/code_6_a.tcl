# Created by Microsemi Libero Software 11.9.0.4
# Tue Jun 18 10:52:59 2019

# (OPEN DESIGN)

open_design "code_6_a.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "code_6_a_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\Trainee\APK\AHWR interlock\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


layout -timing_driven
report -type "status" {code_6_a_place_and_route_report.txt}
report -type "globalnet" {code_6_a_globalnet_report.txt}
report -type "globalusage" {code_6_a_globalusage_report.txt}
report -type "iobank" {code_6_a_iobank_report.txt}
report -type "pin" -listby "name" {code_6_a_report_pin_byname.txt}
report -type "pin" -listby "number" {code_6_a_report_pin_bynumber.txt}

save_design
