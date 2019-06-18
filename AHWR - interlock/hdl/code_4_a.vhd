--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_4_a.vhd
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

entity code_4_a is

port (
    --<port_name> : <direction> <type>;
	AI33,AI32,DI94,DI98,DI96,DI100,DO15,DO14: IN  std_logic; -- example
    DO9 : OUT std_logic);
end code_4_a;
architecture architecture_code_4_a of code_4_a is
   -- signal, component etc. declarations
	signal INTERMED1,INTERMED2,INTERMED4,INTERMED3,INTERMED5 : std_logic;
constant SNCVLP : STD_LOGIC := '1' ;
CONSTANT MZLP : STD_LOGIC := '1' ;
CONSTANT EN_C : STD_LOGIC := '1' ;
CONSTANT SNOUT_PLUG: STD_LOGIC := '1' ;
CONSTANT SEAL_PLUG: STD_LOGIC := '1' ; 
begin
INTERMED1 <= NOT AI33 AND SNCVLP ;
INTERMED2 <= NOT AI32 AND MZLP ;
INTERMED3 <= (DI94 AND DI98) AND (DI96 NAND DI100);
INTERMED4 <= (DO15 NAND DO14);
INTERMED5 <= INTERMED1 AND INTERMED2 AND INTERMED3 AND INTERMED4 AND SNOUT_PLUG AND SEAL_PLUG;
DO9 <= INTERMED5 AND EN_C;



   -- architecture body
end architecture_code_4_a;
