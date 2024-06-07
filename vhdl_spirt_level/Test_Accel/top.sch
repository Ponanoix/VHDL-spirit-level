<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="LCD_E" />
        <signal name="SF_CE" />
        <signal name="LCD_D(3:0)" />
        <signal name="LCD_RW" />
        <signal name="LCD_RS" />
        <signal name="XLXN_23(15:0)" />
        <signal name="XLXN_24(15:0)" />
        <signal name="Line2(63:0)" />
        <signal name="Line2(15:0)" />
        <signal name="Line1(63:0)" />
        <signal name="XLXN_7" />
        <signal name="Line1(63:48)" />
        <signal name="Line1(39:24)" />
        <signal name="Line1(15:0)" />
        <signal name="btn_south" />
        <signal name="SW(3:0)" />
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="INT1" />
        <signal name="LED0" />
        <signal name="XLXN_67" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_70" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Input" name="btn_south" />
        <port polarity="Input" name="SW(3:0)" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Input" name="INT1" />
        <port polarity="Output" name="LED0" />
        <port polarity="Input" name="Clk_50MHz" />
        <blockdef name="LCD2x64">
            <timestamp>2008-9-19T11:22:46</timestamp>
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="304" x="64" y="-320" height="384" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="ifd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="cb16re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="AccelADXL345">
            <timestamp>2017-2-6T14:4:38</timestamp>
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
        <block symbolname="LCD2x64" name="XLXI_32">
            <blockpin signalname="Line1(63:0)" name="Line1(63:0)" />
            <blockpin signalname="XLXN_23(15:0)" name="Blank1(15:0)" />
            <blockpin signalname="Line2(63:0)" name="Line2(63:0)" />
            <blockpin signalname="XLXN_24(15:0)" name="Blank2(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
            <blockpin signalname="XLXN_67" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
        </block>
        <block symbolname="constant" name="XLXI_35">
            <attr value="0C30" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_23(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_36">
            <attr value="FFF0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_24(15:0)" name="O" />
        </block>
        <block symbolname="ifd" name="XLXI_40">
            <blockpin signalname="Clk_50MHz" name="C" />
            <blockpin signalname="btn_south" name="D" />
            <blockpin signalname="XLXN_70" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_48">
            <blockpin signalname="XLXN_67" name="G" />
        </block>
        <block symbolname="cb16re" name="XLXI_49">
            <blockpin signalname="Clk_50MHz" name="C" />
            <blockpin signalname="XLXN_7" name="CE" />
            <blockpin signalname="XLXN_70" name="R" />
            <blockpin name="CEO" />
            <blockpin signalname="Line2(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="AccelADXL345" name="XLXI_50">
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="INT1" name="INT1" />
            <blockpin signalname="Line1(63:48)" name="X(15:0)" />
            <blockpin signalname="Line1(39:24)" name="Y(15:0)" />
            <blockpin signalname="Line1(15:0)" name="Z(15:0)" />
            <blockpin signalname="XLXN_7" name="NewData" />
            <blockpin signalname="LED0" name="I2C_NACK" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_70" name="Reset" />
            <blockpin signalname="SW(3:0)" name="DataRate(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="LCD_E">
            <wire x2="3184" y1="944" y2="944" x1="2992" />
        </branch>
        <branch name="SF_CE">
            <wire x2="3184" y1="1200" y2="1200" x1="2992" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="3184" y1="1136" y2="1136" x1="2992" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="3184" y1="1072" y2="1072" x1="2992" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="3184" y1="1008" y2="1008" x1="2992" />
        </branch>
        <instance x="2560" y="1232" name="XLXI_32" orien="R0">
        </instance>
        <branch name="XLXN_23(15:0)">
            <wire x2="2560" y1="1008" y2="1008" x1="2480" />
        </branch>
        <instance x="2336" y="976" name="XLXI_35" orien="R0">
        </instance>
        <branch name="XLXN_24(15:0)">
            <wire x2="2560" y1="1136" y2="1136" x1="2480" />
        </branch>
        <instance x="2336" y="1104" name="XLXI_36" orien="R0">
        </instance>
        <branch name="Line2(63:0)">
            <wire x2="2560" y1="1072" y2="1072" x1="2256" />
            <wire x2="2256" y1="1072" y2="1568" x1="2256" />
            <wire x2="2256" y1="1568" y2="1616" x1="2256" />
        </branch>
        <branch name="Line2(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1568" type="branch" />
            <wire x2="2096" y1="1568" y2="1568" x1="2000" />
            <wire x2="2160" y1="1568" y2="1568" x1="2096" />
        </branch>
        <bustap x2="2160" y1="1568" y2="1568" x1="2256" />
        <branch name="Line1(63:0)">
            <wire x2="1808" y1="880" y2="912" x1="1808" />
            <wire x2="1808" y1="912" y2="944" x1="1808" />
            <wire x2="2560" y1="944" y2="944" x1="1808" />
            <wire x2="1808" y1="944" y2="976" x1="1808" />
            <wire x2="1808" y1="976" y2="1040" x1="1808" />
            <wire x2="1808" y1="1040" y2="1072" x1="1808" />
        </branch>
        <bustap x2="1712" y1="976" y2="976" x1="1808" />
        <bustap x2="1712" y1="912" y2="912" x1="1808" />
        <bustap x2="1712" y1="1040" y2="1040" x1="1808" />
        <branch name="XLXN_7">
            <wire x2="1552" y1="1104" y2="1104" x1="1456" />
            <wire x2="1552" y1="1104" y2="1632" x1="1552" />
            <wire x2="1616" y1="1632" y2="1632" x1="1552" />
        </branch>
        <branch name="Line1(63:48)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="912" type="branch" />
            <wire x2="1648" y1="912" y2="912" x1="1456" />
            <wire x2="1712" y1="912" y2="912" x1="1648" />
        </branch>
        <branch name="Line1(39:24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="976" type="branch" />
            <wire x2="1648" y1="976" y2="976" x1="1456" />
            <wire x2="1712" y1="976" y2="976" x1="1648" />
        </branch>
        <branch name="Line1(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1040" type="branch" />
            <wire x2="1648" y1="1040" y2="1040" x1="1456" />
            <wire x2="1712" y1="1040" y2="1040" x1="1648" />
        </branch>
        <instance x="512" y="1360" name="XLXI_40" orien="R0" />
        <branch name="btn_south">
            <wire x2="512" y1="1104" y2="1104" x1="384" />
        </branch>
        <branch name="SW(3:0)">
            <wire x2="1040" y1="720" y2="720" x1="384" />
        </branch>
        <branch name="SDA">
            <wire x2="2192" y1="720" y2="720" x1="1456" />
            <wire x2="3184" y1="544" y2="544" x1="2192" />
            <wire x2="2192" y1="544" y2="720" x1="2192" />
        </branch>
        <branch name="SCL">
            <wire x2="2256" y1="784" y2="784" x1="1456" />
            <wire x2="2256" y1="608" y2="784" x1="2256" />
            <wire x2="3184" y1="608" y2="608" x1="2256" />
        </branch>
        <branch name="INT1">
            <wire x2="2320" y1="848" y2="848" x1="1456" />
            <wire x2="2320" y1="672" y2="848" x1="2320" />
            <wire x2="3184" y1="672" y2="672" x1="2320" />
        </branch>
        <branch name="LED0">
            <wire x2="2096" y1="1168" y2="1168" x1="1456" />
            <wire x2="2096" y1="1168" y2="1456" x1="2096" />
            <wire x2="3184" y1="1456" y2="1456" x1="2096" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="2448" y1="1200" y2="1280" x1="2448" />
            <wire x2="2560" y1="1200" y2="1200" x1="2448" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="464" y1="2016" y2="2016" x1="384" />
            <wire x2="1008" y1="2016" y2="2016" x1="464" />
            <wire x2="1552" y1="2016" y2="2016" x1="1008" />
            <wire x2="2528" y1="2016" y2="2016" x1="1552" />
            <wire x2="512" y1="1232" y2="1232" x1="464" />
            <wire x2="464" y1="1232" y2="2016" x1="464" />
            <wire x2="1040" y1="1168" y2="1168" x1="1008" />
            <wire x2="1008" y1="1168" y2="2016" x1="1008" />
            <wire x2="1616" y1="1696" y2="1696" x1="1552" />
            <wire x2="1552" y1="1696" y2="2016" x1="1552" />
            <wire x2="2560" y1="1264" y2="1264" x1="2528" />
            <wire x2="2528" y1="1264" y2="2016" x1="2528" />
        </branch>
        <instance x="2384" y="1408" name="XLXI_48" orien="R0" />
        <instance x="1616" y="1824" name="XLXI_49" orien="R0" />
        <branch name="XLXN_70">
            <wire x2="912" y1="1104" y2="1104" x1="896" />
            <wire x2="912" y1="1104" y2="1792" x1="912" />
            <wire x2="1616" y1="1792" y2="1792" x1="912" />
            <wire x2="1040" y1="1104" y2="1104" x1="912" />
        </branch>
        <iomarker fontsize="28" x="3184" y="1136" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3184" y="944" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="3184" y="1072" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="3184" y="1008" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="3184" y="1200" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="384" y="1104" name="btn_south" orien="R180" />
        <iomarker fontsize="28" x="384" y="720" name="SW(3:0)" orien="R180" />
        <iomarker fontsize="28" x="3184" y="672" name="INT1" orien="R0" />
        <iomarker fontsize="28" x="3184" y="608" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="3184" y="544" name="SDA" orien="R0" />
        <iomarker fontsize="28" x="3184" y="1456" name="LED0" orien="R0" />
        <iomarker fontsize="28" x="384" y="2016" name="Clk_50MHz" orien="R180" />
        <instance x="1072" y="1136" name="XLXI_50" orien="R0">
        </instance>
        <text style="fontsize:64;fontname:Arial" x="2828" y="2272">Test_Accel</text>
        <text style="fontsize:40;fontname:Arial" x="2832" y="2352">J.Sugier 2017</text>
    </sheet>
</drawing>