---------------------------------------------------------------------------------
-- Organisation: BARC
--
-- File: code_5_d.vhd
-- File history:
--      1: 17/06/2019: first draft
--       
--
-- Description: 
--
-- AHWR interlock module 5(d)
--
-- Targeted device: Family::ProASIC3L Die::A3P600L Package::484 FBGA
-- Author: Pronoy Mandal
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_5_d is
port (
    --<port_name> : <direction> <type>;

    --inputs bifurcated by conditions

     --sub condition 1
	AI26,AI27,AI29: IN  std_logic; 
    --sub condition 2
	AO9 : IN  std_logic;
    --sub condition 3
	DI13,DI14,DI15,DI16 : IN  std_logic;
    --sub condition 4
	DI94,DI98 : IN  std_logic;
    --sub condition 5
	DI86,DI87,DI88,DI89,AI24,AI25 : IN  std_logic;
    --sub condition 6
	DI1,DI2,DI3,DI4 : IN  std_logic;
        
    --digital output
    Y5_d : OUT std_logic);
end code_5_d;

architecture architecture_code_5_d of code_5_d is

-- signal, component etc. declarations

-- all intermediate outputs
signal intermed1,intermed2,intermed3,intermed4,intermed5,intermed6,AO7 : std_logic;

--fixed constants to be stored in non volatile memory
constant PVNULL : std_logic:='0';
constant ZPC0 : std_logic:='1'; 
constant ZPC1 : std_logic:='1';
constant ZPF0 : std_logic:='1';
constant ZPF1 : std_logic:='1';
constant ZSF0 : std_logic:='1';
constant ZSF1 : std_logic:='1';
constant XFPOT_max : std_logic:='0';
constant YFPOT_max : std_logic:='0';


begin

   --internal logic circuitry
   intermed1 <= (AI26 xnor ZPC0) or (AI27 xnor ZPF0) or (AI29 xnor ZSF0) or (AI26 xnor ZPC1) or (AI27 xnor ZPF1) or (AI29 xnor ZSF1);
   intermed2 <= AO9 xnor PVNULL;
   intermed3 <= (DI13 nand DI14) and (DI15 and DI16);
   intermed4 <=  DI94 and DI98;
   intermed5 <= (DI86 and DI87 and DI88 and DI89) and (AI24 and not XFPOT_max) and (AI25 and not YFPOT_max) ;
   intermed6 <= not (DI1 and DI2 and DI3 and DI4);
         AO7 <= intermed1 and intermed2 and intermed3 and intermed4 and intermed5 and intermed6;
   
   --assign final output
   Y5_d <= AO7 xor PVNULL;

end architecture_code_5_d;