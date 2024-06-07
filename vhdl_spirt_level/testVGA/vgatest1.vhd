library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity VGA_Controller is
    port (
        clk, NewData, Reset : in std_logic;
        VGA_HSync, VGA_VSync, VGA_Red, VGA_Green, VGA_Blue : out std_logic;
		  DataRate : out std_logic_vector(3 downto 0);
		  X, Y : in std_logic_vector(15 downto 0);
		  Line : out std_logic_vector(63 downto 0);
		  Blank : in std_logic_vector(15 downto 0)
		  
    );
end entity VGA_Controller;

architecture Behavioral of VGA_Controller is
    constant H_DISPLAY : integer := 800;
    constant H_SYNC : integer := 56;
    constant H_BACKPORCH : integer := 120;
    constant H_FRONTPORCH : integer := 64;
    
	 constant V_DISPLAY : integer := 600;
    constant V_SYNC : integer := 37;
    constant V_BACKPORCH : integer := 6;
    constant V_FRONTPORCH : integer := 23;

    signal h_count : integer range 0 to 1040 := 0;
    signal v_count : integer range 0 to 666 := 0;
	 
begin
	 clk_process: process(clk)
    begin
        if rising_edge(clk) then
            h_count <= h_count + 1;
            if h_count >= 1040 then
                h_count <= 0;
                v_count <= v_count + 1;
                if v_count >= 666 then
                    v_count <= 0;
                end if;
            end if;
        end if;
    end process;
	 
	 hsync_process: process(h_count)
	 begin
		if(h_count>=855 and h_count<975) then
			VGA_HSync <='0';
		else
			VGA_HSync<='1';
		end if;
	end process hsync_process;
	
	vsync_process: process(v_count)
	 begin
		if(v_count>=636 and v_count<642) then
			VGA_VSync <= '0';
		else
			VGA_VSync <= '1';
		end if;
	end process vsync_process;

	draw_square: process(clk, h_count, v_count, X, Y)
	variable X_int : integer;
	variable Y_int : integer;
	variable distance_squared : integer;
	begin
    if rising_edge(clk) then
      X_int := to_integer(signed(X));
		Y_int := to_integer(signed(Y));
			distance_squared := (h_count - X_int - 360)*(h_count - X_int - 360) + (v_count - Y_int - 300)*(v_count - Y_int - 300);
			if (v_count = 300) then
            VGA_Red <= '1';
            VGA_Green <= '1';
            VGA_Blue <= '1';
			elsif (h_count = 400) then
            VGA_Red <= '1';
            VGA_Green <= '1';
            VGA_Blue <= '1';
			elsif ((v_count = 250 or v_count = 350) and
            (h_count >= 350 and h_count <= 450)) or
				((h_count = 350 or h_count = 450) and
            (v_count >= 250 and v_count <= 350)) then
            VGA_Red <= '1';
            VGA_Green <= '1';
            VGA_Blue <= '1';
			elsif ((h_count - 400)*(h_count - 400) + (v_count - 300)*(v_count - 300) > 40000) and
					(distance_squared <= 2500) then
						VGA_Red <= '1';
						VGA_Green <= '0';
						VGA_Blue <= '0';
			elsif ((h_count - 400)*(h_count - 400) + (v_count - 300)*(v_count - 300) < 10000) and
					(distance_squared <= 2500) then 
						VGA_Red <= '0';  
						VGA_Green <= '1';
						VGA_Blue <= '0';
			elsif ((h_count - 400)*(h_count - 400) + (v_count - 300)*(v_count - 300) > 10000) and
					(distance_squared <= 2500) then
						VGA_Red <= '1';
						VGA_Green <= '1';
						VGA_Blue <= '0';
			else
            VGA_Red <= '0';
            VGA_Green <= '0';
            VGA_Blue <= '0';
			end if;
    end if;
	end process draw_square;

	datarate_process: process(clk)
	begin
		if rising_edge(clk) then
			if Reset = '0' then
				DataRate <= "0111";
			end if;
		end if;
	end process;

	lcd_process: process(clk)
	begin
		if rising_edge(clk) then
			if Reset = '0' then
				Line <= X & Blank & Blank & Y;
			end if;
		end if;
	end process lcd_process;

end architecture Behavioral;
