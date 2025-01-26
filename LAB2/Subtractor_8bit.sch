VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_13
        SIGNAL XLXN_15
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_14
        SIGNAL XLXN_16
        SIGNAL B(0)
        SIGNAL B(1)
        SIGNAL B(2)
        SIGNAL B(3)
        SIGNAL B(4)
        SIGNAL B(5)
        SIGNAL B(6)
        SIGNAL B(7)
        SIGNAL SUB
        SIGNAL XLXN_12
        SIGNAL A(7)
        SIGNAL A(6)
        SIGNAL A(5)
        SIGNAL A(4)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL Cin
        SIGNAL S(0)
        SIGNAL S(1)
        SIGNAL S(2)
        SIGNAL S(3)
        SIGNAL S(4)
        SIGNAL S(5)
        SIGNAL S(6)
        SIGNAL S(7)
        SIGNAL COUT
        SIGNAL XLXN_26
        SIGNAL XLXN_25
        SIGNAL XLXN_24
        SIGNAL XLXN_23
        SIGNAL XLXN_22
        SIGNAL XLXN_21
        SIGNAL XLXN_20
        SIGNAL S(7:0)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        PORT Input SUB
        PORT Input Cin
        PORT Output COUT
        PORT Output S(7:0)
        PORT Input A(7:0)
        PORT Input B(7:0)
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF Adder_1bit
            TIMESTAMP 2025 1 25 6 54 48
            RECTANGLE N -128 -192 0 -64 
            LINE N -96 -64 -96 0 
            LINE N -32 -64 -32 0 
            LINE N -32 -192 -32 -256 
            LINE N -96 -192 -96 -256 
            LINE N -128 -96 -192 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_9 xor2
            PIN I0 SUB
            PIN I1 B(0)
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_18 xor2
            PIN I0 SUB
            PIN I1 B(1)
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_19 xor2
            PIN I0 SUB
            PIN I1 B(2)
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_20 xor2
            PIN I0 SUB
            PIN I1 B(3)
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_21 xor2
            PIN I0 SUB
            PIN I1 B(4)
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_22 xor2
            PIN I0 SUB
            PIN I1 B(5)
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_23 xor2
            PIN I0 SUB
            PIN I1 B(6)
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_24 xor2
            PIN I0 SUB
            PIN I1 B(7)
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_15 Adder_1bit
            PIN A A(5)
            PIN B XLXN_19
            PIN CO XLXN_25
            PIN S S(5)
            PIN C XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_14 Adder_1bit
            PIN A A(4)
            PIN B XLXN_16
            PIN CO XLXN_24
            PIN S S(4)
            PIN C XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_13 Adder_1bit
            PIN A A(3)
            PIN B XLXN_15
            PIN CO XLXN_23
            PIN S S(3)
            PIN C XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_12 Adder_1bit
            PIN A A(2)
            PIN B XLXN_14
            PIN CO XLXN_22
            PIN S S(2)
            PIN C XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_17 Adder_1bit
            PIN A A(7)
            PIN B XLXN_18
            PIN CO COUT
            PIN S S(7)
            PIN C XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_16 Adder_1bit
            PIN A A(6)
            PIN B XLXN_17
            PIN CO XLXN_26
            PIN S S(6)
            PIN C XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_11 Adder_1bit
            PIN A A(1)
            PIN B XLXN_13
            PIN CO XLXN_21
            PIN S S(1)
            PIN C XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_10 Adder_1bit
            PIN A A(0)
            PIN B XLXN_12
            PIN CO XLXN_20
            PIN S S(0)
            PIN C Cin
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_14
            WIRE 1040 896 1040 912
            WIRE 1040 912 1040 1040
            WIRE 1040 1040 1168 1040
            WIRE 1168 1040 1168 1168
            WIRE 1168 1168 1168 1184
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1616 896 1616 912
            WIRE 1616 912 1616 1040
            WIRE 1616 1040 1744 1040
            WIRE 1744 1040 1744 1168
            WIRE 1744 1168 1744 1184
        END BRANCH
        INSTANCE XLXI_9 688 1440 R270
        INSTANCE XLXI_18 976 1440 R270
        INSTANCE XLXI_19 1264 1440 R270
        INSTANCE XLXI_20 1552 1440 R270
        INSTANCE XLXI_21 1840 1440 R270
        INSTANCE XLXI_22 2128 1440 R270
        INSTANCE XLXI_23 2416 1440 R270
        INSTANCE XLXI_24 2704 1440 R270
        BEGIN BRANCH B(0)
            WIRE 560 1440 560 1536
            BEGIN DISPLAY 560 1536 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 848 1440 848 1552
            BEGIN DISPLAY 848 1552 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 1136 1440 1136 1536
            BEGIN DISPLAY 1136 1536 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1424 1440 1424 1536
            BEGIN DISPLAY 1424 1536 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 1712 1440 1712 1536
            BEGIN DISPLAY 1712 1536 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 2000 1440 2000 1536
            BEGIN DISPLAY 2000 1536 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 2288 1440 2288 1536
            BEGIN DISPLAY 2288 1536 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 2576 1440 2576 1520
            BEGIN DISPLAY 2576 1520 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH SUB
            WIRE 400 1456 624 1456
            WIRE 624 1456 912 1456
            WIRE 912 1456 1200 1456
            WIRE 1200 1456 1488 1456
            WIRE 1488 1456 1776 1456
            WIRE 1776 1456 2064 1456
            WIRE 2064 1456 2352 1456
            WIRE 2352 1456 2640 1456
            WIRE 624 1440 624 1456
            WIRE 912 1440 912 1456
            WIRE 1200 1440 1200 1456
            WIRE 1488 1440 1488 1456
            WIRE 1776 1440 1776 1456
            WIRE 2064 1440 2064 1456
            WIRE 2352 1440 2352 1456
            WIRE 2640 1440 2640 1456
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 752 896 752 912
            WIRE 752 912 880 912
            WIRE 880 912 880 1168
            WIRE 880 1168 880 1184
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1328 912 1328 928
            WIRE 1328 928 1456 928
            WIRE 1456 928 1456 1168
            WIRE 1456 1168 1456 1184
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1904 912 1904 928
            WIRE 1904 928 2032 928
            WIRE 2032 928 2032 1168
            WIRE 2032 1168 2032 1184
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 2192 912 2192 928
            WIRE 2192 928 2320 928
            WIRE 2320 928 2320 1168
            WIRE 2320 1168 2320 1184
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 2496 896 2496 912
            WIRE 2496 912 2608 912
            WIRE 2608 912 2608 1168
            WIRE 2608 1168 2608 1184
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 496 880 496 896
            WIRE 496 896 496 1040
            WIRE 496 1040 592 1040
            WIRE 592 1040 592 1168
            WIRE 592 1168 592 1184
        END BRANCH
        BEGIN INSTANCE XLXI_15 1936 912 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_14 1648 896 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_13 1360 912 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 1072 896 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_17 2528 896 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_16 2224 912 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 784 896 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 528 880 R0
        END INSTANCE
        BEGIN BRANCH A(7)
            WIRE 2432 896 2432 1056
            BEGIN DISPLAY 2432 1056 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 2128 912 2128 1040
            BEGIN DISPLAY 2128 1040 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 1840 912 1840 992
            BEGIN DISPLAY 1840 992 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 1552 896 1552 992
            BEGIN DISPLAY 1552 992 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1264 912 1264 992
            BEGIN DISPLAY 1264 992 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 976 896 976 976
            BEGIN DISPLAY 976 976 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 688 896 688 992
            BEGIN DISPLAY 688 992 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 432 880 432 976
            BEGIN DISPLAY 432 976 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 272 784 336 784
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 432 512 432 624
            BEGIN DISPLAY 432 512 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 688 512 688 640
            BEGIN DISPLAY 688 512 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 976 512 976 640
            BEGIN DISPLAY 976 512 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1264 528 1264 656
            BEGIN DISPLAY 1264 528 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 1552 512 1552 640
            BEGIN DISPLAY 1552 512 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 1840 512 1840 656
            BEGIN DISPLAY 1840 512 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 2128 512 2128 656
            BEGIN DISPLAY 2128 512 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 2432 512 2432 640
            BEGIN DISPLAY 2432 512 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH COUT
            WIRE 2496 512 2496 640
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 2192 592 2192 656
            WIRE 2192 592 2288 592
            WIRE 2288 592 2288 800
            WIRE 2288 800 2336 800
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1904 576 1904 656
            WIRE 1904 576 2000 576
            WIRE 2000 576 2000 816
            WIRE 2000 816 2032 816
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1616 576 1616 640
            WIRE 1616 576 1712 576
            WIRE 1712 576 1712 816
            WIRE 1712 816 1744 816
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1328 576 1328 656
            WIRE 1328 576 1424 576
            WIRE 1424 576 1424 800
            WIRE 1424 800 1456 800
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 1040 576 1040 640
            WIRE 1040 576 1136 576
            WIRE 1136 576 1136 816
            WIRE 1136 816 1168 816
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 752 560 752 640
            WIRE 752 560 848 560
            WIRE 848 560 848 800
            WIRE 848 800 880 800
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 496 544 496 624
            WIRE 496 544 576 544
            WIRE 576 544 576 800
            WIRE 576 800 592 800
        END BRANCH
        IOMARKER 272 784 Cin R180 28
        IOMARKER 2496 512 COUT R270 28
        IOMARKER 400 1456 SUB R180 28
        BEGIN BRANCH S(7:0)
            WIRE 1376 336 1376 496
        END BRANCH
        IOMARKER 1376 336 S(7:0) R270 28
        BEGIN BRANCH A(7:0)
            WIRE 1264 1584 1264 1728
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1344 1584 1344 1728
        END BRANCH
        IOMARKER 1344 1728 B(7:0) R90 28
        IOMARKER 1264 1728 A(7:0) R90 28
    END SHEET
END SCHEMATIC
