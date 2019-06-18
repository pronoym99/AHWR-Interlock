--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_3_b.vhd
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
-- Author: KETAN
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_3_b is
port (
    --<port_name> : <direction> <type>;
	DI34,DI35,DI36,AO2,AO3,AO4,DI17,DI21,AI17 : IN  std_logic; -- example
    Y3_B : OUT std_logiC  -- example
    --<other_ports>;
);
end code_3_b;
architecture architecture_code_3_b of code_3_b is
   -- signal, component etc. declarations
	signal INTERMED1,INTERMED2,INTERMED3,INTERMED4,INTERMED5,INTERMED6,INTERMED7 : std_logic; -- example
	CONSTANT RBCPSAA,RBCPSBA,RBCPYBA : std_logic := '1' ; -- example

begin
INTERMED1 <= DI34 OR DI35 OR DI36 ;
INTERMED2 <= NOT(AO2 AND AO3 AND AO4) ;
INTERMED3 <= DI17 AND DI21 ;
INTERMED4 <= DI35 AND (AI17 XNOR RBCPSAA);
INTERMED5 <= DI34 AND (AI17 XNOR ( RBCPYBA OR RBCPSBA));
INTERMED6 <= DI36 AND (AI17 XNOR RBCPSAA);
INTERMED7 <= INTERMED4 OR INTERMED5 OR INTERMED6;
Y3_B <= INTERMED1 AND INTERMED2 AND INTERMED3 AND INTERMED7 ; 
   -- architecture body
end architecture_code_3_b;
