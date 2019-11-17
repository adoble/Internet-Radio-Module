EESchema Schematic File Version 4
LIBS:irm_pcb-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "Internet Radio Module - MP3 Codec"
Date "2019-11-07"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L modular-internet-radio:VS1053B U?
U 1 1 5DD30C55
P 4200 3100
AR Path="/5DD30C55" Ref="U?"  Part="1" 
AR Path="/5DCC2CF1/5DD30C55" Ref="U2"  Part="1" 
F 0 "U2" H 3100 4400 50  0000 L BNN
F 1 "VS1053B" H 3850 3150 50  0000 L BNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 3200 3250 50  0001 L BNN
F 3 "None" H 3250 3250 50  0001 L BNN
F 4 "VLSI" H 3250 3250 50  0001 L BNN "Field4"
F 5 "Unavailable" H 3200 3250 50  0001 L BNN "Field5"
F 6 "VS1053B-L" H 3200 3250 50  0001 L BNN "Field6"
F 7 "VS1053B MP3/WAV/OGG/MIDI Player & Recorder _CODEC_ Chip" H 3200 3250 50  0001 L BNN "Field7"
F 8 "LQFP-48 VLSI" H 3200 3250 50  0001 L BNN "Field8"
	1    4200 3100
	1    0    0    -1  
$EndComp
Text Label 2900 2150 2    60   ~ 0
XDCS/IO27
Text Label 2900 2250 2    60   ~ 0
DREQ/IO26
Text Label 2850 2350 2    60   ~ 0
XCS/IO25
Text Label 2400 2450 0    60   ~ 0
SO/IO19
Text Label 2400 2550 0    60   ~ 0
SI/IO23
Text Label 5050 3000 0    60   ~ 0
SCK/IO18
Text Label 1950 2700 0    60   ~ 0
MP3RST
$Comp
L modular-internet-radio:C C?
U 1 1 5DD30C62
P 1650 2850
AR Path="/5DD30C62" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30C62" Ref="C7"  Part="1" 
F 0 "C7" H 1675 2950 50  0000 L CNN
F 1 "100n" H 1675 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1688 2700 50  0001 C CNN
F 3 "" H 1650 2850 50  0000 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R?
U 1 1 5DD30C68
P 1500 2700
AR Path="/5DD30C68" Ref="R?"  Part="1" 
AR Path="/5DCC2CF1/5DD30C68" Ref="R3"  Part="1" 
F 0 "R3" V 1580 2700 50  0000 C CNN
F 1 "100K" V 1500 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1430 2700 50  0001 C CNN
F 3 "" H 1500 2700 50  0000 C CNN
	1    1500 2700
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:GND #PWR?
U 1 1 5DD30C6E
P 1650 3000
AR Path="/5DD30C6E" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30C6E" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 1650 2750 50  0001 C CNN
F 1 "GND" H 1650 2850 50  0000 C CNN
F 2 "" H 1650 3000 50  0000 C CNN
F 3 "" H 1650 3000 50  0000 C CNN
	1    1650 3000
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:Crystal Y?
U 1 1 5DD30C74
P 2200 3600
AR Path="/5DD30C74" Ref="Y?"  Part="1" 
AR Path="/5DCC2CF1/5DD30C74" Ref="Y1"  Part="1" 
F 0 "Y1" H 2200 3750 50  0000 C CNN
F 1 "12.288MHz" H 2200 3450 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 2200 3600 50  0001 C CNN
F 3 "" H 2200 3600 50  0000 C CNN
	1    2200 3600
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R?
U 1 1 5DD30C7A
P 2200 3250
AR Path="/5DD30C7A" Ref="R?"  Part="1" 
AR Path="/5DCC2CF1/5DD30C7A" Ref="R4"  Part="1" 
F 0 "R4" V 2280 3250 50  0000 C CNN
F 1 "1M" V 2200 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2130 3250 50  0001 C CNN
F 3 "" H 2200 3250 50  0000 C CNN
	1    2200 3250
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:GND #PWR?
U 1 1 5DD30C80
P 1950 4000
AR Path="/5DD30C80" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30C80" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 1950 3750 50  0001 C CNN
F 1 "GND" H 1950 3850 50  0000 C CNN
F 2 "" H 1950 4000 50  0000 C CNN
F 3 "" H 1950 4000 50  0000 C CNN
	1    1950 4000
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R?
U 1 1 5DD30C86
P 5300 1700
AR Path="/5DD30C86" Ref="R?"  Part="1" 
AR Path="/5DCC2CF1/5DD30C86" Ref="R7"  Part="1" 
F 0 "R7" V 5380 1700 50  0000 C CNN
F 1 "100K" V 5300 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5230 1700 50  0001 C CNN
F 3 "" H 5300 1700 50  0000 C CNN
	1    5300 1700
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:GND #PWR?
U 1 1 5DD30C8C
P 5450 1800
AR Path="/5DD30C8C" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30C8C" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 5450 1550 50  0001 C CNN
F 1 "GND" H 5450 1650 50  0000 C CNN
F 2 "" H 5450 1800 50  0000 C CNN
F 3 "" H 5450 1800 50  0000 C CNN
	1    5450 1800
	1    0    0    -1  
$EndComp
Text Label 2700 3350 0    60   ~ 0
MICN
Text Label 2550 3450 0    60   ~ 0
MICP/LINE1
$Comp
L modular-internet-radio:GND #PWR?
U 1 1 5DD30C94
P 3900 4100
AR Path="/5DD30C94" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30C94" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 3900 3850 50  0001 C CNN
F 1 "GND" H 3900 3950 50  0000 C CNN
F 2 "" H 3900 4100 50  0000 C CNN
F 3 "" H 3900 4100 50  0000 C CNN
	1    3900 4100
	1    0    0    -1  
$EndComp
Text Label 5300 2150 0    60   ~ 0
GPIO0
Text Label 5300 2250 0    60   ~ 0
GPIO1
Text Label 5300 2350 0    60   ~ 0
GPIO2
Text Label 5300 2450 0    60   ~ 0
GPIO3
Text Label 5050 2550 0    60   ~ 0
LROUT/GPIO4
Text Label 5050 2650 0    60   ~ 0
MCLK/GPIO5
Text Label 5050 2750 0    60   ~ 0
SCLK/GPIO6
Text Label 5050 2850 0    60   ~ 0
SDATA/GPIO7
Text Notes 5950 2350 0    60   ~ 0
All SPI wires to more \nthan one connector
Text Label 5350 3100 0    60   ~ 0
TX
Text Label 5350 3200 0    60   ~ 0
RX
Text Notes 1000 5250 0    60   ~ 0
Unused GPIO pins should \nhave a pull-down resistor
$Comp
L modular-internet-radio:R R?
U 1 1 5DD30CA7
P 6250 3000
AR Path="/5DD30CA7" Ref="R?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CA7" Ref="R12"  Part="1" 
F 0 "R12" V 6330 3000 50  0000 C CNN
F 1 "100k" V 6250 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6180 3000 50  0001 C CNN
F 3 "" H 6250 3000 50  0000 C CNN
	1    6250 3000
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+3.3V #PWR?
U 1 1 5DD30CAD
P 6250 2800
AR Path="/5DD30CAD" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CAD" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 6250 2650 50  0001 C CNN
F 1 "+3.3V" H 6250 2940 50  0000 C CNN
F 2 "" H 6250 2800 50  0000 C CNN
F 3 "" H 6250 2800 50  0000 C CNN
	1    6250 2800
	1    0    0    -1  
$EndComp
Text Label 5050 3450 0    60   ~ 0
LEFT
Text Label 5050 3550 0    60   ~ 0
RIGHT
$Comp
L modular-internet-radio:Screw_Terminal_1x02 J?
U 1 1 5DD30CB5
P 7200 3850
AR Path="/5DD30CB5" Ref="J?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CB5" Ref="J7"  Part="1" 
F 0 "J7" H 7200 4100 50  0000 C TNN
F 1 "Screw_Terminal_1x02" V 7050 3850 50  0001 C TNN
F 2 "irm_pcb:Screw_Terminal_1x02" H 7200 3625 50  0001 C CNN
F 3 "" H 7175 3850 50  0001 C CNN
	1    7200 3850
	-1   0    0    1   
$EndComp
$Comp
L modular-internet-radio:LM1117-1.8 U?
U 1 1 5DD30CBB
P 2950 6900
AR Path="/5DD30CBB" Ref="U?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CBB" Ref="U1"  Part="1" 
F 0 "U1" H 2800 7025 50  0000 C CNN
F 1 "LM1117-1.8" H 2950 7025 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 2950 6900 50  0001 C CNN
F 3 "" H 2950 6900 50  0001 C CNN
	1    2950 6900
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R?
U 1 1 5DD30CC1
P 6200 3450
AR Path="/5DD30CC1" Ref="R?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CC1" Ref="R10"  Part="1" 
F 0 "R10" V 6280 3450 50  0000 C CNN
F 1 "100" V 6200 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 3450 50  0001 C CNN
F 3 "" H 6200 3450 50  0000 C CNN
	1    6200 3450
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:R R?
U 1 1 5DD30CC7
P 6200 3750
AR Path="/5DD30CC7" Ref="R?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CC7" Ref="R11"  Part="1" 
F 0 "R11" V 6280 3750 50  0000 C CNN
F 1 "100" V 6200 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 3750 50  0001 C CNN
F 3 "" H 6200 3750 50  0000 C CNN
	1    6200 3750
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:R R?
U 1 1 5DD30CCD
P 5750 3950
AR Path="/5DD30CCD" Ref="R?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CCD" Ref="R8"  Part="1" 
F 0 "R8" V 5830 3950 50  0000 C CNN
F 1 "22" V 5750 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5680 3950 50  0001 C CNN
F 3 "" H 5750 3950 50  0000 C CNN
	1    5750 3950
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:R R?
U 1 1 5DD30CD3
P 5950 3950
AR Path="/5DD30CD3" Ref="R?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CD3" Ref="R9"  Part="1" 
F 0 "R9" V 6030 3950 50  0000 C CNN
F 1 "22" V 5950 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 3950 50  0001 C CNN
F 3 "" H 5950 3950 50  0000 C CNN
	1    5950 3950
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:CP_Small C?
U 1 1 5DD30CD9
P 6450 3450
AR Path="/5DD30CD9" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CD9" Ref="C20"  Part="1" 
F 0 "C20" H 6460 3520 50  0000 L CNN
F 1 "220u" H 6460 3370 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Hand" H 6450 3450 50  0001 C CNN
F 3 "" H 6450 3450 50  0000 C CNN
	1    6450 3450
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:CP_Small C?
U 1 1 5DD30CDF
P 6450 3750
AR Path="/5DD30CDF" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CDF" Ref="C21"  Part="1" 
F 0 "C21" H 6460 3820 50  0000 L CNN
F 1 "220u" H 6460 3670 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Hand" H 6450 3750 50  0001 C CNN
F 3 "" H 6450 3750 50  0000 C CNN
	1    6450 3750
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30CE5
P 5750 4300
AR Path="/5DD30CE5" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CE5" Ref="C18"  Part="1" 
F 0 "C18" H 5760 4370 50  0000 L CNN
F 1 "10n" H 5760 4220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5750 4300 50  0001 C CNN
F 3 "" H 5750 4300 50  0000 C CNN
	1    5750 4300
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30CEB
P 5950 4300
AR Path="/5DD30CEB" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CEB" Ref="C19"  Part="1" 
F 0 "C19" H 5960 4370 50  0000 L CNN
F 1 "10n" H 5960 4220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5950 4300 50  0001 C CNN
F 3 "" H 5950 4300 50  0000 C CNN
	1    5950 4300
	1    0    0    -1  
