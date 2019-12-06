EESchema Schematic File Version 4
LIBS:internet-radio-module-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Internet Radio Module - PCB"
Date "2019-07-19"
Rev "1"
Comp "Andrew Doble"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L internet-radio-module-rescue:POT_TRIM RV?
U 1 1 5D31F238
P 1450 1850
F 0 "RV?" V 1275 1850 50  0000 C CNN
F 1 "10K" V 1350 1850 50  0000 C CNN
F 2 "" H 1450 1850 50  0000 C CNN
F 3 "" H 1450 1850 50  0000 C CNN
	1    1450 1850
	-1   0    0    1   
$EndComp
Text HLabel 1250 1850 0    60   Input ~ 0
CONTRAST
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D31F29B
P 1450 2050
F 0 "#PWR?" H 1450 1800 50  0001 C CNN
F 1 "GND" H 1450 1900 50  0000 C CNN
F 2 "" H 1450 2050 50  0000 C CNN
F 3 "" H 1450 2050 50  0000 C CNN
	1    1450 2050
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:+5V #PWR?
U 1 1 5D31F2B1
P 1450 1650
F 0 "#PWR?" H 1450 1500 50  0001 C CNN
F 1 "+5V" H 1450 1790 50  0000 C CNN
F 2 "" H 1450 1650 50  0000 C CNN
F 3 "" H 1450 1650 50  0000 C CNN
	1    1450 1650
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:ESP32_THING_W_ANT_KEEPOUT B?
U 1 1 5D31F676
P 2650 3100
F 0 "B?" H 2250 4250 45  0000 L BNN
F 1 "ESP32_THING_W_ANT_KEEPOUT" H 2250 2000 45  0000 L BNN
F 2 "ESP32_THING" H 2650 4300 20  0001 C CNN
F 3 "" H 2650 3100 60  0001 C CNN
F 4 "DEV-13907" H 2650 4350 60  0000 C CNN "Field4"
	1    2650 3100
	1    0    0    -1  
$EndComp
Text HLabel 2600 5250 2    60   Output ~ 0
+5V
Text HLabel 5900 4700 2    60   Output ~ 0
RS
Text HLabel 5900 2950 2    60   Output ~ 0
EN
Text HLabel 5900 3500 2    60   Output ~ 0
D4
Text HLabel 5900 4100 2    60   Output ~ 0
D5
Text HLabel 5900 2250 2    60   Output ~ 0
D6
Text HLabel 5900 1700 2    60   Output ~ 0
D7
Text HLabel 10400 3400 2    60   Output ~ 0
AUDIO-LEFT
Text HLabel 10400 3000 2    60   Output ~ 0
AUDIO-RIGHT
Text HLabel 1200 3200 0    60   Input ~ 0
CONTROL
Text HLabel 1200 5050 1    60   Input ~ 0
+12V
Text HLabel 950  5700 0    60   Input ~ 0
GND
Text Notes 6250 3100 3    60   ~ 0
LCD
$Comp
L internet-radio-module-rescue:Adafruit-Feather-MusicMaker_Amp SOM?
U 1 1 5D32B6A6
P 9500 3300
F 0 "SOM?" H 9100 2000 60  0000 C CNN
F 1 "Adafruit-Feather-MusicMaker/Amp" V 9300 3350 60  0000 C CNN
F 2 "" H 9150 3800 60  0001 C CNN
F 3 "" H 9150 3800 60  0001 C CNN
	1    9500 3300
	1    0    0    -1  
$EndComp
Text Label 5950 1250 2    60   ~ 0
SPI-MISO
Text Label 5950 1350 2    60   ~ 0
SPI-MOSI
Text Label 5900 1450 2    60   ~ 0
SPI-SCK
Text Notes 2750 2500 3    60   Italic 12
PINS HAVE CHANGED!!!
Wire Wire Line
	1300 1850 1250 1850
Wire Wire Line
	1450 2050 1450 2000
Wire Wire Line
	1450 1700 1450 1650
Wire Wire Line
	3150 3400 4100 3400
Wire Wire Line
	5250 2950 5900 2950
Wire Wire Line
	3150 3300 4200 3300
Wire Wire Line
	5650 3500 5900 3500
Wire Wire Line
	3150 3100 4200 3100
Wire Wire Line
	5250 4100 5900 4100
Wire Wire Line
	3150 2800 3900 2800
Wire Wire Line
	3150 2700 3800 2700
Wire Wire Line
	3150 2600 3700 2600
Wire Notes Line
	5850 1600 5850 4850
Wire Notes Line
	5850 4850 6300 4850
Wire Notes Line
	6300 4850 6300 1600
Wire Notes Line
	6300 1600 5850 1600
