EESchema Schematic File Version 4
LIBS:test-rig-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Modular Internet Radio Test Rig"
Date "2019-10-06"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L modular-internet-radio:GND #PWR09
U 1 1 5D750D5D
P 3700 1150
F 0 "#PWR09" H 3700 900 50  0001 C CNN
F 1 "GND" H 3700 1000 50  0000 C CNN
F 2 "" H 3700 1150 50  0000 C CNN
F 3 "" H 3700 1150 50  0000 C CNN
	1    3700 1150
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:GND #PWR08
U 1 1 5D750E2A
P 2200 7500
F 0 "#PWR08" H 2200 7250 50  0001 C CNN
F 1 "GND" H 2200 7350 50  0000 C CNN
F 2 "" H 2200 7500 50  0000 C CNN
F 3 "" H 2200 7500 50  0000 C CNN
	1    2200 7500
	1    0    0    -1  
$EndComp
Text Label 1500 2550 2    60   ~ 0
XDCS/IO27
Text Label 1500 2450 2    60   ~ 0
DREQ/IO26
Text Label 1450 2350 2    60   ~ 0
XCS/IO25
$Comp
L modular-internet-radio:23LC1024 IC1
U 1 1 5D7547BE
P 2000 6800
F 0 "IC1" H 1650 7250 50  0000 L CNN
F 1 "23LC1024" H 1850 6500 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 1750 6400 50  0001 C CIN
F 3 "" H 2200 6300 50  0000 C CNN
	1    2000 6800
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:VS1053B U2
U 1 1 5D7BEC5C
P 8050 3050
F 0 "U2" H 6950 4350 50  0000 L BNN
F 1 "VS1053B" H 7700 3100 50  0000 L BNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 7050 3200 50  0001 L BNN
F 3 "None" H 7100 3200 50  0001 L BNN
F 4 "VLSI" H 7100 3200 50  0001 L BNN "Field4"
F 5 "Unavailable" H 7050 3200 50  0001 L BNN "Field5"
F 6 "VS1053B-L" H 7050 3200 50  0001 L BNN "Field6"
F 7 "VS1053B MP3/WAV/OGG/MIDI Player & Recorder _CODEC_ Chip" H 7050 3200 50  0001 L BNN "Field7"
F 8 "LQFP-48 VLSI" H 7050 3200 50  0001 L BNN "Field8"
	1    8050 3050
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:ESP32-WROOM-32 U1
U 1 1 5D7BD8C9
P 2700 2000
F 0 "U1" H 2150 3050 60  0000 C CNN
F 1 "ESP32-WROOM-32" H 2650 2750 60  0000 C CNN
F 2 "library:ESP32-WROOM-32-Espressif-Symbol-Kicad-62379" H 2750 1900 60  0001 C CNN
F 3 "" H 2750 1900 60  0001 C CNN
	1    2700 2000
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:GND #PWR06
U 1 1 5D7BDA1B
P 2100 3350
F 0 "#PWR06" H 2100 3100 50  0001 C CNN
F 1 "GND" H 2100 3200 50  0000 C CNN
F 2 "" H 2100 3350 50  0000 C CNN
F 3 "" H 2100 3350 50  0000 C CNN
	1    2100 3350
	1    0    0    -1  
$EndComp
Text Label 3650 1650 0    60   ~ 0
RAM-CS/IO22
Text Label 3950 2150 0    60   ~ 0
SO/IO19
Text Label 3950 1550 0    60   ~ 0
SI/IO23
Text Label 3900 2250 0    60   ~ 0
SCK/IO18
Text Label 3800 2750 0    60   ~ 0
IO0
$Comp
L modular-internet-radio:SW_Push SW2
U 1 1 5D7BEF27
P 3950 3000
F 0 "SW2" H 4000 3100 50  0000 L CNN
F 1 "0" H 3950 2940 50  0000 C CNN
F 2 "library:SW-PUSH-RND-SMALL" H 3950 3200 50  0001 C CNN
F 3 "" H 3950 3200 50  0001 C CNN
	1    3950 3000
	0    1    1    0   
$EndComp
Text Label 1400 1650 0    60   ~ 0
EN
Text Label 1400 1750 0    60   ~ 0
SENSOR_VP
Text Label 1400 1850 0    60   ~ 0
SENSOR_VN
Text Label 1350 1950 0    60   ~ 0
IO34
Text Label 1350 2050 0    60   ~ 0
IO35
Text Label 1350 2150 0    60   ~ 0
IO32
Text Label 1350 2250 0    60   ~ 0
IO33
Text Label 2350 3550 1    60   ~ 0
IO13
Text Label 3050 3550 1    60   ~ 0
IO15
Text Label 3150 3400 3    60   ~ 0
IO2
Text Label 3800 2650 0    60   ~ 0
IO4
Text Label 3950 2550 2    60   ~ 0
IO16
Text Label 3950 2450 2    60   ~ 0
IO17
Text Label 3900 2350 2    60   ~ 0
IO5
Text Label 3950 1950 2    60   ~ 0
IO21
Text Label 1550 2650 2    60   ~ 0
IO14
Text Label 1550 2750 2    60   ~ 0
IO12
Text Label 3950 1850 2    60   ~ 0
RXDO
Text Label 3950 1750 2    60   ~ 0
TXD0
Text Label 6750 2100 2    60   ~ 0
XDCS/IO27
Text Label 6750 2200 2    60   ~ 0
DREQ/IO26
Text Label 6700 2300 2    60   ~ 0
XCS/IO25
Text Label 6250 2400 0    60   ~ 0
SO/IO19
Text Label 6250 2500 0    60   ~ 0
SI/IO23
Text Label 8900 2950 0    60   ~ 0
SCK/IO18
Text Label 800  6500 0    60   ~ 0
RAM-CS/IO22
Text Label 800  6600 0    60   ~ 0
SO/IO19
Text Label 800  6800 0    60   ~ 0
SI/IO23
Text Label 800  6900 0    60   ~ 0
SCK/IO18
$Comp
L power:+3V3 #PWR07
U 1 1 5D7C0C20
P 2200 5850
F 0 "#PWR07" H 2200 5700 50  0001 C CNN
F 1 "+3V3" H 2200 5990 50  0000 C CNN
F 2 "" H 2200 5850 50  0000 C CNN
F 3 "" H 2200 5850 50  0000 C CNN
	1    2200 5850
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R3
U 1 1 5D7C0F5F
P 2600 6050
F 0 "R3" V 2680 6050 50  0000 C CNN
F 1 "10K" V 2600 6050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2530 6050 50  0001 C CNN
F 3 "" H 2600 6050 50  0000 C CNN
	1    2600 6050
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R2
U 1 1 5D7C120C
P 1450 6050
F 0 "R2" V 1530 6050 50  0000 C CNN
F 1 "10K" V 1450 6050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1380 6050 50  0001 C CNN
F 3 "" H 1450 6050 50  0000 C CNN
	1    1450 6050
	1    0    0    -1  
$EndComp
Text Label 5800 2650 0    60   ~ 0
MP3RST
$Comp
L modular-internet-radio:C C1
U 1 1 5D7D2088
P 5500 2800
F 0 "C1" H 5525 2900 50  0000 L CNN
F 1 "100n" H 5525 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5538 2650 50  0001 C CNN
F 3 "" H 5500 2800 50  0000 C CNN
	1    5500 2800
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R4
U 1 1 5D7D20DA
P 5350 2650
F 0 "R4" V 5430 2650 50  0000 C CNN
F 1 "100K" V 5350 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5280 2650 50  0001 C CNN
F 3 "" H 5350 2650 50  0000 C CNN
	1    5350 2650
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:GND #PWR015
U 1 1 5D7D2450
P 5500 2950
F 0 "#PWR015" H 5500 2700 50  0001 C CNN
F 1 "GND" H 5500 2800 50  0000 C CNN
F 2 "" H 5500 2950 50  0000 C CNN
F 3 "" H 5500 2950 50  0000 C CNN
	1    5500 2950
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:Crystal Y1
U 1 1 5D7D2E9D
P 6050 3550
F 0 "Y1" H 6050 3700 50  0000 C CNN
F 1 "12.288MHz" H 6050 3400 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 6050 3550 50  0001 C CNN
F 3 "" H 6050 3550 50  0000 C CNN
	1    6050 3550
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R5
U 1 1 5D7D3127
P 6050 3200
F 0 "R5" V 6130 3200 50  0000 C CNN
F 1 "1M" V 6050 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5980 3200 50  0001 C CNN
F 3 "" H 6050 3200 50  0000 C CNN
	1    6050 3200
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:GND #PWR016
U 1 1 5D7D346C
P 5800 3950
F 0 "#PWR016" H 5800 3700 50  0001 C CNN
F 1 "GND" H 5800 3800 50  0000 C CNN
F 2 "" H 5800 3950 50  0000 C CNN
F 3 "" H 5800 3950 50  0000 C CNN
	1    5800 3950
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R8
U 1 1 5D7D53D0
P 9150 1650
F 0 "R8" V 9230 1650 50  0000 C CNN
F 1 "100K" V 9150 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9080 1650 50  0001 C CNN
F 3 "" H 9150 1650 50  0000 C CNN
	1    9150 1650
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:GND #PWR036
U 1 1 5D7D5421
P 9300 1750
F 0 "#PWR036" H 9300 1500 50  0001 C CNN
F 1 "GND" H 9300 1600 50  0000 C CNN
F 2 "" H 9300 1750 50  0000 C CNN
F 3 "" H 9300 1750 50  0000 C CNN
	1    9300 1750
	1    0    0    -1  