$EndComp
Text Label 6600 3450 0    60   ~ 0
L_OUT
Text Label 6600 3750 0    60   ~ 0
R_OUT
$Comp
L modular-internet-radio:AVDD #PWR?
U 1 1 5DD30CF3
P 3450 1650
AR Path="/5DD30CF3" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CF3" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 3450 1500 50  0001 C CNN
F 1 "AVDD" H 3450 1800 50  0000 C CNN
F 2 "" H 3450 1650 50  0000 C CNN
F 3 "" H 3450 1650 50  0000 C CNN
	1    3450 1650
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+1.8V #PWR?
U 1 1 5DD30CF9
P 3800 1650
AR Path="/5DD30CF9" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CF9" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 3800 1500 50  0001 C CNN
F 1 "+1.8V" H 3800 1800 50  0000 C CNN
F 2 "" H 3800 1650 50  0000 C CNN
F 3 "" H 3800 1650 50  0000 C CNN
	1    3800 1650
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+3.3V #PWR?
U 1 1 5DD30CFF
P 4250 1650
AR Path="/5DD30CFF" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30CFF" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 4250 1500 50  0001 C CNN
F 1 "+3.3V" H 4250 1790 50  0000 C CNN
F 2 "" H 4250 1650 50  0000 C CNN
F 3 "" H 4250 1650 50  0000 C CNN
	1    4250 1650
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+1.8V #PWR?
U 1 1 5DD30D05
P 3500 6750
AR Path="/5DD30D05" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D05" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 3500 6600 50  0001 C CNN
F 1 "+1.8V" H 3500 6900 50  0000 C CNN
F 2 "" H 3500 6750 50  0000 C CNN
F 3 "" H 3500 6750 50  0000 C CNN
	1    3500 6750
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:GND #PWR?
U 1 1 5DD30D0B
P 2950 7200
AR Path="/5DD30D0B" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D0B" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 2950 6950 50  0001 C CNN
F 1 "GND" H 2950 7050 50  0000 C CNN
F 2 "" H 2950 7200 50  0000 C CNN
F 3 "" H 2950 7200 50  0000 C CNN
	1    2950 7200
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+3.3V #PWR?
U 1 1 5DD30D11
P 2500 6750
AR Path="/5DD30D11" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D11" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 2500 6600 50  0001 C CNN
F 1 "+3.3V" H 2500 6890 50  0000 C CNN
F 2 "" H 2500 6750 50  0000 C CNN
F 3 "" H 2500 6750 50  0000 C CNN
	1    2500 6750
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:CP_Small C?
U 1 1 5DD30D17
P 1100 6600
AR Path="/5DD30D17" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D17" Ref="C2"  Part="1" 
F 0 "C2" H 1110 6670 50  0000 L CNN
F 1 "10u" H 1110 6520 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Hand" H 1100 6600 50  0001 C CNN
F 3 "" H 1100 6600 50  0000 C CNN
F 4 "Tant" H 1000 6600 50  0000 R CNN "Note"
	1    1100 6600
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:CP_Small C?
U 1 1 5DD30D1D
P 1100 5800
AR Path="/5DD30D1D" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D1D" Ref="C1"  Part="1" 
F 0 "C1" H 1100 5900 50  0000 L CNN
F 1 "10u" H 1110 5720 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Hand" H 1100 5800 50  0001 C CNN
F 3 "" H 1100 5800 50  0000 C CNN
F 4 "Tant." H 1000 5800 50  0000 R CNN "Note"
	1    1100 5800
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR?
U 1 1 5DD30D25
P 5750 4400
AR Path="/5DD30D25" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D25" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 5750 4150 50  0001 C CNN
F 1 "AGND" H 5750 4250 50  0000 C CNN
F 2 "" H 5750 4400 50  0000 C CNN
F 3 "" H 5750 4400 50  0000 C CNN
	1    5750 4400
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR?
U 1 1 5DD30D2B
P 6350 4950
AR Path="/5DD30D2B" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D2B" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 6350 4700 50  0001 C CNN
F 1 "AGND" H 6350 4800 50  0000 C CNN
F 2 "" H 6350 4950 50  0000 C CNN
F 3 "" H 6350 4950 50  0000 C CNN
	1    6350 4950
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AVDD #PWR?
U 1 1 5DD30D31
P 1300 2700
AR Path="/5DD30D31" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D31" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 1300 2550 50  0001 C CNN
F 1 "AVDD" H 1300 2850 50  0000 C CNN
F 2 "" H 1300 2700 50  0000 C CNN
F 3 "" H 1300 2700 50  0000 C CNN
	1    1300 2700
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30D37
P 1950 3900
AR Path="/5DD30D37" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D37" Ref="C10"  Part="1" 
F 0 "C10" H 1960 3970 50  0000 L CNN
F 1 "22p" H 1960 3820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1950 3900 50  0001 C CNN
F 3 "" H 1950 3900 50  0000 C CNN
	1    1950 3900
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30D3D
P 2500 3900
AR Path="/5DD30D3D" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D3D" Ref="C12"  Part="1" 
F 0 "C12" H 2510 3970 50  0000 L CNN
F 1 "22p" H 2510 3820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2500 3900 50  0001 C CNN
F 3 "" H 2500 3900 50  0000 C CNN
	1    2500 3900
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR?
U 1 1 5DD30D43
P 3450 4100
AR Path="/5DD30D43" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D43" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 3450 3850 50  0001 C CNN
F 1 "AGND" H 3450 3950 50  0000 C CNN
F 2 "" H 3450 4100 50  0000 C CNN
F 3 "" H 3450 4100 50  0000 C CNN
	1    3450 4100
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:JUMPER_OPEN J?
U 1 1 5DD30D49
P 4250 1050
AR Path="/5DD30D49" Ref="J?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D49" Ref="J2"  Part="1" 
F 0 "J2" H 4250 1200 60  0000 C CNN
F 1 "JUMPER_OPEN" H 4250 950 60  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4250 1300 60  0001 C CNN
F 3 "" H 4250 1300 60  0001 C CNN
	1    4250 1050
	1    0    0    -1  
$EndComp
Text Notes 4350 700  0    60   ~ 0
SPI BOOT DISABLE
Text Notes 4000 1350 0    60   ~ 0
MIDI BOOT WHEN \nJUMPER CLOSED
$Comp
L modular-internet-radio:R R?
U 1 1 5DD30D51
P 5000 800
AR Path="/5DD30D51" Ref="R?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D51" Ref="R5"  Part="1" 
F 0 "R5" V 5080 800 50  0000 C CNN
F 1 "100K" V 5000 800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4930 800 50  0001 C CNN
F 3 "" H 5000 800 50  0000 C CNN
	1    5000 800 
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:R R?
U 1 1 5DD30D57
P 5000 1050
AR Path="/5DD30D57" Ref="R?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D57" Ref="R6"  Part="1" 
F 0 "R6" V 5080 1050 50  0000 C CNN
F 1 "100K" V 5000 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4930 1050 50  0001 C CNN
F 3 "" H 5000 1050 50  0000 C CNN
	1    5000 1050
	0    1    1    0   
$EndComp
Text Label 4550 800  0    60   ~ 0
GPIO0
Text Label 4550 1050 0    60   ~ 0
GPIO1
$Comp
L modular-internet-radio:+3.3V #PWR?
U 1 1 5DD30D5F
P 3950 1050
AR Path="/5DD30D5F" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D5F" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3950 900 50  0001 C CNN
F 1 "+3.3V" H 3950 1190 50  0000 C CNN
F 2 "" H 3950 1050 50  0000 C CNN
F 3 "" H 3950 1050 50  0000 C CNN
	1    3950 1050
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:GND #PWR?
U 1 1 5DD30D65
P 5250 1050
AR Path="/5DD30D65" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D65" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 5250 800 50  0001 C CNN
F 1 "GND" H 5250 900 50  0000 C CNN
F 2 "" H 5250 1050 50  0000 C CNN
F 3 "" H 5250 1050 50  0000 C CNN
	1    5250 1050
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30D6B
P 4600 4100
AR Path="/5DD30D6B" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D6B" Ref="C17"  Part="1" 
F 0 "C17" H 4610 4170 50  0000 L CNN
F 1 "1u" H 4610 4020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4600 4100 50  0001 C CNN
F 3 "" H 4600 4100 50  0000 C CNN
	1    4600 4100
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR?
U 1 1 5DD30D71
P 4600 4250
AR Path="/5DD30D71" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D71" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 4600 4000 50  0001 C CNN
F 1 "AGND" H 4600 4100 50  0000 C CNN
F 2 "" H 4600 4250 50  0000 C CNN
F 3 "" H 4600 4250 50  0000 C CNN
	1    4600 4250
	1    0    0    -1  
$EndComp
Text Label 2700 3550 0    60   ~ 0
LINE2
$Comp
L modular-internet-radio:Screw_Terminal_1x02 J?
U 1 1 5DD30D78
P 7200 3250
AR Path="/5DD30D78" Ref="J?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D78" Ref="J6"  Part="1" 
F 0 "J6" H 7200 3500 50  0000 C TNN
F 1 "Screw_Terminal_1x02" V 7050 3250 50  0001 C TNN
F 2 "irm_pcb:Screw_Terminal_1x02" H 7200 3025 50  0001 C CNN
F 3 "" H 7175 3250 50  0001 C CNN
	1    7200 3250
	-1   0    0    1   
$EndComp
$Comp
L modular-internet-radio:AGND #PWR?
U 1 1 5DD30D7E
P 7000 3450
AR Path="/5DD30D7E" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D7E" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 7000 3200 50  0001 C CNN
F 1 "AGND" H 7000 3300 50  0000 C CNN
F 2 "" H 7000 3450 50  0000 C CNN
F 3 "" H 7000 3450 50  0000 C CNN
	1    7000 3450
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR?
U 1 1 5DD30D84
P 7000 4050
AR Path="/5DD30D84" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30D84" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 7000 3800 50  0001 C CNN
F 1 "AGND" H 7000 3900 50  0000 C CNN
F 2 "" H 7000 4050 50  0000 C CNN
F 3 "" H 7000 4050 50  0000 C CNN
	1    7000 4050
	1    0    0    -1  
$EndComp
Text Notes 1050 650  0    60   ~ 0
MP3 CODEC
Text Label 5050 3350 0    60   ~ 0
GBUF
$Comp
L modular-internet-radio:JUMPER_CLOSED J?
U 1 1 5DD30DC2
P 5500 3550
AR Path="/5DD30DC2" Ref="J?"  Part="1" 
AR Path="/5DCC2CF1/5DD30DC2" Ref="J3"  Part="1" 
F 0 "J3" H 5500 3450 60  0000 C CNN
F 1 "JUMPER_CLOSED" H 5500 3450 60  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5500 3800 60  0001 C CNN
F 3 "" H 5500 3800 60  0001 C CNN
	1    5500 3550
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:JUMPER_CLOSED J?
U 1 1 5DD30DC8
P 5700 3450
AR Path="/5DD30DC8" Ref="J?"  Part="1" 
AR Path="/5DCC2CF1/5DD30DC8" Ref="J4"  Part="1" 
F 0 "J4" H 5750 3550 60  0000 C CNN
F 1 "JUMPER_CLOSED" H 5700 3350 60  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5700 3700 60  0001 C CNN
F 3 "" H 5700 3700 60  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30DCE
P 1350 5800
AR Path="/5DD30DCE" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30DCE" Ref="C3"  Part="1" 
F 0 "C3" H 1360 5870 50  0000 L CNN
F 1 "100n" H 1360 5720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1350 5800 50  0001 C CNN
F 3 "" H 1350 5800 50  0000 C CNN
	1    1350 5800
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30DD4
P 1600 5800
AR Path="/5DD30DD4" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30DD4" Ref="C5"  Part="1" 
F 0 "C5" H 1610 5870 50  0000 L CNN
F 1 "100n" H 1610 5720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1600 5800 50  0001 C CNN
F 3 "" H 1600 5800 50  0000 C CNN
	1    1600 5800
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30DDA
P 1850 5800
AR Path="/5DD30DDA" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30DDA" Ref="C8"  Part="1" 
F 0 "C8" H 1860 5870 50  0000 L CNN
F 1 "100n" H 1860 5720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1850 5800 50  0001 C CNN
F 3 "" H 1850 5800 50  0000 C CNN
	1    1850 5800
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30DE0
P 2100 5800
AR Path="/5DD30DE0" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30DE0" Ref="C11"  Part="1" 
F 0 "C11" H 2110 5870 50  0000 L CNN
F 1 "100n" H 2110 5720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2100 5800 50  0001 C CNN
F 3 "" H 2100 5800 50  0000 C CNN
	1    2100 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2150 3050 2150
Wire Wire Line
	2350 2250 3050 2250
Wire Wire Line
	2350 2350 3050 2350