Wire Wire Line
	3700 2600 3700 1250
Wire Wire Line
	3700 1250 6600 1250
Wire Wire Line
	3800 2700 3800 1350
Wire Wire Line
	3800 1350 6600 1350
Wire Wire Line
	3900 2800 3900 1450
Wire Wire Line
	3900 1450 6600 1450
Wire Wire Line
	3150 3500 4000 3500
Wire Wire Line
	5650 4700 5900 4700
Wire Wire Line
	3150 3000 4100 3000
Wire Wire Line
	5400 2250 5900 2250
Wire Wire Line
	3150 2900 4000 2900
Wire Wire Line
	5050 1700 5900 1700
Text Label 6700 7050 3    60   ~ 0
SPI
Entry Wire Line
	6600 1250 6700 1350
Entry Wire Line
	6600 1350 6700 1450
Entry Wire Line
	6600 1450 6700 1550
Wire Wire Line
	6800 3050 8800 3050
Wire Wire Line
	6800 3200 8800 3200
Wire Wire Line
	6800 3350 8800 3350
Text Label 7350 3050 2    60   ~ 0
SPI-MISO
Text Label 7350 3200 2    60   ~ 0
SPI-MOSI
Text Label 7300 3350 2    60   ~ 0
SPI-SCK
Entry Wire Line
	6700 2950 6800 3050
Entry Wire Line
	6700 3100 6800 3200
Entry Wire Line
	6700 3250 6800 3350
Wire Wire Line
	5100 6050 5300 6050
Text Label 5400 6050 0    60   ~ 0
SPI-RAM-CS
Wire Wire Line
	5100 6150 6600 6150
Text Label 5400 6150 0    60   ~ 0
SPI-MISO
Wire Wire Line
	5100 6350 6600 6350
Text Label 5400 6350 0    60   ~ 0
SPI-MOSI
Text Label 5400 6450 0    60   ~ 0
SPI-SCK
$Comp
L internet-radio-module-rescue:23LC1024 IC?
U 1 1 5D3352D9
P 4600 6350
F 0 "IC?" H 4250 6800 50  0000 L CNN
F 1 "23LC1024" H 4450 6050 50  0000 L CNN
F 2 "DIL" H 4350 5950 50  0000 C CIN
F 3 "" H 4800 5850 50  0000 C CNN
	1    4600 6350
	-1   0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:R R?
U 1 1 5D335341
P 3800 5650
F 0 "R?" V 3880 5650 50  0000 C CNN
F 1 "10K" V 3800 5650 50  0000 C CNN
F 2 "" V 3730 5650 50  0000 C CNN
F 3 "" H 3800 5650 50  0000 C CNN
	1    3800 5650
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:R R?
U 1 1 5D3353A6
P 5300 5650
F 0 "R?" V 5380 5650 50  0000 C CNN
F 1 "10K" V 5300 5650 50  0000 C CNN
F 2 "" V 5230 5650 50  0000 C CNN
F 3 "" H 5300 5650 50  0000 C CNN
	1    5300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6250 3800 6250
Wire Wire Line
	3800 6250 3800 5800
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D336722
P 4400 7150
F 0 "#PWR?" H 4400 6900 50  0001 C CNN
F 1 "GND" H 4400 7000 50  0000 C CNN
F 2 "" H 4400 7150 50  0000 C CNN
F 3 "" H 4400 7150 50  0000 C CNN
	1    4400 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7050 4400 7150
Wire Wire Line
	3800 5500 4400 5500
Wire Wire Line
	4400 5450 4400 5500
Connection ~ 4400 5500
$Comp
L internet-radio-module-rescue:+3.3V #PWR?
U 1 1 5D336801
P 4400 5450
F 0 "#PWR?" H 4400 5300 50  0001 C CNN
F 1 "+3.3V" H 4400 5590 50  0000 C CNN
F 2 "" H 4400 5450 50  0000 C CNN
F 3 "" H 4400 5450 50  0000 C CNN
	1    4400 5450
	1    0    0    -1  
$EndComp
NoConn ~ 5100 6250
Entry Wire Line
	6600 6050 6700 5950
Entry Wire Line
	6600 6150 6700 6050
Entry Wire Line
	6600 6350 6700 6250
Entry Wire Line
	6600 6450 6700 6350
$Comp
L internet-radio-module-rescue:C C?
U 1 1 5D344C99
P 5300 7150
F 0 "C?" H 5325 7250 50  0000 L CNN
F 1 "100n" H 5325 7050 50  0000 L CNN
F 2 "" H 5338 7000 50  0000 C CNN
F 3 "" H 5300 7150 50  0000 C CNN
	1    5300 7150
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:CP C?
U 1 1 5D344CC6
P 5050 7150
F 0 "C?" H 5075 7250 50  0000 L CNN
F 1 "22u" H 5075 7050 50  0000 L CNN
F 2 "" H 5088 7000 50  0000 C CNN
F 3 "" H 5050 7150 50  0000 C CNN
	1    5050 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 7000 5200 7000