$EndComp
Text Label 6550 3300 0    60   ~ 0
MICN
Text Label 6400 3400 0    60   ~ 0
MICP/LINE1
$Comp
L modular-internet-radio:GND #PWR026
U 1 1 5D7D5AB0
P 7750 4050
F 0 "#PWR026" H 7750 3800 50  0001 C CNN
F 1 "GND" H 7750 3900 50  0000 C CNN
F 2 "" H 7750 4050 50  0000 C CNN
F 3 "" H 7750 4050 50  0000 C CNN
	1    7750 4050
	1    0    0    -1  
$EndComp
Text Notes 9300 1600 0    60   ~ 0
Why?\n
Text Label 9150 2100 0    60   ~ 0
GPIO0
Text Label 9150 2200 0    60   ~ 0
GPIO1
Text Label 9150 2300 0    60   ~ 0
GPIO2
Text Label 9150 2400 0    60   ~ 0
GPIO3
Text Label 8900 2500 0    60   ~ 0
LROUT/GPIO4
Text Label 8900 2600 0    60   ~ 0
MCLK/GPIO5
Text Label 8900 2700 0    60   ~ 0
SCLK/GPIO6
Text Label 8900 2800 0    60   ~ 0
SDATA/GPIO7
Text Notes 9800 2300 0    60   ~ 0
All SPI wires to more \nthan one connector
Text Label 9200 3050 0    60   ~ 0
TX
Text Label 9200 3150 0    60   ~ 0
RX
Text Notes 4950 5350 0    60   ~ 0
Unused GPIO pins should \nhave a pull-down resistor
Text Notes 10950 1250 1    60   ~ 0
Ground pin for \noscilloscope
$Comp
L modular-internet-radio:R R13
U 1 1 5D7E6E1B
P 10100 2950
F 0 "R13" V 10180 2950 50  0000 C CNN
F 1 "100k" V 10100 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10030 2950 50  0001 C CNN
F 3 "" H 10100 2950 50  0000 C CNN
	1    10100 2950
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+3.3V #PWR043
U 1 1 5D7E6F5B
P 10100 2750
F 0 "#PWR043" H 10100 2600 50  0001 C CNN
F 1 "+3.3V" H 10100 2890 50  0000 C CNN
F 2 "" H 10100 2750 50  0000 C CNN
F 3 "" H 10100 2750 50  0000 C CNN
	1    10100 2750
	1    0    0    -1  
$EndComp
Text Label 8900 3400 0    60   ~ 0
LEFT
Text Label 8900 3500 0    60   ~ 0
RIGHT
$Comp
L modular-internet-radio:Screw_Terminal_1x02 J6
U 1 1 5D7E405A
P 11050 3800
F 0 "J6" H 11050 4050 50  0000 C TNN
F 1 "Screw_Terminal_1x02" V 10900 3800 50  0001 C TNN
F 2 "library:Screw_Terminal_1x02" H 11050 3575 50  0001 C CNN
F 3 "" H 11025 3800 50  0001 C CNN
	1    11050 3800
	-1   0    0    1   
$EndComp
$Comp
L modular-internet-radio:LM1117-1.8 U3
U 1 1 5D7E431F
P 9000 5950
F 0 "U3" H 8850 6075 50  0000 C CNN
F 1 "LM1117-1.8" H 9000 6075 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 9000 5950 50  0001 C CNN
F 3 "" H 9000 5950 50  0001 C CNN
	1    9000 5950
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R11
U 1 1 5D7E5F7B
P 10050 3400
F 0 "R11" V 10130 3400 50  0000 C CNN
F 1 "100" V 10050 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9980 3400 50  0001 C CNN
F 3 "" H 10050 3400 50  0000 C CNN
	1    10050 3400
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:R R12
U 1 1 5D7E6933
P 10050 3700
F 0 "R12" V 10130 3700 50  0000 C CNN
F 1 "100" V 10050 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9980 3700 50  0001 C CNN
F 3 "" H 10050 3700 50  0000 C CNN
	1    10050 3700
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:R R9
U 1 1 5D7E6987
P 9600 3900
F 0 "R9" V 9680 3900 50  0000 C CNN
F 1 "22" V 9600 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9530 3900 50  0001 C CNN
F 3 "" H 9600 3900 50  0000 C CNN
	1    9600 3900
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R10
U 1 1 5D7E6A6D
P 9800 3900
F 0 "R10" V 9880 3900 50  0000 C CNN
F 1 "22" V 9800 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9730 3900 50  0001 C CNN
F 3 "" H 9800 3900 50  0000 C CNN
	1    9800 3900
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:CP_Small C22
U 1 1 5D7E6E6B
P 10300 3400
F 0 "C22" H 10310 3470 50  0000 L CNN
F 1 "220u" H 10310 3320 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Hand" H 10300 3400 50  0001 C CNN
F 3 "" H 10300 3400 50  0000 C CNN
	1    10300 3400
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:CP_Small C23
U 1 1 5D7E6FE1
P 10300 3700
F 0 "C23" H 10310 3770 50  0000 L CNN
F 1 "220u" H 10310 3620 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Hand" H 10300 3700 50  0001 C CNN
F 3 "" H 10300 3700 50  0000 C CNN
	1    10300 3700
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:C_Small C20
U 1 1 5D7E7339
P 9600 4250
F 0 "C20" H 9610 4320 50  0000 L CNN
F 1 "10n" H 9610 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9600 4250 50  0001 C CNN
F 3 "" H 9600 4250 50  0000 C CNN
	1    9600 4250
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C21
U 1 1 5D7E73D7
P 9800 4250
F 0 "C21" H 9810 4320 50  0000 L CNN
F 1 "10n" H 9810 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9800 4250 50  0001 C CNN
F 3 "" H 9800 4250 50  0000 C CNN
	1    9800 4250
	1    0    0    -1  
$EndComp
Text Label 10450 3400 0    60   ~ 0
L_OUT
Text Label 10450 3700 0    60   ~ 0
R_OUT
$Comp
L modular-internet-radio:AVDD #PWR023
U 1 1 5D7EAA02
P 7300 1600
F 0 "#PWR023" H 7300 1450 50  0001 C CNN
F 1 "AVDD" H 7300 1750 50  0000 C CNN
F 2 "" H 7300 1600 50  0000 C CNN
F 3 "" H 7300 1600 50  0000 C CNN
	1    7300 1600
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+1.8V #PWR025
U 1 1 5D7EB58C
P 7650 1600
F 0 "#PWR025" H 7650 1450 50  0001 C CNN
F 1 "+1.8V" H 7650 1750 50  0000 C CNN
F 2 "" H 7650 1600 50  0000 C CNN
F 3 "" H 7650 1600 50  0000 C CNN
	1    7650 1600
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+3.3V #PWR028
U 1 1 5D7EB827
P 8100 1600
F 0 "#PWR028" H 8100 1450 50  0001 C CNN
F 1 "+3.3V" H 8100 1740 50  0000 C CNN
F 2 "" H 8100 1600 50  0000 C CNN
F 3 "" H 8100 1600 50  0000 C CNN
	1    8100 1600
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+1.8V #PWR037
U 1 1 5D7F3220
P 9550 5800
F 0 "#PWR037" H 9550 5650 50  0001 C CNN
F 1 "+1.8V" H 9550 5950 50  0000 C CNN
F 2 "" H 9550 5800 50  0000 C CNN
F 3 "" H 9550 5800 50  0000 C CNN
	1    9550 5800
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:GND #PWR034
U 1 1 5D7F326C
P 9000 6250
F 0 "#PWR034" H 9000 6000 50  0001 C CNN
F 1 "GND" H 9000 6100 50  0000 C CNN
F 2 "" H 9000 6250 50  0000 C CNN
F 3 "" H 9000 6250 50  0000 C CNN
	1    9000 6250
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+3.3V #PWR032
U 1 1 5D7F3369
P 8550 5800
F 0 "#PWR032" H 8550 5650 50  0001 C CNN
F 1 "+3.3V" H 8550 5940 50  0000 C CNN
F 2 "" H 8550 5800 50  0000 C CNN
F 3 "" H 8550 5800 50  0000 C CNN
	1    8550 5800
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:CP_Small C15
U 1 1 5D7F3988
P 7150 5650
F 0 "C15" H 7160 5720 50  0000 L CNN
F 1 "10u" H 7160 5570 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Hand" H 7150 5650 50  0001 C CNN
F 3 "" H 7150 5650 50  0000 C CNN
	1    7150 5650
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:CP_Small C19
U 1 1 5D7F3A2C
P 7150 4850
F 0 "C19" H 7150 4950 50  0000 L CNN
F 1 "10u" H 7160 4770 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Hand" H 7150 4850 50  0001 C CNN
F 3 "" H 7150 4850 50  0000 C CNN
	1    7150 4850
	1    0    0    -1  
