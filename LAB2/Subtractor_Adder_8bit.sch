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
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL ADD_SUB
        SIGNAL S(23:16)
        SIGNAL S(31:24)
        SIGNAL S(15:8)
        SIGNAL S(7:0)
        SIGNAL XLXN_12
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL A(15:8)
        SIGNAL A(23:16)
        SIGNAL B(23:16)
        SIGNAL A(31:24)
        SIGNAL B(31:24)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL XLXN_25
        SIGNAL B(15:8)
        SIGNAL COUT
        SIGNAL S(31:0)
        PORT Input ADD_SUB
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output COUT
        PORT Output S(31:0)
        BEGIN BLOCKDEF Subtractor_8bit
            TIMESTAMP 2025 1 26 1 7 0
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -224 0 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
            LINE N 64 -160 0 -160 
        END BLOCKDEF
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
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Subtractor_8bit
            PIN A(7:0) B(7:0)
            PIN B(7:0) A(7:0)
            PIN Cin XLXN_4
            PIN COUT XLXN_1
            PIN S(7:0) S(7:0)
            PIN SUB ADD_SUB
        END BLOCK
        BEGIN BLOCK XLXI_2 Subtractor_8bit
            PIN A(7:0) B(15:8)
            PIN B(7:0) A(15:8)
            PIN Cin XLXN_1
            PIN COUT XLXN_2
            PIN S(7:0) S(15:8)
            PIN SUB ADD_SUB
        END BLOCK
        BEGIN BLOCK XLXI_3 Subtractor_8bit
            PIN A(7:0) B(23:16)
            PIN B(7:0) A(23:16)
            PIN Cin XLXN_2
            PIN COUT XLXN_3
            PIN S(7:0) S(23:16)
            PIN SUB ADD_SUB
        END BLOCK
        BEGIN BLOCK XLXI_4 Subtractor_8bit
            PIN A(7:0) B(31:24)
            PIN B(7:0) A(31:24)
            PIN Cin XLXN_3
            PIN COUT XLXN_5
            PIN S(7:0) S(31:24)
            PIN SUB ADD_SUB
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 ADD_SUB
            PIN I1 XLXN_25
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_6 xor2
            PIN I0 ADD_SUB
            PIN I1 XLXN_5
            PIN O COUT
        END BLOCK
        BEGIN BLOCK XLXI_8 gnd
            PIN G XLXN_25
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 608 1168 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1088 1168 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1568 1184 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2048 1200 R270
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 288 720 448 720
            WIRE 448 720 448 784
            WIRE 288 720 288 1248
            WIRE 288 1248 864 1248
            WIRE 864 1168 864 1248
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 768 720 928 720
            WIRE 928 720 928 784
            WIRE 768 720 768 1200
            WIRE 768 1200 1344 1200
            WIRE 1344 1184 1344 1200
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1408 736 1408 800
            WIRE 1408 736 1632 736
            WIRE 1632 736 1632 1280
            WIRE 1632 1280 1824 1280
            WIRE 1824 1200 1824 1280
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 384 1168 384 1344
            WIRE 384 1344 384 1360
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1888 672 1888 816
        END BRANCH
        BEGIN BRANCH S(23:16)
            WIRE 1344 624 1344 800
            BEGIN DISPLAY 1344 624 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 1824 624 1824 816
            BEGIN DISPLAY 1824 624 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 864 640 864 784
            BEGIN DISPLAY 864 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 384 640 384 784
            BEGIN DISPLAY 384 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_5 480 1600 R270
        BEGIN BRANCH ADD_SUB
            WIRE 224 1328 448 1328
            WIRE 448 1328 928 1328
            WIRE 928 1328 1408 1328
            WIRE 1408 1328 1888 1328
            WIRE 1888 1328 2128 1328
            WIRE 448 1328 448 1680
            WIRE 416 1600 416 1680
            WIRE 416 1680 448 1680
            WIRE 448 1168 448 1312
            WIRE 448 1312 448 1328
            WIRE 928 1168 928 1328
            WIRE 1408 1184 1408 1328
            WIRE 1888 1200 1888 1328
            WIRE 1952 672 1952 752
            WIRE 1952 752 2128 752
            WIRE 2128 752 2128 1328
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 512 1168 512 1424
            BEGIN DISPLAY 512 1424 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 576 1168 576 1424
            BEGIN DISPLAY 576 1424 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 992 1168 992 1424
            BEGIN DISPLAY 992 1424 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1472 1184 1472 1456
            BEGIN DISPLAY 1472 1456 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 1536 1184 1536 1440
            BEGIN DISPLAY 1536 1440 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 1952 1200 1952 1424
            BEGIN DISPLAY 1952 1424 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 2016 1200 2016 1424
            BEGIN DISPLAY 2016 1424 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_6 2016 672 R270
        IOMARKER 224 1328 ADD_SUB R180 28
        BEGIN BRANCH A(31:0)
            WIRE 1136 1408 1136 1520
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 1200 1408 1200 1520
        END BRANCH
        IOMARKER 1136 1520 A(31:0) R90 28
        IOMARKER 1200 1520 B(31:0) R90 28
        BEGIN BRANCH XLXN_25
            WIRE 352 1600 352 1632
        END BRANCH
        INSTANCE XLXI_8 288 1760 R0
        BEGIN BRANCH B(15:8)
            WIRE 1056 1168 1056 1440
            BEGIN DISPLAY 1056 1440 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH COUT
            WIRE 1920 384 1920 416
        END BRANCH
        IOMARKER 1920 384 COUT R270 28
        BEGIN BRANCH S(31:0)
            WIRE 1040 496 1040 608
        END BRANCH
        IOMARKER 1040 496 S(31:0) R270 28
    END SHEET
END SCHEMATIC
