----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:57 04/12/2024 
-- Design Name: 
-- Module Name:    VGD_Display - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;


entity VGA_display is
    port(hcount,vcount : in integer range 0 to 799;
        r,g,b : out std_logic_vector(3 downto 0);
        video_on : in std_logic);
end entity;



architecture arch of VGA_display is

begin

process (video_on)
begin
    if video_on = '1' then
            r <= "1111";
            g <= "0000"; 
            b <= "0000";

    else
        r <= (others => '0');
        g <= (others => '0');
        b <= (others => '0');
    end if;

end process;
end arch;
