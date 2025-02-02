VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        BEGIN SIGNAL d(15:0)
        END SIGNAL
        SIGNAL d(31:16)
        SIGNAL d(47:32)
        SIGNAL d(63:48)
        SIGNAL d(71:64)
        SIGNAL CE
        SIGNAL CLK
        SIGNAL CLR
        SIGNAL q(71:64)
        SIGNAL q(63:48)
        SIGNAL q(47:32)
        SIGNAL q(31:16)
        SIGNAL q(15:0)
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        PORT Input CE
        PORT Input CLK
        PORT Input CLR
        PORT Input d(71:0)
        PORT Output q(71:0)
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_9 fd8ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1344 2208 R0
        INSTANCE XLXI_2 1344 1776 R0
        INSTANCE XLXI_3 1344 1344 R0
        INSTANCE XLXI_4 1344 928 R0
        INSTANCE XLXI_9 1344 496 R0
        BEGIN BRANCH d(15:0)
            WIRE 1136 1952 1344 1952
            BEGIN DISPLAY 1136 1952 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1136 1520 1344 1520
            BEGIN DISPLAY 1136 1520 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1120 1088 1344 1088
            BEGIN DISPLAY 1120 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1088 672 1344 672
            BEGIN DISPLAY 1088 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(71:64)
            WIRE 1120 240 1344 240
            BEGIN DISPLAY 1120 240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1136 2016 1312 2016
            WIRE 1312 2016 1344 2016
            WIRE 1312 304 1344 304
            WIRE 1312 304 1312 736
            WIRE 1312 736 1344 736
            WIRE 1312 736 1312 1152
            WIRE 1312 1152 1344 1152
            WIRE 1312 1152 1312 1568
            WIRE 1312 1568 1312 1584
            WIRE 1312 1584 1312 2016
            WIRE 1312 1584 1344 1584
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1136 2080 1280 2080
            WIRE 1280 2080 1344 2080
            WIRE 1280 368 1344 368
            WIRE 1280 368 1280 800
            WIRE 1280 800 1344 800
            WIRE 1280 800 1280 1216
            WIRE 1280 1216 1280 1648
            WIRE 1280 1648 1280 2080
            WIRE 1280 1648 1344 1648
            WIRE 1280 1216 1344 1216
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 1136 2176 1232 2176
            WIRE 1232 2176 1344 2176
            WIRE 1232 464 1344 464
            WIRE 1232 464 1232 896
            WIRE 1232 896 1344 896
            WIRE 1232 896 1232 1312
            WIRE 1232 1312 1344 1312
            WIRE 1232 1312 1232 1744
            WIRE 1232 1744 1232 2176
            WIRE 1232 1744 1344 1744
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1728 240 1856 240
            BEGIN DISPLAY 1856 240 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1728 672 1872 672
            BEGIN DISPLAY 1872 672 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1728 1088 1888 1088
            BEGIN DISPLAY 1888 1088 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1728 1520 1888 1520
            BEGIN DISPLAY 1888 1520 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1728 1952 1920 1952
            BEGIN DISPLAY 1920 1952 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 1136 2176 CLR R180 28
        IOMARKER 1136 2080 CLK R180 28
        IOMARKER 1136 2016 CE R180 28
        BEGIN BRANCH d(71:0)
            WIRE 832 1328 992 1328
        END BRANCH
        IOMARKER 832 1328 d(71:0) R180 28
        BEGIN BRANCH q(71:0)
            WIRE 2048 1296 2208 1296
        END BRANCH
        IOMARKER 2208 1296 q(71:0) R0 28
    END SHEET
END SCHEMATIC
