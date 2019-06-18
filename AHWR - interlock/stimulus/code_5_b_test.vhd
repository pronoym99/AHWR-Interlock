----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Mon Jun 17 12:24:46 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_5_b_test.vhd
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

entity code_5_b_test is
end code_5_b_test;

architecture behavioral of code_5_b_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_5_b
        -- ports
        port( 
            -- Inputs
            DI1 : in std_logic;
            DI5 : in std_logic;
            DI9 : in std_logic;
            DI98 : in std_logic;
            DI99 : in std_logic;

            -- Outputs
            Y5_b : out std_logic

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

    -- Instantiate Unit Under Test:  code_5_b
    code_5_b_0 : code_5_b
        -- port map
        port map( 
            -- Inputs
            DI1 => '0',
            DI5 => '0',
            DI9 => '0',
            DI98 => '0',
            DI99 => '0',

            -- Outputs
            Y5_b =>  open

            -- Inouts

        );

end behavioral;

