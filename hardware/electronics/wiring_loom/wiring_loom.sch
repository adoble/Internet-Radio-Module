EESchema Schematic File Version 4
LIBS:wiring_loom-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Internet Radio Module - Wiring Loom"
Date "2020-03-25"
Rev "1"
Comp ""
Comment1 "Prototype Only!"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L modular-internet-radio:LCD16x2 DS1
U 1 1 5E7A1FBB
P 10700 2600
F 0 "DS1" H 10700 3581 50  0000 C CNN
F 1 "LCD16x2" H 10700 3490 50  0000 C CNN
F 2 "Display:LCD16x2" H 10700 1700 50  0001 C CIN
F 3 "http://www.icbank.com/data/ICBShop/board/HY1602E.pdf" H 10900 2700 50  0001 C CNN
	1    10700 2600
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:Conn_01x04 J4
U 1 1 5E7BD20C
P 5900 3400
F 0 "J4" V 5681 3580 50  0000 L CNN
F 1 "Conn_01x04" V 5772 3580 50  0000 L CNN
F 2 "" H 5900 3400 50  0001 C CNN
F 3 "~" H 5900 3400 50  0001 C CNN
F 4 "Female" V 5863 3580 50  0000 L CNN "Gender"
F 5 "View: Wiring side" V 5954 3580 50  0000 L CNN "Notes"
	1    5900 3400
	0    1    1    0   
$EndComp
$Comp
L modular-internet-radio:Conn_01x04 J3
U 1 1 5E7BE6A2
P 5800 3700
F 0 "J3" V 5855 3412 50  0000 R CNN
F 1 "Conn_01x04" V 5764 3412 50  0000 R CNN
F 2 "" H 5800 3700 50  0001 C CNN
F 3 "~" H 5800 3700 50  0001 C CNN
F 4 "Female" V 5673 3412 50  0000 R CNN "Gender"
F 5 "View: Wiring side" V 5582 3412 50  0000 R CNN "Notes"
	1    5800 3700
	0    -1   -1   0   
$EndComp
$Comp
L modular-internet-radio:Conn_01x16 J6
U 1 1 5E7DA013
P 9450 2550
F 0 "J6" H 9530 2633 50  0000 L CNN
F 1 "Conn_01x16" H 9530 2542 50  0000 L CNN
F 2 "" H 9450 2550 50  0001 C CNN
F 3 "~" H 9450 2550 50  0001 C CNN
F 4 "Female" H 9530 2451 50  0000 L CNN "Gender"
F 5 "View: Wiring Side" H 9530 2360 50  0000 L CNN "Notes"
	1    9450 2550
	1    0    0    -1  
$EndComp
$Comp
L modular-internet-radio:Conn_01x10 J5
U 1 1 5E7EBC5C
P 7400 2450
F 0 "J5" H 7318 3067 50  0000 C CNN
F 1 "Conn_01x10" H 7318 2976 50  0000 C CNN
F 2 "" H 7400 2450 50  0001 C CNN
F 3 "~" H 7400 2450 50  0001 C CNN
F 4 "Male" H 7400 2450 50  0001 C CNN "Gender"
F 5 "View: Wiring Side" H 7400 2450 50  0001 C CNN "Notes"
	1    7400 2450
	-1   0    0    -1  
$EndComp
Text Label 8600 1850 0    50   ~ 0
GND
Text Label 8600 1950 0    50   ~ 0
+5V
Wire Wire Line
	9250 2250 8500 2250
Wire Wire Line
	9250 2450 8700 2450
Wire Wire Line
	8700 2550 9250 2550
Wire Wire Line
	9250 2650 8700 2650
Wire Wire Line
	8700 2750 9250 2750
