VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL a(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL amask(1)
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL match
        SIGNAL amask(6:0)
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL amask(4)
        SIGNAL amask(3)
        SIGNAL amask(2)
        SIGNAL amask(0)
        SIGNAL b(23:16)
        SIGNAL b(55:0)
        SIGNAL a(55:0)
        PORT Output match
        PORT Input amask(6:0)
        PORT Input b(55:0)
        PORT Input a(55:0)
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_9 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_18
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_19
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_11 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_20
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_21
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_13 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_14 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_15 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_16 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_15
            PIN O XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_17 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_16
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_18 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_17
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_19 and7
            PIN I0 XLXN_29
            PIN I1 XLXN_30
            PIN I2 XLXN_26
            PIN I3 XLXN_27
            PIN I4 XLXN_25
            PIN I5 XLXN_24
            PIN I6 XLXN_23
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 576 1024 R0
        INSTANCE XLXI_2 576 1552 R0
        INSTANCE XLXI_3 576 2032 R0
        INSTANCE XLXI_4 576 2512 R0
        BEGIN BRANCH a(55:48)
            WIRE 368 704 576 704
            BEGIN DISPLAY 368 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 384 896 576 896
            BEGIN DISPLAY 384 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 400 1232 576 1232
            BEGIN DISPLAY 400 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 400 1424 576 1424
            BEGIN DISPLAY 400 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 400 1712 576 1712
            BEGIN DISPLAY 400 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 400 1904 576 1904
            BEGIN DISPLAY 400 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 400 2192 576 2192
            BEGIN DISPLAY 400 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 400 2384 576 2384
            BEGIN DISPLAY 400 2384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1120 928 R0
        INSTANCE XLXI_10 1104 1456 R0
        INSTANCE XLXI_11 1088 1952 R0
        INSTANCE XLXI_12 1088 2416 R0
        INSTANCE XLXI_13 1776 1008 R0
        INSTANCE XLXI_14 1776 1536 R0
        INSTANCE XLXI_15 1776 2016 R0
        BEGIN BRANCH a(23:16)
            WIRE 1568 688 1776 688
            BEGIN DISPLAY 1568 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1584 880 1776 880
            BEGIN DISPLAY 1584 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1600 1216 1776 1216
            BEGIN DISPLAY 1600 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1600 1408 1776 1408
            BEGIN DISPLAY 1600 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1600 1696 1776 1696
            BEGIN DISPLAY 1600 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1600 1888 1776 1888
            BEGIN DISPLAY 1600 1888 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_16 2320 912 R0
        INSTANCE XLXI_17 2304 1440 R0
        BEGIN BRANCH XLXN_15
            WIRE 2160 784 2320 784
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 2160 1312 2304 1312
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 2160 1792 2288 1792
        END BRANCH
        INSTANCE XLXI_18 2288 1920 R0
        BEGIN BRANCH XLXN_18
            WIRE 960 800 1120 800
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 960 1328 1104 1328
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 960 1808 1024 1808
            WIRE 1024 1808 1024 1824
            WIRE 1024 1824 1088 1824
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 960 2288 1088 2288
        END BRANCH
        INSTANCE XLXI_19 2784 1600 R0
        BEGIN BRANCH XLXN_23
            WIRE 1376 832 1440 832
            WIRE 1440 832 1440 1008
            WIRE 1440 1008 2224 1008
            WIRE 2224 1008 2224 1152
            WIRE 2224 1152 2784 1152
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1360 1360 1440 1360
            WIRE 1440 1360 1440 1536
            WIRE 1440 1536 2224 1536
            WIRE 2224 1216 2224 1536
            WIRE 2224 1216 2784 1216
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1344 1856 1424 1856
            WIRE 1424 1568 1424 1856
            WIRE 1424 1568 2208 1568
            WIRE 2208 1280 2208 1568
            WIRE 2208 1280 2784 1280
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1344 2320 2192 2320
            WIRE 2192 1408 2192 2320
            WIRE 2192 1408 2784 1408
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 2560 1344 2784 1344
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 2256 1376 2272 1376
            WIRE 2272 1376 2304 1376
            BEGIN DISPLAY 2256 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 2544 1824 2784 1824
            WIRE 2784 1536 2784 1824
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 2576 816 2672 816
            WIRE 2672 816 2672 1472
            WIRE 2672 1472 2784 1472
        END BRANCH
        BEGIN BRANCH match
            WIRE 3040 1344 3072 1344
        END BRANCH
        IOMARKER 3072 1344 match R0 28
        BEGIN BRANCH amask(6:0)
            WIRE 1360 416 1488 416
            BEGIN DISPLAY 1488 416 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 1360 416 amask(6:0) R180 28
        BEGIN BRANCH amask(6)
            WIRE 1040 864 1120 864
            BEGIN DISPLAY 1040 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 1008 1392 1104 1392
            BEGIN DISPLAY 1008 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 1024 1888 1088 1888
            BEGIN DISPLAY 1024 1888 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1024 2352 1088 2352
            BEGIN DISPLAY 1024 2352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 2256 848 2320 848
            BEGIN DISPLAY 2256 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 2240 1856 2288 1856
            BEGIN DISPLAY 2240 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 816 464 912 464
        END BRANCH
        BEGIN BRANCH a(55:0)
            WIRE 816 400 896 400
        END BRANCH
        IOMARKER 816 400 a(55:0) R180 28
        IOMARKER 816 464 b(55:0) R180 28
    END SHEET
END SCHEMATIC