$EndComp
Text Notes 6650 5700 0    60   ~ 0
Tantalum
Text Notes 6650 4900 0    60   ~ 0
Tantalum
$Comp
L modular-internet-radio:AGND #PWR039
U 1 1 5D7F6525
P 9600 4350
F 0 "#PWR039" H 9600 4100 50  0001 C CNN
F 1 "AGND" H 9600 4200 50  0000 C CNN
F 2 "" H 9600 4350 50  0000 C CNN
F 3 "" H 9600 4350 50  0000 C CNN
	1    9600 4350
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR040
U 1 1 5D7F65F5
P 9800 4350
F 0 "#PWR040" H 9800 4100 50  0001 C CNN
F 1 "AGND" H 9800 4200 50  0000 C CNN
F 2 "" H 9800 4350 50  0000 C CNN
F 3 "" H 9800 4350 50  0000 C CNN
	1    9800 4350
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AVDD #PWR014
U 1 1 5D7F964A
P 5150 2650
F 0 "#PWR014" H 5150 2500 50  0001 C CNN
F 1 "AVDD" H 5150 2800 50  0000 C CNN
F 2 "" H 5150 2650 50  0000 C CNN
F 3 "" H 5150 2650 50  0000 C CNN
	1    5150 2650
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C2
U 1 1 5D7FA2A3
P 5800 3850
F 0 "C2" H 5810 3920 50  0000 L CNN
F 1 "22p" H 5810 3770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5800 3850 50  0001 C CNN
F 3 "" H 5800 3850 50  0000 C CNN
	1    5800 3850
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C3
U 1 1 5D7FA40C
P 6350 3850
F 0 "C3" H 6360 3920 50  0000 L CNN
F 1 "22p" H 6360 3770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6350 3850 50  0001 C CNN
F 3 "" H 6350 3850 50  0000 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:CONN_01X01 P7
U 1 1 5D7FC3E1
P 10650 800
F 0 "P7" H 10650 900 50  0000 C CNN
F 1 "CONN_01X01" V 10750 800 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 10650 800 50  0001 C CNN
F 3 "" H 10650 800 50  0000 C CNN
	1    10650 800 
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:GND #PWR047
U 1 1 5D7FC49C
P 10650 1050
F 0 "#PWR047" H 10650 800 50  0001 C CNN
F 1 "GND" H 10650 900 50  0000 C CNN
F 2 "" H 10650 1050 50  0000 C CNN
F 3 "" H 10650 1050 50  0000 C CNN
	1    10650 1050
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR024
U 1 1 5D7FF1B7
P 7300 4050
F 0 "#PWR024" H 7300 3800 50  0001 C CNN
F 1 "AGND" H 7300 3900 50  0000 C CNN
F 2 "" H 7300 4050 50  0000 C CNN
F 3 "" H 7300 4050 50  0000 C CNN
	1    7300 4050
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:JUMPER_OPEN J1
U 1 1 5D8169C3
P 8100 1000
F 0 "J1" H 8100 1150 60  0000 C CNN
F 1 "JUMPER_OPEN" H 8100 900 60  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 8100 1250 60  0001 C CNN
F 3 "" H 8100 1250 60  0001 C CNN
	1    8100 1000
	1    0    0    -1  
$EndComp
Text Notes 8200 650  0    60   ~ 0
SPI BOOT DISABLE
Text Notes 7850 1300 0    60   ~ 0
MIDI BOOT WHEN \nJUMPER CLOSED
$Comp
L modular-internet-radio:R R6
U 1 1 5D816C56
P 8850 750
F 0 "R6" V 8930 750 50  0000 C CNN
F 1 "100K" V 8850 750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8780 750 50  0001 C CNN
F 3 "" H 8850 750 50  0000 C CNN
	1    8850 750 
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:R R7
U 1 1 5D816CFE
P 8850 1000
F 0 "R7" V 8930 1000 50  0000 C CNN
F 1 "100K" V 8850 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8780 1000 50  0001 C CNN
F 3 "" H 8850 1000 50  0000 C CNN
	1    8850 1000
	0    1    1    0   
$EndComp
Text Label 8400 750  0    60   ~ 0
GPIO0
Text Label 8400 1000 0    60   ~ 0
GPIO1
$Comp
L modular-internet-radio:+3.3V #PWR027
U 1 1 5D817039
P 7800 1000
F 0 "#PWR027" H 7800 850 50  0001 C CNN
F 1 "+3.3V" H 7800 1140 50  0000 C CNN
F 2 "" H 7800 1000 50  0000 C CNN
F 3 "" H 7800 1000 50  0000 C CNN
	1    7800 1000
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:GND #PWR035
U 1 1 5D8175D6
P 9100 1000
F 0 "#PWR035" H 9100 750 50  0001 C CNN
F 1 "GND" H 9100 850 50  0000 C CNN
F 2 "" H 9100 1000 50  0000 C CNN
F 3 "" H 9100 1000 50  0000 C CNN
	1    9100 1000
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C13
U 1 1 5D81ABEA
P 8450 4050
F 0 "C13" H 8460 4120 50  0000 L CNN
F 1 "1u" H 8460 3970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8450 4050 50  0001 C CNN
F 3 "" H 8450 4050 50  0000 C CNN
	1    8450 4050
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR029
U 1 1 5D81ACA8
P 8450 4200
F 0 "#PWR029" H 8450 3950 50  0001 C CNN
F 1 "AGND" H 8450 4050 50  0000 C CNN
F 2 "" H 8450 4200 50  0000 C CNN
F 3 "" H 8450 4200 50  0000 C CNN
	1    8450 4200
	1    0    0    -1  
$EndComp
Text Label 6550 3500 0    60   ~ 0
LINE2
$Comp
L modular-internet-radio:Screw_Terminal_1x02 J5
U 1 1 5D81BE7C
P 11050 3200
F 0 "J5" H 11050 3450 50  0000 C TNN
F 1 "Screw_Terminal_1x02" V 10900 3200 50  0001 C TNN
F 2 "library:Screw_Terminal_1x02" H 11050 2975 50  0001 C CNN
F 3 "" H 11025 3200 50  0001 C CNN
	1    11050 3200
	-1   0    0    1   
$EndComp
$Comp
L modular-internet-radio:AGND #PWR048
U 1 1 5D81C907
P 10850 3400
F 0 "#PWR048" H 10850 3150 50  0001 C CNN
F 1 "AGND" H 10850 3250 50  0000 C CNN
F 2 "" H 10850 3400 50  0000 C CNN
F 3 "" H 10850 3400 50  0000 C CNN
	1    10850 3400
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR049
U 1 1 5D81C97E
P 10850 4000
F 0 "#PWR049" H 10850 3750 50  0001 C CNN
F 1 "AGND" H 10850 3850 50  0000 C CNN
F 2 "" H 10850 4000 50  0000 C CNN
F 3 "" H 10850 4000 50  0000 C CNN
	1    10850 4000
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR046
U 1 1 5D81D88F
P 10200 4900
F 0 "#PWR046" H 10200 4650 50  0001 C CNN
F 1 "AGND" H 10200 4750 50  0000 C CNN
F 2 "" H 10200 4900 50  0000 C CNN
F 3 "" H 10200 4900 50  0000 C CNN
	1    10200 4900
	1    0    0    -1  