Text Label 8600 2050 0    50   ~ 0
V0
Text Label 8600 2150 0    50   ~ 0
RS
Text Label 8600 2250 0    50   ~ 0
R~W
Text Label 8800 2350 0    50   ~ 0
E
Text Label 8800 2450 0    50   ~ 0
D0
Text Label 8800 2550 0    50   ~ 0
D1
Text Label 8800 2650 0    50   ~ 0
D2
Text Label 8800 2750 0    50   ~ 0
D3
Text Label 8800 2850 0    50   ~ 0
D4
Text Label 8750 2950 0    50   ~ 0
D5
Text Label 8600 3050 0    50   ~ 0
D6
Text Label 8600 3150 0    50   ~ 0
D7
Text Label 8600 3250 0    50   ~ 0
LED+
Text Label 8600 3350 0    50   ~ 0
LED-
$Comp
L modular-internet-radio:SW_Push SW?
U 1 1 5E7FA73C
P 10400 4300
F 0 "SW?" V 10354 4448 50  0000 L CNN
F 1 "SW_Push" V 10445 4448 50  0000 L CNN
F 2 "" H 10400 4500 50  0001 C CNN
F 3 "" H 10400 4500 50  0001 C CNN
	1    10400 4300
	0    1    1    0   
$EndComp
Text Label 7700 2050 0    50   ~ 0
+5V
Text Label 7700 2150 0    50   ~ 0
CONTRAST
Text Label 7700 2250 0    50   ~ 0
D7
Text Label 7700 2350 0    50   ~ 0
D6
Text Label 7700 2450 0    50   ~ 0
EN
Text Label 7700 2550 0    50   ~ 0
D4
Text Label 7700 2650 0    50   ~ 0
D5
Text Label 7700 2750 0    50   ~ 0
RS
Text Label 7700 2850 0    50   ~ 0
CONTROL
Text Label 7700 2950 0    50   ~ 0
GND
Wire Wire Line
	8100 2850 8100 4100
Wire Wire Line
	8100 4100 10400 4100
Wire Wire Line
	7600 2850 8100 2850
Wire Wire Line
	10400 4500 7900 4500
Wire Wire Line
	7900 4500 7900 2950
Wire Wire Line
	7600 2950 7900 2950
Wire Wire Line
	8200 2950 8200 1850
Wire Wire Line
	8200 1850 9250 1850
Wire Wire Line
	7900 2950 8200 2950
Connection ~ 7900 2950
Wire Wire Line
	8300 2050 8300 1950
Wire Wire Line
	7600 2050 8050 2050
Wire Wire Line
	8300 1950 9250 1950
Wire Wire Line
	8350 2150 8350 2050
Wire Wire Line
	8350 2050 9250 2050
Wire Wire Line
	7600 2150 8350 2150
Wire Wire Line
	8350 2250 8350 3150
Wire Wire Line
	8350 3150 9250 3150
Wire Wire Line
	7600 2250 8350 2250
Wire Wire Line
	8400 2350 8400 3050
Wire Wire Line
	8400 3050 9250 3050
Wire Wire Line
	7600 2350 8400 2350
Wire Wire Line
	8600 2450 8600 2350
Wire Wire Line
	8600 2350 9250 2350
Wire Wire Line
	7600 2450 8600 2450
Wire Wire Line
	8600 2550 8600 2850
Wire Wire Line
	8600 2850 9250 2850
Wire Wire Line
	7600 2550 8600 2550
Wire Wire Line
	8550 2650 8550 2950
Wire Wire Line
	8550 2950 9250 2950
Wire Wire Line
	7600 2650 8550 2650
NoConn ~ 8700 2450
NoConn ~ 8700 2550
NoConn ~ 8700 2650
NoConn ~ 8700 2750
Wire Wire Line
	8300 2050 8300 3250
Wire Wire Line
	8300 3250 9250 3250
Connection ~ 8300 2050
Wire Wire Line
	8200 2950 8200 3350
Wire Wire Line
	8200 3350 9250 3350
Connection ~ 8200 2950
Wire Wire Line
	8450 2750 8450 2150
Wire Wire Line
	8450 2150 9250 2150
Wire Wire Line
	7600 2750 8450 2750
