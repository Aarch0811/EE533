VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CIN_32
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL COUT
        SIGNAL S(31:24)
        SIGNAL A(31:24)
        SIGNAL B(31:24)
        SIGNAL A(23:16)
        SIGNAL B(23:16)
        SIGNAL S(23:16)
        SIGNAL S(15:8)
        SIGNAL S(7:0)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL A(15:8)
        SIGNAL B(15:8)
        SIGNAL S(31:0)
        PORT Input CIN_32
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output COUT
        PORT Output S(31:0)
        BEGIN BLOCKDEF Adder_8bit
            TIMESTAMP 2025 1 25 7 32 45
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
        BEGIN BLOCK XLXI_1 Adder_8bit
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN Cin CIN_32
            PIN Cout XLXN_4
            PIN S(7:0) S(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 Adder_8bit
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN Cin XLXN_4
            PIN Cout XLXN_5
            PIN S(7:0) S(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_3 Adder_8bit
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN Cin XLXN_5
            PIN Cout XLXN_6
            PIN S(7:0) S(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 Adder_8bit
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN Cin XLXN_6
            PIN Cout COUT
            PIN S(7:0) S(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 640 1392 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1152 1392 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1648 1408 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2112 1408 R270
        END INSTANCE
        BEGIN BRANCH CIN_32
            WIRE 480 1392 480 1424
        END BRANCH
        IOMARKER 480 1424 CIN_32 R90 28
        BEGIN BRANCH A(31:0)
            WIRE 848 1472 848 1536
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 896 1472 896 1536
        END BRANCH
        IOMARKER 848 1536 A(31:0) R90 28
        IOMARKER 896 1536 B(31:0) R90 28
        BEGIN BRANCH XLXN_4
            WIRE 544 944 544 1008
            WIRE 544 944 704 944
            WIRE 704 944 704 1456
            WIRE 704 1456 992 1456
            WIRE 992 1392 992 1456
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 912 928 1056 928
            WIRE 1056 928 1056 1008
            WIRE 912 928 912 1488
            WIRE 912 1488 1488 1488
            WIRE 1488 1408 1488 1488
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1552 944 1552 1024
            WIRE 1552 944 1728 944
            WIRE 1728 944 1728 1488
            WIRE 1728 1488 1952 1488
            WIRE 1952 1408 1952 1488
        END BRANCH
        BEGIN BRANCH COUT
            WIRE 2016 960 2016 1024
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 1952 944 1952 976
            WIRE 1952 976 1952 1024
            BEGIN DISPLAY 1952 976 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 2016 1408 2016 1488
            BEGIN DISPLAY 2016 1488 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 2080 1408 2080 1472
            WIRE 2080 1472 2080 1488
            BEGIN DISPLAY 2080 1472 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 1552 1408 1552 1456
            WIRE 1552 1456 1552 1488
            BEGIN DISPLAY 1552 1456 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 1616 1408 1616 1472
            WIRE 1616 1472 1616 1488
            BEGIN DISPLAY 1616 1472 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(23:16)
            WIRE 1488 944 1488 960
            WIRE 1488 960 1488 1024
            BEGIN DISPLAY 1488 960 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 992 880 992 896
            WIRE 992 896 992 1008
            BEGIN DISPLAY 992 896 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 480 912 480 928
            WIRE 480 928 480 1008
            BEGIN DISPLAY 480 928 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 544 1392 544 1456
            WIRE 544 1456 544 1472
            BEGIN DISPLAY 544 1456 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 608 1392 608 1456
            WIRE 608 1456 608 1472
            BEGIN DISPLAY 608 1456 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 1056 1392 1056 1504
            WIRE 1056 1504 1056 1536
            BEGIN DISPLAY 1056 1504 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 1120 1392 1120 1520
            WIRE 1120 1520 1120 1536
            BEGIN DISPLAY 1120 1520 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2016 960 COUT R270 28
        BEGIN BRANCH S(31:0)
            WIRE 1216 832 1216 912
        END BRANCH
        IOMARKER 1216 832 S(31:0) R270 28
    END SHEET
END SCHEMATIC
