--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_6_a.vhd
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

entity code_6_a is
port (
    --<port_name> : <direction> <type>;
	AI_29,DI_98,DI_100,AI_26,AI_27,AI_21,AI_24,AI_25,DI_1,DI_2,DI_3,DI_4,DI_94,DI_96,DI_86,DI_87,DI_88,DI_89 : IN  std_logic; -- example
    Y6_a : OUT std_logic);
    --<other_ports>;

end code_6_a;
architecture architecture_code_6_a of code_6_a is
   -- signal, component etc. declarations
	signal INTERMED1 : std_logic;
    signal INTERMED2 : std_logic;
	signal INTERMED3 : std_logic;
    signal INTERMED4 : std_logic;
    signal INTERMED5 : std_logic;
    signal INTERMED6 : std_logic;
    signal INTERMED7 : std_logic;
    signal INTERMED8 : std_logic;
    signal INTERMED9 : std_logic;
    signal INTERMED10 : std_logic;
    signal INTERMED11 : std_logic;
    signal INTERMED12 : std_logic;
    signal INTERMED13 : std_logic;
    signal INTERMED14 : std_logic;
    signal INTERMED15 : std_logic;
    signal INTERMED16 : std_logic;
    signal INTERMED17 : std_logic;
    signal INTERMED18 : std_logic;
    signal AO_11 : std_logic;








    CONSTANT vdd:std_logic:='1';
    CONSTANT gnd:std_logic:='0';
    CONSTANT ZPC0:std_logic:='1';
    CONSTANT ZPF0:std_logic:='1';
    CONSTANT ZSF0:std_logic:='1';
    CONSTANT XFPOTMIN:std_logic:='1';
    CONSTANT YFPOTMIN:std_logic:='1';
    CONSTANT XFPOTMAX:std_logic:='1';
    CONSTANT YFPOTMAX:std_logic:='1';
    CONSTANT OICL:std_logic:='1';     -- SITE CLEARANCE VARIABLE FOR TROLLEY AND CARRIAGE ASSEMBLY
    CONSTANT PVNULL:std_logic:='1';
    
begin
    INTERMED1<=DI_98 XNOR vdd;
    INTERMED2<=DI_100 XNOR gnd;
    INTERMED3<=INTERMED1 AND INTERMED2;
    INTERMED4<=AI_26 XNOR ZPC0;
    INTERMED5<=AI_27 XNOR ZPF0;
    INTERMED6<=AI_29 XNOR ZSF0;
    INTERMED7<=INTERMED4 OR INTERMED5 OR INTERMED6;
    INTERMED8<= NOT(AI_24) AND XFPOTMIN;
    INTERMED9<= NOT(AI_25) AND YFPOTMIN;
    INTERMED10<= INTERMED8 AND INTERMED9;
    INTERMED11<=AI_24 AND NOT(XFPOTMAX);
    INTERMED12<=AI_25 AND NOT(YFPOTMAX);
    INTERMED13<=INTERMED11 AND INTERMED12;
    INTERMED14<= DI_1 AND DI_2 AND DI_3 AND DI_4;
    INTERMED15<= DI_94 XNOR gnd ;
    INTERMED16<= DI_96 AND vdd;
    INTERMED17<= DI_86 AND DI_87 AND DI_88 AND DI_89;
    INTERMED18<= INTERMED10 OR INTERMED13;
    AO_11<= INTERMED7 AND INTERMED3 AND OICL AND INTERMED16 AND INTERMED14 AND INTERMED17;
    Y6_a<= AO_11 xor PVNULL;


   -- architecture body
end architecture_code_6_a;
