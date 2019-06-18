--------------------------------------------------------------------------------
-- Organisation: BARC
--
-- File: code_5_b.vhd
-- File history:
--      1: 17/06/2019: first draft
--       
--
-- Description: 
--
-- AHWR interlock module 5(b)
--
-- Targeted device: Family::ProASIC3L Die::A3P600L Package::484 FBGA
-- Author: Pronoy Mandal
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_5_b is
port (
    --<port_name> : <direction> <type>;

    --inputs bifurcated by conditions

    --sub condition 1
	DI1,DI5,DI9: IN  std_logic; 
    --sub condition 2
	DI98,DI99 : IN  std_logic;
 
    --digital output
    Y5_b : OUT std_logic);
end code_5_b;

architecture architecture_code_5_b of code_5_b is

-- signal, component etc. declarations

-- all intermediate outputs
signal intermed1,intermed2,AO5,AO6 : std_logic;

--fixed constants to be stored in non volatile memory
constant PVNULL : std_logic:='1';

begin

   --internal logic circuitry
   intermed1 <= DI1 or DI5 or DI9;
   intermed2 <= DI98 and DI99;
   AO5 <= intermed1 and intermed2;
   AO6 <= AO5;
   
   --assign final output
   Y5_b <= (PVNULL and not AO5) and (PVNULL and not AO6);

end architecture_code_5_b;