Wire Wire Line
	5050 7300 5200 7300
$Comp
L internet-radio-module-rescue:+3.3V #PWR?
U 1 1 5D3450B2
P 5200 6900
F 0 "#PWR?" H 5200 6750 50  0001 C CNN
F 1 "+3.3V" H 5200 7040 50  0000 C CNN
F 2 "" H 5200 6900 50  0000 C CNN
F 3 "" H 5200 6900 50  0000 C CNN
	1    5200 6900
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D34511A
P 5200 7350
F 0 "#PWR?" H 5200 7100 50  0001 C CNN
F 1 "GND" H 5200 7200 50  0000 C CNN
F 2 "" H 5200 7350 50  0000 C CNN
F 3 "" H 5200 7350 50  0000 C CNN
	1    5200 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6900 5200 7000
Connection ~ 5200 7000
Wire Wire Line
	5200 7350 5200 7300
Connection ~ 5200 7300
Wire Notes Line
	3600 5250 6000 5250
Wire Notes Line
	6000 5250 6000 7650
Wire Notes Line
	6000 7650 3600 7650
Wire Notes Line
	3600 7650 3600 5250
Text Notes 3800 7500 0    60   ~ 0
BUFFER
Entry Wire Line
	6600 1150 6700 1250
Wire Wire Line
	3150 2500 3600 2500
Wire Wire Line
	3600 2500 3600 1150
Wire Wire Line
	3600 1150 6600 1150
Text Label 5500 1150 0    60   ~ 0
SPI-RAM-CS
Wire Wire Line
	6800 2800 8800 2800
Wire Wire Line
	1950 1050 6600 1050
Wire Wire Line
	1950 1050 1950 2900
Wire Wire Line
	1950 2900 2150 2900
Wire Wire Line
	8800 2650 8000 2650
Wire Wire Line
	8000 2650 8000 850 
Wire Wire Line
	8000 850  1850 850 
Wire Wire Line
	1850 850  1850 3000
Wire Wire Line
	1850 3000 2150 3000
Wire Wire Line
	8800 2500 8100 2500
Wire Wire Line
	8100 2500 8100 700 
Wire Wire Line
	8100 700  1750 700 
Wire Wire Line
	1750 700  1750 3100
Wire Wire Line
	1750 3100 2150 3100
Text Notes 7150 3800 0    60   ~ 0
TEMPORARY FOR BREADBOARD.\nNEEDS TO BE EXPANDED WITH \nVS1053 CIRCUIT.
$Comp
L internet-radio-module-rescue:+3.3V #PWR?
U 1 1 5D347E3E
P 10350 2050
F 0 "#PWR?" H 10350 1900 50  0001 C CNN
F 1 "+3.3V" H 10350 2190 50  0000 C CNN
F 2 "" H 10350 2050 50  0000 C CNN
F 3 "" H 10350 2050 50  0000 C CNN
	1    10350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2050 10350 2050
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D347EC6
P 10350 2250
F 0 "#PWR?" H 10350 2000 50  0001 C CNN
F 1 "GND" H 10350 2100 50  0000 C CNN
F 2 "" H 10350 2250 50  0000 C CNN
F 3 "" H 10350 2250 50  0000 C CNN
	1    10350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2250 10350 2250
Wire Wire Line
	10200 3000 10400 3000
Wire Wire Line
	10200 3400 10400 3400
Text HLabel 10400 3600 2    60   Input ~ 0
AUDIO-GROUND
Wire Wire Line
	10200 3200 10300 3200
Wire Wire Line
	10300 3200 10300 3600
Wire Wire Line
	10200 3600 10300 3600
Connection ~ 10300 3600
Wire Wire Line
	1200 3200 1500 3200
$Comp
L internet-radio-module-rescue:R R?
U 1 1 5D3498C7
P 1500 3350
F 0 "R?" V 1580 3350 50  0000 C CNN
F 1 "10K" V 1500 3350 50  0000 C CNN
F 2 "" V 1430 3350 50  0000 C CNN
F 3 "" H 1500 3350 50  0000 C CNN
	1    1500 3350
	1    0    0    -1  
$EndComp
Connection ~ 1500 3200
Wire Wire Line
	1500 3500 1500 3550
