----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Tue Jun 18 12:48:40 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_3_a_test.vhd
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

entity code_3_a_test is
end code_3_a_test;

architecture behavioral of code_3_a_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_3_a
        -- ports
        port( 
            -- Inputs
            DI32 : in std_logic;
            DI34 : in std_logic;
            DI35 : in std_logic;
            DI36 : in std_logic;
            AO2 : in std_logic;
            AO3 : in std_logic;
            AO4 : in std_logic;
            DI17 : in std_logic;
            DI21 : in std_logic;
            AI17 : in std_logic;

            -- Outputs
            Y3_A : out std_logic

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

    -- Instantiate Unit Under Test:  code_3_a
    code_3_a_0 : code_3_a
        -- port map
        port map( 
            -- Inputs
            DI32 => '0',
            DI34 => '0',
            DI35 => '0',
            DI36 => '0',
            AO2 => '0',
            AO3 => '0',
            AO4 => '0',
            DI17 => '0',
            DI21 => '0',
            AI17 => '0',

            -- Outputs
            Y3_A =>  open

            -- Inouts

        );

end behavioral;

