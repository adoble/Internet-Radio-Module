EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:maker
LIBS:internet-radio-module-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3550 2700 4550 2450
U 5D30B23B
F0 "PCB" 60
F1 "pcb.sch" 60
$EndSheet
Text HLabel 8100 3350 0    60   Output ~ 0
AUDIO-LEFT
Text HLabel 8100 3700 0    60   Output ~ 0
AUDIO-RIGHT
$Comp
L SW_PUSH_SMALL SW?
U 1 1 5D30B510
P 2300 3850
F 0 "SW?" H 2300 3750 60  0000 C CNN
F 1 "SW_PUSH_SMALL" H 2300 4100 60  0000 C CNN
F 2 "" H 2480 3850 60  0001 C CNN
F 3 "" H 2480 3850 60  0001 C CNN
	1    2300 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5D30B533
P 2050 4250
F 0 "#PWR?" H 2050 4000 50  0001 C CNN
F 1 "GND" H 2050 4100 50  0000 C CNN
F 2 "" H 2050 4250 50  0000 C CNN
F 3 "" H 2050 4250 50  0000 C CNN
	1    2050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3800 2050 4250
Text HLabel 3550 3800 2    60   Input ~ 0
CONTROL
$Comp
L LCD-016N002L DS?
U 1 1 5D30B6CE
P 5750 1750
F 0 "DS?" H 4950 2150 50  0000 C CNN
F 1 "LCD-016N002L" H 6450 2150 50  0000 C CNN
F 2 "WC1602A" H 5750 1700 50  0000 C CIN
F 3 "" H 5750 1750 50  0000 C CNN
	1    5750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3800 3550 3800
Wire Wire Line
	2550 3900 2550 3800
Text HLabel 5000 2700 3    60   Output ~ 0
VSS
Wire Wire Line
	5000 2250 5000 2700
Text HLabel 5100 2700 3    60   Output ~ 0
VDD
Wire Wire Line
	5100 2250 5100 2700
Text HLabel 5600 2700 3    60   Input ~ 0
D0
Text HLabel 5700 2700 3    60   Input ~ 0
D1
Text HLabel 5800 2700 3    60   Input ~ 0
D2
Text HLabel 5900 2700 3    60   Input ~ 0
D3
Text HLabel 6000 2700 3    60   Input ~ 0
D4
Text HLabel 6100 2700 3    60   Input ~ 0
D5
Text HLabel 6200 2700 3    60   Input ~ 0
D6
Text HLabel 6300 2700 3    60   Input ~ 0
D7
Wire Wire Line
	5600 2250 5600 2700
Wire Wire Line
	5700 2250 5700 2700
Wire Wire Line
	5800 2250 5800 2700
Wire Wire Line
	5900 2250 5900 2700
Wire Wire Line
	6000 2250 6000 2700
Wire Wire Line
	6100 2250 6100 2700
Wire Wire Line
	6200 2250 6200 2700
Wire Wire Line
	6300 2250 6300 2700
Text Notes 5750 2450 0    60   ~ 0
CHECK THIS
$EndSCHEMATC
