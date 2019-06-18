----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Fri Jun 14 11:09:53 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_4_a_test.vhd
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

entity code_4_a_test is
end code_4_a_test;

architecture behavioral of code_4_a_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_4_a
        -- ports
        port( 
            -- Inputs
            AI33 : in std_logic;
            AI32 : in std_logic;
            DI94 : in std_logic;
            DI98 : in std_logic;
            DI96 : in std_logic;
            DI100 : in std_logic;
            DO15 : in std_logic;
            DO14 : in std_logic;

            -- Outputs
            DO9 : out std_logic

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

    -- Instantiate Unit Under Test:  code_4_a
    code_4_a_0 : code_4_a
        -- port map
        port map( 
            -- Inputs
            AI33 => '0',
            AI32 => '0',
            DI94 => '0',
            DI98 => '0',
            DI96 => '0',
            DI100 => '0',
            DO15 => '0',
            DO14 => '0',

            -- Outputs
            DO9 =>  open

            -- Inouts

        );

end behavioral;