Wire Wire Line
	2350 2450 3050 2450
Wire Wire Line
	2350 2550 3050 2550
Wire Wire Line
	5500 3000 4950 3000
Wire Wire Line
	3050 2700 1650 2700
Wire Wire Line
	1350 2700 1300 2700
Wire Wire Line
	1950 3000 1950 3250
Wire Wire Line
	1950 3250 2050 3250
Wire Wire Line
	2500 3100 2500 3250
Wire Wire Line
	2500 3250 2350 3250
Wire Wire Line
	2350 3600 2500 3600
Connection ~ 2500 3600
Wire Wire Line
	2050 3600 1950 3600
Connection ~ 1950 3600
Wire Wire Line
	1950 3000 3050 3000
Connection ~ 1950 3250
Wire Wire Line
	2500 3100 3050 3100
Connection ~ 2500 3250
Wire Wire Line
	5150 2150 5150 1700
Wire Wire Line
	5450 1700 5450 1800
Wire Wire Line
	2550 3350 3050 3350
Wire Wire Line
	2550 3450 3050 3450
Wire Wire Line
	4950 2150 5150 2150
Wire Wire Line
	4950 2250 5650 2250
Wire Wire Line
	4950 2350 5650 2350
Wire Wire Line
	4950 2450 5650 2450
Wire Wire Line
	4950 2550 5650 2550
Wire Wire Line
	4950 2650 5650 2650
Wire Wire Line
	4950 2750 5650 2750
Wire Wire Line
	4950 2850 5650 2850
Wire Wire Line
	4950 3100 5500 3100
Wire Wire Line
	4950 3200 6250 3200
Wire Wire Line
	6250 3200 6250 3150
Wire Wire Line
	6250 2850 6250 2800
Wire Wire Line
	5750 3550 6050 3550
Wire Wire Line
	5750 3550 5750 3800
Connection ~ 5750 3550
Wire Wire Line
	5750 4100 5750 4200
Wire Wire Line
	5950 3450 5950 3800
Wire Wire Line
	5950 4100 5950 4200
Connection ~ 5950 3450
Wire Wire Line
	6550 3450 6900 3450
Wire Wire Line
	6550 3750 6750 3750
Wire Wire Line
	6900 3150 6900 3450
Connection ~ 6900 3450
Connection ~ 6750 3750
Wire Wire Line
	3450 1650 3450 1700
Wire Wire Line
	3450 1700 3550 1700
Wire Wire Line
	3550 1700 3550 1750
Wire Wire Line
	3650 1700 3650 1750
Connection ~ 3550 1700
Wire Wire Line
	3800 1650 3800 1700
Wire Wire Line
	3800 1700 3900 1700
Wire Wire Line
	3900 1700 3900 1750
Wire Wire Line
	4000 1700 4000 1750
Connection ~ 3900 1700
Wire Wire Line
	4100 1700 4100 1750
Connection ~ 4000 1700
Wire Wire Line
	4250 1650 4250 1700
Wire Wire Line
	4250 1700 4350 1700
Wire Wire Line
	4350 1700 4350 1750
Wire Wire Line
	4450 1700 4450 1750
Connection ~ 4350 1700
Wire Wire Line
	4600 1700 4600 1750
Connection ~ 4450 1700
Connection ~ 3450 1700
Connection ~ 3800 1700
Connection ~ 4250 1700
Wire Wire Line
	3250 6900 3500 6900
Wire Wire Line
	3500 6750 3500 6900
Wire Wire Line
	2650 6900 2500 6900
Wire Wire Line
	2500 6750 2500 6900
Wire Wire Line
	3450 3900 3450 4000
Wire Wire Line
	3450 4000 3550 4000
Wire Wire Line
	3550 4000 3550 3900
Connection ~ 3450 4000
Wire Wire Line
	3650 4000 3650 3900
Connection ~ 3550 4000
Wire Wire Line
	3750 4000 3750 3900
Connection ~ 3650 4000
Wire Wire Line
	4500 800  4850 800 
Wire Wire Line
	4850 1050 4500 1050
Wire Wire Line
	3950 1050 4050 1050
Wire Wire Line
	5150 1050 5250 1050
Wire Wire Line
	5150 800  5250 800 
Wire Wire Line
	5250 800  5250 1050
Wire Wire Line
	4600 3900 4600 4000
Wire Wire Line
	4600 4200 4600 4250
Wire Wire Line
	3050 3550 2550 3550
Wire Wire Line
	6900 3150 7000 3150
Wire Wire Line
	7000 3350 7000 3450
Wire Wire Line
	7000 3950 7000 4050
Wire Wire Line
	4950 3350 5500 3350
Wire Wire Line
	6050 3550 6050 3750
Wire Wire Line
	4950 3550 5300 3550
Wire Wire Line
	4950 3450 5500 3450
Wire Wire Line
	5950 3450 6050 3450
Wire Wire Line
	2100 5950 2100 5900
Wire Wire Line
	1100 5950 1350 5950
Wire Wire Line
	1850 5950 1850 5900
Wire Wire Line
	1600 5950 1600 5900
Connection ~ 1850 5950
Wire Wire Line
	1350 5950 1350 5900
Connection ~ 1600 5950
Wire Wire Line
	1100 5900 1100 5950
Connection ~ 1350 5950
Wire Wire Line
	2100 5650 2100 5700
Wire Wire Line
	1100 5650 1350 5650
Wire Wire Line
	1850 5650 1850 5700
Wire Wire Line
	1600 5650 1600 5700
Connection ~ 1850 5650
Wire Wire Line
	1350 5650 1350 5700
Connection ~ 1600 5650
Wire Wire Line
	1100 5600 1100 5650
Connection ~ 1350 5650
$Comp
L modular-internet-radio:+1.8V #PWR?
U 1 1 5DD30E76
P 1100 5600
AR Path="/5DD30E76" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30E76" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1100 5450 50  0001 C CNN
F 1 "+1.8V" H 1100 5750 50  0000 C CNN
F 2 "" H 1100 5600 50  0000 C CNN
F 3 "" H 1100 5600 50  0000 C CNN
	1    1100 5600
	1    0    0    -1  
$EndComp
Connection ~ 1100 5650
Connection ~ 1100 5950
$Comp
L modular-internet-radio:AVDD #PWR?
U 1 1 5DD30E7E
P 2500 5650
AR Path="/5DD30E7E" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30E7E" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 2500 5500 50  0001 C CNN
F 1 "AVDD" H 2500 5800 50  0000 C CNN
F 2 "" H 2500 5650 50  0000 C CNN
F 3 "" H 2500 5650 50  0000 C CNN
	1    2500 5650
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AGND #PWR?
U 1 1 5DD30E84
P 2500 5950
AR Path="/5DD30E84" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30E84" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 2500 5700 50  0001 C CNN
F 1 "AGND" H 2500 5800 50  0000 C CNN
F 2 "" H 2500 5950 50  0000 C CNN
F 3 "" H 2500 5950 50  0000 C CNN
	1    2500 5950
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30E8A
P 2750 5800
AR Path="/5DD30E8A" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30E8A" Ref="C14"  Part="1" 
F 0 "C14" H 2760 5870 50  0000 L CNN
F 1 "100n" H 2760 5720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2750 5800 50  0001 C CNN
F 3 "" H 2750 5800 50  0000 C CNN
	1    2750 5800
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30E90
P 3000 5800
AR Path="/5DD30E90" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30E90" Ref="C15"  Part="1" 
F 0 "C15" H 3010 5870 50  0000 L CNN
F 1 "100n" H 3010 5720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3000 5800 50  0001 C CNN
F 3 "" H 3000 5800 50  0000 C CNN
	1    3000 5800
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30E96
P 3250 5800
AR Path="/5DD30E96" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30E96" Ref="C16"  Part="1" 
F 0 "C16" H 3260 5870 50  0000 L CNN
F 1 "100n" H 3260 5720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3250 5800 50  0001 C CNN
F 3 "" H 3250 5800 50  0000 C CNN
	1    3250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5650 3250 5700
Wire Wire Line
	2500 5650 2750 5650
Wire Wire Line
	3000 5650 3000 5700
Wire Wire Line
	2750 5650 2750 5700
Connection ~ 3000 5650
Connection ~ 2750 5650
Wire Wire Line
	2500 5650 2500 5700
Wire Wire Line
	2500 5950 2500 5900
Wire Wire Line
	3250 5950 3250 5900
Wire Wire Line
	2500 5950 2750 5950
Wire Wire Line
	3000 5950 3000 5900
Wire Wire Line
	2750 5950 2750 5900
Connection ~ 3000 5950
Connection ~ 2750 5950
Connection ~ 2500 5650
Connection ~ 2500 5950
$Comp
L modular-internet-radio:+3.3V #PWR?
U 1 1 5DD30EAC
P 1100 6450
AR Path="/5DD30EAC" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30EAC" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 1100 6300 50  0001 C CNN
F 1 "+3.3V" H 1100 6590 50  0000 C CNN
F 2 "" H 1100 6450 50  0000 C CNN
F 3 "" H 1100 6450 50  0000 C CNN
	1    1100 6450
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30EB2
P 1350 6600
AR Path="/5DD30EB2" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30EB2" Ref="C4"  Part="1" 
F 0 "C4" H 1360 6670 50  0000 L CNN
F 1 "100n" H 1360 6520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1350 6600 50  0001 C CNN
F 3 "" H 1350 6600 50  0000 C CNN
	1    1350 6600
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30EB8
P 1600 6600
AR Path="/5DD30EB8" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30EB8" Ref="C6"  Part="1" 
F 0 "C6" H 1610 6670 50  0000 L CNN
F 1 "100n" H 1610 6520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1600 6600 50  0001 C CNN
F 3 "" H 1600 6600 50  0000 C CNN
	1    1600 6600
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30EBE
P 1850 6600
AR Path="/5DD30EBE" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30EBE" Ref="C9"  Part="1" 
F 0 "C9" H 1860 6670 50  0000 L CNN
F 1 "100n" H 1860 6520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1850 6600 50  0001 C CNN
F 3 "" H 1850 6600 50  0000 C CNN
	1    1850 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6450 1850 6500
Wire Wire Line
	1100 6450 1350 6450
Wire Wire Line
	1600 6450 1600 6500
Wire Wire Line
	1350 6450 1350 6500
Connection ~ 1600 6450
Connection ~ 1350 6450
Wire Wire Line
	1100 6450 1100 6500
Connection ~ 1100 6450
Connection ~ 1100 6750
$Comp
L modular-internet-radio:GND #PWR?
U 1 1 5DD30ECD
P 1100 6750
AR Path="/5DD30ECD" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30ECD" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1100 6500 50  0001 C CNN
F 1 "GND" H 1100 6600 50  0000 C CNN
F 2 "" H 1100 6750 50  0000 C CNN
F 3 "" H 1100 6750 50  0000 C CNN
	1    1100 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6750 1850 6700
Wire Wire Line
	1100 6750 1350 6750
Wire Wire Line
	1600 6750 1600 6700
Wire Wire Line
	1350 6750 1350 6700
Connection ~ 1600 6750
Connection ~ 1350 6750
Wire Wire Line
	1100 6700 1100 6750
Text Notes 800  7250 0    60   ~ 0
Place 100n decoupling \ncaps as close to chip \nas possible
Wire Wire Line
	2500 3600 2500 3800
Wire Wire Line
	1950 3600 1950 3800
Wire Wire Line
	1950 3250 1950 3600
Wire Wire Line
	2500 3250 2500 3600
Wire Wire Line
	6900 3450 6900 4450
Wire Wire Line
	6750 3750 7000 3750
Wire Wire Line
	3550 1700 3650 1700
Wire Wire Line
	3900 1700 4000 1700
Wire Wire Line
	4000 1700 4100 1700
Wire Wire Line
	4350 1700 4450 1700
Wire Wire Line
	4450 1700 4600 1700
Wire Wire Line
	3450 1700 3450 1750
Wire Wire Line
	3800 1700 3800 1750
Wire Wire Line
	4250 1700 4250 1750
Wire Wire Line
	3450 4000 3450 4100
Wire Wire Line
	3550 4000 3650 4000
Wire Wire Line
	3650 4000 3750 4000
Wire Wire Line
	1850 5950 2100 5950
Wire Wire Line
	1600 5950 1850 5950
