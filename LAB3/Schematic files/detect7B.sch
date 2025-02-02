VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL pipe0(71:0)
        SIGNAL pipe1(71:0)
        SIGNAL clk
        SIGNAL ce
        SIGNAL match
        SIGNAL match_en
        SIGNAL mrst
        SIGNAL XLXN_10
        SIGNAL XLXN_13
        SIGNAL pipe0(47:0)
        SIGNAL pipe0(63:0)
        SIGNAL hwregA(62:56)
        SIGNAL XLXN_20
        SIGNAL XLXN_21(111:0)
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(63:0)
        PORT Input pipe1(71:0)
        PORT Input clk
        PORT Input ce
        PORT Output match
        PORT Input match_en
        PORT Input mrst
        PORT Input hwregA(63:0)
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2025 1 30 4 16 47
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2025 1 30 5 35 25
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2025 1 30 5 9 1
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 320 -160 384 -160 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 reg9B
            PIN CE clk
            PIN CLK ce
            PIN CLR XLXN_10
            PIN d(71:0) pipe1(71:0)
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe0(63:0)
            PIN q(111:0) XLXN_21(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 wordmatch
            PIN datacomp(55:0) hwregA(55:0)
            PIN datain(111:0) XLXN_21(111:0)
            PIN match XLXN_20
            PIN wildcard(6:0) hwregA(62:56)
        END BLOCK
        BEGIN BLOCK XLXI_4 fdce
            PIN C ce
            PIN CE XLXN_13
            PIN CLR XLXN_10
            PIN D XLXN_13
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C ce
            PIN D mrst
            PIN Q XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_6 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_20
            PIN O XLXN_13
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 544 704 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 592 1344 R0
        END INSTANCE
        INSTANCE XLXI_4 2112 1104 R0
        INSTANCE XLXI_5 1552 1856 R0
        INSTANCE XLXI_6 1664 1120 R0
        BEGIN BRANCH pipe0(71:0)
            WIRE 928 480 1216 480
            BEGIN DISPLAY 1216 480 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 400 480 544 480
        END BRANCH
        BEGIN BRANCH clk
            WIRE 512 544 544 544
        END BRANCH
        IOMARKER 512 544 clk R180 28
        BEGIN BRANCH ce
            WIRE 512 608 528 608
            WIRE 528 608 544 608
            WIRE 528 608 528 752
            WIRE 528 752 528 1728
            WIRE 528 1728 1552 1728
            WIRE 528 752 2000 752
            WIRE 2000 752 2000 976
            WIRE 2000 976 2112 976
        END BRANCH
        IOMARKER 512 608 ce R180 28
        BEGIN BRANCH match
            WIRE 1600 1056 1664 1056
            WIRE 1600 1056 1600 1152
            WIRE 1600 1152 2512 1152
            WIRE 2496 848 2512 848
            WIRE 2512 848 2576 848
            WIRE 2512 848 2512 1152
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1552 992 1664 992
        END BRANCH
        IOMARKER 1552 992 match_en R180 28
        BEGIN INSTANCE XLXI_3 992 1024 R0
        END INSTANCE
        BEGIN BRANCH mrst
            WIRE 1520 1600 1552 1600
        END BRANCH
        IOMARKER 1520 1600 mrst R180 28
        BEGIN BRANCH XLXN_10
            WIRE 448 672 544 672
            WIRE 448 672 448 1136
            WIRE 448 1136 1904 1136
            WIRE 1904 1136 2112 1136
            WIRE 1904 1136 1904 1184
            WIRE 1904 1184 2000 1184
            WIRE 2000 1184 2000 1600
            WIRE 1936 1600 2000 1600
            WIRE 2112 1072 2112 1136
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1920 992 1984 992
            WIRE 1984 848 2112 848
            WIRE 1984 848 1984 912
            WIRE 1984 912 1984 992
            WIRE 1984 912 2112 912
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 480 1248 592 1248
            BEGIN DISPLAY 480 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe0(63:0)
            WIRE 480 1312 592 1312
            BEGIN DISPLAY 480 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 400 480 pipe1(71:0) R180 28
        BEGIN BRANCH hwregA(55:0)
            WIRE 912 928 992 928
            BEGIN DISPLAY 912 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 2576 848 match R0 28
        BEGIN BRANCH XLXN_20
            WIRE 1376 864 1664 864
            WIRE 1664 864 1664 928
        END BRANCH
        BEGIN BRANCH XLXN_21(111:0)
            WIRE 928 864 928 1152
            WIRE 928 1152 1056 1152
            WIRE 1056 1152 1056 1248
            WIRE 928 864 992 864
            WIRE 976 1248 1056 1248
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 896 992 992 992
            BEGIN DISPLAY 896 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(63:0)
            WIRE 608 336 752 336
            BEGIN DISPLAY 752 336 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 608 336 hwregA(63:0) R180 28
    END SHEET
END SCHEMATIC