Wire Wire Line
	8500 2250 8500 2950
Wire Wire Line
	8500 2950 8200 2950
$Comp
L modular-internet-radio:Conn_02x15_Top_Bottom J2
U 1 1 5E7AE1BC
P 3850 2300
F 0 "J2" V 4037 1512 50  0000 R CNN
F 1 "Conn_02x15_Top_Bottom" V 3946 1512 50  0000 R CNN
F 2 "" H 3850 2300 50  0001 C CNN
F 3 "~" H 3850 2300 50  0001 C CNN
F 4 "Male" V 3855 1512 50  0000 R CNN "Gender"
F 5 "View: Wiring Side" V 3764 1512 50  0000 R CNN "Notes"
	1    3850 2300
	0    -1   -1   0   
$EndComp
Text Label 5900 2950 1    50   ~ 0
SO
Wire Wire Line
	5700 3900 5700 4350
Text Label 5700 4150 1    50   ~ 0
SI
Wire Wire Line
	5800 3900 5800 4350
Text Label 5800 4200 1    50   ~ 0
SCK
Text Label 4450 2900 1    50   ~ 0
SI
Text Label 4450 1700 1    50   ~ 0
SO
Text Label 4350 1750 1    50   ~ 0
SCK
Wire Wire Line
	5900 1500 5900 3200
Wire Wire Line
	4450 1500 4450 2000
Wire Wire Line
	4350 1350 6900 1350
Wire Wire Line
	6900 1350 6900 4350
Wire Wire Line
	6900 4350 5800 4350
Wire Wire Line
	4350 1350 4350 2000
Text Label 4250 2850 1    50   ~ 0
DREQ
Text Label 4350 2850 1    50   ~ 0
XCS
Text Label 4150 2800 1    50   ~ 0
XDCS
Text Label 3950 2800 1    50   ~ 0
XRST
Text Notes 3500 2750 0    50   ~ 0
IO33
Wire Notes Line
	3700 2700 3850 2700
Text Label 3900 5100 3    50   ~ 0
XDCS
Text Label 3900 5950 3    50   ~ 0
XCS
Wire Wire Line
	3900 5850 3900 6200
Text Label 3800 5100 3    50   ~ 0
XRST
Text Label 3800 5950 3    50   ~ 0
DREQ
Text Label 3700 5100 3    50   ~ 0
SCK
Text Label 3700 5950 3    50   ~ 0
SI
Text Label 3600 5100 3    50   ~ 0
SO
Text Label 3600 5950 3    50   ~ 0
GND
Text Label 3500 5100 3    50   ~ 0
+5V
Text Label 3500 5950 3    50   ~ 0
+5V
Wire Wire Line
	3500 5850 3500 6200
Wire Wire Line
	3500 5350 3500 5050
Wire Wire Line
	4450 2500 4450 4350
Wire Wire Line
	4450 4350 5700 4350
$Comp
L modular-internet-radio:Conn_02x05_Top_Bottom J1
U 1 1 5E7CB8B5
P 3700 5550
F 0 "J1" V 3796 5262 50  0000 R CNN
F 1 "Conn_02x05_Top_Bottom" V 3705 5262 50  0000 R CNN
F 2 "" H 3700 5550 50  0001 C CNN
F 3 "~" H 3700 5550 50  0001 C CNN
F 4 "Female" V 3600 5000 50  0000 L CNN "Gender"
F 5 "View: Wiring Side" V 3500 4650 50  0000 L CNN "Notes"
	1    3700 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 6550 4450 6550
Wire Wire Line
	4450 6550 4450 4350
Wire Wire Line
	3700 5850 3700 6550
Connection ~ 4450 4350
Wire Wire Line
	3700 4300 2600 4300
Wire Wire Line
	2600 4300 2600 1350
Wire Wire Line
	2600 1350 4350 1350
Wire Wire Line
	3700 4300 3700 5350