Wire Wire Line
	1350 5950 1600 5950
Wire Wire Line
	1850 5650 2100 5650
Wire Wire Line
	1600 5650 1850 5650
Wire Wire Line
	1350 5650 1600 5650
Wire Wire Line
	1100 5650 1100 5700
Wire Wire Line
	1100 5950 1100 6000
Wire Wire Line
	3000 5650 3250 5650
Wire Wire Line
	2750 5650 3000 5650
Wire Wire Line
	3000 5950 3250 5950
Wire Wire Line
	2750 5950 3000 5950
Wire Wire Line
	1600 6450 1850 6450
Wire Wire Line
	1350 6450 1600 6450
Wire Wire Line
	1600 6750 1850 6750
Wire Wire Line
	1350 6750 1600 6750
Wire Notes Line
	5300 6000 5300 6050
Wire Notes Line
	5300 6050 5200 6050
Wire Notes Line
	5200 6050 5200 6000
Wire Notes Line
	5200 6000 5300 6000
Wire Notes Line
	5250 6150 5450 6150
Wire Notes Line
	5450 6150 5450 5850
Text Notes 5400 5850 0    60   ~ 0
AVDD
Text Notes 5100 6150 0    60   ~ 0
Ferrite
Text Notes 5100 5850 0    60   ~ 0
+3.3V
Wire Notes Line
	5250 6250 5500 6250
Wire Notes Line
	5500 6250 5500 6600
Wire Notes Line
	5200 6350 5300 6350
Wire Notes Line
	5300 6350 5300 6400
Wire Notes Line
	5300 6400 5200 6400
Wire Notes Line
	5200 6400 5200 6350
Text Notes 5150 6700 0    60   ~ 0
GND
Text Notes 5400 6700 0    60   ~ 0
AGND
Wire Notes Line
	5250 6150 5250 6050
Wire Notes Line
	5250 6000 5250 5850
Wire Notes Line
	5250 6250 5250 6350
Wire Notes Line
	5250 6400 5250 6600
Text Notes 5100 6500 0    60   ~ 0
Ferrite
Text Notes 6900 5900 0    60   ~ 0
Note 1: Removing the ferrite power decoupling (as in the Aadafruit design) and will try\n with partitioning of the ground and power planes. 
Text Notes 5050 6850 0    60   ~ 0
See Note 1
Wire Notes Line
	4950 6900 5650 6900
Wire Notes Line
	5650 6900 5650 5700
Text Notes 6900 6100 0    60   ~ 0
Note 2: Removed 1uF decoupling cap between AVDD and AGND (as per Adafruit\ndesign) as this covered by 10uF decoupling cap (as per manufacturer reference design)
Connection ~ 5150 2150
Wire Wire Line
	5150 2150 5650 2150
$Comp
L modular-internet-radio:GND #PWR?
U 1 1 5DD30F19
P 1100 6000
AR Path="/5DD30F19" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30F19" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 1100 5750 50  0001 C CNN
F 1 "GND" H 1105 5827 50  0000 C CNN
F 2 "" H 1100 6000 50  0000 C CNN
F 3 "" H 1100 6000 50  0000 C CNN
	1    1100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4100 3900 4000
Wire Wire Line
	3900 4000 4000 4000
Wire Wire Line
	4000 4000 4000 3900
Connection ~ 3900 4000
Wire Wire Line
	3900 4000 3900 3900
Wire Wire Line
	4000 4000 4100 4000
Wire Wire Line
	4100 4000 4100 3900
Connection ~ 4000 4000
Wire Wire Line
	4100 4000 4200 4000
Wire Wire Line
	4200 4000 4200 3900
Connection ~ 4100 4000
Wire Wire Line
	4200 4000 4300 4000
Wire Wire Line
	4300 4000 4300 3900
Connection ~ 4200 4000
Wire Wire Line
	4300 4000 4450 4000
Wire Wire Line
	4450 4000 4450 3900
Connection ~ 4300 4000
$Comp
L modular-internet-radio:GND #PWR?
U 1 1 5DD30F30
P 2500 4000
AR Path="/5DD30F30" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30F30" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 2500 3750 50  0001 C CNN
F 1 "GND" H 2505 3827 50  0000 C CNN
F 2 "" H 2500 4000 50  0000 C CNN
F 3 "" H 2500 4000 50  0000 C CNN
	1    2500 4000
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:+3.3V #PWR?
U 1 1 5DD30F36
P 4850 5950
AR Path="/5DD30F36" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30F36" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 4850 5800 50  0001 C CNN
F 1 "+3.3V" H 4850 6090 50  0000 C CNN
F 2 "" H 4850 5950 50  0000 C CNN
F 3 "" H 4850 5950 50  0000 C CNN
	1    4850 5950
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:AVDD #PWR?
U 1 1 5DD30F3C
P 4600 5950
AR Path="/5DD30F3C" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30F3C" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 4600 5800 50  0001 C CNN
F 1 "AVDD" H 4615 6123 50  0000 C CNN
F 2 "" H 4600 5950 50  0000 C CNN
F 3 "" H 4600 5950 50  0000 C CNN
	1    4600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5950 4850 5950
$Comp
L modular-internet-radio:AGND #PWR?
U 1 1 5DD30F43
P 4600 6050
AR Path="/5DD30F43" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30F43" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 4600 5800 50  0001 C CNN
F 1 "AGND" H 4600 5900 50  0000 C CNN
F 2 "" H 4600 6050 50  0000 C CNN
F 3 "" H 4600 6050 50  0000 C CNN
	1    4600 6050
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:GND #PWR?
U 1 1 5DD30F49
P 4850 6050
AR Path="/5DD30F49" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DD30F49" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 4850 5800 50  0001 C CNN
F 1 "GND" H 4855 5877 50  0000 C CNN
F 2 "" H 4850 6050 50  0000 C CNN
F 3 "" H 4850 6050 50  0000 C CNN
	1    4850 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6050 4850 6050
Wire Notes Line
	4400 5700 4400 6300
Wire Notes Line
	4400 6300 4950 6300
Wire Notes Line
	4950 6300 4950 6900
Wire Notes Line
	4400 5700 5650 5700
$Comp
L modular-internet-radio:C_Small C?
U 1 1 5DD30F54
P 2500 5800
AR Path="/5DD30F54" Ref="C?"  Part="1" 
AR Path="/5DCC2CF1/5DD30F54" Ref="C13"  Part="1" 
F 0 "C13" H 2510 5870 50  0000 L CNN
F 1 "10u" H 2510 5720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2500 5800 50  0001 C CNN
F 3 "" H 2500 5800 50  0000 C CNN
	1    2500 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3_Switch J?
U 1 1 5DD30F61
P 6750 4750
AR Path="/5DD30F61" Ref="J?"  Part="1" 
AR Path="/5DCC2CF1/5DD30F61" Ref="J5"  Part="1" 
F 0 "J5" V 6732 4370 50  0000 R CNN
F 1 "AudioJack3_Switch" H 6732 5084 50  0001 C CNN
F 2 "irm_pcb:Stereo_Jack-Socket_6_Pin" H 6750 4750 50  0001 C CNN
F 3 "~" H 6750 4750 50  0001 C CNN
	1    6750 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 4550 6550 4550
Wire Wire Line
	6350 4550 6350 4950
Wire Wire Line
	6750 3750 6750 4550
Wire Wire Line
	6900 4450 6950 4450
Wire Wire Line
	6950 4450 6950 4550
NoConn ~ 6650 4550
NoConn ~ 6850 4550
NoConn ~ 7050 4550
NoConn ~ 3050 3200
Text HLabel 2350 2150 0    50   Input ~ 0
XDCS
Text HLabel 2350 2250 0    50   Input ~ 0
DREQ
Text HLabel 2350 2350 0    50   Input ~ 0
XCS
Text HLabel 2350 2450 0    50   Output ~ 0
SO
Text HLabel 2350 2550 0    50   Input ~ 0
SI
Text HLabel 5500 3000 2    50   Input ~ 0
SCK
Connection ~ 1650 2700
Connection ~ 5250 1050
$Comp
L modular-internet-radio:AGND #PWR?
U 1 1 5DF4B18D
P 5950 4400
AR Path="/5DF4B18D" Ref="#PWR?"  Part="1" 
AR Path="/5DCC2CF1/5DF4B18D" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 5950 4150 50  0001 C CNN
F 1 "AGND" H 5950 4250 50  0000 C CNN
F 2 "" H 5950 4400 50  0000 C CNN
F 3 "" H 5950 4400 50  0000 C CNN
	1    5950 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J11
U 1 1 5DBC64D6
P 9150 2250
F 0 "J11" V 8977 2430 50  0000 L CNN
F 1 "Conn_01x04" V 9068 2430 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9150 2250 50  0001 C CNN
F 3 "~" H 9150 2250 50  0001 C CNN
F 4 "I2S" V 9159 2430 50  0000 L CNN "Function"
F 5 "Female" V 9250 2700 50  0000 R CNN "Gender"
	1    9150 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 2050 8950 1600
Wire Wire Line
	9050 2050 9050 1600
Wire Wire Line
	9150 2050 9150 1600
Wire Wire Line
	9250 2050 9250 1600
Text Label 8950 2050 1    60   ~ 0
LROUT/GPIO4
Text Label 9050 2050 1    60   ~ 0
MCLK/GPIO5
Text Label 9150 2050 1    60   ~ 0
SCLK/GPIO6
$Comp
L Connector_Generic:Conn_01x06 J13
U 1 1 5DBADBC8
P 10350 2250
F 0 "J13" V 10177 2530 50  0000 L CNN
F 1 "Conn_01x06" V 10268 2530 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 10350 2250 50  0001 C CNN
F 3 "~" H 10350 2250 50  0001 C CNN
F 4 "Analog" V 10359 2530 50  0000 L CNN "Function"
F 5 "Female" V 10450 2550 50  0000 L CNN "Gender"
	1    10350 2250
	0    1    1    0   
$EndComp
Text Label 10050 2050 1    60   ~ 0
MICN
Wire Wire Line
	10050 2050 10050 1600
Wire Wire Line
	10150 2050 10150 1600
Wire Wire Line
	10250 2050 10250 1600
Wire Wire Line
	10350 2050 10350 1600
Wire Wire Line
	10450 2050 10450 1600
Wire Wire Line
	10550 2050 10550 1600
Text Label 10150 2050 1    60   ~ 0
MICP/LINE1
Text Label 10250 2050 1    60   ~ 0
LINE2
Text Label 10350 2050 1    60   ~ 0
LEFT
Text Label 10450 2050 1    60   ~ 0
GBUF
Text Label 10550 2050 1    60   ~ 0
RIGHT
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J10
U 1 1 5DBF861B
P 7900 2250
F 0 "J10" V 8050 1950 50  0000 R CNN
F 1 "Conn_02x05_Counter_Clockwise" V 7905 1962 50  0001 R CNN
F 2 "irm_pcb:Pin_Header_Straight_2x05_Pitch2.54mm_CC" H 7900 2250 50  0001 C CNN
F 3 "~" H 7900 2250 50  0001 C CNN
F 4 "Female" V 7850 1950 50  0000 R CNN "Version"
F 5 "Control" V 7950 1950 50  0000 R CNN "Function"
F 6 "TOP VIEW" V 7750 1950 50  0000 R CNN "Note"
	1    7900 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 2450 8100 2950
$Comp
L modular-internet-radio:+3.3V #PWR0101
U 1 1 5DC94D62
P 8100 1450
F 0 "#PWR0101" H 8100 1300 50  0001 C CNN
F 1 "+3.3V" H 8200 1600 50  0000 C CNN
F 2 "" H 8100 1450 50  0000 C CNN
F 3 "" H 8100 1450 50  0000 C CNN
	1    8100 1450
	1    0    0    -1  
$EndComp
Text Label 7800 1500 3    60   ~ 0
DREQ/IO26
Wire Wire Line
	8100 1450 8100 1950
Wire Wire Line
	8000 1450 8000 1950
Wire Wire Line
	7900 1450 7900 1950
Wire Wire Line
	7800 1450 7800 1950
Wire Wire Line
	7700 1450 7700 1950