$Comp
L internet-radio-module-rescue:CONN_01X02 P?
U 1 1 5D34BA5F
P 800 5300
F 0 "P?" H 800 5450 50  0000 C CNN
F 1 "CONN_01X02" V 900 5300 50  0000 C CNN
F 2 "" H 800 5300 50  0000 C CNN
F 3 "" H 800 5300 50  0000 C CNN
	1    800  5300
	-1   0    0    1   
$EndComp
$Comp
L internet-radio-module-rescue:TSR1-2450 M?
U 1 1 5D34BB5C
P 1850 5350
F 0 "M?" H 1850 5600 60  0000 C CNN
F 1 "TSR1-2450" H 1750 5350 60  0000 C CNN
F 2 "" H 1850 5350 60  0001 C CNN
F 3 "http://assets.tracopower.com/20170309112219/TSR1/documents/tsr1-datasheet.pdf" H 2400 4750 60  0001 C CNN
	1    1850 5350
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:TSR1-2433 M?
U 1 1 5D34BB99
P 1850 6650
F 0 "M?" H 1850 6900 60  0000 C CNN
F 1 "TSR1-2433" H 1750 6650 60  0000 C CNN
F 2 "" H 1850 6650 60  0001 C CNN
F 3 "http://assets.tracopower.com/20170309112219/TSR1/documents/tsr1-datasheet.pdf" H 2400 6050 60  0001 C CNN
	1    1850 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 5250 1200 5250
Wire Wire Line
	1200 5050 1200 5250
Connection ~ 1200 5250
$Comp
L internet-radio-module-rescue:+5V #PWR?
U 1 1 5D34C5B6
P 2450 5100
F 0 "#PWR?" H 2450 4950 50  0001 C CNN
F 1 "+5V" H 2450 5240 50  0000 C CNN
F 2 "" H 2450 5100 50  0000 C CNN
F 3 "" H 2450 5100 50  0000 C CNN
	1    2450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5100 2450 5250
Wire Wire Line
	1000 5350 1000 5700
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D34CAD4
P 1000 5800
F 0 "#PWR?" H 1000 5550 50  0001 C CNN
F 1 "GND" H 1000 5650 50  0000 C CNN
F 2 "" H 1000 5800 50  0000 C CNN
F 3 "" H 1000 5800 50  0000 C CNN
	1    1000 5800
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D34CBEC
P 1850 5950
F 0 "#PWR?" H 1850 5700 50  0001 C CNN
F 1 "GND" H 1850 5800 50  0000 C CNN
F 2 "" H 1850 5950 50  0000 C CNN
F 3 "" H 1850 5950 50  0000 C CNN
	1    1850 5950
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D34CC1A
P 1850 7100
F 0 "#PWR?" H 1850 6850 50  0001 C CNN
F 1 "GND" H 1850 6950 50  0000 C CNN
F 2 "" H 1850 7100 50  0000 C CNN
F 3 "" H 1850 7100 50  0000 C CNN
	1    1850 7100
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:+3.3V #PWR?
U 1 1 5D34CC48
P 2450 6250
F 0 "#PWR?" H 2450 6100 50  0001 C CNN
F 1 "+3.3V" H 2450 6390 50  0000 C CNN
F 2 "" H 2450 6250 50  0000 C CNN
F 3 "" H 2450 6250 50  0000 C CNN
	1    2450 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6550 2450 6250
$Comp
L internet-radio-module-rescue:PWR_FLAG #FLG?
U 1 1 5D34DCC7
P 1300 5850
F 0 "#FLG?" H 1300 5945 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 6030 50  0000 C CNN
F 2 "" H 1300 5850 50  0000 C CNN
F 3 "" H 1300 5850 50  0000 C CNN
	1    1300 5850
	0    1    1    0   
$EndComp
$Comp
L internet-radio-module-rescue:PWR_FLAG #FLG?
U 1 1 5D34DCF5
P 2000 5850
F 0 "#FLG?" H 2000 5945 50  0001 C CNN
F 1 "PWR_FLAG" H 2000 6030 50  0000 C CNN
F 2 "" H 2000 5850 50  0000 C CNN
F 3 "" H 2000 5850 50  0000 C CNN
	1    2000 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 6550 1250 6550
Wire Wire Line
	1200 5850 1300 5850
Connection ~ 1200 5850
Wire Wire Line
	1850 5800 1850 5850
Wire Wire Line
	2000 5850 1850 5850
Connection ~ 1850 5850
Text Notes 1050 7650 0    60   Italic 0
In final version need to have two 3.3V \nsupplies for digital (DVDD) and analog \npower for the VS1053 (AVDD).
Wire Notes Line
	600  4600 2900 4600
Wire Notes Line
	2900 4600 2900 7700
Wire Notes Line
	2900 7700 600  7700
Wire Notes Line
	600  7700 600  4600
