--------------------------------------------------------------------------------
-- Company: BARC
--
-- File: code_2_b.vhd
-- File history:
--       13/6/19: FIRST DRAFT
--      
--
-- 
--
-- Targeted device: <Family::ProASIC3L> <Die::A3P600L> <Package::484 FBGA>
-- Author: Aanish Jha
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_2_b is
port (
    --<port_name> : <direction> <type>;
	DI_1,DI_2,DI_3,DI_4,DO_14,DO_15,AO_21,AO_22 : IN  std_logic; -- example
    Y2_b : OUT std_LOGIC
    --<other_ports>;
);
end code_2_b;
architecture architecture_code_2_b of code_2_b is
   -- signal, component etc. declarations
	signal intermed1 : std_logic; 
	signal intermed2 : std_logic;
    signal intermed3 : std_logic;
    signal intermed4 : std_logic;
    signal intermed5 : std_logic;
    constant MUPH : STD_LOGIC:='0';

begin
    intermed1<= DI_1 AND DI_2 AND DI_3 AND DI_4;
    INTERMED2<= DO_14 AND DO_15;
    intermed3<= intermed1 and intermed2;
    intermed4<= intermed3 AND NOT(MUPH);
    intermed5<= intermed3 AND NOT(MUPH);
    Y2_B     <= intermed4 or intermed5;

   -- architecture body
end architecture_code_2_b;
