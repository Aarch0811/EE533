VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Bin(7:0)
        SIGNAL CE_OUT
        SIGNAL Carry_in
        SIGNAL Ain(7:0)
        SIGNAL Cin
        BEGIN SIGNAL A_IN(7:0)
        END SIGNAL
        BEGIN SIGNAL B_IN(7:0)
        END SIGNAL
        SIGNAL Carry_Out
        SIGNAL CLK
        SIGNAL Cout
        SIGNAL CLR_OUT
        SIGNAL Sum_Out(7:0)
        SIGNAL S(7:0)
        SIGNAL CLR_IN
        SIGNAL CE
        PORT Input Bin(7:0)
        PORT Input CE_OUT
        PORT Input Carry_in
        PORT Input Ain(7:0)
        PORT Input CLK
        PORT Output Cout
        PORT Input CLR_OUT
        PORT Output S(7:0)
        PORT Input CLR_IN
        PORT Input CE
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
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Adder_8bit
            PIN A(7:0) A_IN(7:0)
            PIN B(7:0) B_IN(7:0)
            PIN Cin Cin
            PIN Cout Carry_Out
            PIN S(7:0) Sum_Out(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd8ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR_IN
            PIN D(7:0) Ain(7:0)
            PIN Q(7:0) A_IN(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd8ce
            PIN C CLK
            PIN CE CE
            PIN CLR CLR_IN
            PIN D(7:0) Bin(7:0)
            PIN Q(7:0) B_IN(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd8ce
            PIN C CLK
            PIN CE CE_OUT
            PIN CLR CLR_OUT
            PIN D(7:0) Sum_Out(7:0)
            PIN Q(7:0) S(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C CLK
            PIN D Carry_in
            PIN Q Cin
        END BLOCK
        BEGIN BLOCK XLXI_6 fd
            PIN C CLK
            PIN D Carry_Out
            PIN Q Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1104 896 R0
        END INSTANCE
        INSTANCE XLXI_2 272 752 R0
        INSTANCE XLXI_3 288 1168 R0
        INSTANCE XLXI_4 1824 704 R0
        INSTANCE XLXI_5 304 1568 R0
        INSTANCE XLXI_6 1824 1184 R0
        BEGIN BRANCH CE
            WIRE 224 560 272 560
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 224 624 272 624
        END BRANCH
        BEGIN BRANCH Bin(7:0)
            WIRE 240 912 288 912
        END BRANCH
        BEGIN BRANCH CE
            WIRE 224 976 288 976
        END BRANCH
        BEGIN BRANCH CLR_IN
            WIRE 240 1136 288 1136
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 224 1040 288 1040
        END BRANCH
        BEGIN BRANCH Carry_in
            WIRE 224 1312 304 1312
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 224 1440 304 1440
        END BRANCH
        BEGIN BRANCH A_IN(7:0)
            WIRE 656 496 688 496
            WIRE 688 496 720 496
            BEGIN DISPLAY 688 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ain(7:0)
            WIRE 192 496 272 496
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 1024 736 1056 736
            WIRE 1056 736 1104 736
            BEGIN DISPLAY 1056 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A_IN(7:0)
            WIRE 1024 800 1104 800
            BEGIN DISPLAY 1024 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B_IN(7:0)
            WIRE 1040 864 1088 864
            WIRE 1088 864 1104 864
            BEGIN DISPLAY 1040 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sum_Out(7:0)
            WIRE 1488 736 1552 736
            BEGIN DISPLAY 1552 736 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Carry_Out
            WIRE 1488 800 1552 800
            BEGIN DISPLAY 1552 800 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Carry_Out
            WIRE 1744 928 1824 928
            BEGIN DISPLAY 1744 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1744 1056 1824 1056
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2208 928 2224 928
            WIRE 2224 928 2256 928
        END BRANCH
        BEGIN BRANCH CLR_OUT
            WIRE 1760 672 1824 672
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1744 576 1824 576
        END BRANCH
        BEGIN BRANCH CE_OUT
            WIRE 1760 512 1824 512
        END BRANCH
        BEGIN BRANCH Sum_Out(7:0)
            WIRE 1744 448 1824 448
            BEGIN DISPLAY 1744 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 2208 448 2224 448
            WIRE 2224 448 2288 448
        END BRANCH
        IOMARKER 192 496 Ain(7:0) R180 28
        IOMARKER 224 560 CE R180 28
        IOMARKER 224 624 CLK R180 28
        BEGIN BRANCH CLR_IN
            WIRE 240 720 272 720
        END BRANCH
        IOMARKER 240 720 CLR_IN R180 28
        IOMARKER 240 912 Bin(7:0) R180 28
        IOMARKER 224 976 CE R180 28
        IOMARKER 224 1040 CLK R180 28
        IOMARKER 240 1136 CLR_IN R180 28
        IOMARKER 224 1312 Carry_in R180 28
        IOMARKER 224 1440 CLK R180 28
        IOMARKER 1744 1056 CLK R180 28
        IOMARKER 1760 512 CE_OUT R180 28
        IOMARKER 1744 576 CLK R180 28
        IOMARKER 1760 672 CLR_OUT R180 28
        BEGIN BRANCH B_IN(7:0)
            WIRE 672 912 736 912
            WIRE 736 912 752 912
            BEGIN DISPLAY 736 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 688 1312 720 1312
            WIRE 720 1312 752 1312
            BEGIN DISPLAY 720 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2288 448 S(7:0) R0 28
        IOMARKER 2256 928 Cout R0 28
    END SHEET
END SCHEMATIC