Text Notes 700  4700 0    60   ~ 0
POWER
$Comp
L internet-radio-module-rescue:C C?
U 1 1 5D34F658
P 1200 1000
F 0 "C?" H 1225 1100 50  0000 L CNN
F 1 "100n" H 1225 900 50  0000 L CNN
F 2 "" H 1238 850 50  0000 C CNN
F 3 "" H 1200 1000 50  0000 C CNN
	1    1200 1000
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:CP C?
U 1 1 5D34F6EF
P 900 1000
F 0 "C?" H 925 1100 50  0000 L CNN
F 1 "22u" H 925 900 50  0000 L CNN
F 2 "" H 938 850 50  0000 C CNN
F 3 "" H 900 1000 50  0000 C CNN
	1    900  1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  850  1050 850 
Wire Wire Line
	900  1150 1050 1150
Wire Wire Line
	1050 850  1050 750 
Connection ~ 1050 850 
Wire Wire Line
	1050 1150 1050 1200
Connection ~ 1050 1150
$Comp
L internet-radio-module-rescue:+3.3V #PWR?
U 1 1 5D350285
P 1050 750
F 0 "#PWR?" H 1050 600 50  0001 C CNN
F 1 "+3.3V" H 1050 890 50  0000 C CNN
F 2 "" H 1050 750 50  0000 C CNN
F 3 "" H 1050 750 50  0000 C CNN
	1    1050 750 
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D3502B5
P 1050 1200
F 0 "#PWR?" H 1050 950 50  0001 C CNN
F 1 "GND" H 1050 1050 50  0000 C CNN
F 2 "" H 1050 1200 50  0000 C CNN
F 3 "" H 1050 1200 50  0000 C CNN
	1    1050 1200
	1    0    0    -1  
$EndComp
NoConn ~ 8800 4000
Wire Wire Line
	2450 5250 2600 5250
Wire Wire Line
	950  5700 1000 5700
Connection ~ 1000 5700
Entry Wire Line
	6700 2700 6800 2800
Entry Wire Line
	6600 1050 6700 1150
Text Label 5500 1050 0    60   ~ 0
SPI-XCS
Text Label 6900 2800 0    60   ~ 0
SPI-XCS
$Comp
L internet-radio-module-rescue:+3.3V #PWR?
U 1 1 5D357109
P 2000 3600
F 0 "#PWR?" H 2000 3450 50  0001 C CNN
F 1 "+3.3V" H 2000 3740 50  0000 C CNN
F 2 "" H 2000 3600 50  0000 C CNN
F 3 "" H 2000 3600 50  0000 C CNN
	1    2000 3600
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:+3.3V #PWR?
U 1 1 5D3578C3
P 3250 3600
F 0 "#PWR?" H 3250 3450 50  0001 C CNN
F 1 "+3.3V" H 3250 3740 50  0000 C CNN
F 2 "" H 3250 3600 50  0000 C CNN
F 3 "" H 3250 3600 50  0000 C CNN
	1    3250 3600
	0    1    1    0   
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D3578F3
P 2000 3700
F 0 "#PWR?" H 2000 3450 50  0001 C CNN
F 1 "GND" H 2000 3550 50  0000 C CNN
F 2 "" H 2000 3700 50  0000 C CNN
F 3 "" H 2000 3700 50  0000 C CNN
	1    2000 3700
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D357923
P 3350 3700
F 0 "#PWR?" H 3350 3450 50  0001 C CNN
F 1 "GND" H 3350 3550 50  0000 C CNN
F 2 "" H 3350 3700 50  0000 C CNN
F 3 "" H 3350 3700 50  0000 C CNN
	1    3350 3700
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D357953
P 3350 4000
F 0 "#PWR?" H 3350 3750 50  0001 C CNN
F 1 "GND" H 3350 3850 50  0000 C CNN
F 2 "" H 3350 4000 50  0000 C CNN
F 3 "" H 3350 4000 50  0000 C CNN
	1    3350 4000
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D357983
P 2000 4000
F 0 "#PWR?" H 2000 3750 50  0001 C CNN
F 1 "GND" H 2000 3850 50  0000 C CNN
F 2 "" H 2000 4000 50  0000 C CNN
F 3 "" H 2000 4000 50  0000 C CNN
	1    2000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3700 2150 3700
Wire Wire Line
	2000 4000 2150 4000
Wire Wire Line
	3150 3700 3350 3700
Wire Wire Line
	3150 4000 3350 4000
NoConn ~ 2150 3800
NoConn ~ 2150 3900
NoConn ~ 3150 3800
NoConn ~ 3150 3900
Wire Wire Line
	3150 3600 3250 3600
