<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="INT1" />
        <signal name="XLXN_22(15:0)" />
        <signal name="XLXN_23(15:0)" />
        <signal name="XLXN_25" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="XLXN_33(63:0)" />
        <signal name="Reset" />
        <signal name="XLXN_38(3:0)" />
        <signal name="VGA_HSync" />
        <signal name="VGA_VSync" />
        <signal name="VGA_Red" />
        <signal name="VGA_Green" />
        <signal name="VGA_Blue" />
        <signal name="Blank(15:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Input" name="INT1" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Input" name="Reset" />
        <port polarity="Output" name="VGA_HSync" />
        <port polarity="Output" name="VGA_VSync" />
        <port polarity="Output" name="VGA_Red" />
        <port polarity="Output" name="VGA_Green" />
        <port polarity="Output" name="VGA_Blue" />
        <port polarity="Input" name="Blank(15:0)" />
        <blockdef name="AccelADXL345">
            <timestamp>2024-4-26T8:29:33</timestamp>
            <rect width="288" x="32" y="-448" height="512" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="320" y1="-288" y2="-288" x1="384" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="-32" y1="32" y2="32" x1="32" />
            <line x2="-32" y1="-32" y2="-32" x1="32" />
            <rect width="64" x="-32" y="-428" height="24" />
            <line x2="-32" y1="-416" y2="-416" x1="32" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2024-4-26T9:12:3</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="VGA_Controller">
            <timestamp>2024-4-26T10:51:54</timestamp>
            <rect width="64" x="368" y="276" height="24" />
            <line x2="432" y1="288" y2="288" x1="368" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="304" x="64" y="-384" height="768" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="368" y1="-32" y2="-32" x1="432" />
            <rect width="64" x="0" y="340" height="24" />
            <line x2="64" y1="352" y2="352" x1="0" />
        </blockdef>
        <block symbolname="LCD1x64" name="XLXI_9">
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_33(63:0)" name="Line(63:0)" />
            <blockpin signalname="Blank(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="AccelADXL345" name="XLXI_2">
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="INT1" name="INT1" />
            <blockpin signalname="XLXN_22(15:0)" name="X(15:0)" />
            <blockpin signalname="XLXN_23(15:0)" name="Y(15:0)" />
            <blockpin name="Z(15:0)" />
            <blockpin signalname="XLXN_25" name="NewData" />
            <blockpin name="I2C_NACK" />
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_38(3:0)" name="DataRate(3:0)" />
        </block>
        <block symbolname="VGA_Controller" name="XLXI_11">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_25" name="NewData" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_22(15:0)" name="X(15:0)" />
            <blockpin signalname="XLXN_23(15:0)" name="Y(15:0)" />
            <blockpin signalname="VGA_HSync" name="VGA_HSync" />
            <blockpin signalname="VGA_VSync" name="VGA_VSync" />
            <blockpin signalname="VGA_Red" name="VGA_Red" />
            <blockpin signalname="VGA_Green" name="VGA_Green" />
            <blockpin signalname="VGA_Blue" name="VGA_Blue" />
            <blockpin signalname="XLXN_38(3:0)" name="DataRate(3:0)" />
            <blockpin signalname="XLXN_33(63:0)" name="Line(63:0)" />
            <blockpin signalname="Blank(15:0)" name="Blank(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="832" y="848" name="clk" orien="R180" />
        <branch name="SDA">
            <wire x2="2224" y1="1152" y2="1152" x1="2192" />
        </branch>
        <branch name="SCL">
            <wire x2="2224" y1="1216" y2="1216" x1="2192" />
        </branch>
        <branch name="INT1">
            <wire x2="2224" y1="1280" y2="1280" x1="2192" />
        </branch>
        <branch name="XLXN_22(15:0)">
            <wire x2="1136" y1="1216" y2="1696" x1="1136" />
            <wire x2="2272" y1="1696" y2="1696" x1="1136" />
            <wire x2="1200" y1="1216" y2="1216" x1="1136" />
            <wire x2="2272" y1="1344" y2="1344" x1="2192" />
            <wire x2="2272" y1="1344" y2="1696" x1="2272" />
        </branch>
        <branch name="XLXN_23(15:0)">
            <wire x2="1200" y1="1280" y2="1280" x1="1184" />
            <wire x2="1184" y1="1280" y2="1712" x1="1184" />
            <wire x2="2256" y1="1712" y2="1712" x1="1184" />
            <wire x2="2256" y1="1408" y2="1408" x1="2192" />
            <wire x2="2256" y1="1408" y2="1712" x1="2256" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1136" y1="672" y2="1152" x1="1136" />
            <wire x2="1200" y1="1152" y2="1152" x1="1136" />
            <wire x2="2384" y1="672" y2="672" x1="1136" />
            <wire x2="2384" y1="672" y2="1536" x1="2384" />
            <wire x2="2384" y1="1536" y2="1536" x1="2192" />
        </branch>
        <branch name="LCD_E">
            <wire x2="2336" y1="320" y2="320" x1="2304" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="2336" y1="384" y2="384" x1="2304" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="2336" y1="448" y2="448" x1="2304" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="2336" y1="512" y2="512" x1="2304" />
        </branch>
        <branch name="SF_CE">
            <wire x2="2336" y1="576" y2="576" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2336" y="320" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="2336" y="384" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="2336" y="448" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="2336" y="512" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2336" y="576" name="SF_CE" orien="R0" />
        <instance x="1888" y="608" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_33(63:0)">
            <wire x2="1760" y1="1408" y2="1408" x1="1632" />
            <wire x2="1760" y1="320" y2="1408" x1="1760" />
            <wire x2="1888" y1="320" y2="320" x1="1760" />
        </branch>
        <instance x="1200" y="1120" name="XLXI_11" orien="R0">
        </instance>
        <iomarker fontsize="28" x="832" y="1088" name="Reset" orien="R180" />
        <branch name="VGA_HSync">
            <wire x2="1824" y1="768" y2="768" x1="1632" />
        </branch>
        <branch name="VGA_VSync">
            <wire x2="1824" y1="832" y2="832" x1="1632" />
        </branch>
        <branch name="VGA_Red">
            <wire x2="1824" y1="896" y2="896" x1="1632" />
        </branch>
        <branch name="VGA_Green">
            <wire x2="1824" y1="960" y2="960" x1="1632" />
        </branch>
        <branch name="VGA_Blue">
            <wire x2="1824" y1="1024" y2="1024" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1824" y="768" name="VGA_HSync" orien="R0" />
        <iomarker fontsize="28" x="1824" y="832" name="VGA_VSync" orien="R0" />
        <iomarker fontsize="28" x="1824" y="896" name="VGA_Red" orien="R0" />
        <iomarker fontsize="28" x="1824" y="960" name="VGA_Green" orien="R0" />
        <iomarker fontsize="28" x="1824" y="1024" name="VGA_Blue" orien="R0" />
        <branch name="clk">
            <wire x2="960" y1="848" y2="848" x1="832" />
            <wire x2="1056" y1="848" y2="848" x1="960" />
            <wire x2="960" y1="848" y2="1600" x1="960" />
            <wire x2="1776" y1="1600" y2="1600" x1="960" />
            <wire x2="1888" y1="576" y2="576" x1="960" />
            <wire x2="960" y1="576" y2="848" x1="960" />
            <wire x2="1200" y1="768" y2="768" x1="1056" />
            <wire x2="1056" y1="768" y2="848" x1="1056" />
        </branch>
        <branch name="Reset">
            <wire x2="1168" y1="1088" y2="1088" x1="832" />
            <wire x2="1168" y1="1088" y2="1536" x1="1168" />
            <wire x2="1776" y1="1536" y2="1536" x1="1168" />
            <wire x2="1200" y1="1088" y2="1088" x1="1168" />
            <wire x2="1168" y1="512" y2="1088" x1="1168" />
            <wire x2="1888" y1="512" y2="512" x1="1168" />
        </branch>
        <branch name="XLXN_38(3:0)">
            <wire x2="1648" y1="1088" y2="1088" x1="1632" />
            <wire x2="1648" y1="1088" y2="1152" x1="1648" />
            <wire x2="1776" y1="1152" y2="1152" x1="1648" />
        </branch>
        <instance x="1808" y="1568" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2224" y="1280" name="INT1" orien="R0" />
        <iomarker fontsize="28" x="2224" y="1216" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="2224" y="1152" name="SDA" orien="R0" />
        <branch name="Blank(15:0)">
            <wire x2="1152" y1="1472" y2="1472" x1="800" />
            <wire x2="1200" y1="1472" y2="1472" x1="1152" />
            <wire x2="1152" y1="1472" y2="1520" x1="1152" />
            <wire x2="1200" y1="1520" y2="1520" x1="1152" />
            <wire x2="1632" y1="1520" y2="1520" x1="1200" />
            <wire x2="1648" y1="1520" y2="1520" x1="1632" />
            <wire x2="1648" y1="1472" y2="1520" x1="1648" />
            <wire x2="1696" y1="1472" y2="1472" x1="1648" />
            <wire x2="1744" y1="1472" y2="1472" x1="1696" />
            <wire x2="1744" y1="384" y2="1472" x1="1744" />
            <wire x2="1888" y1="384" y2="384" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="800" y="1472" name="Blank(15:0)" orien="R180" />
    </sheet>
</drawing>