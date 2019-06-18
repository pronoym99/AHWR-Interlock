----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Thu Jun 13 13:14:30 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_2_b_test.vhd
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

entity code_2_b_test is
end code_2_b_test;

architecture behavioral of code_2_b_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_2_b
        -- ports
        port( 
            -- Inputs
            DI_1 : in std_logic;
            DI_2 : in std_logic;
            DI_3 : in std_logic;
            DI_4 : in std_logic;
            DO_14 : in std_logic;
            DO_15 : in std_logic;
            AO_21 : in std_logic;
            AO_22 : in std_logic;

            -- Outputs
            Y2_b : out std_logic

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

    -- Instantiate Unit Under Test:  code_2_b
    code_2_b_0 : code_2_b
        -- port map
        port map( 
            -- Inputs
            DI_1 => '0',
            DI_2 => '0',
            DI_3 => '0',
            DI_4 => '0',
            DO_14 => '0',
            DO_15 => '0',
            AO_21 => '0',
            AO_22 => '0',

            -- Outputs
            Y2_b =>  open

            -- Inouts

        );

end behavioral;

