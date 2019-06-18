--------------------------------------------------------------------------------
-- Organisation: BARC
--
-- File: code_1_a.vhd
-- File history:
--      1: 12/06/2019: first draft
--      2. 13/06/2019: correction of greater than condition
--       
--
-- Description: 
--
-- AHWR interlock module 1(d)
--
-- Targeted device: Family::ProASIC3L Die::A3P600L Package::484 FBGA
-- Author: Pronoy Mandal
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_1_d is
port (
    --<port_name> : <direction> <type>;

    --inputs bifurcated by conditions

    --sub condition 1
	 AO8: IN  std_logic; 
    --sub condition 2
	 AO2,AI16,AI17 : IN  std_logic;
        
    --digital output
    Y1_d : OUT std_logic);
end code_1_d;

architecture architecture_code_1_d of code_1_d is

-- signal, component etc. declarations

-- all intermediate outputs
signal intermed1,intermed2,AO3 : std_logic;

--fixed constants to be stored in non volatile memory
constant PVNULL : std_logic:='0';
constant RBCPX1 : std_logic:='0';
constant RBFPX1 : std_logic:='0';

--magazine station status
constant MGZSTN : std_logic:='1';

begin

   --internal logic circuitry
   intermed1 <= (AO8 xnor PVNULL) and MGZSTN;
   intermed2 <= (AO8 xnor PVNULL) and (AI16 xnor RBCPX1) and (AI17 xnor RBFPX1);
   AO3 <= (intermed1 and intermed2);
   
   --assign final output
   Y1_d <= PVNULL and not AO3;

end architecture_code_1_d;

