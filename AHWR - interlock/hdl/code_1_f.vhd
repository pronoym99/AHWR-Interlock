--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_1_f.vhd
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity code_1_f is
    Port ( AO8 : in  STD_LOGIC;
           AO2 : in  STD_LOGIC;
           AI16 : in  STD_LOGIC;
           AI17 : in  STD_LOGIC;
           YC_6 : out  STD_LOGIC);
end code_1_f;

architecture Behavioral of code_1_f is
SIGNAL INTERMED1 :STD_LOGIC;
SIGNAL INTERMED2 :STD_LOGIC;
SIGNAL INTERMED3 :STD_LOGIC;
SIGNAL INTERMED4 :STD_LOGIC;
SIGNAL INTERMED5 :STD_LOGIC;
CONSTANT PVNULL : STD_LOGIC :='1';
CONSTANT MGZSTN : STD_LOGIC :='1';
CONSTANT RBCPX3 : STD_LOGIC :='1';
CONSTANT RBFPX3 : STD_LOGIC :='1';
begin
INTERMED1 <= AO8 XNOR PVNULL ;
INTERMED2 <= AO2 XNOR PVNULL ;
INTERMED3 <= AI16 XNOR RBCPX3 ;
INTERMED4 <= AI17 XNOR RBFPX3 ;
INTERMED5 <= (INTERMED1 AND MGZSTN) AND (INTERMED2 AND INTERMED3 AND INTERMED4) ;
YC_6 <= NOT INTERMED5 AND PVNULL ; 

end Behavioral;