$EndComp
$Comp
L conn:CONN_01X04 P3
U 1 1 5D82B2AA
P 3900 6500
F 0 "P3" H 3900 6750 50  0000 C CNN
F 1 "CONN_01X04" V 4000 6500 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3900 6500 50  0001 C CNN
F 3 "" H 3900 6500 50  0000 C CNN
	1    3900 6500
	0    1    1    0   
$EndComp
$Comp
L conn:CONN_01X04 P4
U 1 1 5D82B388
P 3900 6900
F 0 "P4" H 3900 7150 50  0000 C CNN
F 1 "CONN_01X04" V 4000 6900 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3900 6900 50  0001 C CNN
F 3 "" H 3900 6900 50  0000 C CNN
	1    3900 6900
	0    -1   -1   0   
$EndComp
Text Label 3750 7700 1    60   ~ 0
RAM-CS/IO22
$Comp
L modular-internet-radio:+3.3V #PWR010
U 1 1 5D82D1C6
P 3750 5750
F 0 "#PWR010" H 3750 5600 50  0001 C CNN
F 1 "+3.3V" H 3750 5890 50  0000 C CNN
F 2 "" H 3750 5750 50  0000 C CNN
F 3 "" H 3750 5750 50  0000 C CNN
	1    3750 5750
	1    0    0    -1  
$EndComp
Text Label 3850 7700 1    60   ~ 0
SO/IO19
Text Label 800  6700 0    60   ~ 0
SIO2
Text Label 3950 7700 1    60   ~ 0
SIO2
Text Label 4050 6200 1    60   ~ 0
SI/IO23
Text Label 3950 6300 1    60   ~ 0
SCK/IO18
Text Label 2650 6700 0    60   ~ 0
~HOLD/~SIO3
Text Label 3850 6300 1    60   ~ 0
~HOLD/~SIO3
NoConn ~ 2850 3200
NoConn ~ 2750 3200
NoConn ~ 2650 3200
NoConn ~ 2550 3200
NoConn ~ 2450 3200
NoConn ~ 2950 3200
$Comp
L modular-internet-radio:R R1
U 1 1 5D837E98
P 1150 1350
F 0 "R1" V 1230 1350 50  0000 C CNN
F 1 "10K" V 1150 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1080 1350 50  0001 C CNN
F 3 "" H 1150 1350 50  0000 C CNN
	1    1150 1350
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:SW_Push SW1
U 1 1 5D83B228
P 800 1850
F 0 "SW1" H 850 1950 50  0000 L CNN
F 1 "RST" H 800 1790 50  0000 C CNN
F 2 "library:SW-PUSH-RND-SMALL" H 800 2050 50  0001 C CNN
F 3 "" H 800 2050 50  0001 C CNN
	1    800  1850
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:GND #PWR01
U 1 1 5D83BB3C
P 800 2150
F 0 "#PWR01" H 800 1900 50  0001 C CNN
F 1 "GND" H 800 2000 50  0000 C CNN
F 2 "" H 800 2150 50  0000 C CNN
F 3 "" H 800 2150 50  0000 C CNN
	1    800  2150
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:CONN_01X15 P1
U 1 1 5D81356A
P 2050 4250
F 0 "P1" H 2050 5050 50  0000 C CNN
F 1 "CONN_01X15" V 2150 4250 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x15_Pitch2.54mm" H 2050 4250 50  0001 C CNN
F 3 "" H 2050 4250 50  0000 C CNN
	1    2050 4250
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:CONN_01X15 P2
U 1 1 5D814D4D
P 2050 4650
F 0 "P2" H 2050 5450 50  0000 C CNN
F 1 "CONN_01X15" V 2150 4650 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x15_Pitch2.54mm" H 2050 4650 50  0001 C CNN
F 3 "" H 2050 4650 50  0000 C CNN
	1    2050 4650
	0    -1   -1   0   
$EndComp
Text Notes 1850 4450 0    60   ~ 0
1. Section
$Comp
L modular-internet-radio:GND #PWR04
U 1 1 5D81F402
P 1550 5350
F 0 "#PWR04" H 1550 5100 50  0001 C CNN
F 1 "GND" H 1550 5200 50  0000 C CNN
F 2 "" H 1550 5350 50  0000 C CNN
F 3 "" H 1550 5350 50  0000 C CNN
	1    1550 5350
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+3.3V #PWR02
U 1 1 5D81F535
P 1350 5050
F 0 "#PWR02" H 1350 4900 50  0001 C CNN
F 1 "+3.3V" H 1350 5190 50  0000 C CNN
F 2 "" H 1350 5050 50  0000 C CNN
F 3 "" H 1350 5050 50  0000 C CNN
	1    1350 5050
	-1   0    0    1   
$EndComp
NoConn ~ 1450 4850
Text Label 1650 5350 1    60   ~ 0
SENSOR_VP
Text Label 1750 5350 1    60   ~ 0
SENSOR_VN
Text Label 1950 5150 1    60   ~ 0
IO34
Text Label 1850 5150 1    60   ~ 0
IO35
Text Label 1550 4000 1    60   ~ 0
IO0
Text Label 1350 3800 3    60   ~ 0
TXD0
Text Label 1450 3800 3    60   ~ 0
RXDO
Text Label 1650 3850 3    60   ~ 0
IO2
Text Label 1750 4000 1    60   ~ 0
IO4
Text Label 1850 3850 3    60   ~ 0
IO5
Text Label 1950 3850 3    60   ~ 0
IO12
Text Label 2050 4050 1    60   ~ 0
IO13
Text Label 2150 3850 3    60   ~ 0
IO14
Text Label 2250 4050 1    60   ~ 0
IO15
Text Label 2350 3850 3    60   ~ 0
IO16
Text Label 2450 3850 3    60   ~ 0
IO17
Text Label 2550 4050 1    60   ~ 0
SCK/IO18
Text Label 2650 4050 1    60   ~ 0
SO/IO19
Text Label 2750 3850 3    60   ~ 0
IO21
Text Label 2750 5400 1    60   ~ 0
RAM-CS/IO22
Text Label 2650 5400 1    60   ~ 0
SI/IO23
Text Label 2550 4950 3    60   ~ 0
XCS/IO25
Text Label 2450 4900 3    60   ~ 0
DREQ/IO26
Text Label 2350 4900 3    60   ~ 0
XDCS/IO27
Text Label 2150 5400 1    60   ~ 0
IO33
Text Notes 3700 6750 0    60   ~ 0
2. Section
Text Notes 550  750  0    60   ~ 0
WROOM\nPROCESSOR
Text Notes 650  5800 0    60   ~ 0
BUFFER\nRAM
Text Notes 4750 600  0    60   ~ 0
MP3 CODEC
Text Label 6550 3150 0    60   ~ 0
VCO
Text Label 8900 3300 0    60   ~ 0
GBUF
$Comp
L modular-internet-radio:CONN_01X14 P6
U 1 1 5D842C98
P 5650 6750
F 0 "P6" H 5650 7500 50  0000 C CNN
F 1 "CONN_01X14" V 5750 6750 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 5650 6750 50  0001 C CNN
F 3 "" H 5650 6750 50  0000 C CNN
	1    5650 6750
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:CONN_01X14 P5
U 1 1 5D8459EE
P 5650 6350
F 0 "P5" H 5650 7100 50  0000 C CNN
F 1 "CONN_01X14" V 5750 6350 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 5650 6350 50  0001 C CNN
F 3 "" H 5650 6350 50  0000 C CNN
	1    5650 6350
	0    1    1    0   
$EndComp
Text Notes 5400 6550 0    60   ~ 0
3. Section
$Comp
L modular-internet-radio:+3.3V #PWR013
U 1 1 5D84F935
P 4850 5850
F 0 "#PWR013" H 4850 5700 50  0001 C CNN
F 1 "+3.3V" H 4850 5990 50  0000 C CNN
F 2 "" H 4850 5850 50  0000 C CNN
F 3 "" H 4850 5850 50  0000 C CNN
	1    4850 5850
	1    0    0    -1  