Connection ~ 4350 1350
Wire Wire Line
	3800 3250 3950 3250
Wire Wire Line
	3950 2500 3950 3250
Wire Wire Line
	3800 3250 3800 5350
Wire Wire Line
	3900 3550 4150 3550
Wire Wire Line
	4150 2500 4150 3550
Wire Wire Line
	3900 3550 3900 5350
Wire Wire Line
	3600 4400 2400 4400
Wire Wire Line
	2400 4400 2400 1150
Wire Wire Line
	2400 1150 4450 1150
Wire Wire Line
	4450 1150 4450 1500
Wire Wire Line
	3600 4400 3600 5350
Connection ~ 4450 1500
Wire Wire Line
	4450 1500 5900 1500
Text Label 3350 2800 1    50   ~ 0
GND
Wire Wire Line
	3600 6850 2300 6850
Wire Wire Line
	2300 6850 2300 4700
Wire Wire Line
	2300 4700 3350 4700
Wire Wire Line
	3350 2500 3350 4700
Wire Wire Line
	3600 5850 3600 6850
Wire Wire Line
	3500 5050 2400 5050
Wire Wire Line
	2400 5050 2400 6200
Wire Wire Line
	2400 6200 3500 6200
Wire Wire Line
	3500 6200 3500 6700
Wire Wire Line
	3500 6700 5700 6700
Wire Wire Line
	7100 1700 8050 1700
Wire Wire Line
	8050 1700 8050 2050
Connection ~ 3500 6200
Connection ~ 8050 2050
Wire Wire Line
	8050 2050 8300 2050
Wire Wire Line
	3800 6400 4250 6400
Wire Wire Line
	4250 2500 4250 6400
Wire Wire Line
	3800 5850 3800 6400
Wire Wire Line
	4350 6200 3900 6200
Wire Wire Line
	4350 2500 4350 6200
Wire Notes Line
	2000 4850 4950 4850
Wire Notes Line
	4950 4850 4950 7150
Wire Notes Line
	4950 7150 2000 7150
Wire Notes Line
	2000 7150 2000 4850
Text Notes 2050 7100 0    50   ~ 10
VS1053
Wire Notes Line
	2300 1050 2300 3100
Wire Notes Line
	2300 3100 5350 3100
Wire Notes Line
	5350 3100 5350 2600
Wire Notes Line
	5350 2600 5650 2600
Wire Notes Line
	5650 2600 5650 1050
Wire Notes Line
	5650 1050 2300 1050
Text Notes 5350 1150 0    50   ~ 10
WROOM\n
Wire Notes Line
	5500 3100 6800 3100
Wire Notes Line
	6800 3100 6800 4250
Wire Notes Line
	6800 4250 5500 4250
Wire Notes Line
	5500 4250 5500 3100
Text Notes 6550 4200 0    50   ~ 10
RAM
Wire Notes Line
	7050 1300 7050 3200
Wire Notes Line
	7650 1300 7650 3200
Text Notes 7150 1500 0    50   ~ 10
DISPLAY\nBOARD SIDE
Wire Notes Line
	7050 1300 7650 1300
Wire Notes Line
	7050 3200 7650 3200
Wire Notes Line
	9250 1350 9250 3500
Wire Notes Line
	9250 3500 10200 3500
Wire Notes Line
	10200 3500 10200 1350
Wire Notes Line
	10200 1350 9250 1350
Text Notes 9650 1550 0    50   ~ 10
DISPLAY\nDISPLAY SIDE
Text Notes 10300 1450 0    50   Italic 10
FOR REFERENCE
Wire Notes Line
	10250 1350 10250 3500
Wire Notes Line
	10250 3500 11200 3500
Wire Notes Line
	11200 3500 11200 1350
Wire Notes Line
	10250 1350 11200 1350
Wire Wire Line
	7100 6100 5700 6100
Wire Wire Line
	5700 6100 5700 6700
Wire Wire Line
	7100 6100 7100 1700
$EndSCHEMATC
