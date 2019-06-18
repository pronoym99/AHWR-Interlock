--------------------------------------------------------------------------------
-- Organisation: BARC
--
-- File: code_1_g.vhd
-- File history:
--      1: 13/06/2019: first draft
--       
--
-- Description: 
--
-- AHWR interlock module 1(g)
--
-- Targeted device: Family::ProASIC3L Die::A3P600L Package::484 FBGA
-- Author: Pronoy Mandal
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_1_g is
port (
    --<port_name> : <direction> <type>;

    --inputs bifurcated by conditions

    --sub condition 1
	 AO8: IN  std_logic; 
    --sub condition 2
	AI16,AI17 : IN  std_logic;
       
    --digital output
    Y1_g : OUT std_logic);
end code_1_g;

architecture architecture_code_1_g of code_1_g is

-- signal, component etc. declarations

-- all intermediate outputs
signal intermed1,intermed2,AO4 : std_logic;

--fixed constants to be stored in non volatile memory
constant PVNULL : std_logic:='0';
constant RBCPX4 : std_logic:='0';
constant RBFPX4 : std_logic:='0';

--magazine station status
constant MGZSTN : std_logic:='1';

begin

   --internal logic circuitry
   intermed1 <= (AO8 xnor PVNULL) and MGZSTN;
   intermed2 <= (AI16 xnor RBCPX4) and (AI17 xnor RBFPX4);
         AO4 <= intermed1 and intermed2;
   
   --assign final output
   Y1_g <= AO4 and not PVNULL;

end architecture_code_1_g;