$EndComp
Text Label 5100 6950 3    60   ~ 0
XDCS/IO27
Text Label 5200 6950 3    60   ~ 0
DREQ/IO26
Text Label 5300 7000 3    60   ~ 0
XCS/IO25
Text Label 5400 7450 1    60   ~ 0
SO/IO19
Text Label 5500 7100 3    60   ~ 0
SI/IO23
Text Label 5100 6100 1    60   ~ 0
MP3RST
Text Label 5600 6100 1    60   ~ 0
VCO
Text Label 5700 6100 1    60   ~ 0
MICN
Text Label 5900 6100 1    60   ~ 0
MICP/LINE1
Text Label 5800 6100 1    60   ~ 0
LINE2
Text Label 5800 7450 1    60   ~ 0
SCK/IO18
Text Label 6200 7500 1    60   ~ 0
LROUT/GPIO4
Text Label 6100 7500 1    60   ~ 0
MCLK/GPIO5
Text Label 5900 7500 1    60   ~ 0
SDATA/GPIO7
Text Label 5200 6100 1    60   ~ 0
GPIO0
Text Label 5300 6100 1    60   ~ 0
GPIO1
Text Label 5400 6100 1    60   ~ 0
GPIO2
Text Label 5500 6100 1    60   ~ 0
GPIO3
Text Label 6000 6100 1    60   ~ 0
GBUF
Text Label 6100 6100 1    60   ~ 0
LEFT
Text Label 6200 6100 1    60   ~ 0
RIGHT
Text Label 5600 7450 1    60   ~ 0
TX
Text Label 5700 7450 1    60   ~ 0
RX
Text Label 6000 7500 1    60   ~ 0
SCLK/GPIO6
$Comp
L modular-internet-radio:GND #PWR017
U 1 1 5D856EAE
P 6300 7500
F 0 "#PWR017" H 6300 7250 50  0001 C CNN
F 1 "GND" H 6300 7350 50  0000 C CNN
F 2 "" H 6300 7500 50  0000 C CNN
F 3 "" H 6300 7500 50  0000 C CNN
	1    6300 7500
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:JUMPER_CLOSED J2
U 1 1 5D860214
P 9350 3500
F 0 "J2" H 9350 3400 60  0000 C CNN
F 1 "JUMPER_CLOSED" H 9350 3400 60  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 9350 3750 60  0001 C CNN
F 3 "" H 9350 3750 60  0001 C CNN
	1    9350 3500
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:JUMPER_CLOSED J3
U 1 1 5D863B08
P 9550 3400
F 0 "J3" H 9600 3500 60  0000 C CNN
F 1 "JUMPER_CLOSED" H 9550 3300 60  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 9550 3650 60  0001 C CNN
F 3 "" H 9550 3650 60  0001 C CNN
	1    9550 3400
	1    0    0    -1  
$EndComp
Text Notes 3950 1450 0    60   ~ 0
USES VSPI \nPIN CONFIG
$Comp
L modular-internet-radio:C_Small C6
U 1 1 5D94EC6D
P 7400 4850
F 0 "C6" H 7410 4920 50  0000 L CNN
F 1 "100n" H 7410 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7400 4850 50  0001 C CNN
F 3 "" H 7400 4850 50  0000 C CNN
	1    7400 4850
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C8
U 1 1 5D95184A
P 7650 4850
F 0 "C8" H 7660 4920 50  0000 L CNN
F 1 "100n" H 7660 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7650 4850 50  0001 C CNN
F 3 "" H 7650 4850 50  0000 C CNN
	1    7650 4850
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C10
U 1 1 5D9518F7
P 7900 4850
F 0 "C10" H 7910 4920 50  0000 L CNN
F 1 "100n" H 7910 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7900 4850 50  0001 C CNN
F 3 "" H 7900 4850 50  0000 C CNN
	1    7900 4850
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C12
U 1 1 5D9519A3
P 8150 4850
F 0 "C12" H 8160 4920 50  0000 L CNN
F 1 "100n" H 8160 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8150 4850 50  0001 C CNN
F 3 "" H 8150 4850 50  0000 C CNN
	1    8150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1450 3550 1150
Wire Wire Line
	3550 1150 3700 1150
Wire Wire Line
	1850 1450 1850 1150
Wire Wire Line
	1850 1150 1650 1150
Wire Wire Line
	2100 3200 2100 3250
Wire Wire Line
	1400 1050 1400 1100
Wire Wire Line
	1400 1550 1850 1550
Wire Wire Line
	2250 3200 2250 3250
Wire Wire Line
	2250 3250 2100 3250
Connection ~ 2100 3250
Wire Wire Line
	1850 2650 1350 2650
Wire Wire Line
	1000 2550 1850 2550
Wire Wire Line
	1000 2450 1850 2450
Wire Wire Line
	1000 2350 1850 2350
Wire Wire Line
	3550 1650 4350 1650
Wire Wire Line
	3550 1550 4350 1550
Wire Wire Line
	3550 2250 4350 2250
Wire Wire Line
	3550 2750 3950 2750
Wire Wire Line
	3950 2750 3950 2800
Wire Wire Line
	800  1650 1150 1650
Wire Wire Line
	1850 1750 1350 1750
Wire Wire Line
	1850 1850 1350 1850
Wire Wire Line
	1850 1950 1350 1950
Wire Wire Line
	1850 2050 1350 2050
Wire Wire Line
	1850 2150 1350 2150
Wire Wire Line
	1850 2250 1350 2250
Wire Wire Line
	2350 3200 2350 3550
Wire Wire Line
	3050 3200 3050 3550
Wire Wire Line
	3150 3200 3150 3550
Wire Wire Line
	3550 2650 3950 2650
Wire Wire Line
	3550 2550 3950 2550
Wire Wire Line
	3550 2450 3950 2450
Wire Wire Line
	3550 2350 3950 2350
Wire Wire Line
	3550 1950 3950 1950
Wire Wire Line
	1850 2750 1350 2750
Wire Wire Line
	3550 1750 3950 1750
Wire Wire Line
	3550 1850 3950 1850
Wire Wire Line
	6200 2100 6900 2100
Wire Wire Line
	6200 2200 6900 2200
Wire Wire Line
	6200 2300 6900 2300
Wire Wire Line
	6200 2400 6900 2400
Wire Wire Line
	6200 2500 6900 2500
Wire Wire Line
	9350 2950 8800 2950
Wire Wire Line
	3550 2150 4350 2150
Wire Wire Line
	800  6500 1450 6500
Wire Wire Line
	1500 6600 800  6600
Wire Wire Line
	1500 6800 800  6800
Wire Wire Line
	1500 6900 800  6900
Wire Wire Line
	2200 5850 2200 5900
Wire Wire Line
	2550 6700 2600 6700
Wire Wire Line
	2600 6700 2600 6200
Wire Wire Line
	1450 6200 1450 6500
Connection ~ 1450 6500
Wire Wire Line
	1450 5900 2200 5900
Connection ~ 2200 5900
Wire Wire Line
	6900 2650 5500 2650
Wire Wire Line
	5200 2650 5150 2650
Wire Wire Line
	5800 2950 5800 3200
Wire Wire Line
	5800 3200 5900 3200
Wire Wire Line
	6350 3050 6350 3200
Wire Wire Line
	6350 3200 6200 3200
Wire Wire Line
	6200 3550 6350 3550
Connection ~ 6350 3550
Wire Wire Line
	5900 3550 5800 3550
Connection ~ 5800 3550
Wire Wire Line
	5800 2950 6900 2950
Connection ~ 5800 3200
Wire Wire Line
	6350 3050 6900 3050
Connection ~ 6350 3200
Wire Wire Line
	9000 2100 9000 1650
Wire Wire Line
	9300 1650 9300 1750
Wire Wire Line
	6400 3300 6900 3300
Wire Wire Line
	6400 3400 6900 3400
Wire Wire Line
	8800 2100 9000 2100
Wire Wire Line
	8800 2200 9500 2200
Wire Wire Line
	8800 2300 9500 2300
Wire Wire Line
	8800 2400 9500 2400
Wire Wire Line
	8800 2500 9500 2500
Wire Wire Line
	8800 2600 9500 2600
Wire Wire Line
	8800 2700 9500 2700
Wire Wire Line
	8800 2800 9500 2800
Wire Wire Line
	8800 3050 9350 3050
Wire Wire Line
	8800 3150 10100 3150
Wire Wire Line
	10100 3150 10100 3100
Wire Wire Line
	10100 2800 10100 2750
Wire Wire Line
	9600 3500 9900 3500
Wire Wire Line
	9600 3500 9600 3750
Connection ~ 9600 3500
Wire Wire Line
	9600 4050 9600 4150
