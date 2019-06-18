----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Wed Jun 12 12:36:26 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_1_a_test.vhd
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


library ieee;
use ieee.std_logic_1164.all;

entity code_1_a_test is
end code_1_a_test;

architecture behavioral of code_1_a_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_1_a
        -- ports
        port( 
            -- Inputs
            AO8 : in std_logic;
            DI17 : in std_logic;
            DI19 : in std_logic;
            DI21 : in std_logic;
            DI23 : in std_logic;
            DI30 : in std_logic;
            DI31 : in std_logic;
            DI32 : in std_logic;
            DI33 : in std_logic;
            DI34 : in std_logic;
            DI35 : in std_logic;
            DI36 : in std_logic;
            DI70 : in std_logic;
            DI49 : in std_logic;
            DI50 : in std_logic;
            AI30 : in std_logic;

            -- Outputs
            Y1_a : out std_logic

            -- Inouts

        );
    end component;

begin

    process
        variable vhdl_initial : BOOLEAN := TRUE;

    begin
        if ( vhdl_initial ) then
            -- Assert Reset
            NSYSRESET <= '0';
            wait for ( SYSCLK_PERIOD * 10 );
            
            NSYSRESET <= '1';
            wait;
        end if;
    end process;

    -- Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  code_1_a
    code_1_a_0 : code_1_a
        -- port map
        port map( 
            -- Inputs
            AO8 => '0',
            DI17 => '0',
            DI19 => '0',
            DI21 => '0',
            DI23 => '0',
            DI30 => '0',
            DI31 => '0',
            DI32 => '0',
            DI33 => '0',
            DI34 => '0',
            DI35 => '0',
            DI36 => '0',
            DI70 => '0',
            DI49 => '0',
            DI50 => '0',
            AI30 => '0',

            -- Outputs
            Y1_a =>  open

            -- Inouts

        );

end behavioral;

