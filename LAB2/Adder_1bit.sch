VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL NET1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_5
        SIGNAL NET2
        SIGNAL NET3
        SIGNAL NET4
        SIGNAL CO
        SIGNAL S
        SIGNAL A
        SIGNAL B
        SIGNAL C
        PORT Output CO
        PORT Output S
        PORT Input A
        PORT Input B
        PORT Input C
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
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A
            PIN O NET1
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 C
            PIN I1 NET1
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 B
            PIN I1 A
            PIN O NET2
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 C
            PIN I1 A
            PIN O NET3
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 C
            PIN I1 B
            PIN O NET4
        END BLOCK
        BEGIN BLOCK XLXI_6 or3
            PIN I0 NET4
            PIN I1 NET3
            PIN I2 NET2
            PIN O CO
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 848 496 R0
        INSTANCE XLXI_2 1344 528 R0
        INSTANCE XLXI_3 864 912 R0
        INSTANCE XLXI_4 864 1168 R0
        INSTANCE XLXI_5 864 1440 R0
        INSTANCE XLXI_6 1440 1168 R0
        BEGIN BRANCH NET1
            WIRE 1104 400 1168 400
            WIRE 1168 400 1344 400
            BEGIN DISPLAY 1168 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 368 656 384 656
            WIRE 384 656 624 656
            WIRE 624 656 1120 656
            WIRE 624 656 624 1104
            WIRE 624 1104 864 1104
            WIRE 624 1104 624 1376
            WIRE 624 1376 864 1376
            WIRE 1120 464 1344 464
            WIRE 1120 464 1120 656
            BEGIN DISPLAY 384 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 352 432 368 432
            WIRE 368 432 528 432
            WIRE 528 432 848 432
            WIRE 528 432 528 848
            WIRE 528 848 528 1312
            WIRE 528 1312 864 1312
            WIRE 528 848 864 848
            BEGIN DISPLAY 368 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NET2
            WIRE 1120 816 1184 816
            WIRE 1184 816 1440 816
            WIRE 1440 816 1440 976
            BEGIN DISPLAY 1184 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NET3
            WIRE 1120 1072 1184 1072
            WIRE 1184 1072 1280 1072
            WIRE 1280 1040 1280 1072
            WIRE 1280 1040 1440 1040
            BEGIN DISPLAY 1184 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NET4
            WIRE 1120 1344 1216 1344
            WIRE 1216 1344 1440 1344
            WIRE 1440 1104 1440 1344
            BEGIN DISPLAY 1216 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CO
            WIRE 1696 1040 1792 1040
            WIRE 1792 1040 1872 1040
            BEGIN DISPLAY 1792 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S
            WIRE 1600 432 1744 432
            WIRE 1744 432 1824 432
            WIRE 1824 432 1904 432
            BEGIN DISPLAY 1824 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A
            WIRE 352 368 368 368
            WIRE 368 368 416 368
            WIRE 416 368 848 368
            WIRE 416 368 416 784
            WIRE 416 784 416 1040
            WIRE 416 1040 864 1040
            WIRE 416 784 864 784
            BEGIN DISPLAY 368 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 352 368 A R180 28
        IOMARKER 352 432 B R180 28
        IOMARKER 368 656 C R180 28
        IOMARKER 1904 432 S R0 28
        IOMARKER 1872 1040 CO R0 28
    END SHEET
END SCHEMATIC