Wire Wire Line
	9800 3400 9800 3750
Wire Wire Line
	9800 4050 9800 4150
Connection ~ 9800 3400
Wire Wire Line
	10400 3400 10750 3400
Wire Wire Line
	10400 3700 10600 3700
Wire Wire Line
	10750 3100 10750 3400
Connection ~ 10750 3400
Connection ~ 10600 3700
Wire Wire Line
	7300 1600 7300 1650
Wire Wire Line
	7300 1650 7400 1650
Wire Wire Line
	7400 1650 7400 1700
Wire Wire Line
	7500 1650 7500 1700
Connection ~ 7400 1650
Wire Wire Line
	7650 1600 7650 1650
Wire Wire Line
	7650 1650 7750 1650
Wire Wire Line
	7750 1650 7750 1700
Wire Wire Line
	7850 1650 7850 1700
Connection ~ 7750 1650
Wire Wire Line
	7950 1650 7950 1700
Connection ~ 7850 1650
Wire Wire Line
	8100 1600 8100 1650
Wire Wire Line
	8100 1650 8200 1650
Wire Wire Line
	8200 1650 8200 1700
Wire Wire Line
	8300 1650 8300 1700
Connection ~ 8200 1650
Wire Wire Line
	8450 1650 8450 1700
Connection ~ 8300 1650
Connection ~ 7300 1650
Connection ~ 7650 1650
Connection ~ 8100 1650
Wire Wire Line
	9300 5950 9550 5950
Wire Wire Line
	9550 5800 9550 5950
Wire Wire Line
	8700 5950 8550 5950
Wire Wire Line
	8550 5800 8550 5950
Wire Wire Line
	10650 1000 10650 1050
Wire Wire Line
	7300 3850 7300 3950
Wire Wire Line
	7300 3950 7400 3950
Wire Wire Line
	7400 3950 7400 3850
Connection ~ 7300 3950
Wire Wire Line
	7500 3950 7500 3850
Connection ~ 7400 3950
Wire Wire Line
	7600 3950 7600 3850
Connection ~ 7500 3950
Wire Wire Line
	8350 750  8700 750 
Wire Wire Line
	8700 1000 8350 1000
Wire Wire Line
	7800 1000 7900 1000
Wire Wire Line
	9000 1000 9100 1000
Wire Wire Line
	9000 750  9100 750 
Wire Wire Line
	9100 750  9100 1000
Wire Wire Line
	8450 3850 8450 3950
Wire Wire Line
	8450 4150 8450 4200
Wire Wire Line
	6900 3500 6400 3500
Wire Wire Line
	10750 3100 10850 3100
Wire Wire Line
	10850 3300 10850 3400
Wire Wire Line
	10850 3900 10850 4000
Wire Wire Line
	3750 7700 3750 7100
Wire Wire Line
	3850 7700 3850 7100
Wire Wire Line
	1500 6700 800  6700
Wire Wire Line
	3950 7700 3950 7100
Wire Wire Line
	4050 7100 4050 7550
Wire Wire Line
	3750 5750 3750 6300
Wire Wire Line
	4050 5850 4050 6300
Wire Wire Line
	3950 5850 3950 6300
Wire Wire Line
	3850 5850 3850 6300
Connection ~ 2600 6700
Wire Wire Line
	1150 1650 1150 1500
Wire Wire Line
	1150 1200 1150 1100
Wire Wire Line
	1150 1100 1400 1100
Connection ~ 1400 1100
Connection ~ 1150 1650
Wire Wire Line
	800  2050 800  2150
Wire Notes Line
	1250 4350 1250 4500
Wire Notes Line
	1250 4500 2850 4500
Wire Notes Line
	1250 4350 2850 4350
Wire Wire Line
	1650 4850 1650 5400
Wire Wire Line
	1750 4850 1750 5400
Wire Wire Line
	1850 4850 1850 5400
Wire Wire Line
	1950 4850 1950 5400
Wire Wire Line
	2150 4850 2150 5400
Wire Wire Line
	2250 4850 2250 5400
Wire Wire Line
	2350 4850 2350 5400
Wire Wire Line
	2450 4850 2450 5400
Wire Wire Line
	2550 4850 2550 5400
Wire Wire Line
	2650 4850 2650 5400
Wire Wire Line
	2750 4850 2750 5400
Wire Wire Line
	1350 4050 1350 3800
Wire Wire Line
	1450 4050 1450 3800
Wire Wire Line
	1550 4050 1550 3800
Wire Wire Line
	1650 4050 1650 3800
Wire Wire Line
	1750 4050 1750 3800
Wire Wire Line
	1850 4050 1850 3800
Wire Wire Line
	1950 4050 1950 3800
Wire Wire Line
	2050 4050 2050 3800
Wire Wire Line
	2150 4050 2150 3800
Wire Wire Line
	2250 4050 2250 3800
Wire Wire Line
	2350 3800 2350 4050
Wire Wire Line
	2450 4050 2450 3800
Wire Wire Line
	2550 4050 2550 3800
Wire Wire Line
	2650 4050 2650 3800
Wire Wire Line
	2750 4050 2750 3800
Wire Notes Line
	3650 6600 4150 6600
Wire Notes Line
	3650 6800 4150 6800
Wire Notes Line
	500  5550 4550 5550
Wire Notes Line
	4550 7800 4550 450 
Wire Wire Line
	6900 3150 6400 3150
Wire Wire Line
	8800 3300 9350 3300
Wire Notes Line
	4950 6650 6350 6650
Wire Notes Line
	6350 6650 6350 6450
Wire Notes Line
	6350 6450 4950 6450
Wire Wire Line
	5000 6150 5000 5850
Wire Wire Line
	5100 6150 5100 5600
Wire Wire Line
	5200 6150 5200 5600
Wire Wire Line
	5300 6150 5300 5600
Wire Wire Line
	5400 6150 5400 5600
Wire Wire Line
	5500 6150 5500 5600
Wire Wire Line
	5600 6150 5600 5600
Wire Wire Line
	5700 6150 5700 5600
Wire Wire Line
	5800 6150 5800 5600
Wire Wire Line
	5900 6150 5900 5600
Wire Wire Line
	6100 6150 6100 5600
Wire Wire Line
	6200 6150 6200 5600
Wire Wire Line
	6300 6150 6300 5600
Wire Wire Line
	5000 6950 5000 7500
Wire Wire Line
	5100 6950 5100 7500
Wire Wire Line
	5200 6950 5200 7500
Wire Wire Line
	5300 6950 5300 7500
Wire Wire Line
	5400 6950 5400 7500
Wire Wire Line
	5500 6950 5500 7500
Wire Wire Line
	5600 6950 5600 7500
Wire Wire Line
	5700 6950 5700 7500
Wire Wire Line
	5800 6950 5800 7500
Wire Wire Line
	5900 6950 5900 7500
Wire Wire Line
	6000 6950 6000 7500
Wire Wire Line
	6100 6950 6100 7500
Wire Wire Line
	6200 6950 6200 7500
Wire Wire Line
	6300 6950 6300 7500
Wire Wire Line
	5000 5850 4850 5850
Wire Wire Line
	9900 3500 9900 3700
Wire Wire Line
	8800 3500 9150 3500
Wire Wire Line
	8800 3400 9350 3400
Wire Wire Line
	9800 3400 9900 3400
Wire Wire Line
	8150 5000 8150 4950
Wire Wire Line
	7150 5000 7400 5000
Wire Wire Line
	7900 5000 7900 4950
Wire Wire Line
	7650 5000 7650 4950
Connection ~ 7900 5000
Wire Wire Line
	7400 5000 7400 4950
Connection ~ 7650 5000
Wire Wire Line
	7150 4950 7150 5000
Connection ~ 7400 5000
Wire Wire Line
	8150 4700 8150 4750
Wire Wire Line
	7150 4700 7400 4700
Wire Wire Line
	7900 4700 7900 4750
Wire Wire Line
	7650 4700 7650 4750
Connection ~ 7900 4700
Wire Wire Line
	7400 4700 7400 4750
Connection ~ 7650 4700
Wire Wire Line
	7150 4650 7150 4700
Connection ~ 7400 4700
$Comp
L modular-internet-radio:+1.8V #PWR019
U 1 1 5D952A05
P 7150 4650
F 0 "#PWR019" H 7150 4500 50  0001 C CNN
F 1 "+1.8V" H 7150 4800 50  0000 C CNN
F 2 "" H 7150 4650 50  0000 C CNN
F 3 "" H 7150 4650 50  0000 C CNN
	1    7150 4650
	1    0    0    -1  