$Comp
L internet-radio-module-rescue:SWITCH_PUSHBUTTON SW?
U 1 1 5D358B54
P 3550 3800
F 0 "SW?" H 3450 3940 45  0000 L BNN
F 1 "SWITCH_PUSHBUTTON" H 3450 3710 45  0001 L BNN
F 2 "" H 3550 3800 60  0001 C CNN
F 3 "" H 3550 3800 60  0001 C CNN
	1    3550 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 3200 3550 3200
Wire Wire Line
	3550 3200 3550 3600
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D35902E
P 3550 4000
F 0 "#PWR?" H 3550 3750 50  0001 C CNN
F 1 "GND" H 3550 3850 50  0000 C CNN
F 2 "" H 3550 4000 50  0000 C CNN
F 3 "" H 3550 4000 50  0000 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3600 2000 3600
NoConn ~ 2150 3500
NoConn ~ 2150 3400
NoConn ~ 2150 3300
NoConn ~ 2150 2800
NoConn ~ 2150 2700
NoConn ~ 2150 2600
NoConn ~ 2150 2500
NoConn ~ 2150 2400
NoConn ~ 2150 2300
NoConn ~ 2150 2200
NoConn ~ 2150 2100
NoConn ~ 3150 2200
NoConn ~ 3150 2300
NoConn ~ 3150 2400
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D35A424
P 3350 2100
F 0 "#PWR?" H 3350 1850 50  0001 C CNN
F 1 "GND" H 3350 1950 50  0000 C CNN
F 2 "" H 3350 2100 50  0000 C CNN
F 3 "" H 3350 2100 50  0000 C CNN
	1    3350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2100 3350 2100
$Comp
L internet-radio-module-rescue:74LS125 U?
U 1 1 5D35DF5D
P 4600 1700
F 0 "U?" H 4600 1800 50  0000 L BNN
F 1 "74LS125" H 4650 1550 50  0000 L TNN
F 2 "" H 4600 1700 50  0000 C CNN
F 3 "" H 4600 1700 50  0000 C CNN
	1    4600 1700
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:74LS125 U?
U 4 1 5D35E278
P 4950 2250
F 0 "U?" H 4950 2350 50  0000 L BNN
F 1 "74LS125" H 5000 2100 50  0000 L TNN
F 2 "" H 4950 2250 50  0000 C CNN
F 3 "" H 4950 2250 50  0000 C CNN
	4    4950 2250
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:74LS125 U?
U 3 1 5D35E32A
P 4800 2950
F 0 "U?" H 4800 3050 50  0000 L BNN
F 1 "74LS125" H 4850 2800 50  0000 L TNN
F 2 "" H 4800 2950 50  0000 C CNN
F 3 "" H 4800 2950 50  0000 C CNN
	3    4800 2950
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:74LS125 U?
U 2 1 5D35E3AB
P 5200 3500
F 0 "U?" H 5200 3600 50  0000 L BNN
F 1 "74LS125" H 5250 3350 50  0000 L TNN
F 2 "" H 5200 3500 50  0000 C CNN
F 3 "" H 5200 3500 50  0000 C CNN
	2    5200 3500
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:74LS125 U?
U 2 1 5D35E3EE
P 4800 4100
F 0 "U?" H 4800 4200 50  0000 L BNN
F 1 "74LS125" H 4850 3950 50  0000 L TNN
F 2 "" H 4800 4100 50  0000 C CNN
F 3 "" H 4800 4100 50  0000 C CNN
	2    4800 4100
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D35F87A
P 1500 3550
F 0 "#PWR?" H 1500 3300 50  0001 C CNN
F 1 "GND" H 1500 3400 50  0000 C CNN
F 2 "" H 1500 3550 50  0000 C CNN
F 3 "" H 1500 3550 50  0000 C CNN
	1    1500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2900 4000 1700
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D389F8C
P 4600 2000
F 0 "#PWR?" H 4600 1750 50  0001 C CNN
F 1 "GND" H 4600 1850 50  0000 C CNN
F 2 "" H 4600 2000 50  0000 C CNN
F 3 "" H 4600 2000 50  0000 C CNN
	1    4600 2000
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D38A0A6
P 4950 2550
F 0 "#PWR?" H 4950 2300 50  0001 C CNN
F 1 "GND" H 4950 2400 50  0000 C CNN
F 2 "" H 4950 2550 50  0000 C CNN
F 3 "" H 4950 2550 50  0000 C CNN
	1    4950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3000 4100 2250
Wire Wire Line
	4100 2250 4500 2250
Wire Wire Line
	4000 1700 4150 1700
Wire Wire Line
	4200 3100 4200 2950