Text Label 7900 1600 3    60   ~ 0
SI/IO23
$Comp
L modular-internet-radio:GND #PWR0102
U 1 1 5DCE9492
P 8000 1450
F 0 "#PWR0102" H 8000 1200 50  0001 C CNN
F 1 "GND" H 8050 1300 50  0000 C CNN
F 2 "" H 8000 1450 50  0000 C CNN
F 3 "" H 8000 1450 50  0000 C CNN
	1    8000 1450
	-1   0    0    1   
$EndComp
Text Label 7700 1500 3    60   ~ 0
XCS/IO25
$Comp
L modular-internet-radio:+3.3V #PWR0103
U 1 1 5DBAAAE4
P 8100 2950
F 0 "#PWR0103" H 8100 2800 50  0001 C CNN
F 1 "+3.3V" H 8115 3123 50  0000 C CNN
F 2 "" H 8100 2950 50  0000 C CNN
F 3 "" H 8100 2950 50  0000 C CNN
	1    8100 2950
	-1   0    0    1   
$EndComp
Text Label 8000 2800 1    60   ~ 0
SO/IO19
Text Label 7900 2850 1    60   ~ 0
SCK/IO18
Text Label 7800 2850 1    60   ~ 0
MP3RST
Text Label 7700 2450 3    60   ~ 0
XDCS/IO27
Wire Wire Line
	7700 2450 7700 2950
Wire Wire Line
	7800 2450 7800 2950
Wire Wire Line
	7900 2450 7900 2950
Wire Wire Line
	8000 2450 8000 2950
Text Label 9200 3150 1    60   ~ 0
GPIO1
Text Label 9100 3150 1    60   ~ 0
GPIO0
Text Label 9300 3150 1    60   ~ 0
GPIO2
Text Label 9400 3150 1    60   ~ 0
GPIO3
Text Label 9500 3150 1    60   ~ 0
RX
Text Label 9600 3150 1    60   ~ 0
TX
$Comp
L Connector_Generic:Conn_01x06 J12
U 1 1 5DBFDFB8
P 9400 3350
F 0 "J12" V 9272 3630 50  0000 L CNN
F 1 "Conn_01x06" V 9363 3630 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 9400 3350 50  0001 C CNN
F 3 "~" H 9400 3350 50  0001 C CNN
F 4 "Digital" V 9450 3750 50  0000 C CNN "Function"
F 5 "Female" V 9550 3750 50  0000 C CNN "Gender"
	1    9400 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 3150 9100 2800
Wire Wire Line
	9200 3150 9200 2800
Wire Wire Line
	9300 3150 9300 2800
Wire Wire Line
	9400 3150 9400 2800
Wire Wire Line
	9500 3150 9500 2800
Wire Wire Line
	9600 3150 9600 2800
