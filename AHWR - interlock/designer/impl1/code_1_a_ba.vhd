-- Version: v11.9 11.9.0.4
-- File used only for Simulation

library ieee;
use ieee.std_logic_1164.all;
library proasic3l;
use proasic3l.all;

entity code_1_a is

    port( AO8  : in    std_logic;
          DI17 : in    std_logic;
          DI19 : in    std_logic;
          DI21 : in    std_logic;
          DI23 : in    std_logic;
          DI30 : in    std_logic;
          DI31 : in    std_logic;
          DI32 : in    std_logic;
          DI33 : in    std_logic;
          DI34 : in    std_logic;
          DI35 : in    std_logic;
          DI36 : in    std_logic;
          DI70 : in    std_logic;
          DI49 : in    std_logic;
          DI50 : in    std_logic;
          AI30 : in    std_logic;
          Y1_a : out   std_logic
        );

end code_1_a;

architecture DEF_ARCH of code_1_a is 

  component OA1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component IOIN_IB
    port( YIN : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component NOR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component ULSICC_INT
    port( USTDBY : in    std_logic := 'U';
          LPENA  : in    std_logic := 'U'
        );
  end component;

  component IOTRI_OB_EB
    port( D    : in    std_logic := 'U';
          E    : in    std_logic := 'U';
          DOUT : out   std_logic;
          EOUT : out   std_logic
        );
  end component;

  component IOPAD_TRI
    port( D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal AO8_c, DI17_c, DI19_c, DI21_c, DI23_c, DI35_c, DI70_c, 
        DI49_c, DI50_c, AI30_c, Y1_a_c, \Y1_a_0\, \Y1_a_2\, 
        \Y1_a_3\, \Y1_a_4\, actel_gnd_net, \VCC\, 
        \DI50_pad/U0/NET1\, \DI49_pad/U0/NET1\, 
        \DI35_pad/U0/NET1\, \Y1_a_pad/U0/NET1\, 
        \Y1_a_pad/U0/NET2\, \DI23_pad/U0/NET1\, 
        \DI19_pad/U0/NET1\, \DI17_pad/U0/NET1\, 
        \AI30_pad/U0/NET1\, \DI70_pad/U0/NET1\, 
        \DI21_pad/U0/NET1\, \AO8_pad/U0/NET1\, AFLSDF_VCC, 
        AFLSDF_GND : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    actel_gnd_net <= GND_power_net1;
    AFLSDF_GND <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    AFLSDF_VCC <= VCC_power_net1;

    Y1_a_0 : OA1
      port map(A => DI17_c, B => DI19_c, C => DI35_c, Y => 
        \Y1_a_0\);
    
    \AI30_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AI30, Y => \AI30_pad/U0/NET1\);
    
    \DI21_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI21, Y => \DI21_pad/U0/NET1\);
    
    \DI50_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI50, Y => \DI50_pad/U0/NET1\);
    
    Y1_a_3 : OA1
      port map(A => DI21_c, B => DI23_c, C => AI30_c, Y => 
        \Y1_a_3\);
    
    \DI70_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI70_pad/U0/NET1\, Y => DI70_c);
    
    \Y1_a\ : NOR3C
      port map(A => \Y1_a_3\, B => \Y1_a_2\, C => \Y1_a_4\, Y => 
        Y1_a_c);
    
    Y1_a_4 : NOR3B
      port map(A => DI70_c, B => \Y1_a_0\, C => AO8_c, Y => 
        \Y1_a_4\);
    
    Y1_a_2 : NOR2B
      port map(A => DI50_c, B => DI49_c, Y => \Y1_a_2\);
    
    \DI17_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI17_pad/U0/NET1\, Y => DI17_c);
    
    \DI23_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI23_pad/U0/NET1\, Y => DI23_c);
    
    \DI21_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI21_pad/U0/NET1\, Y => DI21_c);
    
    \AO8_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AO8, Y => \AO8_pad/U0/NET1\);
    
    \DI19_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI19, Y => \DI19_pad/U0/NET1\);
    
    \AI30_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AI30_pad/U0/NET1\, Y => AI30_c);
    
    INT_ULSICC_INSTANCE_0 : ULSICC_INT
      port map(USTDBY => actel_gnd_net, LPENA => actel_gnd_net);
    
    \DI19_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI19_pad/U0/NET1\, Y => DI19_c);
    
    \DI70_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI70, Y => \DI70_pad/U0/NET1\);
    
    \DI23_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI23, Y => \DI23_pad/U0/NET1\);
    
    \AO8_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AO8_pad/U0/NET1\, Y => AO8_c);
    
    \DI50_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI50_pad/U0/NET1\, Y => DI50_c);
    
    \DI35_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI35_pad/U0/NET1\, Y => DI35_c);
    
    \DI49_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI49, Y => \DI49_pad/U0/NET1\);
    
    \DI17_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI17, Y => \DI17_pad/U0/NET1\);
    
    \DI35_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI35, Y => \DI35_pad/U0/NET1\);
    
    \DI49_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI49_pad/U0/NET1\, Y => DI49_c);
    
    \Y1_a_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => Y1_a_c, E => \VCC\, DOUT => 
        \Y1_a_pad/U0/NET1\, EOUT => \Y1_a_pad/U0/NET2\);
    
    \Y1_a_pad/U0/U0\ : IOPAD_TRI
      port map(D => \Y1_a_pad/U0/NET1\, E => \Y1_a_pad/U0/NET2\, 
        PAD => Y1_a);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
