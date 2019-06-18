----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Mon Jun 17 14:21:37 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_5_c_test.vhd
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

entity code_5_c_test is
end code_5_c_test;

architecture behavioral of code_5_c_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_5_c
        -- ports
        port( 
            -- Inputs
            AI26 : in std_logic;
            AI27 : in std_logic;
            AI29 : in std_logic;
            AO7 : in std_logic;
            DI13 : in std_logic;
            DI14 : in std_logic;
            DI15 : in std_logic;
            DI16 : in std_logic;
            DI94 : in std_logic;
            DI98 : in std_logic;
            DI90 : in std_logic;
            DI91 : in std_logic;
            DI92 : in std_logic;
            DI93 : in std_logic;
            DI1 : in std_logic;
            DI2 : in std_logic;
            DI3 : in std_logic;
            DI4 : in std_logic;

            -- Outputs
            Y5_c : out std_logic

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

    -- Instantiate Unit Under Test:  code_5_c
    code_5_c_0 : code_5_c
        -- port map
        port map( 
            -- Inputs
            AI26 => '0',
            AI27 => '0',
            AI29 => '0',
            AO7 => '0',
            DI13 => '0',
            DI14 => '0',
            DI15 => '0',
            DI16 => '0',
            DI94 => '0',
            DI98 => '0',
            DI90 => '0',
            DI91 => '0',
            DI92 => '0',
            DI93 => '0',
            DI1 => '0',
            DI2 => '0',
            DI3 => '0',
            DI4 => '0',

            -- Outputs
            Y5_c =>  open

            -- Inouts

        );

end behavioral;

