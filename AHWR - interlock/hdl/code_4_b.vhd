--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_4_b.vhd
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

entity code_4_b is
port (
    --<port_name> : <direction> <type>;
	DI1,DI2,DI3,DI4,DI94,DI98 : IN  std_logic; -- example
    DO8 : OUT std_logic   -- example
    --<other_ports>;
);
end code_4_b;
architecture architecture_code_4_b of code_4_b is
   -- signal, component etc. declarations
	signal INTERMED1,INTERMED2,INTERMED3,INTERMED4,INTERMED5 : std_logic; -- example
	CONSTANT EN_C : STD_LOGIC := '1';

begin
INTERMED1 <= DI1 AND DI2 AND (DI3 OR DI4) ;
INTERMED2 <= (DI1 OR DI2) AND DI3 AND DI4 ;
INTERMED3 <= INTERMED1 OR INTERMED2  ;
INTERMED4 <= DI98 AND DI94 ;
INTERMED5 <= INTERMED3 AND INTERMED4;
DO8 <= INTERMED5 AND EN_C;


   -- architecture body
end architecture_code_4_b;
