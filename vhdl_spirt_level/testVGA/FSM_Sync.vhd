----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:33 04/12/2024 
-- Design Name: 
-- Module Name:    FSM_Sync - Behavioral 
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


entity FSM_sync is
    port(clk,reset : in std_logic;
        Hsync,Vsync,VIDON : out std_logic;
        Vcount,Hcount : out integer range 0 to 799);
end entity;


architecture arch of FSM_sync is

constant counterMAX : integer := 640;
constant counterSP : integer := 96;
constant counterBP : integer := 48;
constant counterHV : integer := 640;
constant counterFP : integer := 16;

constant counterMAX_V : integer := 384000;  
constant counterSP_V : integer := 1600;     
constant counterBP_V : integer := 26400;
constant counterVV : integer := 384000;
constant counterFP_V : integer := 8000;

constant number_pixelsMAX_H : integer := 800;
constant number_pixelsMAX_V : integer := 525;

type state is (SP_1,BP,HV,FP,reseteo);  
signal present_state_H,next_state_H,present_state_V,next_state_V : state;

signal timer : integer range 0 to counterMAX ; 
                                                
signal timer2 : integer range 0  to counterMAX_V ;  

signal video_1,video_2 : std_logic; 

signal hcount_reg,vcount_reg : integer range 0 to 799;



begin
lower_part_1 : process (clk,reset)
                variable counter : integer range 0 to counterMAX - 1;
                variable counter2 : integer range 0 to number_pixelsMAX_H - 1;
                variable counter3 : integer range 0 to number_pixelsMAX_V - 1;
             begin                                                  
                if (reset = '1') then                               
                                                                     
                    counter := 0;                                   
                    counter2 := 0;          
                    counter3 := 0;
                    present_state_H <= reseteo;


                elsif (clk'event and clk = '1') then
                    counter := counter + 1;

                    if (counter2 < number_pixelsMAX_H-1) then
                        counter2 := counter2 + 1;
                    else
                        counter2 := 0;
                        if (counter3 < number_pixelsMAX_V-1) then
                            counter3 := counter3 + 1;
                        else
                            counter3 := 0;
                        end if;
                    end if;

                    hcount_reg <= counter2;
                    vcount_reg <= counter3;

                    if (counter = timer) then
                        present_state_H <= next_state_H;
                        counter := 0;
                    end if;
                end if;
                end process lower_part_1;


upper_part_1 : process (next_state_H)
             begin

                Hsync <= '1';
                next_state_H <= HV;

                case present_state_H is
                    when SP_1 =>
                        Hsync <= '0';
                        next_state_H <= BP;
                        timer <= counterSP;

                        video_1 <= '0';

                    when BP =>
                        Hsync <= '1';
                        next_state_H <= HV;
                        timer <= counterBP;

                        video_1 <= '0';

                    when HV =>
                        Hsync <= '1';
                        next_state_H <= FP;
                        timer <= counterHV;

                        video_1 <= '1';


                    when FP =>
                        Hsync <= '1';
                        next_state_H <= SP_1;
                        timer <= counterFP;

                        video_1 <= '0';

                    when reseteo =>
                        Hsync <= '1';
                        next_state_H <=HV;
                    end case;
                end process upper_part_1;

         
lower_part_2 : process (clk,reset)
                variable counter2 : integer range 0 to counterMAX_V;
             begin
                if (reset = '1') then
                    counter2 := 0;
                    present_state_V <= reseteo;



                elsif (clk'event and clk = '1') then
                    counter2 := counter2 + 1;



                    if (counter2 = timer2) then
                        present_state_V <= next_state_V;
                        counter2 := 0;
                    end if;
                end if;
                end process lower_part_2;


upper_part_2 : process (next_state_V)
             begin

                Vsync <= '1';
                next_state_V <= HV;

                case present_state_V is
                    when SP_1 =>
                        Vsync <= '0';
                        next_state_V <= BP;
                        timer2 <= counterSP_V;
                        video_2 <= '0';
                    when BP =>
                        Vsync <= '1';
                        next_state_V <= HV;
                        timer2 <= counterBP_V;

                        video_2 <= '0';

                    when HV =>
                        Vsync <= '1';
                        next_state_V <= FP;
                        timer2 <= counterVV;

                        video_2 <= '1';

                    when FP =>
                        Vsync <= '1';
                        next_state_V <= SP_1;
                        timer2 <= counterFP_V;

                        video_2 <= '0';

                    when reseteo =>
                        Vsync <= '1';
                        next_state_V <=HV;


                    end case;
                end process upper_part_2;


VIDON <= video_1 AND video_2;
Vcount <= vcount_reg;
Hcount <= hcount_reg;

        end arch;

