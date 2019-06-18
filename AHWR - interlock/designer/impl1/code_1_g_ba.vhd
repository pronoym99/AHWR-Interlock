-- Version: v11.9 11.9.0.4
-- File used only for Simulation

library ieee;
use ieee.std_logic_1164.all;
library proasic3l;
use proasic3l.all;

entity code_1_g is

    port( AO8  : in    std_logic;
          AI16 : in    std_logic;
          AI17 : in    std_logic;
          Y1_g : out   std_logic
        );

end code_1_g;

architecture DEF_ARCH of code_1_g is 

  component IOIN_IB
    port( YIN : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component NOR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component ULSICC_INT
    port( USTDBY : in    std_logic := 'U';
          LPENA  : in    std_logic := 'U'
        );
  end component;

  component IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
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

    signal AO8_c, AI16_c, AI17_c, Y1_g_c, actel_gnd_net, \VCC\, 
        \AI17_pad/U0/NET1\, \Y1_g_pad/U0/NET1\, 
        \Y1_g_pad/U0/NET2\, \AO8_pad/U0/NET1\, \AI16_pad/U0/NET1\, 
        AFLSDF_VCC, AFLSDF_GND : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    actel_gnd_net <= GND_power_net1;
    AFLSDF_GND <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    AFLSDF_VCC <= VCC_power_net1;

    \AI16_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AI16_pad/U0/NET1\, Y => AI16_c);
    
    \AO8_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AO8_pad/U0/NET1\, Y => AO8_c);
    
    \AI17_pad/U0/U1\ : IOIN_IB
      port map(YIN => \AI17_pad/U0/NET1\, Y => AI17_c);
    
    \Y1_g\ : NOR3
      port map(A => AI16_c, B => AI17_c, C => AO8_c, Y => Y1_g_c);
    
    INT_ULSICC_INSTANCE_0 : ULSICC_INT
      port map(USTDBY => actel_gnd_net, LPENA => actel_gnd_net);
    
    \AO8_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AO8, Y => \AO8_pad/U0/NET1\);
    
    \AI17_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AI17, Y => \AI17_pad/U0/NET1\);
    
    \Y1_g_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => Y1_g_c, E => \VCC\, DOUT => 
        \Y1_g_pad/U0/NET1\, EOUT => \Y1_g_pad/U0/NET2\);
    
    \AI16_pad/U0/U0\ : IOPAD_IN
      port map(PAD => AI16, Y => \AI16_pad/U0/NET1\);
    
    \Y1_g_pad/U0/U0\ : IOPAD_TRI
      port map(D => \Y1_g_pad/U0/NET1\, E => \Y1_g_pad/U0/NET2\, 
        PAD => Y1_g);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
