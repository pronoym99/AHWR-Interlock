--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_1_c.vhd
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
-- Author: KETAN DESHMUKH
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_1_c is
port (
DI19,DI23,DI45,DI47,DI17,DI18,DI46,DI48,DI32,DI34,DI35,DI36,RAM_B_SPEED_SEL,AI22: IN  STD_LOGIC ;
Y1_C : OUT STD_LOGIC );
end code_1_c;
architecture architecture_code_1_c of code_1_c is
   -- signal, component etc. declarations
	signal INTERMED1,INTERMED2,INTERMED3,INTERMED4,INTERMED5 : std_logic;
	constant RB1UF : STD_LOGIC :='1';
    constant RB1DF : STD_LOGIC :='1';
    CONSTANT RLPX  : STD_LOGIC :='1';
begin
INTERMED1<=((DI19 AND DI23 AND DI45 AND DI47) OR NOT ((DI17 AND DI18 AND DI46 AND DI48)));
INTERMED2<=(DI32 OR DI34 OR DI35 OR DI36);
INTERMED3<= NOT RAM_B_SPEED_SEL ;
INTERMED4<= AI22 XNOR RLPX;
INTERMED5<=INTERMED1 AND INTERMED2 AND INTERMED3 AND INTERMED4 ;
Y1_C <= (INTERMED5 XNOR RB1UF) OR ( INTERMED5 XNOR RB1DF) ; 
end architecture_code_1_c;
