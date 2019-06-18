--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_1_b.vhd
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

entity code_1_b is
port (
    --<port_name> : <direction> <type>;
	DI_29,DI_30 : IN  std_logic; 
    Y1_B : OUT std_logic  
    --<other_ports>;
);
end code_1_b;
architecture architecture_code_1_b of code_1_b is
   -- signal, component etc. declarations
	signal intermed1 : std_logic;
	constant PVHSPD: std_logic:='1';


begin
    intermed1 <= DI_29 or DI_30;
    Y1_B <= (intermed1 xor PVHSPD); 
   -- architecture body
end architecture_code_1_b;
