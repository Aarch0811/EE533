VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(31:0)
        SIGNAL XLXN_7
        SIGNAL Count(31:0)
        SIGNAL CLR
        SIGNAL CLK
        SIGNAL CE
        SIGNAL XLXN_15
        SIGNAL B(31:0)
        PORT Output Count(31:0)
        PORT Input CLR
        PORT Input CLK
        PORT Input CE
        PORT Input B(31:0)
        BEGIN BLOCKDEF Adder_32bit
            TIMESTAMP 2025 1 25 8 16 52
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -160 0 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF DFF_32bit
            TIMESTAMP 2025 1 26 3 13 29
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -96 0 -96 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Adder_32bit
            PIN CIN_32 XLXN_7
            PIN A(31:0) Count(31:0)
            PIN B(31:0) B(31:0)
            PIN COUT XLXN_15
            PIN S(31:0) XLXN_1(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 DFF_32bit
            PIN A(31:0) XLXN_1(31:0)
            PIN CE CE
            PIN CLK CLK
            PIN CLR_IN CLR
            PIN Q(31:0) Count(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 gnd
            PIN G XLXN_7
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 752 1216 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1(31:0)
            WIRE 1136 1056 1504 1056
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 560 1056 752 1056
        END BRANCH
        BEGIN INSTANCE XLXI_7 1504 1088 R0
        END INSTANCE
        BEGIN BRANCH Count(31:0)
            WIRE 672 1120 752 1120
            WIRE 672 1120 672 1264
            WIRE 672 1264 1968 1264
            WIRE 1888 864 1968 864
            WIRE 1968 864 1968 1264
            WIRE 1968 864 2096 864
        END BRANCH
        INSTANCE XLXI_8 496 1184 R0
        BEGIN BRANCH CLR
            WIRE 1392 928 1504 928
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1392 864 1504 864
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1392 992 1504 992
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1136 1120 1216 1120
        END BRANCH
        IOMARKER 1392 864 CLK R180 28
        IOMARKER 1392 928 CLR R180 28
        IOMARKER 1392 992 CE R180 28
        BEGIN BRANCH B(31:0)
            WIRE 528 1184 736 1184
            WIRE 736 1184 752 1184
        END BRANCH
        IOMARKER 2096 864 Count(31:0) R0 28
        IOMARKER 528 1184 B(31:0) R180 28
    END SHEET
END SCHEMATIC
