----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Mon Jun 17 15:54:24 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_6_a_test.vhd
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

entity code_6_a_test is
end code_6_a_test;

architecture behavioral of code_6_a_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_6_a
        -- ports
        port( 
            -- Inputs
            AI_29 : in std_logic;
            DI_98 : in std_logic;
            DI_100 : in std_logic;
            AI_26 : in std_logic;
            AI_27 : in std_logic;
            AI_21 : in std_logic;
            AI_24 : in std_logic;
            AI_25 : in std_logic;
            DI_1 : in std_logic;
            DI_2 : in std_logic;
            DI_3 : in std_logic;
            DI_4 : in std_logic;
            DI_94 : in std_logic;
            DI_96 : in std_logic;
            DI_86 : in std_logic;
            DI_87 : in std_logic;
            DI_88 : in std_logic;
            DI_89 : in std_logic;

            -- Outputs
            Y6_a : out std_logic

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

    -- Instantiate Unit Under Test:  code_6_a
    code_6_a_0 : code_6_a
        -- port map
        port map( 
            -- Inputs
            AI_29 => '0',
            DI_98 => '0',
            DI_100 => '0',
            AI_26 => '0',
            AI_27 => '0',
            AI_21 => '0',
            AI_24 => '0',
            AI_25 => '0',
            DI_1 => '0',
            DI_2 => '0',
            DI_3 => '0',
            DI_4 => '0',
            DI_94 => '0',
            DI_96 => '0',
            DI_86 => '0',
            DI_87 => '0',
            DI_88 => '0',
            DI_89 => '0',

            -- Outputs
            Y6_a =>  open

            -- Inouts

        );

end behavioral;

