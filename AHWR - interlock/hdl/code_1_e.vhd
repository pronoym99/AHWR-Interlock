--------------------------------------------------------------------------------
-- Company: <BARC>
--
-- File: code_1_e.vhd
-- File history:
--      first draft <13/6/19>: 
--    
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::ProASIC3L> <Die::A3P600L> <Package::484 FBGA>
-- Author: <Anish Jha>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_1_e is
port (
    --<port_name> : <direction> <type>;
	AI_16,AI_17,AO_8 : IN  std_logic; -- example
    Y1_e : OUT std_logic
    --<other_ports>;
);
end code_1_e;
architecture architecture_code_1_e of code_1_e is
   -- signal, component etc. declarations
	signal intermed1 : std_logic; 
	signal intermed2 : std_logic;
    signal intermed3 : std_logic;
    signal intermed4 : std_logic;
    signal intermed5 : std_logic;
    constant MGZSTN : std_logic:='1';
    constant RBCPX2 : std_logic:='1';
    constant RBFPX2 : std_logic:='1';
    constant PVNULL : std_logic:='0';
begin
    intermed1 <=AI_17 XNOR RBFPX2; 
    intermed2 <=AI_16 XNOR RBCPX2;
    intermed3 <= intermed1 and intermed2;
    intermed4 <= (AO_8 xnor PVNULL) AND MGZSTN;
    intermed5 <=  intermed3 and intermed4;
    Y1_e <=(intermed5) and not(PVNULL);
    
    

   -- architecture body
end architecture_code_1_e;
