--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemat.vhf
-- /___/   /\     Timestamp : 05/10/2024 10:44:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath "C:/Users/lab/Downloads/AccelADXL345 (1)" -sympath "C:/Users/lab/Desktop/KJKW/LCD1x64 (7)" -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/KJKW/testVGA/schemat.vhf -w C:/Users/lab/Desktop/KJKW/testVGA/schemat.sch
--Design Name: schemat
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schemat is
   port ( Blank     : in    std_logic_vector (15 downto 0); 
          clk       : in    std_logic; 
          INT1      : in    std_logic; 
          Reset     : in    std_logic; 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          SF_CE     : out   std_logic; 
          VGA_Blue  : out   std_logic; 
          VGA_Green : out   std_logic; 
          VGA_HSync : out   std_logic; 
          VGA_Red   : out   std_logic; 
          VGA_VSync : out   std_logic; 
          LCD_D     : inout std_logic_vector (3 downto 0); 
          SCL       : inout std_logic; 
          SDA       : inout std_logic);
end schemat;

architecture BEHAVIORAL of schemat is
   signal XLXN_22   : std_logic_vector (15 downto 0);
   signal XLXN_23   : std_logic_vector (15 downto 0);
   signal XLXN_25   : std_logic;
   signal XLXN_33   : std_logic_vector (63 downto 0);
   signal XLXN_38   : std_logic_vector (3 downto 0);
   component AccelADXL345
      port ( SDA       : inout std_logic; 
             SCL       : inout std_logic; 
             INT1      : in    std_logic; 
             X         : out   std_logic_vector (15 downto 0); 
             Y         : out   std_logic_vector (15 downto 0); 
             Z         : out   std_logic_vector (15 downto 0); 
             NewData   : out   std_logic; 
             I2C_NACK  : out   std_logic; 
             Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             DataRate  : in    std_logic_vector (3 downto 0));
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
   component VGA_Controller
      port ( clk       : in    std_logic; 
             NewData   : in    std_logic; 
             Reset     : in    std_logic; 
             X         : in    std_logic_vector (15 downto 0); 
             Y         : in    std_logic_vector (15 downto 0); 
             VGA_HSync : out   std_logic; 
             VGA_VSync : out   std_logic; 
             VGA_Red   : out   std_logic; 
             VGA_Green : out   std_logic; 
             VGA_Blue  : out   std_logic; 
             DataRate  : out   std_logic_vector (3 downto 0); 
             Line      : out   std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0));
   end component;
   
begin
   XLXI_2 : AccelADXL345
      port map (Clk_50MHz=>clk,
                DataRate(3 downto 0)=>XLXN_38(3 downto 0),
                INT1=>INT1,
                Reset=>Reset,
                I2C_NACK=>open,
                NewData=>XLXN_25,
                X(15 downto 0)=>XLXN_22(15 downto 0),
                Y(15 downto 0)=>XLXN_23(15 downto 0),
                Z=>open,
                SCL=>SCL,
                SDA=>SDA);
   
   XLXI_9 : LCD1x64
      port map (Blank(15 downto 0)=>Blank(15 downto 0),
                Clk_50MHz=>clk,
                Line(63 downto 0)=>XLXN_33(63 downto 0),
                Reset=>Reset,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_11 : VGA_Controller
      port map (Blank(15 downto 0)=>Blank(15 downto 0),
                clk=>clk,
                NewData=>XLXN_25,
                Reset=>Reset,
                X(15 downto 0)=>XLXN_22(15 downto 0),
                Y(15 downto 0)=>XLXN_23(15 downto 0),
                DataRate(3 downto 0)=>XLXN_38(3 downto 0),
                Line(63 downto 0)=>XLXN_33(63 downto 0),
                VGA_Blue=>VGA_Blue,
                VGA_Green=>VGA_Green,
                VGA_HSync=>VGA_HSync,
                VGA_Red=>VGA_Red,
                VGA_VSync=>VGA_VSync);
   
end BEHAVIORAL;


