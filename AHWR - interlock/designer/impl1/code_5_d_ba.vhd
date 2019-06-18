-- Version: v11.9 11.9.0.4
-- File used only for Simulation

library ieee;
use ieee.std_logic_1164.all;
library proasic3l;
use proasic3l.all;

entity code_5_d is

    port( AI26 : in    std_logic;
          AI27 : in    std_logic;
          AI29 : in    std_logic;
          AO9  : in    std_logic;
          DI13 : in    std_logic;
          DI14 : in    std_logic;
          DI15 : in    std_logic;
          DI16 : in    std_logic;
          DI94 : in    std_logic;
          DI98 : in    std_logic;
          DI86 : in    std_logic;
          DI87 : in    std_logic;
          DI88 : in    std_logic;
          DI89 : in    std_logic;
          AI24 : in    std_logic;
          AI25 : in    std_logic;
          DI1  : in    std_logic;
          DI2  : in    std_logic;
          DI3  : in    std_logic;
          DI4  : in    std_logic;
          Y5_d : out   std_logic
        );

end code_5_d;

architecture DEF_ARCH of code_5_d is 

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

  component NOR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component OR3
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

  component AOI1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_TRI
    port( D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component IOTRI_OB_EB
    port( D    : in    std_logic := 'U';
          E    : in    std_logic := 'U';
          DOUT : out   std_logic;
          EOUT : out   std_logic
        );
  end component;

  component ULSICC_INT
    port( USTDBY : in    std_logic := 'U';
          LPENA  : in    std_logic := 'U'
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal \Y5_d_2_RNO_1\, AI26_c, AI27_c, AI29_c, AO9_c, DI13_c, 
        DI14_c, DI15_c, DI16_c, DI94_c, DI98_c, DI86_c, DI87_c, 
        DI88_c, DI89_c, AI24_c, AI25_c, DI1_c, DI2_c, DI3_c, 
        DI4_c, Y5_d_c, intermed6_0, intermed6_1, \Y5_d_0\, 
        \Y5_d_1\, \Y5_d_2\, \Y5_d_5\, \Y5_d_6\, \Y5_d_8\, 
        \Y5_d_9\, \Y5_d_10\, actel_gnd_net, \VCC\, 
        \DI87_pad/U0/NET1\, \AI29_pad/U0/NET1\, \DI3_pad/U0/NET1\, 
        \DI14_pad/U0/NET1\, \AO9_pad/U0/NET1\, \DI89_pad/U0/NET1\, 
        \AI25_pad/U0/NET1\, \DI4_pad/U0/NET1\, \Y5_d_pad/U0/NET1\, 
        \Y5_d_pad/U0/NET2\, \AI26_pad/U0/NET1\, \DI1_pad/U0/NET1\, 
        \DI2_pad/U0/NET1\, \DI98_pad/U0/NET1\, \DI88_pad/U0/NET1\, 
        \DI86_pad/U0/NET1\, \AI27_pad/U0/NET1\, 
        \DI13_pad/U0/NET1\, \AI24_pad/U0/NET1\, 
        \DI15_pad/U0/NET1\, \DI94_pad/U0/NET1\, 
        \DI16_pad/U0/NET1\, AFLSDF_VCC, AFLSDF_GND : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    actel_gnd_net <= GND_power_net1;
    AFLSDF_GND <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    AFLSDF_VCC <= VCC_power_net1;

    \DI98_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI98_pad/U0/NET1\, Y => DI98_c);
    
    Y5_d_9 : NOR3C
      port map(A => DI86_c, B => DI87_c, C => \Y5_d_5\, Y => 
        \Y5_d_9\);
    
    Y5_d_1 : NOR2A
      port map(A => DI15_c, B => AO9_c, Y => \Y5_d_1\);
    
    \AI29_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AI29, Y => \AI29_pad/U0/NET1\);
    
    \AI24_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AI24, Y => \AI24_pad/U0/NET1\);
    
    \DI89_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI89, Y => \DI89_pad/U0/NET1\);
    
    \DI4_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI4_pad/U0/NET1\, Y => DI4_c);
    
    \AI29_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AI29_pad/U0/NET1\, Y => AI29_c);
    
    \DI14_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI14_pad/U0/NET1\, Y => DI14_c);
    
    Y5_d_2_RNO_1 : OR3
      port map(A => AI27_c, B => AI29_c, C => AI26_c, Y => 
        \Y5_d_2_RNO_1\);
    
    \DI3_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI3, Y => \DI3_pad/U0/NET1\);
    
    \AO9_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AO9, Y => \AO9_pad/U0/NET1\);
    
    Y5_d_2_RNO_0 : NOR2B
      port map(A => DI2_c, B => DI1_c, Y => intermed6_0);
    
    \DI89_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI89_pad/U0/NET1\, Y => DI89_c);
    
    \AI25_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AI25_pad/U0/NET1\, Y => AI25_c);
    
    Y5_d_0 : AOI1B
      port map(A => DI14_c, B => DI13_c, C => DI16_c, Y => 
        \Y5_d_0\);
    
    \AI27_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AI27, Y => \AI27_pad/U0/NET1\);
    
    \AI25_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AI25, Y => \AI25_pad/U0/NET1\);
    
    \DI87_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI87, Y => \DI87_pad/U0/NET1\);
    
    \Y5_d_pad/U0/U0\ : IOPAD_TRI
      port map(D => \Y5_d_pad/U0/NET1\, E => \Y5_d_pad/U0/NET2\, 
        PAD => Y5_d);
    
    \DI16_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI16, Y => \DI16_pad/U0/NET1\);
    
    \Y5_d_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => Y5_d_c, E => \VCC\, DOUT => 
        \Y5_d_pad/U0/NET1\, EOUT => \Y5_d_pad/U0/NET2\);
    
    \AI26_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AI26_pad/U0/NET1\, Y => AI26_c);
    
    Y5_d_5 : NOR2B
      port map(A => AI25_c, B => AI24_c, Y => \Y5_d_5\);
    
    \DI86_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI86_pad/U0/NET1\, Y => DI86_c);
    
    \DI94_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI94, Y => \DI94_pad/U0/NET1\);
    
    \DI13_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI13_pad/U0/NET1\, Y => DI13_c);
    
    \DI4_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI4, Y => \DI4_pad/U0/NET1\);
    
    \DI88_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI88, Y => \DI88_pad/U0/NET1\);
    
    Y5_d_2_RNO : NOR2B
      port map(A => DI4_c, B => DI3_c, Y => intermed6_1);
    
    \Y5_d\ : NOR3C
      port map(A => \Y5_d_9\, B => \Y5_d_8\, C => \Y5_d_10\, Y
         => Y5_d_c);
    
    \DI2_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI2_pad/U0/NET1\, Y => DI2_c);
    
    \AI24_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AI24_pad/U0/NET1\, Y => AI24_c);
    
    \DI1_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI1, Y => \DI1_pad/U0/NET1\);
    
    \DI14_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI14, Y => \DI14_pad/U0/NET1\);
    
    \DI13_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI13, Y => \DI13_pad/U0/NET1\);
    
    INT_ULSICC_INSTANCE_0 : ULSICC_INT
      port map(USTDBY => actel_gnd_net, LPENA => actel_gnd_net);
    
    Y5_d_10 : NOR3C
      port map(A => \Y5_d_1\, B => \Y5_d_0\, C => \Y5_d_6\, Y => 
        \Y5_d_10\);
    
    Y5_d_2 : AOI1B
      port map(A => intermed6_1, B => intermed6_0, C => 
        \Y5_d_2_RNO_1\, Y => \Y5_d_2\);
    
    \DI1_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI1_pad/U0/NET1\, Y => DI1_c);
    
    \DI88_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI88_pad/U0/NET1\, Y => DI88_c);
    
    \DI2_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI2, Y => \DI2_pad/U0/NET1\);
    
    \DI15_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI15_pad/U0/NET1\, Y => DI15_c);
    
    \AI26_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AI26, Y => \AI26_pad/U0/NET1\);
    
    Y5_d_6 : NOR2B
      port map(A => DI98_c, B => DI94_c, Y => \Y5_d_6\);
    
    \DI3_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI3_pad/U0/NET1\, Y => DI3_c);
    
    \DI15_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI15, Y => \DI15_pad/U0/NET1\);
    
    \DI98_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI98, Y => \DI98_pad/U0/NET1\);
    
    \DI86_pad/U0/U0\ : IOPAD_IN
      port map(PAD => DI86, Y => \DI86_pad/U0/NET1\);
    
    Y5_d_8 : NOR3C
      port map(A => DI88_c, B => DI89_c, C => \Y5_d_2\, Y => 
        \Y5_d_8\);
    
    \AO9_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AO9_pad/U0/NET1\, Y => AO9_c);
    
    \DI16_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI16_pad/U0/NET1\, Y => DI16_c);
    
    \AI27_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AI27_pad/U0/NET1\, Y => AI27_c);
    
    \DI94_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI94_pad/U0/NET1\, Y => DI94_c);
    
    \DI87_pad/U0/U1\ : IOIN_IB
      port map(YIN => \DI87_pad/U0/NET1\, Y => DI87_c);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