$EndComp
Connection ~ 7150 4700
Connection ~ 7150 5000
$Comp
L modular-internet-radio:AVDD #PWR030
U 1 1 5D9583FF
P 8550 4700
F 0 "#PWR030" H 8550 4550 50  0001 C CNN
F 1 "AVDD" H 8550 4850 50  0000 C CNN
F 2 "" H 8550 4700 50  0000 C CNN
F 3 "" H 8550 4700 50  0000 C CNN
	1    8550 4700
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR031
U 1 1 5D95A064
P 8550 5000
F 0 "#PWR031" H 8550 4750 50  0001 C CNN
F 1 "AGND" H 8550 4850 50  0000 C CNN
F 2 "" H 8550 5000 50  0000 C CNN
F 3 "" H 8550 5000 50  0000 C CNN
	1    8550 5000
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C16
U 1 1 5D95A9E9
P 8800 4850
F 0 "C16" H 8810 4920 50  0000 L CNN
F 1 "100n" H 8810 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8800 4850 50  0001 C CNN
F 3 "" H 8800 4850 50  0000 C CNN
	1    8800 4850
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C17
U 1 1 5D95AAAE
P 9050 4850
F 0 "C17" H 9060 4920 50  0000 L CNN
F 1 "100n" H 9060 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9050 4850 50  0001 C CNN
F 3 "" H 9050 4850 50  0000 C CNN
	1    9050 4850
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C18
U 1 1 5D95AC16
P 9300 4850
F 0 "C18" H 9310 4920 50  0000 L CNN
F 1 "100n" H 9310 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9300 4850 50  0001 C CNN
F 3 "" H 9300 4850 50  0000 C CNN
	1    9300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4700 9300 4750
Wire Wire Line
	8550 4700 8800 4700
Wire Wire Line
	9050 4700 9050 4750
Wire Wire Line
	8800 4700 8800 4750
Connection ~ 9050 4700
Connection ~ 8800 4700
Wire Wire Line
	8550 4700 8550 4750
Wire Wire Line
	8550 5000 8550 4950
Wire Wire Line
	9300 5000 9300 4950
Wire Wire Line
	8550 5000 8800 5000
Wire Wire Line
	9050 5000 9050 4950
Wire Wire Line
	8800 5000 8800 4950
Connection ~ 9050 5000
Connection ~ 8800 5000
Connection ~ 8550 4700
Connection ~ 8550 5000
$Comp
L modular-internet-radio:+3.3V #PWR021
U 1 1 5D95D36D
P 7150 5500
F 0 "#PWR021" H 7150 5350 50  0001 C CNN
F 1 "+3.3V" H 7150 5640 50  0000 C CNN
F 2 "" H 7150 5500 50  0000 C CNN
F 3 "" H 7150 5500 50  0000 C CNN
	1    7150 5500
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C7
U 1 1 5D95D4ED
P 7400 5650
F 0 "C7" H 7410 5720 50  0000 L CNN
F 1 "100n" H 7410 5570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7400 5650 50  0001 C CNN
F 3 "" H 7400 5650 50  0000 C CNN
	1    7400 5650
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C9
U 1 1 5D95D5C6
P 7650 5650
F 0 "C9" H 7660 5720 50  0000 L CNN
F 1 "100n" H 7660 5570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7650 5650 50  0001 C CNN
F 3 "" H 7650 5650 50  0000 C CNN
	1    7650 5650
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C11
U 1 1 5D95D698
P 7900 5650
F 0 "C11" H 7910 5720 50  0000 L CNN
F 1 "100n" H 7910 5570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7900 5650 50  0001 C CNN
F 3 "" H 7900 5650 50  0000 C CNN
	1    7900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5500 7900 5550
Wire Wire Line
	7150 5500 7400 5500
Wire Wire Line
	7650 5500 7650 5550
Wire Wire Line
	7400 5500 7400 5550
Connection ~ 7650 5500
Connection ~ 7400 5500
Wire Wire Line
	7150 5500 7150 5550
Connection ~ 7150 5500
Connection ~ 7150 5800
$Comp
L modular-internet-radio:GND #PWR022
U 1 1 5D95E044
P 7150 5800
F 0 "#PWR022" H 7150 5550 50  0001 C CNN
F 1 "GND" H 7150 5650 50  0000 C CNN
F 2 "" H 7150 5800 50  0000 C CNN
F 3 "" H 7150 5800 50  0000 C CNN
	1    7150 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5800 7900 5750
Wire Wire Line
	7150 5800 7400 5800
Wire Wire Line
	7650 5800 7650 5750
Wire Wire Line
	7400 5800 7400 5750
Connection ~ 7650 5800
Connection ~ 7400 5800
Wire Wire Line
	7150 5750 7150 5800
Text Notes 6850 6300 0    60   ~ 0
Place 100n decoupling \ncaps as close to chip \nas possible
Wire Wire Line
	2100 3250 2100 3350
Wire Wire Line
	1450 6500 1500 6500
Wire Wire Line
	2200 5900 2200 6150
Wire Wire Line
	2200 5900 2600 5900
Wire Wire Line
	6350 3550 6350 3750
Wire Wire Line
	5800 3550 5800 3750
Wire Wire Line
	5800 3200 5800 3550
Wire Wire Line
	6350 3200 6350 3550
Wire Wire Line
	10750 3400 10750 4400
Wire Wire Line
	10600 3700 10850 3700
Wire Wire Line
	7400 1650 7500 1650
Wire Wire Line
	7750 1650 7850 1650
Wire Wire Line
	7850 1650 7950 1650
Wire Wire Line
	8200 1650 8300 1650
Wire Wire Line
	8300 1650 8450 1650
Wire Wire Line
	7300 1650 7300 1700
Wire Wire Line
	7650 1650 7650 1700
Wire Wire Line
	8100 1650 8100 1700
Wire Wire Line
	7300 3950 7300 4050
Wire Wire Line
	7400 3950 7500 3950
Wire Wire Line
	7500 3950 7600 3950
Wire Wire Line
	2600 6700 3100 6700
Wire Wire Line
	1400 1100 1400 1550
Wire Wire Line
	1150 1650 1850 1650
Wire Wire Line
	7900 5000 8150 5000
Wire Wire Line
	7650 5000 7900 5000
Wire Wire Line
	7400 5000 7650 5000
Wire Wire Line
	7900 4700 8150 4700
Wire Wire Line
	7650 4700 7900 4700
Wire Wire Line
	7400 4700 7650 4700
Wire Wire Line
	7150 4700 7150 4750
Wire Wire Line
	7150 5000 7150 5050
Wire Wire Line
	9050 4700 9300 4700
Wire Wire Line
	8800 4700 9050 4700
Wire Wire Line
	9050 5000 9300 5000
Wire Wire Line
	8800 5000 9050 5000
Wire Wire Line
	7650 5500 7900 5500
Wire Wire Line
	7400 5500 7650 5500
Wire Wire Line
	7650 5800 7900 5800
Wire Wire Line
	7400 5800 7650 5800
Wire Notes Line
	10750 5550 10750 5600
Wire Notes Line
	10750 5600 10650 5600
Wire Notes Line
	10650 5600 10650 5550
Wire Notes Line
	10650 5550 10750 5550
Wire Notes Line
	10700 5700 10900 5700
Wire Notes Line
	10900 5700 10900 5400
Text Notes 10850 5400 0    60   ~ 0
AVDD
Text Notes 10550 5700 0    60   ~ 0
Ferrite
Text Notes 10550 5400 0    60   ~ 0
+3.3V
Wire Notes Line
	10700 5800 10950 5800
Wire Notes Line
	10950 5800 10950 6150
Wire Notes Line
	10650 5900 10750 5900
Wire Notes Line
	10750 5900 10750 5950
Wire Notes Line
	10750 5950 10650 5950
Wire Notes Line
	10650 5950 10650 5900
Text Notes 10600 6250 0    60   ~ 0
GND
Text Notes 10850 6250 0    60   ~ 0
AGND
Wire Notes Line
	10700 5700 10700 5600
Wire Notes Line
	10700 5550 10700 5400
Wire Notes Line
	10700 5800 10700 5900
Wire Notes Line
	10700 5950 10700 6150
