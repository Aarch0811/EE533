VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CLR_IN
        SIGNAL CLK
        SIGNAL A(7:0)
        SIGNAL A(15:8)
        SIGNAL A(23:16)
        SIGNAL A(31:24)
        SIGNAL Q(7:0)
        SIGNAL Q(15:8)
        SIGNAL Q(23:16)
        SIGNAL Q(31:24)
        SIGNAL CE
        SIGNAL Q(31:0)
        SIGNAL A(31:0)
        PORT Input CLR_IN
        PORT Input CLK
        PORT Input CE
        PORT Output Q(31:0)
        PORT Input A(31:0)
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
        BEGIN BLOCK XLXI_5 fd8ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR_IN
            PIN D(7:0) A(23:16)
            PIN Q(7:0) Q(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd8ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR_IN
            PIN D(7:0) A(31:24)
            PIN Q(7:0) Q(31:24)
        END BLOCK
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR_IN
            PIN D(7:0) A(15:8)
            PIN Q(7:0) Q(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR_IN
            PIN D(7:0) A(7:0)
            PIN Q(7:0) Q(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_5 1472 1520 R0
        INSTANCE XLXI_2 1472 1904 R0
        INSTANCE XLXI_1 1456 1072 R0
        INSTANCE XLXI_6 1440 624 R0
        BEGIN BRANCH A(7:0)
            WIRE 1280 368 1440 368
            BEGIN DISPLAY 1280 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 1264 816 1456 816
            BEGIN DISPLAY 1264 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1280 1264 1472 1264
            BEGIN DISPLAY 1280 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 1280 1648 1472 1648
            BEGIN DISPLAY 1280 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(7:0)
            WIRE 1824 368 1920 368
            BEGIN DISPLAY 1920 368 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(15:8)
            WIRE 1840 816 1952 816
            BEGIN DISPLAY 1952 816 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(23:16)
            WIRE 1856 1264 1968 1264
            BEGIN DISPLAY 1968 1264 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(31:24)
            WIRE 1856 1648 1968 1648
            BEGIN DISPLAY 1968 1648 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(31:0)
            WIRE 1968 1008 2160 1008
        END BRANCH
        IOMARKER 2160 1008 Q(31:0) R0 28
        BEGIN BRANCH A(31:0)
            WIRE 1008 1024 1136 1024
        END BRANCH
        IOMARKER 1008 1024 A(31:0) R180 28
        BEGIN BRANCH CE
            WIRE 1264 672 1424 672
            WIRE 1424 672 1424 880
            WIRE 1424 880 1440 880
            WIRE 1440 880 1456 880
            WIRE 1440 880 1440 1328
            WIRE 1440 1328 1472 1328
            WIRE 1264 1328 1440 1328
            WIRE 1264 1328 1264 1712
            WIRE 1264 1712 1440 1712
            WIRE 1440 1712 1456 1712
            WIRE 1456 1712 1472 1712
            WIRE 1408 432 1424 432
            WIRE 1424 432 1440 432
            WIRE 1424 432 1424 672
        END BRANCH
        IOMARKER 1264 672 CE R180 28
        BEGIN BRANCH CLR_IN
            WIRE 1152 608 1408 608
            WIRE 1408 608 1408 1040
            WIRE 1408 1040 1424 1040
            WIRE 1424 1040 1456 1040
            WIRE 1408 1040 1408 1488
            WIRE 1408 1488 1440 1488
            WIRE 1440 1488 1472 1488
            WIRE 1408 1488 1408 1872
            WIRE 1408 1872 1440 1872
            WIRE 1440 1872 1472 1872
            WIRE 1408 592 1440 592
            WIRE 1408 592 1408 608
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1168 544 1376 544
            WIRE 1376 544 1376 928
            WIRE 1376 928 1424 928
            WIRE 1424 928 1424 944
            WIRE 1424 944 1456 944
            WIRE 1376 496 1408 496
            WIRE 1408 496 1440 496
            WIRE 1376 496 1376 544
            WIRE 1392 944 1424 944
            WIRE 1392 944 1392 1376
            WIRE 1392 1376 1440 1376
            WIRE 1440 1376 1440 1392
            WIRE 1440 1392 1472 1392
            WIRE 1424 1392 1440 1392
            WIRE 1424 1392 1424 1776
            WIRE 1424 1776 1440 1776
            WIRE 1440 1776 1472 1776
        END BRANCH
        IOMARKER 1168 544 CLK R180 28
        IOMARKER 1152 608 CLR_IN R180 28
    END SHEET
END SCHEMATIC
