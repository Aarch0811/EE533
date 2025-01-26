VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL Cout
        SIGNAL S(7)
        SIGNAL S(6)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL A(1)
        SIGNAL B(1)
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL A(4)
        SIGNAL A(5)
        SIGNAL B(4)
        SIGNAL B(5)
        SIGNAL A(6)
        SIGNAL B(6)
        SIGNAL B(7)
        SIGNAL A(7)
        SIGNAL Cin
        SIGNAL S(7:0)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        PORT Output Cout
        PORT Input Cin
        PORT Output S(7:0)
        PORT Input A(7:0)
        PORT Input B(7:0)
        BEGIN BLOCKDEF Adder_1bit
            TIMESTAMP 2025 1 25 6 54 48
            RECTANGLE N -128 -192 0 -64 
            LINE N -96 -64 -96 0 
            LINE N -32 -64 -32 0 
            LINE N -32 -192 -32 -256 
            LINE N -96 -192 -96 -256 
            LINE N -128 -96 -192 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Adder_1bit
            PIN A A(0)
            PIN B B(0)
            PIN CO XLXN_1
            PIN S S(0)
            PIN C Cin
        END BLOCK
        BEGIN BLOCK XLXI_2 Adder_1bit
            PIN A A(1)
            PIN B B(1)
            PIN CO XLXN_2
            PIN S S(1)
            PIN C XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 Adder_1bit
            PIN A A(2)
            PIN B B(2)
            PIN CO XLXN_4
            PIN S S(2)
            PIN C XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_4 Adder_1bit
            PIN A A(3)
            PIN B B(3)
            PIN CO XLXN_5
            PIN S S(3)
            PIN C XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_5 Adder_1bit
            PIN A A(4)
            PIN B B(4)
            PIN CO XLXN_6
            PIN S S(4)
            PIN C XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_6 Adder_1bit
            PIN A A(5)
            PIN B B(5)
            PIN CO XLXN_7
            PIN S S(5)
            PIN C XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_7 Adder_1bit
            PIN A A(6)
            PIN B B(6)
            PIN CO XLXN_8
            PIN S S(6)
            PIN C XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_8 Adder_1bit
            PIN A A(7)
            PIN B B(7)
            PIN CO Cout
            PIN S S(7)
            PIN C XLXN_8
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 384 1360 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 672 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 976 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1248 1360 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1568 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1872 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2208 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2528 1376 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 352 1040 352 1104
            WIRE 352 1040 448 1040
            WIRE 448 1040 448 1280
            WIRE 448 1280 480 1280
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 640 1056 640 1120
            WIRE 640 1056 736 1056
            WIRE 736 1056 736 1280
            WIRE 736 1280 784 1280
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 944 1056 944 1120
            WIRE 944 1056 1040 1056
            WIRE 1040 1056 1040 1264
            WIRE 1040 1264 1056 1264
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1216 1024 1216 1104
            WIRE 1216 1024 1312 1024
            WIRE 1312 1024 1312 1280
            WIRE 1312 1280 1376 1280
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1536 1056 1536 1120
            WIRE 1536 1056 1632 1056
            WIRE 1632 1056 1632 1280
            WIRE 1632 1280 1680 1280
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1840 1056 1840 1120
            WIRE 1840 1056 1936 1056
            WIRE 1936 1056 1936 1280
            WIRE 1936 1280 2016 1280
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 2176 1056 2176 1120
            WIRE 2176 1056 2272 1056
            WIRE 2272 1056 2272 1280
            WIRE 2272 1280 2336 1280
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2496 992 2496 1040
            WIRE 2496 1040 2496 1120
            BEGIN DISPLAY 2496 1040 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 2432 992 2432 1024
            WIRE 2432 1024 2432 1120
            BEGIN DISPLAY 2432 1024 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 2112 992 2112 1024
            WIRE 2112 1024 2112 1120
            BEGIN DISPLAY 2112 1024 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 1776 992 1776 1024
            WIRE 1776 1024 1776 1120
            BEGIN DISPLAY 1776 1024 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 1472 992 1472 1056
            WIRE 1472 1056 1472 1120
            BEGIN DISPLAY 1472 1056 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1152 992 1152 1040
            WIRE 1152 1040 1152 1104
            BEGIN DISPLAY 1152 1040 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 880 976 880 1056
            WIRE 880 1056 880 1120
            BEGIN DISPLAY 880 1056 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 576 976 576 1072
            WIRE 576 1072 576 1120
            BEGIN DISPLAY 576 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 288 992 288 1056
            WIRE 288 1056 288 1104
            BEGIN DISPLAY 288 1056 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 288 1360 288 1392
            WIRE 288 1392 288 1456
            BEGIN DISPLAY 288 1392 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 352 1360 352 1392
            WIRE 352 1392 352 1456
            BEGIN DISPLAY 352 1392 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 576 1376 576 1424
            WIRE 576 1424 576 1472
            BEGIN DISPLAY 576 1424 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 640 1376 640 1440
            WIRE 640 1440 640 1472
            BEGIN DISPLAY 640 1440 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 880 1376 880 1440
            WIRE 880 1440 880 1488
            BEGIN DISPLAY 880 1440 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 944 1376 944 1408
            WIRE 944 1408 944 1472
            BEGIN DISPLAY 944 1408 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1152 1360 1152 1408
            WIRE 1152 1408 1152 1472
            BEGIN DISPLAY 1152 1408 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1216 1360 1216 1408
            WIRE 1216 1408 1216 1440
            BEGIN DISPLAY 1216 1408 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 1472 1376 1472 1392
            WIRE 1472 1392 1472 1440
            BEGIN DISPLAY 1472 1392 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 1776 1376 1776 1392
            WIRE 1776 1392 1776 1440
            BEGIN DISPLAY 1776 1392 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 1536 1376 1536 1408
            WIRE 1536 1408 1536 1440
            BEGIN DISPLAY 1536 1408 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 1840 1376 1840 1408
            WIRE 1840 1408 1840 1456
            BEGIN DISPLAY 1840 1408 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 2112 1376 2112 1408
            WIRE 2112 1408 2112 1456
            BEGIN DISPLAY 2112 1408 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 2176 1376 2176 1392
            WIRE 2176 1392 2176 1440
            BEGIN DISPLAY 2176 1392 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 2496 1376 2496 1408
            WIRE 2496 1408 2496 1456
            BEGIN DISPLAY 2496 1408 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 2432 1376 2432 1424
            WIRE 2432 1424 2432 1456
            BEGIN DISPLAY 2432 1424 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 128 1264 144 1264
            WIRE 144 1264 192 1264
            BEGIN DISPLAY 144 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1360 720 1360 832
        END BRANCH
        IOMARKER 1360 720 S(7:0) R270 28
        BEGIN BRANCH A(7:0)
            WIRE 1248 1584 1248 1664
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1360 1584 1360 1664
        END BRANCH
        IOMARKER 1248 1664 A(7:0) R90 28
        IOMARKER 1360 1664 B(7:0) R90 28
        IOMARKER 2496 992 Cout R270 28
        IOMARKER 128 1264 Cin R180 28
    END SHEET
END SCHEMATIC