Wire Wire Line
	4200 2950 4350 2950
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D38AD02
P 5200 5000
F 0 "#PWR?" H 5200 4750 50  0001 C CNN
F 1 "GND" H 5200 4850 50  0000 C CNN
F 2 "" H 5200 5000 50  0000 C CNN
F 3 "" H 5200 5000 50  0000 C CNN
	1    5200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3300 4200 3500
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D38AE39
P 5200 3800
F 0 "#PWR?" H 5200 3550 50  0001 C CNN
F 1 "GND" H 5200 3650 50  0000 C CNN
F 2 "" H 5200 3800 50  0000 C CNN
F 3 "" H 5200 3800 50  0000 C CNN
	1    5200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3400 4100 4100
Wire Wire Line
	4100 4100 4350 4100
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D38B40F
P 4800 4400
F 0 "#PWR?" H 4800 4150 50  0001 C CNN
F 1 "GND" H 4800 4250 50  0000 C CNN
F 2 "" H 4800 4400 50  0000 C CNN
F 3 "" H 4800 4400 50  0000 C CNN
	1    4800 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3500 4000 4700
Wire Wire Line
	4000 4700 4750 4700
$Comp
L internet-radio-module-rescue:74LS125 U?
U 1 1 5D35E2D7
P 5200 4700
F 0 "U?" H 5200 4800 50  0000 L BNN
F 1 "74LS125" H 5250 4550 50  0000 L TNN
F 2 "" H 5200 4700 50  0000 C CNN
F 3 "" H 5200 4700 50  0000 C CNN
	1    5200 4700
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D38BD62
P 4800 3250
F 0 "#PWR?" H 4800 3000 50  0001 C CNN
F 1 "GND" H 4800 3100 50  0000 C CNN
F 2 "" H 4800 3250 50  0000 C CNN
F 3 "" H 4800 3250 50  0000 C CNN
	1    4800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3500 4750 3500
$Comp
L internet-radio-module-rescue:+5V #PWR?
U 1 1 5D391195
P 4650 2750
F 0 "#PWR?" H 4650 2600 50  0001 C CNN
F 1 "+5V" H 4650 2890 50  0000 C CNN
F 2 "" H 4650 2750 50  0000 C CNN
F 3 "" H 4650 2750 50  0000 C CNN
	1    4650 2750
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D3911D3
P 4650 3250
F 0 "#PWR?" H 4650 3000 50  0001 C CNN
F 1 "GND" H 4650 3100 50  0000 C CNN
F 2 "" H 4650 3250 50  0000 C CNN
F 3 "" H 4650 3250 50  0000 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D391211
P 4650 4400
F 0 "#PWR?" H 4650 4150 50  0001 C CNN
F 1 "GND" H 4650 4250 50  0000 C CNN
F 2 "" H 4650 4400 50  0000 C CNN
F 3 "" H 4650 4400 50  0000 C CNN
	1    4650 4400
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:+5V #PWR?
U 1 1 5D39124F
P 4650 3900
F 0 "#PWR?" H 4650 3750 50  0001 C CNN
F 1 "+5V" H 4650 4040 50  0000 C CNN
F 2 "" H 4650 3900 50  0000 C CNN
F 3 "" H 4650 3900 50  0000 C CNN
	1    4650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2750 4650 2800
Wire Wire Line
	4650 3100 4650 3250
Wire Wire Line
	4650 3900 4650 3950
Wire Wire Line
	4650 4250 4650 4400
Text Notes 8900 5150 0    60   ~ 0
16
Text Notes 10150 5150 0    60   ~ 0
1
Text Notes 8900 5700 0    60   ~ 0
17\n
Text Notes 9750 5700 0    60   ~ 0
28
Wire Notes Line
	8750 5050 8750 5700
Wire Notes Line
	8750 5700 10550 5700
Wire Notes Line
	10550 5700 10550 5050
Wire Notes Line
	10550 5050 8750 5050
Wire Notes Line
	10350 5100 10450 5100
Wire Notes Line
	10450 5100 10450 5350
Wire Notes Line
	10450 5350 10350 5350
Wire Notes Line
	10350 5350 10350 5100
Wire Notes Line
	10350 5400 10450 5400
Wire Notes Line
	10450 5400 10450 5650
Wire Notes Line
	10450 5650 10350 5650
Wire Notes Line
	10350 5650 10350 5400
Text Notes 10450 5350 1    60   ~ 0
LEFT
Text Notes 10450 5650 1    60   ~ 0
RIGHT
Text Notes 10450 5200 0    60   ~ 0
+
Text Notes 10450 5350 0    60   ~ 0
-
Text Notes 10450 5650 0    60   ~ 0
+
Text Notes 10450 5500 0    60   ~ 0
-
Wire Notes Line
	8800 5250 8800 5400
