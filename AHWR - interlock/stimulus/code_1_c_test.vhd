----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Wed Jun 12 16:21:16 2019
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: code_1_c_test.vhd
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

entity code_1_c_test is
end code_1_c_test;

architecture behavioral of code_1_c_test is

    constant SYSCLK_PERIOD : time := 100 ns; -- 10MHZ

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component code_1_c
        -- ports
        port( 
            -- Inputs
            DI19 : in std_logic;
            DI23 : in std_logic;
            DI45 : in std_logic;
            DI47 : in std_logic;
            DI17 : in std_logic;
            DI18 : in std_logic;
            DI46 : in std_logic;
            DI48 : in std_logic;
            DI32 : in std_logic;
            DI34 : in std_logic;
            DI35 : in std_logic;
            DI36 : in std_logic;
            RAM_B_SPEED_SEL : in std_logic;
            AI22 : in std_logic;

            -- Outputs
            Y1_C : out std_logic

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

    -- Instantiate Unit Under Test:  code_1_c
    code_1_c_0 : code_1_c
        -- port map
        port map( 
            -- Inputs
            DI19 => '0',
            DI23 => '0',
            DI45 => '0',
            DI47 => '0',
            DI17 => '0',
            DI18 => '0',
            DI46 => '0',
            DI48 => '0',
            DI32 => '0',
            DI34 => '0',
            DI35 => '0',
            DI36 => '0',
            RAM_B_SPEED_SEL => '0',
            AI22 => '0',

            -- Outputs
            Y1_C =>  open

            -- Inouts

        );

end behavioral;

