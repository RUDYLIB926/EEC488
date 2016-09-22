library ieee;
use ieee.std_logic_1164.all;

package chu_io_map is
   -- *****************************************************************
   -- 2D data types
   -- *****************************************************************
   type slot_2d_data_type is array (63 downto 0) of 
        std_logic_vector(31 downto 0);
   type slot_2d_reg_type is array (63 downto 0) of 
        std_logic_vector(4 downto 0);
   type slot_2d_video_reg_type is array (7 downto 0) of 
        std_logic_vector(13 downto 0);

   -- *****************************************************************
   -- Base address for the io_bridge 
   -- *****************************************************************
   -- for xilinx MCS
   constant BRIDGE_BASE : std_logic_vector(31 downto 0) := X"c7000000";
  
   -- *****************************************************************
   -- slot definition for the "sampler" MMIO subsystem 
   -- avoid change the first four slots
   -- *****************************************************************
   constant S0_SYS_TIMER : integer := 0;
   constant S1_UART1     : integer := 1;
   constant S2_LED       : integer := 2;
   constant S3_SW        : integer := 3;
   constant S4_USER      : integer := 4;
   constant S5_XDAC      : integer := 5;
   constant S6_PWM       : integer := 6;
   constant S7_BTN       : integer := 7;
   constant S8_SSEG      : integer := 8;
   constant S9_SPI       : integer := 9;
   constant S10_I2C      : integer := 10;
   constant S11_PS2      : integer := 11;
   constant S12_DDFS     : integer := 12;
   constant S13_ADSR     : integer := 13;

   -- *****************************************************************
   -- slot definition for the daisy video subsystem 
   -- *****************************************************************
   constant V0_SYNC  : integer := 0;
   constant V1_MOUSE : integer := 1;
   constant V2_OSD   : integer := 2;
   constant V3_GHOST : integer := 3;
   constant V4_USER4 : integer := 4;
   constant V5_USER5 : integer := 5;
   constant V6_GRAY  : integer := 6;
   constant V7_BAR   : integer := 7;

end chu_io_map;

