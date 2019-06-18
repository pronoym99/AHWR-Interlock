----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Mon Jun 17 12:09:30 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_5_a_test.vhd
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

entity code_5_a_test is
end code_5_a_test;

architecture behavioral of code_5_a_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_5_a
        -- ports
        port( 
            -- Inputs
            DI13 : in std_logic;
            DI14 : in std_logic;
            DI15 : in std_logic;
            DI16 : in std_logic;
            DI1 : in std_logic;
            DI19 : in std_logic;
            DI86 : in std_logic;
            DI87 : in std_logic;
            DI88 : in std_logic;
            DI89 : in std_logic;
            DI90 : in std_logic;
            DI91 : in std_logic;
            DI92 : in std_logic;
            DI93 : in std_logic;
            DI94 : in std_logic;
            DI98 : in std_logic;
            DI95 : in std_logic;
            DI99 : in std_logic;
            AI57 : in std_logic;
            sense_finger_error : in std_logic;

            -- Outputs
            Y5_a : out std_logic

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

    -- Instantiate Unit Under Test:  code_5_a
    code_5_a_0 : code_5_a
        -- port map
        port map( 
            -- Inputs
            DI13 => '0',
            DI14 => '0',
            DI15 => '0',
            DI16 => '0',
            DI1 => '0',
            DI19 => '0',
            DI86 => '0',
            DI87 => '0',
            DI88 => '0',
            DI89 => '0',
            DI90 => '0',
            DI91 => '0',
            DI92 => '0',
            DI93 => '0',
            DI94 => '0',
            DI98 => '0',
            DI95 => '0',
            DI99 => '0',
            AI57 => '0',
            sense_finger_error => '0',

            -- Outputs
            Y5_a =>  open

            -- Inouts

        );

end behavioral;