Text Label 9250 2050 1    60   ~ 0
SDATA/GPIO7
$Bitmap
Pos 10800 6900
Scale 1.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 00 6D 00 00 00 73 08 02 00 00 00 1D 46 1B 
EA 00 00 00 03 73 42 49 54 08 08 08 DB E1 4F E0 00 00 1D 3F 49 44 41 54 78 9C ED 7D 77 74 5C D5 
B9 EF B7 CF F4 A2 E9 4D D3 D4 25 4B 96 25 D9 46 96 6D E4 22 77 D3 F2 68 BE A1 E3 04 78 97 3C 02 
79 CF D7 21 90 AC B7 B8 77 91 0B 09 81 8B 13 73 13 08 24 21 74 08 17 42 E0 62 6C 83 8D BB 6C 59 
92 55 AD 32 D2 68 46 9A 91 46 D3 7B 3D FB FD 31 92 3C 6E D2 48 E7 18 99 F5 F8 2D FD A3 99 B3 BF 
B3 CF 6F F6 DE DF DE 5F 3B 08 63 0C 57 13 5C 91 D8 7D 5F 36 7D 66 73 4E 73 CD F5 5A C5 EB EB AF 
91 F3 38 DF 58 AF 66 04 31 DF 1D B8 10 3D 6E 7F AB CB 37 FD 35 AD 2E 5F 8F DB FF CD F4 27 4B 5C 
75 3C 0E 04 C2 23 E1 D8 F4 D7 8C 84 63 03 81 F0 37 D3 9F 2C 71 D5 F1 68 0B 46 00 CD 74 11 02 5B 
30 F2 4D F4 26 6B 5C 75 3C 76 FB 43 80 66 22 12 A1 6E 7F E8 1B E9 4E B6 B8 BA 78 F4 C7 E2 F6 50 
24 1B 1E ED A1 88 3F 16 FF 46 3A 95 15 AE 2E 1E AD FE B0 35 90 D5 84 B5 06 22 56 FF 55 B4 44 5E 
5D 3C 76 F8 82 5D D9 4D D8 2E 7F A8 C3 17 BC D2 FD C9 1E 57 84 C7 26 87 67 CF D0 28 39 FB 9D E9 
78 28 02 59 B6 C2 78 3C 34 6B 55 43 62 BC 67 68 B4 C9 E1 99 6D C3 19 41 3F 8F 87 87 1D DB F6 36 
6E DD 73 E2 DE 7D 27 ED B3 D4 AA E6 40 18 88 19 B5 35 00 00 10 68 70 96 5B 1F 7B 30 72 FF FE 53 
5B F7 9C D8 F6 45 E3 E1 61 C7 AC DA CE DC 1D 7A C5 1D 1E 76 DC 77 B0 79 30 1C 03 84 DE 1A B4 5F 
FB F1 A1 CF 07 46 B2 6C 1B 4F 91 FD D9 2D 8E 00 00 08 99 82 91 78 8A CC F2 F2 CF 07 46 AE FD F8 
D0 1B 03 36 40 68 30 1C BD EF 40 33 BD 54 D2 C9 E3 E1 61 C7 7D 07 9A 07 43 D1 89 FF 11 1A 0C 47 
6F D9 DF F4 E8 C1 66 67 38 3A 6D 53 00 80 E3 A3 AE 66 97 77 66 65 3D 89 66 A7 F7 F8 A8 6B C6 CB 
9C E1 E8 A3 07 9B 6F D9 DF 34 18 8E 4E 08 BF 02 54 22 BA CE D7 13 24 4E F5 35 13 24 AE 12 0B 5E 
AC AF 6A 30 A8 2F 6E 98 48 91 5F 8F 8C FF A1 63 60 CF C8 78 68 96 9D E1 01 6C D1 AB 1E AE 2C 58 
AB 53 B1 18 97 18 13 07 AD 8E C7 8E B6 B5 79 83 97 58 2E 30 2E E0 73 5F 6F 58 B2 4A AF 9A D5 4D 
2F 09 7A 78 3C 37 9D 2F 0F 01 42 3F AE C8 FF D9 D2 05 62 2E 3B FD 89 23 14 79 A3 C7 F2 97 B3 43 
1D FE 10 10 14 66 06 49 56 8A 04 F7 97 E5 DD B3 C0 A8 12 F0 D2 9F F9 A2 F1 67 4F 9F FD 5D 97 79 
BA DF 86 3E 2A 69 E0 F1 F0 48 7A 24 CE 70 28 06 00 20 71 9D 42 FC CC F2 85 24 C6 7F EA 1E FA CC 
32 EA 4B 91 D9 4F E4 19 80 B1 98 C1 B8 DE A8 FE 41 79 1E 81 D0 13 27 3A 1B 9D BE 99 B5 16 4D 54 
52 E5 71 16 24 A6 81 31 90 18 10 50 1A 80 D3 83 24 01 03 10 28 DB 5F 88 0E 2A 29 3D 8C 2D 10 7E 
E2 78 E7 39 C5 92 0D 10 02 06 71 05 49 04 00 82 00 06 31 8B 61 8E D0 60 38 FA C4 89 4E 1B 05 1B 
12 A5 E7 D1 08 79 CB 34 72 B8 BA 0C C1 73 02 86 65 1A B9 46 C8 9B B3 00 4A 3C 12 08 ED AC 29 A9 
D7 C8 A8 08 B9 1A 50 AF 91 ED AC 29 21 28 AC D4 54 E7 57 AE 90 F7 64 75 B1 82 C9 A0 28 67 1E A1 
60 32 9E AC 2E CE A5 30 18 81 96 7D F8 D6 02 ED 03 15 05 40 7E 3B A7 37 89 1F A8 28 D8 5A A0 A5 
28 86 9E F5 7E 47 55 D1 56 9D 22 5B 13 C3 D5 03 8C B7 EA 14 3B AA 8A A8 4B A2 87 47 05 9F BB B3 
A6 24 97 C3 A6 45 DA 37 86 5C 0E 7B 67 4D 89 82 CF A5 2E 8A B6 FD 47 83 41 FD 68 65 E1 B7 69 76 
93 F8 D1 CA C2 4B 1E 55 E7 00 3A F7 71 0F 57 16 DE 6A 54 7F 3B 66 37 C6 B7 1A D5 0F 57 16 D2 25 
8F 4E 1E C5 5C F6 8E 25 A5 46 3A A6 C9 95 86 91 CF DD B1 A4 74 EA A4 4F 1D 34 9F 2B 6A E4 E2 2A 
B9 98 5E 99 57 02 55 72 71 0D AD FD A4 99 C7 23 76 E7 B1 2C 6C 82 F3 8E 63 A3 AE 23 F6 E9 42 5F 
66 0B 9A 79 FC D4 32 E6 4E 24 E9 95 79 25 E0 4E 24 3F B5 8C D1 28 90 4E 1E 3B 9C DE 7D 96 31 DA 
EC 60 57 14 08 ED B3 8C 75 38 BD 74 C9 63 D2 25 08 00 3E 1F 1A ED A6 68 91 9D 02 C6 40 E2 1C 16 
A3 46 2C 54 F3 39 00 30 16 8E B5 FA 82 81 44 6A 16 06 B1 69 D1 ED 0F 7D 3E 34 5A A9 90 50 17 05 
34 F2 E8 8A C4 F6 0C 3B 68 20 11 63 05 8B 79 67 91 EE EE 52 63 8D 4A 9A E9 2D 48 A4 C8 56 87 E7 
CD 5E CB DB A6 11 67 22 49 95 4D 82 D8 33 EC F8 41 45 01 2D F1 7F B4 F9 67 FE DC 6D FE C1 A1 56 
AA CF 86 F1 3D 85 DA 5F D6 2D 34 88 04 D3 5C 65 F5 87 7E DE D8 99 76 FE 51 BC DD 9F 56 D7 6C 2F 
CF A7 24 04 00 E8 5A 1F 63 C9 D4 3E CA CB B6 82 C9 78 BD BE FA F5 8D CB A6 27 11 00 0C 22 C1 EB 
1B 97 BD 5E 5F 4D DD CE B4 CF 32 16 4B A6 28 0A 01 00 C6 53 4F 3D 45 A5 7D 22 45 9A 7D 81 3F 76 
0C FC A5 7F 38 46 61 64 CB 18 C4 4B F5 55 77 95 E7 67 39 C0 10 40 B5 4A 9A C7 E7 7C 35 EC 88 CC 
79 4A 21 64 0D 86 89 54 4A 2B E0 E6 B0 59 8C 2C 43 10 2E 29 69 B6 F3 3A 10 4B F4 BA FD 47 1D 9E 
6E B7 AF DD E9 6B F5 06 43 49 CA 6B 3F C6 CF D6 96 3F BE A4 6C 0E 4D 7F D5 DC F3 B3 53 DD 14 EF 
0E 24 16 30 19 35 12 E1 22 85 B8 5C 26 BE 56 25 2D 95 89 72 38 AC EC 65 64 C5 63 8F DB FF 41 FF 
70 97 DB 7F CA E9 ED 4F 87 9A 20 7A 94 26 C0 C4 51 F7 CF EB AE 99 55 BF A7 10 88 25 B6 7F D5 F4 
21 8D FB 2D 8C D3 26 82 62 21 AF 56 21 A9 90 89 6E 2F D6 97 C9 44 D3 37 CA 4A 5F BF DD 63 F9 B7 
33 7D 13 BA 98 6E 17 95 80 20 EE 2C 31 CC 8D 44 00 C8 E1 B0 EE 2C 31 EC 19 9E 75 0C C1 65 31 39 
44 FA C3 B1 7E CB 18 98 ED 89 14 F9 AF 2B 2A A7 6F 94 1D 29 08 AE D4 EE 1A E3 55 5A F9 46 23 25 
E3 D5 46 A3 7A 95 56 7E A5 EC 4C 08 CD 1C 67 3D FF F1 8F 18 D7 AB A4 39 EC 39 0E C6 34 72 D8 AC 
6B 95 D2 F9 B5 D7 CD 3B 8F 50 20 12 52 17 53 28 16 CE AF FB 77 9E 79 54 71 58 3A 3E 0D C7 09 1D 
9F A3 9A EB 0A 4B 0B E6 99 47 2E 93 C1 65 D0 E0 B3 E5 32 18 DC 79 F5 FD CE 33 8F D1 64 2A 9A A2 
E1 38 11 4D A5 A2 74 1C 4B E6 8C 79 E6 D1 11 4F DA A2 34 A4 6F D8 A2 71 47 7C 3E ED 9E F3 AD 67 
00 DB E8 48 DF B0 F9 C3 30 AF 8A 66 BE 79 24 88 43 0E 37 45 4B 41 2C 99 3A E4 70 5F D9 18 B6 99 
30 DF 3C A6 5D 25 D3 66 09 CF 88 23 B6 F9 77 0A 65 75 2E BC B1 50 17 4C A6 7A 5C FE 63 4E AF 27 
96 98 B0 4A D0 74 C2 71 C6 93 EF F5 0F AF D6 29 2F 19 E0 3D 23 12 29 F2 BD FE 61 67 9C B2 59 77 
0A E9 F3 35 89 A5 1C D6 4A 85 A4 4C 2E BA B1 50 37 63 A3 D9 D9 7B 48 8C C7 42 D1 F6 71 CF 49 A7 
EF AC CB 77 D2 E5 EB F3 87 27 4E 8D 14 1E 83 07 F0 87 FA AA 7B 2B 0A E6 D0 F6 AF 5D 83 FF 7C A4 
8D 52 F2 6B 9A 38 0C 25 22 FE 32 B9 78 81 5C BC 4C 21 5E A4 94 AA 05 DC EC 23 F9 A8 DA C3 03 F1 
44 8F CB B7 AB 7D E0 CD 01 5B B6 29 44 97 82 91 C7 79 A3 61 C9 EA 59 46 16 1F 1A 76 DC 73 A0 D9 
12 C9 3A AA FA 62 90 F8 EE 42 ED 63 8B 0A CB E4 62 2A C7 53 7A FC 0A ED E3 DE 6D FB 4E 9E A5 96 
13 5D C0 E7 BC B6 66 71 F6 01 37 07 AC 63 3F FC BA 65 16 A1 E9 97 C2 02 21 EF FD 8D CB 16 29 A9 
7A BB E8 D1 33 95 4A 49 83 4E 49 D1 52 30 18 8E DD B6 F7 E4 EF CF F4 25 66 CA D2 4A A4 C8 17 5A 
FB 6E DB 77 8A 22 89 80 71 83 4E 59 49 99 44 A0 8B 47 04 B0 59 AF 12 50 DE 79 B8 53 E4 8F 4E 74 
DE FA F9 F1 81 CB E7 B2 0E F8 82 B7 7E 7E 7C 47 63 A7 9B F2 01 46 40 10 9B F5 2A 5A D4 13 7D 71 
7B 7A 55 7D 2E 1D 46 40 84 0E 8D BA 7B 3D 81 CB 7D DF EB 09 1C 1A 75 D3 A0 9D 31 AE CF 95 37 D0 
91 CC 05 34 F2 28 E2 B0 B6 50 9E DA 69 D4 6B 15 AB 75 CA CB 7D BB 5A A7 AC D7 2A A8 DF 05 30 DE 
A2 53 8A 68 B2 12 D1 B9 0F DF 60 50 95 CF E4 32 9D 19 24 79 83 41 C5 67 5D 76 63 CB 67 31 6F 30 
A8 80 CC 36 D3 F5 72 28 17 09 36 18 E8 19 8C 40 2F 8F 0B 15 92 B5 7A 15 C5 21 59 2B 17 6F 99 C9 
CD B0 C5 A8 AE A5 18 75 87 F1 5A BD 6A 21 4D 41 29 40 2F 8F 08 60 B3 4E 21 A0 B0 8B 04 12 6F D2 
AB F2 C5 33 58 C8 F3 C5 C2 4D 7A 15 95 18 6A 01 81 36 EB 14 34 BA 9C 68 3E 5F 8B 38 6C DE E5 A7 
E4 8C 50 72 59 EB B3 9B 6B EB 0D 2A 25 77 EE 4B 1B 8F C5 14 D1 9A 15 40 27 8F C1 78 E2 B5 2E B3 
33 96 98 63 7B 8C 37 E9 94 F5 B9 59 E9 90 FA 5C C5 26 0A 6A CD 19 4B BC D6 65 0E C6 E7 DA D5 8B 
40 27 8F 2F 77 99 DF 1A A4 14 BB B4 D1 A0 CE D2 5A C1 62 10 1B A9 A4 1A 20 F4 D6 A0 ED E5 2E F3 
DC 25 9C 0F DA 78 3C 6A 73 EE 6A 33 51 21 71 8D 4A BA 75 36 0A 74 AB 41 B5 46 25 9D F3 ED 00 A1 
5D 6D A6 A3 D4 4C 76 53 A0 87 47 5F 34 FE 7C 6B AF 35 32 9B 04 E2 0B 40 92 D7 19 D4 53 D9 FC D9 
40 25 E0 5D 67 50 53 D9 00 59 23 D1 E7 5B 7B 7D 74 38 36 E8 E1 71 77 BB E9 23 8B 83 CA 60 2C 16 
F2 37 CE 7E 37 B7 D1 A0 2A 16 F2 E7 7C 53 40 E8 23 8B 63 77 BB 69 EE 12 26 41 03 8F FB 87 46 77 
77 0C 50 31 9A 01 C6 1B 0D AA 1A F5 AC F3 8F 6B D4 B2 8D 06 6A 3B 56 02 ED EE 18 D8 3F 34 3A 77 
09 69 31 14 DB 3B C3 D1 17 DA FA 47 A9 29 BE 39 DB 0B 68 B1 8F 8C C6 13 2F B4 F5 67 53 19 67 1A 
50 E5 F1 F9 36 D3 E7 23 4E 8A 56 83 D5 5A 45 96 DB C6 8B B1 DE A0 5A 4D F1 B8 8D D0 E7 23 CE E7 
DB 28 CD 6E 4A 3C 8E F8 43 87 86 1D 94 66 34 00 90 E4 F5 7A 95 70 AE B6 68 21 9B 75 BD 9E F2 71 
9B 40 87 86 1D 23 14 6A 4A 52 E2 51 27 12 3C 55 5B 6E A0 96 A5 57 23 CD D9 44 CD 5E B0 C9 A0 AA 
91 E6 50 91 60 E0 B2 9F AA 2D D7 51 30 B2 50 9D D7 1B F3 34 AF AD 59 9C 2D 95 18 97 F2 B9 B5 12 
E1 39 CD 80 F1 16 BD AA 64 A6 68 D7 E9 51 22 13 6D C9 B4 8F 60 5C 2B 11 96 F2 B9 59 EA 1F 03 97 
FD DA 9A C5 1B F3 34 54 FA 40 83 BE CE 96 4A 8C 1F 28 35 1C BD 65 4D E3 B6 F5 FB AF 5B B1 42 26 
02 92 94 B1 98 EB E8 B0 A4 AE D3 AB 64 2C 26 90 E4 0A 99 68 FF 75 2B 1A B7 AD 3F 7A CB 9A 07 4A 
0D 33 52 49 0B 89 40 63 FE CC BE A1 D1 1F 7E DD 62 BD E4 9E 16 E3 7C 01 EF A5 95 8B AE 2B 3C 57 
06 22 91 22 FF 31 30 32 14 08 FF A8 AA 98 43 39 54 2C 96 4C FD 67 5B 7F 5E 0E FF C6 42 5D E6 C9 
F2 BF 07 6C FF EB 58 BB F9 32 B5 62 E9 22 11 68 E4 11 2E 47 25 C6 77 E6 E7 3E 77 ED 22 2D 95 0D 
33 05 D8 82 E1 9D 47 DB DF 36 DB 2F A0 92 46 12 81 5E 1E E1 02 2A 31 36 F0 38 CF D5 2D BC BD D4 
40 A5 34 0E 75 90 18 7F D0 6B DD D9 D8 69 8D C4 D2 6C D2 4B 22 D0 CE 23 A4 A9 3C D8 62 8D 44 BF 
A7 57 3D 5F 5F 55 24 A1 A4 49 69 84 C9 1B D8 71 A4 ED EF C3 0E 03 8F FB DA 5A 3A 49 84 2B C1 23 
00 1C B3 39 ED A1 C8 4D E7 2F 55 57 03 12 29 F2 93 81 91 5C 01 6F 25 2D 9E B2 0C 5C 11 1E FF 3F 
C4 D5 35 5E BE BD F8 8E 47 7A F0 1D 8F F4 E0 3B 1E E9 C1 77 3C D2 83 EF 78 A4 07 DF F1 48 0F 26 
62 1F EC C1 F0 7B FD 23 ED E3 1E 84 50 8D 52 7A 47 89 5E 3E 59 A6 AC D1 EE FC 9B 69 A4 58 2C BC 
A5 50 BB 67 68 EC B0 DD C9 26 88 EB F2 73 37 E5 A9 99 19 06 7D 6F 24 F6 76 9F B5 C5 E1 41 08 AA 
95 B2 3B 4A F4 B2 C9 3A 24 A7 C6 DC EF F7 59 F3 72 F8 37 17 EA BE B2 3A 0E D9 C6 19 04 71 7D BE 
66 4B 5E EE 34 1B 75 93 27 F0 81 69 B8 DF 13 00 40 3A 21 6F 8B 51 5D 9B 2B CF BC 63 8F CB F7 7E 
DF B0 C9 17 E4 B3 98 EB F4 CA EB 0A B4 53 D1 55 9F 0D D8 BE B6 3B AB 94 92 BB 4B 8D 53 D7 BF D1 
65 6E 73 FB 36 19 D4 1B F3 34 BE 58 FC 8D B3 43 43 81 F0 B6 12 43 9C 24 FF D6 3F E2 8F C6 2A 15 
92 BB CB 8C 4A 3E 17 03 1C B5 3B 3F 32 8D B8 42 D1 1C 0E 7B 4B 9E 7A 83 41 3D 65 4C 09 C4 12 1F 
99 86 8F D8 5D 00 50 A9 10 7F BF D8 A0 12 70 11 C6 F8 0B B3 FD C1 AF 5B AD D1 89 B3 27 60 5C 24 
E4 FD 65 ED 92 7A 9D 12 00 5E EB 18 78 E0 F0 99 7C 11 5F CC 60 9C 99 2A 0C 4F 92 8F 94 E7 FF 7A 
E5 A2 74 14 4A D3 98 FB AE 2F 9B 7A FD 93 6F 99 38 5F C2 EB DD E6 FB 0F B6 94 89 05 4A 16 F3 88 
CB 37 91 E8 42 92 0F 95 1A 9F AF AF BA A4 25 FC 8D AE C1 9F 1C EF 70 27 53 E7 8C 0B 24 B9 5A 2D 
DB B5 BA 26 5D 97 EC 0F 6D FD 3F 3B D9 ED 4B 4D 5E 40 E2 F5 1A D9 2B 0D 4B 0A C5 42 00 78 F2 58 
FB 33 ED A6 DB 8B 74 EF 6F A8 9D 92 B9 ED 8B C6 0F CC F6 5F 2E 2E 7D 72 59 85 2D 10 DE B6 F7 E4 
D1 71 6F 95 54 68 F2 87 27 72 E0 31 7E E6 9A 05 FF B3 A2 E0 A7 C7 3B 5E ED B5 4C F4 13 63 20 F1 
16 AD 7C F7 9A 25 45 12 E1 19 97 6F FB 97 A7 5B DC FE A9 27 CD E7 73 5E 5B B3 98 38 34 EC D8 71 
BC C3 1A 8B AB 38 EC BB 8C EA 6D 7A 95 8C C5 34 85 A2 3B 4F 74 5A 33 EC EC E6 50 74 20 18 BE 59 
AF DC 5E 90 5B CC E7 00 42 BB CF 0E BD 6F 1A 01 00 5F 34 FE 74 D3 D9 DE 40 B8 5C C4 DF 59 59 B8 
B3 B2 30 5F C0 33 05 23 FF E7 58 BB 39 23 AC B6 27 18 69 F2 06 B7 6A 15 DB 0B 72 75 5C 36 20 F4 
4A AF E5 ED 5E EB 25 47 E2 8B ED 03 EE 64 6A 99 4C F4 64 75 F1 2F 6A 4A 6E D2 2A 78 04 41 00 C8 
58 CC F4 70 FB F9 A9 6E 5F 2A 55 2A E0 FD B0 50 BB 55 23 E3 32 88 2F C7 DC FF 7A B2 6B 76 59 86 
04 6A F3 06 4B 72 78 0F 97 E8 EB 24 C2 C7 CA F3 77 D4 94 3E D3 DA FB 6A AF 05 10 AA 95 08 1F 2A 
D2 6D CD 95 F3 18 C4 C1 31 CF 67 83 B6 60 3C F1 F4 C9 AE 16 8F DF 28 E4 EE 58 58 F8 D3 45 45 15 
39 7C 73 38 F6 D8 B1 76 E6 CB 9D 83 9D BE 60 7E 0E FF 9D F5 D7 2C D7 C8 01 60 DF D0 E8 7D 07 9A 
4F 38 3C 5F 58 C6 1E 98 AA 90 88 F1 BF D7 55 3E B2 A8 08 00 BA 5D BE 6D FB 4E 75 F8 82 DD 2E 1F 
00 7C 32 34 FA F7 61 47 85 48 F0 FE C6 DA 74 24 DC ED C5 FA 6D FB 4E 9E 72 F9 FE 31 68 FF 71 4D 
C9 94 84 67 EB 16 3E 56 5D 0C 00 26 6F 60 DB DE 53 CD 1E FF 51 87 E7 A1 8B 9E AE D9 E5 6B F6 F8 
0B 04 BC 97 56 55 5F A3 91 A7 3F 6C 1B F7 F0 98 4C A3 48 00 00 1F 9B ED EE 64 AA 5E 2D 7B 7F 43 
6D BA 3E F0 6F DB FA 1F 3B DE F1 0F AB E3 6E BB 73 16 F1 2A 18 DF 6E D4 FC B1 61 89 98 CB 4E 92 
24 00 74 38 7D 1F 9B 6C 80 D0 E3 D5 C5 4F 2F AB 48 2F 23 7B 06 6D C1 44 F2 D6 52 E3 27 A6 91 CF 
AC 0E A3 80 F7 EE 86 DA 15 1A 19 00 DC 5F 6A D8 B6 F7 64 87 37 48 9C 1E F7 02 42 1B 74 CA E5 93 
3D 6E 30 A8 96 6B 15 40 20 4B F0 5C E6 DF 42 91 60 5D EE C4 05 E5 72 F1 72 8D 0C 00 6C B1 38 00 
98 3C 01 C0 B0 32 57 3E 15 4E 58 AB 92 AE D3 2A 00 A1 BE 8C 11 5D 23 11 5E 37 E9 87 29 92 E4 6C 
31 28 01 20 90 4C 25 2F 0A BF 13 30 18 02 06 C3 11 8B 7F 35 3C EE 8A C4 D2 EF 03 AA 52 4A 4B A4 
39 00 10 8C 25 46 42 11 C0 F8 B6 3C CD 54 91 E5 5B F3 73 57 2A C4 9E 58 62 76 2F 9B 22 71 83 4E 
91 AE 02 C9 24 08 26 41 B4 3A BD 7D 81 F0 62 89 F0 81 32 E3 D4 5A BC A5 40 7B 5B A9 11 01 74 7B 
FC 11 92 5C A3 55 2C 9F 2C F5 5D 2E 17 6F D0 2B 01 21 A6 2D 1A 07 0C FA 8C DA 54 4C 82 D0 B0 59 
80 C1 9F 91 41 2A E7 B0 E4 DC 73 D7 28 D9 2C 00 88 90 18 03 8C 45 63 80 E0 D3 41 FB C2 E1 3D E9 
75 06 21 18 89 25 01 20 D3 AF 2D 64 31 85 EC 73 21 7D 82 CB A7 5D AF D6 29 6E D0 2B DF B3 8C 3D 
DE 74 F6 F1 93 5D 80 40 C3 E5 D4 29 25 3F A9 2E 5E 6B 50 87 93 C9 70 32 05 18 32 D3 5D C4 5C B6 
98 CD 06 80 48 72 76 59 AF 17 04 FE BA 22 31 40 60 C8 11 5C B2 16 93 2B 1A 07 84 3E 31 DB 2B DF 
3C F7 A4 EE 44 0A 10 62 06 48 F2 E2 3A 16 E9 35 34 95 61 0A 22 10 CA 74 AF 32 32 EC B2 21 92 04 
84 46 63 F1 D1 F0 45 CE CF 8C B1 36 59 CE 65 66 08 D9 AC DF D4 57 2B 9B BA DF 32 D9 3C 71 12 30 
8C C6 E2 7F 1F 19 3F E6 F0 BC D1 B0 A4 4A 29 49 77 2C B3 D7 04 42 04 81 CE BF E1 5C 90 7E 00 06 
42 8C 4B 19 9E 63 24 06 00 5F 3C E1 BB 28 F3 89 69 E0 B0 AC D1 B8 FF FC E4 65 7F 32 05 00 C2 0C 
B7 49 28 99 0A 25 52 CA 73 FF 26 01 80 47 20 04 A0 66 B3 80 C4 8F 2D 2C 78 71 55 0D A5 87 C8 80 
3E 87 FF BB 86 A5 BB D6 2E 09 C4 12 AE 48 F4 8C DB FF E4 E9 DE B3 1E FF DE 91 F1 3A 8D 9C C7 60 
00 40 66 02 7C 38 91 0C 27 92 00 C0 CE DC 48 65 FC 6E 49 92 BC 78 01 B9 18 42 16 13 30 B8 A2 31 
57 24 A6 BE 28 68 4B C2 66 02 86 FB 4B 8D 7F 5E B7 F4 82 AF 88 4A B1 10 30 3E E5 F2 8D 4E BE 36 
AC CF ED 6F 77 7A 01 63 AD E0 5C A5 DB 2E 6F B0 65 B2 5A A2 37 1A EF F0 04 01 40 C2 60 02 40 B1 
58 08 18 9F 1E F7 DA 33 D6 D3 50 22 39 E7 04 FD 44 8A DC 63 B6 3B 42 51 02 21 31 97 5D 28 15 DD 
5C A4 BF 41 2B 07 80 F1 78 22 87 CB 16 F1 D8 40 A0 A6 71 EF 54 C6 52 93 C3 73 C6 ED E7 32 19 1A 
01 0F 00 F8 4C 46 FA 41 FA 26 5F 03 DB E5 F2 75 79 66 7E 25 6C 89 24 47 CA 61 9D 1C F7 7E 91 11 
F1 63 F6 85 D2 AF 93 2D 10 09 00 E3 0E 97 6F 30 63 1F 12 8C 27 C2 89 24 F3 86 02 6D A3 CB 77 78 
D4 7D C7 BE 53 F7 97 1A 53 24 F9 6A 8F A5 D5 1B D4 09 B8 4B 27 35 0F 00 84 30 7E FC 54 F7 58 38 
AA E0 B0 DF 31 0D EF B3 3B 01 E3 52 B1 00 00 D6 EA 94 55 D2 9C 23 0E EF 5D FB 9B FE A5 BA C4 20 
E0 1E B1 39 7F DD 6E 5A AB 91 FD E6 DA 2A F9 2C CB 0E C7 92 A9 9F 37 76 3E DF 6E AA C8 11 FC 68 
61 FE 0A 8D 9C C3 60 1C 1C 19 7F 6F C0 06 18 8A F8 3C 06 42 1B 72 15 1F 0E D8 FE 64 1A 09 24 92 
FF 54 A8 1D 09 46 5E EC 36 BB 13 C9 75 6A 59 7D AE 1C 00 D2 6A BD D5 1B BC EF 40 F3 83 E5 79 98 
C4 2F 9F 1D EA C9 E2 75 1E AB B4 8A 1B F4 AA 37 06 6D 3B 1B BB BA 3C 81 15 2A E9 50 30 F2 DB 6E 
73 22 99 7A 75 4D CD 7A 9D AA 4E 21 6E 74 F9 B7 1F 68 FE 97 EA E2 C2 1C FE 31 BB EB DF CF F4 AD 
54 48 98 3F AA 2E B6 C7 13 4F 37 F7 1C 1C 73 1F 1C 75 A7 93 57 05 04 F1 8B 9A 92 95 19 3C 2A 58 
4C 4F 24 F6 F0 B1 8E A9 9A 48 1B 73 E5 B7 16 EB 01 A0 4C 26 7A BC BA F8 91 A3 ED 07 1C 9E 03 5F 
9C 98 78 F7 0B C0 B1 71 DF 60 20 3C 5B 1E D9 4C C6 0A 95 54 C7 E3 74 05 C3 8F 34 76 4D 2C 78 04 
02 0C 2B 15 E2 BB 16 E4 01 C0 BD 0B F2 5A 1C 9E 57 FA AC 1F 58 C6 3E 48 0F 1C 84 74 1C F6 13 8B 
4B D3 C5 1C 6F 29 D4 7E 69 19 FB EB 80 ED B8 CB 77 FC F0 19 00 50 B2 59 4A 36 6B 7C A6 78 2E 0E 
93 B1 63 69 59 BB 37 D0 EA 09 FC AA 63 00 F0 C4 32 AC E3 B0 E3 29 D2 28 16 EC AC 2E FE E7 23 6D 
5F 3B 3C 5F 7F D1 38 F5 A4 04 F8 18 4F 3D F5 54 83 4E B9 5C 21 0E 44 62 BE 44 42 C8 64 6E CE 95 
EF AA AF BA AD C4 90 16 DD E2 F0 7C 62 19 5B A9 92 BC BA BA 26 95 4C 8D 86 A3 72 36 F3 C1 12 C3 
AF 32 5C A9 8B 94 92 55 B9 8A 58 3C EE 8E C6 93 80 96 88 85 0F 97 E7 EF 5E 55 93 DE A9 0C F9 83 
3D E3 BE 72 89 60 73 9E 46 30 A9 64 7B 5C 3E 9B 2F B4 58 2E DA 60 D4 64 7A 13 11 40 85 5C 7C 4F 
A9 41 C5 61 91 89 64 28 95 02 44 AC 90 89 1E 59 58 F0 EB 95 8B F4 39 7C 48 07 35 1B D5 65 42 9E 
37 14 75 C5 13 B9 1C F6 F7 F3 34 BB D7 D4 D4 4D C6 96 B3 19 8C 75 3A A5 84 49 58 FD A1 68 0A 6F 
50 CB 5E 58 B9 48 48 A0 48 2C BE 26 57 B1 54 23 0B 27 93 A7 ED 2E 82 C4 9B 8D EA 05 E7 47 73 68 
F8 DC 5B F2 B5 62 06 11 8C C6 DC C9 A4 81 C7 D9 5E AC 7F 69 75 CD 72 AD 02 00 2A E4 E2 35 5A 45 
22 91 F4 46 E3 71 80 1A B1 E0 81 52 C3 EE 35 35 33 FB 67 D2 E7 C2 F5 B9 F2 F7 37 2F 93 F1 BE 05 
B5 C1 E7 05 74 D6 C7 A5 05 C1 78 C2 1D 89 71 18 0C 39 9F C3 9C D7 92 13 B3 C2 55 D7 D1 77 7B 2C 
79 6F EC B9 63 6F A3 97 8E B0 ED 6F 0C 57 1D 8F 80 10 30 18 DF 8E E2 D9 19 C8 9A C7 6F D9 73 7D 
D3 B8 FA C6 E3 B7 13 B3 D0 33 C1 78 F2 BF CD E6 E3 76 17 93 20 6E 2A D4 36 18 54 53 FB 15 12 E3 
A6 51 D7 67 66 BB 3D 14 65 12 48 2F E4 5F 9F 9F 5B 3D 99 24 14 88 27 DE E9 B1 98 03 E1 DB 8A 74 
51 8C FF AB 7F 38 18 4B 2C 90 89 EE 2A 33 2A F9 DC D1 50 E4 DD 5E 6B 9F 27 A0 E0 B1 6F 9F DC 6C 
01 00 06 78 BB C7 D2 E1 F2 D5 A9 65 DF 2B 3A 57 F9 E5 DD FE E1 7E B7 FF 8E 52 63 91 64 22 9D B3 
DD ED 7F A7 D7 0A 18 DF 51 6A 5C 24 17 B5 8F 7B FF 3E 60 1B 0E 84 48 00 29 9F BB D9 A8 5E AD 55 
A4 55 16 89 F1 3B 3D 96 4E B7 7F 93 5E 95 2B E4 BD D7 67 1D 09 46 0A 45 82 3B 4A 8D 46 B1 00 00 
FA DC FE 0F FA 87 2D 81 B0 90 C3 DA 62 D4 AC D5 2B B3 D4 75 D9 F2 38 10 8C 7C 6F CF 89 56 CF 84 
3D FC B7 3D 43 8F 55 E4 3F BB 62 11 97 C9 88 24 92 4F 9C E8 D8 D5 69 3E 17 28 8E F1 CF 9B 7B 7F 
5A 5D FC F4 B2 0A 16 83 88 25 53 EF F6 0F 1F 18 F3 1C 1E 19 3F E3 0D 06 D2 3B AD 3E 6B 34 45 AE 
D3 AB EE FC AA C9 14 08 03 42 80 F1 EE AE A1 22 11 3F BD 38 22 80 41 5F F0 99 B6 FE CD 3A 65 83 
5E 95 4E 38 1F 0B 46 7E DF 66 3A 34 E6 56 70 D9 45 92 E2 F4 DD 8E 8E 8C 3F D3 D2 BB 4C 21 7E B0 
3C EF 97 A7 7B 7E 79 FA 6C 04 E3 A9 15 F6 D7 6D FD DB 8B F5 FF 51 5F 2D E6 B2 49 0C 1F 9A ED 1F 
0D 8D 1E B5 3B FB 02 61 7B 2C 01 08 01 49 8E 45 E3 BF A9 AF FA 6B D7 E0 8E E3 9D EE B4 8D 1D E3 
E7 3B 06 EE 2A D0 BE 50 5F 95 4D 76 54 B6 3C 0E 06 23 3C 84 B6 6A E5 2A 1E 67 AF CD 65 8F C6 76 
75 9A AB 15 92 ED E5 F9 2C 06 B1 50 92 A3 64 33 17 2B 25 75 2A 19 49 92 47 47 5D 07 1D 9E 97 3A 
06 56 AA A4 E7 86 12 81 8E B8 FC 95 22 7E 9D 4A DA EA F2 2D 57 CB 1E 5E 54 F8 D0 C1 16 53 20 0C 
80 AE 55 88 17 88 04 8D 0E CF 29 97 7F EA F7 B8 46 2D 13 B3 98 A7 5D BE D3 E3 9E 74 01 84 63 A3 
AE 93 4E 2F 10 E8 E8 98 E7 01 92 4C 0F 96 16 A7 0F 10 5A AC 94 E6 4B 72 AA 24 42 25 97 9D 2F E4 
AD D2 2A 08 44 B4 3B BD 7B 6C CE 3F F7 0F 2F D7 C8 1E AA 9C 7C 0F 17 42 87 9C BE 62 01 77 BB 4E 
D9 E7 0F AB B9 EC 9F 2F 2D 3B 68 75 3C DE D8 E5 4E A5 D6 28 A5 AB B4 F2 41 5F E8 13 EB D8 5B 83 
76 39 9F FB 1F F5 55 33 C6 1D CE 62 5E 3F BB 7C E1 A3 55 C5 00 D0 E9 F4 7E 7F FF A9 0E 5F A8 75 
DC 0B E5 C0 24 88 07 17 15 DD 5A AC CF 61 B3 D2 7E AB 60 3C B1 6D EF C9 CF 87 1D FD 99 E5 3A 30 
BE D9 A0 7A 6D DD 52 29 8F 93 B6 2F F4 BA FD 1D 2E 1F 60 F8 DF 8B 0A 7E B3 72 11 81 90 33 1C DD 
B6 EF D4 81 31 77 BA C5 72 8D AC 4E 29 DD 6B 1B 3F EB F6 A7 79 6C 1C F3 44 49 0C 04 3A ED F0 9C 
75 F9 2A 95 52 7B 30 DC E5 09 00 E0 E5 6A 29 02 B8 B1 48 77 AD 56 C1 22 88 74 E1 62 12 E3 07 0F 
B6 FC A9 C7 D2 E5 3E AF E0 C5 32 B9 F8 FD 8D B5 79 62 61 DA 0C CE 24 88 0F CD 67 1D 89 E4 F6 22 
DD 4B 6B 16 A7 9D 4E BB CE F4 FD E4 78 E7 A7 66 FB BD A5 86 A5 33 E5 48 65 AB 67 96 CB C5 37 4F 
06 0C 2E 54 48 36 E8 94 00 60 8B 27 A6 0E 43 32 1E 67 CA F9 C7 67 31 F9 6C 16 00 0A 67 9A 7C 48 
BC C9 A0 92 F2 38 00 C0 62 10 2C 06 E1 8E C5 DD B1 04 8F 41 AC D3 2A D3 3F B8 82 CF DD A2 53 4E 
25 71 88 39 EC E5 4A 09 00 9C 76 F9 31 80 2B 12 3B 35 EE 59 2C 15 DE 65 50 75 FB 82 27 1C 1E 00 
38 3D EE 6D 71 F9 AA 25 39 2B 27 1F 55 C6 E3 4C 55 7F 26 10 92 B3 98 80 20 92 59 CB 06 E3 2D 3A 
65 9E 58 08 93 66 70 4F 34 D6 EB 09 00 C6 0D 7A D5 54 FE F8 56 83 BA 5A 2A 1C 08 46 7A BC 97 2D 
DE 32 85 6C C7 A3 80 C5 10 64 58 B3 45 E7 9B 91 07 BD C1 3F 76 98 8E D8 5D DE 78 32 BD 43 B2 44 
E3 17 6F 95 2E 48 71 8F 93 64 1C 63 39 9B 29 CF 90 2C E1 B0 32 0B 10 2E 51 49 79 0C A2 D3 E5 1B 
F6 07 5B 9C BE C6 71 EF AD 05 DA 9B F2 34 1F 5A 1D 47 47 DD 3F A8 28 E8 76 FB 43 A9 D4 62 A5 A4 
58 9A 03 00 CE 70 F4 D5 CE C1 FD D6 31 67 34 9E 66 CE 12 B9 C4 7E FE 02 33 B8 37 12 F7 C6 E2 40 
10 BF 38 D9 F5 5C 73 4F FA C3 24 89 2D D1 38 00 24 B2 48 CE A1 E1 5C D8 E7 09 6C DB 7F AA D5 ED 
9F B0 CD 4C BC F3 7C E6 86 18 03 C6 98 89 10 33 C3 D4 7E 41 52 D3 4A 8D BC 4E 21 39 31 EE 3D 3D 
EE 6B 71 78 42 C9 E4 32 A5 A4 4E 23 5D 2C 17 B5 8C 7B CF BA 7C C7 9C 3E C0 B0 42 2D 23 10 72 85 
A3 0F 7E 75 FA E3 91 F1 49 0B EE 64 4F 66 5A DD 92 18 27 31 06 00 4B 24 76 61 19 49 8C B3 29 2C 
49 03 8F 1F 0F 8C B4 BA 7C F5 2A D9 EF EA AB CA 64 22 06 81 48 8C EF FC F2 F4 47 83 B6 E9 1B 32 
08 C4 40 28 9C 4C 65 4E FF C8 F9 D6 5F A5 80 5B A7 96 1D 1C 75 37 8D B9 9A 5C 7E 25 8F BB 50 21 
D6 E7 08 AA E4 E2 97 BB CD 6F F5 58 06 3C 81 52 11 BF 4E 25 05 80 7F 98 47 3F B6 3A 4A 24 C2 DF 
D7 57 AD D0 C8 99 0C 02 01 FA D9 B1 B6 17 3A 07 A7 EF 89 90 CD 14 B2 98 40 E2 D7 1B 96 7C BF 44 
7F 61 3F B3 38 5C D1 B0 0F B7 85 A2 00 A8 41 2B AF 51 49 79 4C 06 9B 20 10 40 2A 8B AA B7 62 36 
4B CC 66 3A E2 89 8E 49 25 90 24 C9 56 77 E0 82 31 59 A5 90 00 81 5E ED B1 9E 70 78 96 A9 24 CB 
54 52 00 A8 55 4A 01 D0 EF 7B 2C 6D BE E0 52 A5 B4 42 2E 06 00 57 24 0A 08 6A 14 92 F5 06 35 9F 
C5 64 13 04 8B 40 FE 2C CC F2 4A 3E D7 98 C3 07 04 67 5C 3E 36 41 4C FD 25 53 24 9B 20 B2 E1 91 
86 F1 A8 15 70 01 F0 DB 26 5B 99 58 B8 5C 2D 4B 92 E4 67 66 7B 3A 6C 63 7A E4 89 04 79 42 BE 29 
1C FB D5 99 BE 58 32 59 26 16 7E 6A 19 7B DB 34 72 C1 34 5C 9D 2B 5B A1 10 1F 77 F9 81 24 97 2B 
24 E9 A5 AD 4E 25 29 17 09 BA 43 11 C0 F8 5A B5 2C AD E2 E4 3C 2E 60 38 32 32 BE BB A5 77 93 51 
4D 20 74 CC EE DA 6B 9D 39 31 9C 49 10 6B 72 15 6F 9B 6C 7F EC 1A 64 90 F8 DE 32 43 3C 45 BE D9 
6B FD 64 D0 FE 7F AF 59 70 CF C2 82 19 89 A4 81 C7 9B 0A B4 6F F6 0F B7 79 83 77 7F DD 02 24 06 
84 B2 7C FD 87 9C C7 B9 A7 C4 D0 E8 F0 58 A3 F1 1D 4D 67 01 03 00 16 33 99 D1 F3 D7 75 7D 8E 60 
B1 52 7A DC E9 E3 11 44 D5 A4 8B BC 4C 26 2E 93 8B BB 43 91 3C 3E B7 56 35 F1 E1 0D F9 9A 1B 4C 
CA 4F 6D CE 1F 9F EC 82 13 9D 80 71 F6 25 3F EF 2E 33 9E 76 B8 5F E9 B5 3E D7 39 F0 5C 3A B3 9D 
40 80 F1 FE 61 C7 8D 85 5A E9 4C EF 4C 9A 99 47 39 87 55 2B CD 29 11 F0 88 0C DD A1 E6 B2 97 49 
84 C5 02 2E 00 94 C9 44 7F DB 54 F7 DB D6 BE CF 46 1C F6 48 7C 81 80 7B 5F 45 BE 25 10 3E 32 E2 
D4 70 D9 00 40 00 94 E4 F0 83 B1 84 EC A2 50 9E FB 17 16 A8 78 9C 17 DB FA 9B DD FE 7C 3E F7 CE 
32 A3 86 CB 7E F1 4C 7F 69 0E 3F 73 36 6D D1 29 9B 6C CE 4A 99 68 B9 7A E2 AC C9 62 10 FF 43 AF 
1C F1 06 56 E5 CA AB 95 13 1F 2A F8 DC 57 1A 96 FE 67 5B FF A7 E6 D1 B3 A1 88 9A CB DE 5E A2 27 
30 FE D4 32 96 37 59 ED BD 48 C0 AB 15 0B 55 17 D5 AC E1 B3 98 BB 56 2F 5E 95 AB 78 FD EC D0 71 
97 5F C0 40 4B A5 A2 7B 16 E4 DD 5C AC CF A6 32 F9 FF 03 CA 2A C8 C9 47 DA 53 F5 00 00 00 00 49 
45 4E 44 AE 42 60 82 
EndData
$EndBitmap
$EndSCHEMATC
