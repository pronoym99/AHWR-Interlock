----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Thu Jun 13 12:48:47 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_2_a_test.vhd
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

entity code_2_a_test is
end code_2_a_test;

architecture behavioral of code_2_a_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_2_a
        -- ports
        port( 
            -- Inputs
            AI_16 : in std_logic;
            AI_17 : in std_logic;
            AI_22 : in std_logic;
            AI_20 : in std_logic;
            DI_17 : in std_logic;
            DI_19 : in std_logic;
            DI_21 : in std_logic;
            DI_23 : in std_logic;

            -- Outputs
            Y2_a : out std_logic

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

    -- Instantiate Unit Under Test:  code_2_a
    code_2_a_0 : code_2_a
        -- port map
        port map( 
            -- Inputs
            AI_16 => '0',
            AI_17 => '0',
            AI_22 => '0',
            AI_20 => '0',
            DI_17 => '0',
            DI_19 => '0',
            DI_21 => '0',
            DI_23 => '0',

            -- Outputs
            Y2_a =>  open

            -- Inouts

        );

end behavioral;

