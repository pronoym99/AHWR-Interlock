--------------------------------------------------------------------------------
-- Organisation: BARC
--
-- File: code_1_a.vhd
-- File history:
--      1: 12/06/2019: first draft
--      2: 13/06/2019: correction of greater than condition
--      3: 17/06/2019: correction of condition 2 and addition of counterbalance valve variable 
--       
--
-- Description: 
--
-- AHWR interlock module 1(a)
--
-- Targeted device: Family::ProASIC3L Die::A3P600L Package::484 FBGA
-- Author: Pronoy Mandal
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_1_a is
port (
    --<port_name> : <direction> <type>;

    --inputs bifurcated by conditions

    --sub condition 1
	 AO8: IN  std_logic; 
    --sub condition 2
	DI45,DI46,DI47,DI48,DI19,DI23 : IN  std_logic;
    --sub condition 3
	DI30,DI31,DI32,DI33,DI34,DI35,DI36 : IN  std_logic;
    --sub condition 4
	DI70 : IN  std_logic;
    --sub condition 5
	--DI35 already defined
    DI21 : IN  std_logic;
    --sub condition 6
    --DI19 already declared
	DI17 : IN  std_logic;
    --sub condition 7
    DI49,DI50,AI30 : IN  std_logic;
    --sub condition 8
    AI57 : IN  std_logic;
    
    --digital output
    Y1_a : OUT std_logic);
end code_1_a;

architecture architecture_code_1_a of code_1_a is

-- signal, component etc. declarations

-- all intermediate outputs
signal intermed1,intermed2,intermed3,intermed4,intermed5,intermed6,intermed56,intermed7,intermed8,AO2 : std_logic;

--fixed constants to be stored in non volatile memory
constant PVNULL : std_logic:='0';
constant WPR_min : std_logic:='0';

--all relevant components in their respective channel stations
-- 1 - inside magazine 0 - not in magazine
constant snout_plug_inout : std_logic:='1'; 
constant seal_plug_inout  : std_logic:='1';
constant shield_A_inout   : std_logic:='1';

--magazine station status
constant MGZSTN : std_logic:='1';

begin

   --internal logic circuitry
   intermed1 <= (AO8 xnor PVNULL) and MGZSTN;
   intermed2 <= ((DI45 and DI47) or (DI46 and DI48)) and DI19 and DI23;
   intermed3 <= (DI30 or DI31 or DI32 or DI33 or DI34 or DI35 or DI36) and snout_plug_inout and seal_plug_inout;
   intermed4 <=  DI70;
   intermed5 <= (DI21 or DI23) and DI35 and shield_A_inout;
   intermed6 <= (DI17 or DI19) and DI35 and not(shield_A_inout);
   intermed7 <= (DI49 and DI50) and (AI30 and not WPR_min);
   intermed8 <=  AI57;
   intermed56 <= intermed5 or intermed6;
   AO2 <= intermed1 and intermed2 and intermed3 and intermed4 and intermed56 and intermed7 and intermed8;
   
   --assign final output
   Y1_a <= AO2 and not PVNULL;

end architecture_code_1_a;
