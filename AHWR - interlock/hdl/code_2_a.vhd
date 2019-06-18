--------------------------------------------------------------------------------
-- Company: BARC
--
-- File: code_2_a.vhd
-- File history:
--       13/6/19: FIRST DRAFT 
--      
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::ProASIC3L> <Die::A3P600L> <Package::484 FBGA>
-- Author: Anish Jha
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity code_2_a is
port (
    --<port_name> : <direction> <type>;
	AI_16,AI_17,AI_22,AI_20,DI_17,DI_19,DI_21,DI_23 : IN  std_logic;
    Y2_a : OUT std_logic
    --<other_ports>;
);
end code_2_a;
architecture architecture_code_2_a of code_2_a is
   
	signal intermed1 : std_logic; -- example
	signal intermed2: std_logic;
    signal intermed3: std_logic;
    signal intermed4: std_logic;
    signal intermed5: std_logic;
    signal intermed6: std_logic;
    signal intermed7: std_logic;
    constant RBCPX0 : std_logic:='1';
    constant RLPX0  : STD_LOGIC:='1';
    constant PVNULL : STD_LOGIC:='1';
    constant RBFPX0 : STD_LOGIC:='1';
    constant RCFPX0 : STD_LOGIC:='1';
    constant RCPX0 : STD_LOGIC:='1';    
begin
    intermed1<= AI_16 XNOR RBCPX0;
    intermed2<= AI_17 XNOR RBFPX0;
    intermed3<= AI_22 XNOR RLPX0;
    intermed4<= AI_20 XNOR RCPX0;
    intermed5<= DI_17 OR DI_19;
    intermed6<= DI_21 OR DI_23;
    intermed7<= intermed1 and intermed2 and intermed3 and intermed4 and intermed5 and intermed6;
    Y2_a     <= intermed7 xor PVNULL; 

   -- architecture body
end architecture_code_2_a;
