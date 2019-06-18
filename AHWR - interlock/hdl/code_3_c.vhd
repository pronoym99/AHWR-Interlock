--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_3_c.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::ProASIC3L> <Die::A3P600L> <Package::484 FBGA>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_3_c is
port (
    --<port_name> : <direction> <type>;
	DI34,DI35,DI36,AO2,AO3,AO4 : IN  std_logic; -- example
    Y3_C : OUT std_logic  -- example
    --<other_ports>;
);
end code_3_c;
architecture architecture_code_3_c of code_3_c is
   -- signal, component etc. declarations
	signal INTERMED1,INTERMED2 : std_logic; -- example

begin

   -- architecture body
INTERMED1 <= DI34 OR DI35 OR DI36 ;
INTERMED2 <= NOT (AO2 AND AO3 AND AO4) ;
Y3_C <= INTERMED1 AND INTERMED2 ;
end architecture_code_3_c;
