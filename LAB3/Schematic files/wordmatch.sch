VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL datacomp(55:0)
        SIGNAL XLXN_18(55:0)
        SIGNAL XLXN_20(55:0)
        SIGNAL datain(111:0)
        SIGNAL match
        SIGNAL wildcard(6:0)
        SIGNAL XLXN_42(6:0)
        SIGNAL datain(63:8)
        SIGNAL datain(55:0)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        PORT Input datacomp(55:0)
        PORT Input datain(111:0)
        PORT Output match
        PORT Input wildcard(6:0)
        BEGIN BLOCKDEF Comparator
            TIMESTAMP 2025 1 30 4 19 31
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_8 Comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(55:0)
            PIN match XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_1 Comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(63:8)
            PIN match XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_2 Comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(79:24)
            PIN match XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_3 Comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(87:32)
            PIN match XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_4 Comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(95:40)
            PIN match XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_5 Comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(103:48)
            PIN match XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_6 Comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(111:56)
            PIN match XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_7 Comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0)
            PIN match XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_10 or8
            PIN I0 XLXN_2
            PIN I1 XLXN_3
            PIN I2 XLXN_4
            PIN I3 XLXN_5
            PIN I4 XLXN_6
            PIN I5 XLXN_7
            PIN I6 XLXN_14
            PIN I7 XLXN_15
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 848 672 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 864 960 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 864 1248 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 864 1504 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 880 1776 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 880 2064 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 912 2352 R0
        END INSTANCE
        INSTANCE XLXI_10 2096 1712 R0
        BEGIN BRANCH XLXN_2
            WIRE 1296 2192 2096 2192
            WIRE 2096 1648 2096 2192
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1264 1904 1680 1904
            WIRE 1680 1584 1680 1904
            WIRE 1680 1584 2096 1584
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1264 1616 1664 1616
            WIRE 1664 1520 1664 1616
            WIRE 1664 1520 2096 1520
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1248 1344 1664 1344
            WIRE 1664 1344 1664 1456
            WIRE 1664 1456 2096 1456
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1248 1088 1680 1088
            WIRE 1680 1088 1680 1392
            WIRE 1680 1392 2096 1392
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1248 800 1696 800
            WIRE 1696 800 1696 1328
            WIRE 1696 1328 2096 1328
        END BRANCH
        BEGIN INSTANCE XLXI_8 816 320 R0
        END INSTANCE
        BEGIN BRANCH XLXN_14
            WIRE 1232 512 1712 512
            WIRE 1712 512 1712 1264
            WIRE 1712 1264 2096 1264
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1200 160 2096 160
            WIRE 2096 160 2096 1200
        END BRANCH
        BEGIN BRANCH datacomp(55:0)
            WIRE 560 160 608 160
            WIRE 608 160 816 160
            WIRE 608 160 608 512
            WIRE 608 512 848 512
            WIRE 608 512 608 784
            WIRE 608 784 608 800
            WIRE 608 800 864 800
            WIRE 608 800 608 1088
            WIRE 608 1088 864 1088
            WIRE 608 1088 608 1344
            WIRE 608 1344 864 1344
            WIRE 608 1344 608 1616
            WIRE 608 1616 880 1616
            WIRE 608 1616 608 1904
            WIRE 608 1904 608 2192
            WIRE 608 2192 912 2192
            WIRE 608 1904 880 1904
        END BRANCH
        IOMARKER 560 160 datacomp(55:0) R180 28
        BEGIN BRANCH datain(111:0)
            WIRE 1280 48 1424 48
        END BRANCH
        IOMARKER 1280 48 datain(111:0) R180 28
        BEGIN BRANCH match
            WIRE 2352 1424 2384 1424
        END BRANCH
        IOMARKER 2384 1424 match R0 28
        BEGIN BRANCH wildcard(6:0)
            WIRE 560 224 640 224
            WIRE 640 224 816 224
            WIRE 640 224 640 576
            WIRE 640 576 848 576
            WIRE 640 576 640 864
            WIRE 640 864 864 864
            WIRE 640 864 640 1152
            WIRE 640 1152 864 1152
            WIRE 640 1152 640 1408
            WIRE 640 1408 864 1408
            WIRE 640 1408 640 1680
            WIRE 640 1680 880 1680
            WIRE 640 1680 640 1968
            WIRE 640 1968 640 1968
            WIRE 640 1968 640 2256
            WIRE 640 2256 912 2256
            WIRE 640 1968 880 1968
        END BRANCH
        IOMARKER 560 224 wildcard(6:0) R180 28
        BEGIN BRANCH datain(63:8)
            WIRE 768 640 848 640
            BEGIN DISPLAY 768 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(55:0)
            WIRE 752 288 816 288
            BEGIN DISPLAY 752 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 800 928 864 928
            BEGIN DISPLAY 800 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 784 1216 864 1216
            BEGIN DISPLAY 784 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 784 1472 864 1472
            BEGIN DISPLAY 784 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 784 1744 880 1744
            BEGIN DISPLAY 784 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 784 2032 880 2032
            BEGIN DISPLAY 784 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
