----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Wed Jun 12 16:41:14 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_1_d_test.vhd
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

entity code_1_d_test is
end code_1_d_test;

architecture behavioral of code_1_d_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_1_d
        -- ports
        port( 
            -- Inputs
            AO8 : in std_logic;
            AO2 : in std_logic;
            AI16 : in std_logic;
            AI17 : in std_logic;

            -- Outputs
            Y1_d : out std_logic

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

    -- Instantiate Unit Under Test:  code_1_d
    code_1_d_0 : code_1_d
        -- port map
        port map( 
            -- Inputs
            AO8 => '0',
            AO2 => '0',
            AI16 => '0',
            AI17 => '0',

            -- Outputs
            Y1_d =>  open

            -- Inouts

        );

end behavioral;
