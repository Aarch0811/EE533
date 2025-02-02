VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_3
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL clk
        SIGNAL XLXN_13
        SIGNAL drop_pkt
        SIGNAL XLXN_15(7:0)
        SIGNAL XLXN_16(7:0)
        SIGNAL XLXN_17(71:0)
        SIGNAL XLXN_19(7:0)
        SIGNAL valid_data
        SIGNAL out_fifo(71:0)
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL rst
        SIGNAL XLXN_34
        SIGNAL lastword
        SIGNAL firstword
        SIGNAL XLXN_40
        SIGNAL fifowrite
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL fiforead
        SIGNAL XLXN_51
        PORT Input clk
        PORT Input drop_pkt
        PORT Output valid_data
        PORT Output out_fifo(71:0)
        PORT Input in_fifo(71:0)
        PORT Input rst
        PORT Input lastword
        PORT Input firstword
        PORT Input fifowrite
        PORT Input fiforead
        BEGIN BLOCKDEF Dual_Port_Memory
            TIMESTAMP 2025 1 30 6 30 34
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
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
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
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
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Dual_Port_Memory
            PIN addra(7:0) XLXN_16(7:0)
            PIN dina(71:0) XLXN_17(71:0)
            PIN wea XLXN_30
            PIN clka clk
            PIN addrb(7:0) XLXN_19(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 reg9B
            PIN CE XLXN_40
            PIN CLK clk
            PIN CLR XLXN_13
            PIN d(71:0) in_fifo(71:0)
            PIN q(71:0) XLXN_17(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_6 or2
            PIN I0 XLXN_5
            PIN I1 XLXN_3
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_7 and2b1
            PIN I0 XLXN_31
            PIN I1 XLXN_6
            PIN O XLXN_51
        END BLOCK
        BEGIN BLOCK XLXI_8 fd8ce
            PIN C clk
            PIN CE XLXN_51
            PIN CLR XLXN_13
            PIN D(7:0) XLXN_16(7:0)
            PIN Q(7:0) XLXN_15(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 comp8
            PIN A(7:0) XLXN_16(7:0)
            PIN B(7:0) XLXN_19(7:0)
            PIN EQ XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) XLXN_19(7:0)
            PIN B(7:0) XLXN_15(7:0)
            PIN EQ XLXN_46
        END BLOCK
        BEGIN BLOCK XLXI_12 cb8cle
            PIN C clk
            PIN CE XLXN_30
            PIN CLR rst
            PIN D(7:0) XLXN_15(7:0)
            PIN L XLXN_31
            PIN CEO
            PIN Q(7:0) XLXN_16(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_13 cb8ce
            PIN C clk
            PIN CE XLXN_34
            PIN CLR XLXN_13
            PIN CEO
            PIN Q(7:0) XLXN_19(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_14 fdc
            PIN C clk
            PIN CLR XLXN_13
            PIN D XLXN_34
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_9 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_16 and3b2
            PIN I0 XLXN_46
            PIN I1 XLXN_45
            PIN I2 fiforead
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_19 vcc
            PIN P XLXN_40
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_3 944 496 R0
        INSTANCE XLXI_4 256 480 R0
        INSTANCE XLXI_5 272 912 R0
        INSTANCE XLXI_11 944 1904 R0
        BEGIN INSTANCE XLXI_1 2784 864 R0
        END INSTANCE
        INSTANCE XLXI_12 1952 1280 R0
        INSTANCE XLXI_13 1952 1776 R0
        INSTANCE XLXI_14 1920 2192 R0
        BEGIN INSTANCE XLXI_2 1920 544 R0
        END INSTANCE
        INSTANCE XLXI_6 816 640 R0
        BEGIN BRANCH XLXN_3
            WIRE 640 224 656 224
            WIRE 656 224 656 512
            WIRE 656 512 816 512
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 656 656 736 656
            WIRE 736 576 736 656
            WIRE 736 576 816 576
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1072 544 1136 544
        END BRANCH
        INSTANCE XLXI_8 240 1424 R0
        INSTANCE XLXI_9 288 1920 R0
        BEGIN BRANCH clk
            WIRE 192 1792 224 1792
            WIRE 224 1792 272 1792
            WIRE 272 1792 288 1792
            WIRE 224 352 256 352
            WIRE 224 352 224 544
            WIRE 224 544 224 784
            WIRE 224 784 272 784
            WIRE 224 784 224 896
            WIRE 224 896 224 1296
            WIRE 224 1296 224 1792
            WIRE 224 1296 240 1296
            WIRE 224 896 1088 896
            WIRE 224 544 672 544
            WIRE 672 368 672 544
            WIRE 672 368 944 368
            WIRE 1088 448 1088 896
            WIRE 1088 448 1616 448
            WIRE 1616 448 1728 448
            WIRE 1728 448 1792 448
            WIRE 1792 448 1920 448
            WIRE 1792 448 1792 768
            WIRE 1792 768 2768 768
            WIRE 2768 768 2768 1104
            WIRE 2768 1104 2784 1104
            WIRE 2768 1104 2768 1328
            WIRE 2768 1328 2784 1328
            WIRE 1728 448 1728 464
            WIRE 1616 448 1616 1152
            WIRE 1616 1152 1952 1152
            WIRE 1552 464 1728 464
            WIRE 1552 464 1552 1648
            WIRE 1552 1648 1824 1648
            WIRE 1824 1648 1952 1648
            WIRE 1824 1648 1824 2064
            WIRE 1824 2064 1920 2064
        END BRANCH
        IOMARKER 192 1792 clk R180 28
        BEGIN BRANCH XLXN_13
            WIRE 240 1392 240 1456
            WIRE 240 1456 1504 1456
            WIRE 1504 512 1504 1456
            WIRE 1504 512 1696 512
            WIRE 1696 512 1920 512
            WIRE 1696 512 1696 528
            WIRE 1536 528 1696 528
            WIRE 1536 528 1536 1744
            WIRE 1536 1744 1904 1744
            WIRE 1904 1744 1904 2160
            WIRE 1904 2160 1920 2160
            WIRE 1904 1744 1952 1744
        END BRANCH
        BEGIN BRANCH drop_pkt
            WIRE 144 1664 288 1664
        END BRANCH
        IOMARKER 144 1664 drop_pkt R180 28
        BEGIN BRANCH XLXN_15(7:0)
            WIRE 624 1168 704 1168
            WIRE 704 1168 704 1488
            WIRE 704 1488 768 1488
            WIRE 768 1488 1408 1488
            WIRE 768 1488 768 1776
            WIRE 768 1776 944 1776
            WIRE 1408 896 1408 1488
            WIRE 1408 896 1952 896
        END BRANCH
        BEGIN BRANCH XLXN_17(71:0)
            WIRE 2304 320 2544 320
            WIRE 2544 320 2544 944
            WIRE 2544 944 2784 944
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2304 1936 2400 1936
        END BRANCH
        IOMARKER 2400 1936 valid_data R0 28
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3072 1136 3104 1136
        END BRANCH
        IOMARKER 3104 1136 out_fifo(71:0) R0 28
        BEGIN BRANCH in_fifo(71:0)
            WIRE 1888 320 1920 320
        END BRANCH
        IOMARKER 1888 320 in_fifo(71:0) R180 28
        BEGIN BRANCH XLXN_30
            WIRE 1328 240 1456 240
            WIRE 1456 240 2368 240
            WIRE 2368 240 2368 976
            WIRE 2368 976 2784 976
            WIRE 1456 240 1456 256
            WIRE 1456 256 1520 256
            WIRE 1520 256 1520 1088
            WIRE 1520 1088 1952 1088
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1920 1248 1952 1248
        END BRANCH
        IOMARKER 1920 1248 rst R180 28
        BEGIN BRANCH lastword
            WIRE 240 656 272 656
        END BRANCH
        IOMARKER 240 656 lastword R180 28
        BEGIN BRANCH firstword
            WIRE 224 224 256 224
        END BRANCH
        IOMARKER 224 224 firstword R180 28
        BEGIN BRANCH XLXN_40
            WIRE 1616 384 1920 384
        END BRANCH
        INSTANCE XLXI_19 1552 384 R0
        BEGIN BRANCH fifowrite
            WIRE 912 240 944 240
        END BRANCH
        IOMARKER 912 240 fifowrite R180 28
        INSTANCE XLXI_16 1632 1408 R0
        BEGIN BRANCH XLXN_34
            WIRE 1872 1568 1888 1568
            WIRE 1888 1568 1888 1584
            WIRE 1888 1584 1952 1584
            WIRE 1872 1568 1872 1936
            WIRE 1872 1936 1920 1936
            WIRE 1888 1280 1952 1280
            WIRE 1952 1280 1952 1376
            WIRE 1888 1376 1952 1376
            WIRE 1888 1376 1888 1568
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 1328 1248 1472 1248
            WIRE 1472 1248 1472 1280
            WIRE 1472 1280 1616 1280
            WIRE 1616 1280 1632 1280
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 1328 1680 1472 1680
            WIRE 1472 1344 1472 1680
            WIRE 1472 1344 1632 1344
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1440 1136 1632 1136
            WIRE 1632 1136 1632 1200
            WIRE 1632 1200 1632 1216
        END BRANCH
        BEGIN BRANCH XLXN_19(7:0)
            WIRE 848 752 848 1520
            WIRE 848 1520 928 1520
            WIRE 928 1520 928 1584
            WIRE 928 1584 944 1584
            WIRE 848 752 2384 752
            WIRE 2384 752 2384 1136
            WIRE 2384 1136 2560 1136
            WIRE 2560 1136 2784 1136
            WIRE 2560 1136 2560 1520
            WIRE 928 1344 928 1520
            WIRE 928 1344 944 1344
            WIRE 2336 1520 2560 1520
        END BRANCH
        BEGIN BRANCH XLXN_16(7:0)
            WIRE 192 1040 192 1168
            WIRE 192 1168 240 1168
            WIRE 192 1040 688 1040
            WIRE 688 1040 688 1200
            WIRE 688 1200 880 1200
            WIRE 880 1200 880 1424
            WIRE 880 1424 2400 1424
            WIRE 880 1152 880 1200
            WIRE 880 1152 944 1152
            WIRE 2336 896 2400 896
            WIRE 2400 896 2400 912
            WIRE 2400 912 2400 1424
            WIRE 2400 912 2784 912
        END BRANCH
        INSTANCE XLXI_10 944 1472 R0
        IOMARKER 1440 1136 fiforead R180 28
        INSTANCE XLXI_7 1136 672 R0
        BEGIN BRANCH XLXN_31
            WIRE 672 1664 912 1664
            WIRE 912 608 1136 608
            WIRE 912 608 912 976
            WIRE 912 976 912 1664
            WIRE 912 976 1424 976
            WIRE 1424 976 1424 1024
            WIRE 1424 1024 1952 1024
        END BRANCH
        BEGIN BRANCH XLXN_51
            WIRE 160 1232 240 1232
            WIRE 160 1232 160 1472
            WIRE 160 1472 1568 1472
            WIRE 1392 576 1568 576
            WIRE 1568 576 1568 1472
        END BRANCH
    END SHEET
END SCHEMATIC