Wire Notes Line
	8800 5250 9100 5250
Wire Notes Line
	9100 5250 9100 5450
Wire Notes Line
	9100 5450 8850 5450
Wire Notes Line
	8950 5300 9050 5300
Wire Notes Line
	8950 5350 9050 5350
Wire Notes Line
	8950 5400 9050 5400
Text Notes 9200 5550 0    60   ~ 0
MUSICMAKER BOARD \nPINOUT\n\nTOP VIEW
NoConn ~ 8800 2050
NoConn ~ 8800 2250
Text Notes 10300 5450 1    60   ~ 0
SPK
$Comp
L internet-radio-module-rescue:C C?
U 1 1 5D3C88E2
P 9300 1050
F 0 "C?" H 9325 1150 50  0000 L CNN
F 1 "100n" H 9325 950 50  0000 L CNN
F 2 "" H 9338 900 50  0000 C CNN
F 3 "" H 9300 1050 50  0000 C CNN
	1    9300 1050
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:CP C?
U 1 1 5D3C88E8
P 9000 1050
F 0 "C?" H 9025 1150 50  0000 L CNN
F 1 "22u" H 9025 950 50  0000 L CNN
F 2 "" H 9038 900 50  0000 C CNN
F 3 "" H 9000 1050 50  0000 C CNN
	1    9000 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 900  9150 900 
Wire Wire Line
	9000 1200 9150 1200
Wire Wire Line
	9150 900  9150 800 
Connection ~ 9150 900 
Wire Wire Line
	9150 1200 9150 1250
Connection ~ 9150 1200
$Comp
L internet-radio-module-rescue:+3.3V #PWR?
U 1 1 5D3C88F4
P 9150 800
F 0 "#PWR?" H 9150 650 50  0001 C CNN
F 1 "+3.3V" H 9150 940 50  0000 C CNN
F 2 "" H 9150 800 50  0000 C CNN
F 3 "" H 9150 800 50  0000 C CNN
	1    9150 800 
	1    0    0    -1  
$EndComp
$Comp
L internet-radio-module-rescue:GND #PWR?
U 1 1 5D3C88FA
P 9150 1250
F 0 "#PWR?" H 9150 1000 50  0001 C CNN
F 1 "GND" H 9150 1100 50  0000 C CNN
F 2 "" H 9150 1250 50  0000 C CNN
F 3 "" H 9150 1250 50  0000 C CNN
	1    9150 1250
	1    0    0    -1  
$EndComp
Wire Notes Line
	8600 3500 8600 3800
Wire Notes Line
	8600 3650 8950 3650
Wire Wire Line
	6600 6450 5100 6450
Wire Wire Line
	5300 5800 5300 6050
Connection ~ 5300 6050
$Comp
L internet-radio-module-rescue:R R?
U 1 1 5D52F7DB
P 8150 4150
F 0 "R?" V 8230 4150 50  0000 C CNN
F 1 "10K" V 8150 4150 50  0000 C CNN
F 2 "" V 8080 4150 50  0000 C CNN
F 3 "" H 8150 4150 50  0000 C CNN
	1    8150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4300 8150 4300
$Comp
L internet-radio-module-rescue:+3.3V #PWR?
U 1 1 5D52FFC9
P 8150 4000
F 0 "#PWR?" H 8150 3850 50  0001 C CNN
F 1 "+3.3V" H 8150 4140 50  0000 C CNN
F 2 "" H 8150 4000 50  0000 C CNN
F 3 "" H 8150 4000 50  0000 C CNN
	1    8150 4000
	1    0    0    -1  
$EndComp
Text Notes 6800 1400 0    60   ~ 0
Using VSPI \npin config
Wire Wire Line
	4400 5500 5300 5500
Wire Wire Line
	4400 5500 4400 5700
Wire Wire Line
	5200 7000 5300 7000
Wire Wire Line
	5200 7300 5300 7300
Wire Wire Line
	10300 3600 10400 3600
Wire Wire Line
	1500 3200 2150 3200
Wire Wire Line
	1200 5250 1250 5250
Wire Wire Line
	1200 5250 1200 5850
Wire Wire Line
	1200 5850 1200 6550
Wire Wire Line
	1850 5850 1850 5950
Wire Wire Line
	1050 850  1200 850 
Wire Wire Line
	1050 1150 1200 1150
Wire Wire Line
	1000 5700 1000 5800
Wire Wire Line
	9150 900  9300 900 
Wire Wire Line
	9150 1200 9300 1200
Wire Wire Line
	5300 6050 6600 6050
Wire Bus Line
	6700 950  6700 7300
$EndSCHEMATC