Text Notes 10550 6050 0    60   ~ 0
Ferrite
Text Notes 7000 6750 0    60   ~ 0
Note 1: Removing the ferrite power decoupling (as in the Aadafruit design) and will try\n with partitioning of the ground and power planes. 
Text Notes 10500 6400 0    60   ~ 0
See Note 1
Wire Notes Line
	10400 6450 11100 6450
Wire Notes Line
	11100 6450 11100 5250
Text Notes 7000 6950 0    60   ~ 0
Note 2: Removed 1uF decoupling cap between AVDD and AGND (as per Adafruit\ndesign) as this covered by 10uF decoupling cap (as per manufacturer reference design)
Connection ~ 9000 2100
Wire Wire Line
	9000 2100 9500 2100
$Comp
L modular-internet-radio:GND #PWR05
U 1 1 5DB97E6B
P 1650 1150
F 0 "#PWR05" H 1650 900 50  0001 C CNN
F 1 "GND" H 1655 977 50  0000 C CNN
F 2 "" H 1650 1150 50  0000 C CNN
F 3 "" H 1650 1150 50  0000 C CNN
	1    1650 1150
	1    0    0    -1  
$EndComp
Text Label 2250 5400 1    60   ~ 0
IO32
$Comp
L modular-internet-radio:GND #PWR020
U 1 1 5DA09C41
P 7150 5050
F 0 "#PWR020" H 7150 4800 50  0001 C CNN
F 1 "GND" H 7155 4877 50  0000 C CNN
F 2 "" H 7150 5050 50  0000 C CNN
F 3 "" H 7150 5050 50  0000 C CNN
	1    7150 5050
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:GND #PWR011
U 1 1 5DA50F9D
P 3950 3200
F 0 "#PWR011" H 3950 2950 50  0001 C CNN
F 1 "GND" H 3955 3027 50  0000 C CNN
F 2 "" H 3950 3200 50  0000 C CNN
F 3 "" H 3950 3200 50  0000 C CNN
	1    3950 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4050 7750 3950
Wire Wire Line
	7750 3950 7850 3950
Wire Wire Line
	7850 3950 7850 3850
Connection ~ 7750 3950
Wire Wire Line
	7750 3950 7750 3850
Wire Wire Line
	7850 3950 7950 3950
Wire Wire Line
	7950 3950 7950 3850
Connection ~ 7850 3950
Wire Wire Line
	7950 3950 8050 3950
Wire Wire Line
	8050 3950 8050 3850
Connection ~ 7950 3950
Wire Wire Line
	8050 3950 8150 3950
Wire Wire Line
	8150 3950 8150 3850
Connection ~ 8050 3950
Wire Wire Line
	8150 3950 8300 3950
Wire Wire Line
	8300 3950 8300 3850
Connection ~ 8150 3950
$Comp
L modular-internet-radio:GND #PWR018
U 1 1 5DB186C5
P 6350 3950
F 0 "#PWR018" H 6350 3700 50  0001 C CNN
F 1 "GND" H 6355 3777 50  0000 C CNN
F 2 "" H 6350 3950 50  0000 C CNN
F 3 "" H 6350 3950 50  0000 C CNN
	1    6350 3950
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:GND #PWR012
U 1 1 5DB73930
P 4050 7550
F 0 "#PWR012" H 4050 7300 50  0001 C CNN
F 1 "GND" H 4055 7377 50  0000 C CNN
F 2 "" H 4050 7550 50  0000 C CNN
F 3 "" H 4050 7550 50  0000 C CNN
	1    4050 7550
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+3.3V #PWR03
U 1 1 5DB74CA7
P 1400 1050
F 0 "#PWR03" H 1400 900 50  0001 C CNN
F 1 "+3.3V" H 1415 1223 50  0000 C CNN
F 2 "" H 1400 1050 50  0000 C CNN
F 3 "" H 1400 1050 50  0000 C CNN
	1    1400 1050
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+3.3V #PWR044
U 1 1 5DBBD02B
P 10300 5500
F 0 "#PWR044" H 10300 5350 50  0001 C CNN
F 1 "+3.3V" H 10300 5640 50  0000 C CNN
F 2 "" H 10300 5500 50  0000 C CNN
F 3 "" H 10300 5500 50  0000 C CNN
	1    10300 5500
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AVDD #PWR041
U 1 1 5DBD4C0C
P 10050 5500
F 0 "#PWR041" H 10050 5350 50  0001 C CNN
F 1 "AVDD" H 10065 5673 50  0000 C CNN
F 2 "" H 10050 5500 50  0000 C CNN
F 3 "" H 10050 5500 50  0000 C CNN
	1    10050 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5500 10300 5500
$Comp
L modular-internet-radio:AGND #PWR042
U 1 1 5DBECBB8
P 10050 5600
F 0 "#PWR042" H 10050 5350 50  0001 C CNN
F 1 "AGND" H 10050 5450 50  0000 C CNN
F 2 "" H 10050 5600 50  0000 C CNN
F 3 "" H 10050 5600 50  0000 C CNN
	1    10050 5600
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:GND #PWR045
U 1 1 5DBECF6A
P 10300 5600
F 0 "#PWR045" H 10300 5350 50  0001 C CNN
F 1 "GND" H 10305 5427 50  0000 C CNN
F 2 "" H 10300 5600 50  0000 C CNN
F 3 "" H 10300 5600 50  0000 C CNN
	1    10300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5600 10300 5600
Wire Notes Line
	9850 5250 9850 5850
Wire Notes Line
	9850 5850 10400 5850
Wire Notes Line
	10400 5850 10400 6450
Wire Notes Line
	9850 5250 11100 5250
Wire Wire Line
	1350 4850 1350 5050
Wire Wire Line
	1550 4850 1550 5350
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5DC1CFE3
P 1550 5350
F 0 "#FLG01" H 1550 5425 50  0001 C CNN
F 1 "PWR_FLAG" V 1550 5477 50  0000 L CNN
F 2 "" H 1550 5350 50  0001 C CNN
F 3 "~" H 1550 5350 50  0001 C CNN
	1    1550 5350
	0    -1   -1   0   
$EndComp
Connection ~ 1550 5350
$Comp
L modular-internet-radio:C_Small C14
U 1 1 5DA5C775
P 8550 4850
F 0 "C14" H 8560 4920 50  0000 L CNN
F 1 "10u" H 8560 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8550 4850 50  0001 C CNN
F 3 "" H 8550 4850 50  0000 C CNN
	1    8550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6150 6000 5600
$Comp
L modular-internet-radio:+3.3V #PWR0103
U 1 1 5DAF44E9
P 4850 7400
F 0 "#PWR0103" H 4850 7250 50  0001 C CNN
F 1 "+3.3V" H 4850 7550 50  0000 C CNN
F 2 "" H 4850 7400 50  0000 C CNN
F 3 "" H 4850 7400 50  0000 C CNN
	1    4850 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7400 4850 7500
Wire Wire Line
	4850 7500 5000 7500
$Comp
L modular-internet-radio:GND #PWR0104
U 1 1 5DB0D1A5
P 6450 5700
F 0 "#PWR0104" H 6450 5450 50  0001 C CNN
F 1 "GND" H 6450 5550 50  0000 C CNN
F 2 "" H 6450 5700 50  0000 C CNN
F 3 "" H 6450 5700 50  0000 C CNN
	1    6450 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5600 6450 5600
Wire Wire Line
	6450 5600 6450 5700
$Comp
L Connector:AudioJack3_Switch J4
U 1 1 5DA87EF9
P 10600 4700
F 0 "J4" V 10582 4320 50  0000 R CNN
F 1 "AudioJack3_Switch" H 10582 5034 50  0001 C CNN
F 2 "library:Stereo_Jack-Socket_6_Pin" H 10600 4700 50  0001 C CNN
F 3 "~" H 10600 4700 50  0001 C CNN
	1    10600 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 4500 10400 4500
Wire Wire Line
	10200 4500 10200 4900
Wire Wire Line
	10600 3700 10600 4500
Wire Wire Line
	10750 4400 10800 4400
Wire Wire Line
	10800 4400 10800 4500
NoConn ~ 10500 4500
NoConn ~ 10700 4500
NoConn ~ 10900 4500
Wire Wire Line
	2050 4850 2050 5350
$Comp
L modular-internet-radio:GND #PWR0105
U 1 1 5DCA13D6
P 2050 5350
F 0 "#PWR0105" H 2050 5100 50  0001 C CNN
F 1 "GND" H 2050 5200 50  0000 C CNN
F 2 "" H 2050 5350 50  0000 C CNN
F 3 "" H 2050 5350 50  0000 C CNN
	1    2050 5350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
