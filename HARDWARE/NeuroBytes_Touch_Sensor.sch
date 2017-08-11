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
LIBS:NeuroTinker_schematic_symbols
LIBS:NeuroBytes_Touch_Sensor-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NeuroBytes Touch Sensor"
Date "2017-05-16"
Rev "B"
Comp "NeuroTinker, LLC"
Comment1 "License: GPL v3"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 58B4A894
P 6200 3850
F 0 "#PWR01" H 6200 3600 50  0001 C CNN
F 1 "GND" H 6200 3700 50  0000 C CNN
F 2 "" H 6200 3850 50  0000 C CNN
F 3 "" H 6200 3850 50  0000 C CNN
	1    6200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3150 6200 3150
Wire Wire Line
	5200 3300 6200 3300
$Comp
L C C3
U 1 1 58B4A97E
P 7050 3800
F 0 "C3" H 7075 3900 50  0000 L CNN
F 1 "100 nF" H 7075 3700 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402_cap" H 8000 3800 50  0001 C CNN
F 3 "" H 7050 3800 50  0000 C CNN
F 4 "MF-CAP-0402-0.1uF" H 7050 3800 60  0001 C CNN "Mfr Part #"
F 5 "C0402" H 7050 3800 60  0001 C CNN "Package"
F 6 "Yes" H 7050 3800 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 7050 3800 60  0001 C CNN "RoHS"
	1    7050 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58B4A9A5
P 7050 4200
F 0 "#PWR02" H 7050 3950 50  0001 C CNN
F 1 "GND" H 7050 4050 50  0000 C CNN
F 2 "" H 7050 4200 50  0000 C CNN
F 3 "" H 7050 4200 50  0000 C CNN
	1    7050 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3400 7050 3650
Wire Wire Line
	7050 3950 7050 4200
Text GLabel 1650 1950 0    60   Input ~ 0
RESET
Wire Wire Line
	1650 1950 2800 1950
Text GLabel 5400 2400 2    60   Input ~ 0
SWCLK
Wire Wire Line
	6200 3150 6200 1050
Wire Wire Line
	5400 2400 5200 2400
Text GLabel 5400 2550 2    60   Input ~ 0
SWDIO
Wire Wire Line
	5400 2550 5200 2550
Text GLabel 2600 2550 0    60   Input ~ 0
LED_B
Text GLabel 2600 2400 0    60   Input ~ 0
LED_G
Text GLabel 2600 2250 0    60   Input ~ 0
LED_R
Wire Wire Line
	6200 3300 6200 3850
Wire Wire Line
	5200 3450 5400 3450
Text GLabel 2600 2700 0    60   Input ~ 0
A1IN
Text GLabel 2600 2850 0    60   Input ~ 0
A1EX
$Comp
L LED_RABG D1
U 1 1 58B4B5D1
P 9700 2450
F 0 "D1" H 9700 2820 50  0000 C CNN
F 1 "LED_RABG" H 9700 2100 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_LED_RGB_SunLED_XZMDKCBDDG45S-9_cast" H 10000 2900 50  0000 C CNN
F 3 "" H 9700 2400 50  0000 C CNN
F 4 "XZMDKCBDDG45S-9" H 9700 2450 60  0001 C CNN "Mfr Part #"
F 5 "SMT" H 9700 2450 60  0001 C CNN "Package"
F 6 "No" H 9700 2450 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 9700 2450 60  0001 C CNN "RoHS"
	1    9700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1500 10400 2450
Wire Wire Line
	10400 2450 9900 2450
Wire Wire Line
	9300 2250 9500 2250
Wire Wire Line
	9300 2450 9500 2450
Wire Wire Line
	9300 2650 9500 2650
Text GLabel 6800 2800 0    60   Input ~ 0
LED_B
Text GLabel 6800 2000 0    60   Input ~ 0
LED_G
Text GLabel 6800 1200 0    60   Input ~ 0
LED_R
$Comp
L GND #PWR03
U 1 1 58B4C48D
P 7650 3650
F 0 "#PWR03" H 7650 3400 50  0001 C CNN
F 1 "GND" H 7650 3500 50  0000 C CNN
F 2 "" H 7650 3650 50  0000 C CNN
F 3 "" H 7650 3650 50  0000 C CNN
	1    7650 3650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 58B59B55
P 10400 1500
F 0 "#PWR04" H 10400 1350 50  0001 C CNN
F 1 "+5V" H 10400 1640 50  0000 C CNN
F 2 "" H 10400 1500 50  0000 C CNN
F 3 "" H 10400 1500 50  0000 C CNN
	1    10400 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P6
U 1 1 58B5B32F
P 5100 4950
F 0 "P6" H 5100 5200 50  0000 C CNN
F 1 "CONN_01X04" V 5200 4950 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 5100 5300 50  0000 C CNN
F 3 "" H 5100 4950 50  0000 C CNN
F 4 "SM04B-GHS-GD-TB(LF)(SN)" H 5100 4950 60  0001 C CNN "Mfr Part #"
F 5 "JST_GH_4-POS" H 5100 4950 60  0001 C CNN "Package"
F 6 "No" H 5100 4950 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 5100 4950 60  0001 C CNN "RoHS"
	1    5100 4950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P7
U 1 1 58B5B3DE
P 5100 5500
F 0 "P7" H 5100 5750 50  0000 C CNN
F 1 "CONN_01X04" V 5200 5500 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 5100 5200 50  0000 C CNN
F 3 "" H 5100 5500 50  0000 C CNN
F 4 "SM04B-GHS-GD-TB(LF)(SN)" H 5100 5500 60  0001 C CNN "Mfr Part #"
F 5 "JST_GH_4-POS" H 5100 5500 60  0001 C CNN "Package"
F 6 "No" H 5100 5500 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 5100 5500 60  0001 C CNN "RoHS"
	1    5100 5500
	1    0    0    -1  
$EndComp
Text GLabel 3800 5100 0    60   Input ~ 0
A1EX
Text GLabel 3800 4900 0    60   Input ~ 0
A1IN
Wire Wire Line
	3800 5100 4900 5100
Wire Wire Line
	4300 5000 4900 5000
Wire Wire Line
	3800 4900 4300 4900
Wire Wire Line
	4500 5450 4900 5450
Wire Wire Line
	4500 4450 4500 5450
Wire Wire Line
	4500 4900 4900 4900
Wire Wire Line
	4900 5350 4700 5350
Wire Wire Line
	4700 4800 4700 5950
Wire Wire Line
	4700 4800 4900 4800
$Comp
L STM32L011Gx U1
U 1 1 58B5C156
P 4000 2400
F 0 "U1" H 4000 1975 60  0000 C CNN
F 1 "STM32L011Gx" H 4000 2850 60  0000 C CNN
F 2 "KiCad_Footprints:ZF_IC_UFQFPN28-050" H 4000 1150 60  0000 C CNN
F 3 "" H 4000 2400 60  0001 C CNN
F 4 "STM32L011G4U6" H 4000 2400 60  0001 C CNN "Mfr Part #"
F 5 "UFQFPN28" H 4000 2400 60  0001 C CNN "Package"
F 6 "No" H 4000 2400 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 4000 2400 60  0001 C CNN "RoHS"
	1    4000 2400
	1    0    0    -1  
$EndComp
$Comp
L LD3985G33R U2
U 1 1 58B5C9D0
P 7200 4950
F 0 "U2" H 6950 5150 50  0000 C CNN
F 1 "LD3985G33R" H 7400 5150 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SOT23-5L" H 7200 5250 50  0000 C CNN
F 3 "" H 7200 4950 50  0000 C CNN
F 4 "MF-REG-SOT235-3.3V-300mA" H 7200 4950 60  0001 C CNN "Mfr Part #"
F 5 "SOT23-5L" H 7200 4950 60  0001 C CNN "Package"
F 6 "No" H 7200 4950 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 7200 4950 60  0001 C CNN "RoHS"
	1    7200 4950
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58B5CACA
P 6350 5150
F 0 "C1" H 6375 5250 50  0000 L CNN
F 1 "1uF" H 6375 5050 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 6388 5000 50  0001 C CNN
F 3 "" H 6350 5150 50  0000 C CNN
F 4 "MF-CAP-0603-1uF" H 6350 5150 60  0001 C CNN "Mfr Part #"
F 5 "C0603" H 6350 5150 60  0001 C CNN "Package"
F 6 "Yes" H 6350 5150 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 6350 5150 60  0001 C CNN "RoHS"
	1    6350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4900 6750 4900
Wire Wire Line
	6550 4900 6550 5050
Wire Wire Line
	6550 5050 6750 5050
Wire Wire Line
	6350 5000 6350 4900
Connection ~ 6550 4900
Wire Wire Line
	6350 5300 6350 5500
Wire Wire Line
	6350 5500 7200 5500
Wire Wire Line
	7200 5250 7200 5950
$Comp
L +5V #PWR05
U 1 1 58B5CCCF
P 6050 4700
F 0 "#PWR05" H 6050 4550 50  0001 C CNN
F 1 "+5V" H 6050 4840 50  0000 C CNN
F 2 "" H 6050 4700 50  0000 C CNN
F 3 "" H 6050 4700 50  0000 C CNN
	1    6050 4700
	1    0    0    -1  
$EndComp
Connection ~ 6350 4900
$Comp
L +5V #PWR06
U 1 1 58B5CECC
P 4500 4450
F 0 "#PWR06" H 4500 4300 50  0001 C CNN
F 1 "+5V" H 4500 4590 50  0000 C CNN
F 2 "" H 4500 4450 50  0000 C CNN
F 3 "" H 4500 4450 50  0000 C CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
Connection ~ 4500 4900
$Comp
L GND #PWR07
U 1 1 58B5CF99
P 4700 5950
F 0 "#PWR07" H 4700 5700 50  0001 C CNN
F 1 "GND" H 4700 5800 50  0000 C CNN
F 2 "" H 4700 5950 50  0000 C CNN
F 3 "" H 4700 5950 50  0000 C CNN
	1    4700 5950
	1    0    0    -1  
$EndComp
Connection ~ 4700 5350
$Comp
L GND #PWR08
U 1 1 58B5D12A
P 7200 5950
F 0 "#PWR08" H 7200 5700 50  0001 C CNN
F 1 "GND" H 7200 5800 50  0000 C CNN
F 2 "" H 7200 5950 50  0000 C CNN
F 3 "" H 7200 5950 50  0000 C CNN
	1    7200 5950
	1    0    0    -1  
$EndComp
Connection ~ 7200 5500
$Comp
L C C4
U 1 1 58B5D1F9
P 8000 5150
F 0 "C4" H 8025 5250 50  0000 L CNN
F 1 "1uF" H 8025 5050 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 8038 5000 50  0001 C CNN
F 3 "" H 8000 5150 50  0000 C CNN
F 4 "MF-CAP-0603-1uF" H 8000 5150 60  0001 C CNN "Mfr Part #"
F 5 "C0603" H 8000 5150 60  0001 C CNN "Package"
F 6 "Yes" H 8000 5150 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 8000 5150 60  0001 C CNN "RoHS"
	1    8000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4900 8000 5000
Wire Wire Line
	8000 5300 8000 5400
Wire Wire Line
	8000 5400 7200 5400
Connection ~ 7200 5400
$Comp
L +3.3V #PWR09
U 1 1 58B5D373
P 8250 4700
F 0 "#PWR09" H 8250 4550 50  0001 C CNN
F 1 "+3.3V" H 8250 4840 50  0000 C CNN
F 2 "" H 8250 4700 50  0000 C CNN
F 3 "" H 8250 4700 50  0000 C CNN
	1    8250 4700
	1    0    0    -1  
$EndComp
Connection ~ 8000 4900
$Comp
L +3.3V #PWR010
U 1 1 58B5D4CD
P 7050 3400
F 0 "#PWR010" H 7050 3250 50  0001 C CNN
F 1 "+3.3V" H 7050 3540 50  0000 C CNN
F 2 "" H 7050 3400 50  0000 C CNN
F 3 "" H 7050 3400 50  0000 C CNN
	1    7050 3400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 58B5D568
P 2000 1000
F 0 "#PWR011" H 2000 850 50  0001 C CNN
F 1 "+3.3V" H 2000 1140 50  0000 C CNN
F 2 "" H 2000 1000 50  0000 C CNN
F 3 "" H 2000 1000 50  0000 C CNN
	1    2000 1000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 58B5D5B2
P 6200 1050
F 0 "#PWR012" H 6200 900 50  0001 C CNN
F 1 "+3.3V" H 6200 1190 50  0000 C CNN
F 2 "" H 6200 1050 50  0000 C CNN
F 3 "" H 6200 1050 50  0000 C CNN
	1    6200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4900 8250 4900
Wire Wire Line
	8250 4900 8250 4700
Wire Wire Line
	6050 4900 6050 4700
Wire Wire Line
	7050 4050 6750 4050
Wire Wire Line
	6750 4050 6750 3950
Connection ~ 7050 4050
Wire Wire Line
	6750 3650 6750 3550
Wire Wire Line
	6750 3550 7050 3550
Connection ~ 7050 3550
$Comp
L GND #PWR013
U 1 1 58B5E0E3
P 10050 5700
F 0 "#PWR013" H 10050 5450 50  0001 C CNN
F 1 "GND" H 10050 5550 50  0000 C CNN
F 2 "" H 10050 5700 50  0000 C CNN
F 3 "" H 10050 5700 50  0000 C CNN
	1    10050 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5700 10050 4650
Wire Wire Line
	10050 4650 10300 4650
$Comp
L +5V #PWR014
U 1 1 58B5E2AE
P 9850 4150
F 0 "#PWR014" H 9850 4000 50  0001 C CNN
F 1 "+5V" H 9850 4290 50  0000 C CNN
F 2 "" H 9850 4150 50  0000 C CNN
F 3 "" H 9850 4150 50  0000 C CNN
	1    9850 4150
	1    0    0    -1  
$EndComp
Text GLabel 9250 4750 0    60   Input ~ 0
RESET
Wire Wire Line
	9250 4750 10300 4750
Text GLabel 9250 5150 0    60   Input ~ 0
SWCLK
Text GLabel 9250 4950 0    60   Input ~ 0
SWDIO
Wire Wire Line
	9250 5150 9450 5150
Wire Wire Line
	9450 5150 9450 4950
Wire Wire Line
	9450 4950 10300 4950
Wire Wire Line
	9250 4950 9350 4950
Wire Wire Line
	9350 4950 9350 4850
Wire Wire Line
	9350 4850 10300 4850
$Comp
L SW_PUSH SW1
U 1 1 58B5A249
P 1850 3750
F 0 "SW1" H 2000 3860 50  0000 C CNN
F 1 "SW_PUSH" H 1850 3670 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SW_Momentary_SideMtg" H 2150 3600 50  0000 C CNN
F 3 "" H 1850 3750 50  0000 C CNN
F 4 "TL3330AF130QG" H 1850 3750 60  0001 C CNN "Mfr Part #"
F 5 "SMT" H 1850 3750 60  0001 C CNN "Package"
F 6 "No" H 1850 3750 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 1850 3750 60  0001 C CNN "RoHS"
	1    1850 3750
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58B5C233
P 9150 2250
F 0 "R1" V 9230 2250 50  0000 C CNN
F 1 "220" V 9150 2250 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 9350 1650 50  0001 C CNN
F 3 "" H 9150 2250 50  0000 C CNN
F 4 "MF-RES-0402-220" H 9150 2250 60  0001 C CNN "Mfr Part #"
F 5 "R0402" H 9150 2250 60  0001 C CNN "Package"
F 6 "Yes" H 9150 2250 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 9150 2250 60  0001 C CNN "RoHS"
	1    9150 2250
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 58B5C2BE
P 9150 2450
F 0 "R2" V 9230 2450 50  0000 C CNN
F 1 "100" V 9150 2450 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 9350 1850 50  0001 C CNN
F 3 "" H 9150 2450 50  0000 C CNN
F 4 "MF-RES-0402-100" H 9150 2450 60  0001 C CNN "Mfr Part #"
F 5 "R0402" H 9150 2450 60  0001 C CNN "Package"
F 6 "Yes" H 9150 2450 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 9150 2450 60  0001 C CNN "RoHS"
	1    9150 2450
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 58B5C32A
P 9150 2650
F 0 "R3" V 9230 2650 50  0000 C CNN
F 1 "100" V 9150 2650 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 9350 2050 50  0001 C CNN
F 3 "" H 9150 2650 50  0000 C CNN
F 4 "MF-RES-0402-100" H 9150 2650 60  0001 C CNN "Mfr Part #"
F 5 "R0402" H 9150 2650 60  0001 C CNN "Package"
F 6 "Yes" H 9150 2650 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 9150 2650 60  0001 C CNN "RoHS"
	1    9150 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 1650 7650 3650
Wire Wire Line
	2000 1000 2000 2100
Wire Wire Line
	2000 2100 2800 2100
Wire Wire Line
	1300 3750 1550 3750
Text GLabel 2350 3750 2    60   Input ~ 0
IDENTIFY
Wire Wire Line
	2350 3750 2150 3750
Text GLabel 2600 3450 0    60   Input ~ 0
IDENTIFY
$Comp
L GND #PWR015
U 1 1 58B73CAC
P 1800 2650
F 0 "#PWR015" H 1800 2400 50  0001 C CNN
F 1 "GND" H 1800 2500 50  0000 C CNN
F 2 "" H 1800 2650 50  0000 C CNN
F 3 "" H 1800 2650 50  0000 C CNN
	1    1800 2650
	1    0    0    -1  
$EndComp
Connection ~ 1800 1950
$Comp
L C C5
U 1 1 58B73F8A
P 1800 2300
F 0 "C5" H 1825 2400 50  0000 L CNN
F 1 "0.1uF" H 1825 2200 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402_cap" H 1838 2150 50  0001 C CNN
F 3 "" H 1800 2300 50  0000 C CNN
F 4 "MF-CAP-0402-0.1uF" H 1800 2300 60  0001 C CNN "Mfr Part #"
F 5 "C0402" H 1800 2300 60  0001 C CNN "Package"
F 6 "Yes" H 1800 2300 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 1800 2300 60  0001 C CNN "RoHS"
	1    1800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2650 1800 2450
Wire Wire Line
	1800 2150 1800 1950
$Comp
L SW_PUSH SW2
U 1 1 58D1A180
P 1850 4500
F 0 "SW2" H 2000 4610 50  0000 C CNN
F 1 "SW_SNAP_ACTION" H 1850 4420 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SW_Momentary_Snap-Action_side-mtg" H 2450 4350 50  0000 C CNN
F 3 "" H 1850 4500 50  0000 C CNN
F 4 "No" H 1850 4500 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 1850 4500 60  0001 C CNN "RoHS"
	1    1850 4500
	1    0    0    -1  
$EndComp
Text GLabel 2350 4500 2    60   Input ~ 0
INPUT
Wire Wire Line
	1300 4500 1550 4500
Wire Wire Line
	2150 4500 2350 4500
Text GLabel 5400 3450 2    60   Input ~ 0
INPUT
$Comp
L R R4
U 1 1 58D1B582
P 2450 1500
F 0 "R4" V 2530 1500 50  0000 C CNN
F 1 "JMP" V 2450 1500 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 2380 1500 50  0001 C CNN
F 3 "" H 2450 1500 50  0000 C CNN
F 4 "Yes" H 2450 1500 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 2450 1500 60  0001 C CNN "RoHS"
	1    2450 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1500 2600 1500
$Comp
L GND #PWR016
U 1 1 58D1B6E2
P 950 2650
F 0 "#PWR016" H 950 2400 50  0001 C CNN
F 1 "GND" H 950 2500 50  0000 C CNN
F 2 "" H 950 2650 50  0000 C CNN
F 3 "" H 950 2650 50  0000 C CNN
	1    950  2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2650 950  1500
Wire Wire Line
	950  1500 2300 1500
Wire Wire Line
	1300 3750 1300 5000
$Comp
L GND #PWR017
U 1 1 58DA7837
P 1300 5000
F 0 "#PWR017" H 1300 4750 50  0001 C CNN
F 1 "GND" H 1300 4850 50  0000 C CNN
F 2 "" H 1300 5000 50  0000 C CNN
F 3 "" H 1300 5000 50  0000 C CNN
	1    1300 5000
	1    0    0    -1  
$EndComp
Connection ~ 1300 4500
Wire Wire Line
	8750 1650 8250 1650
Wire Wire Line
	8750 1650 8750 2250
Wire Wire Line
	8750 2250 9000 2250
Wire Wire Line
	8250 2450 9000 2450
Wire Wire Line
	4300 4900 4300 5000
Text GLabel 3800 5650 0    60   Input ~ 0
A2EX
Text GLabel 3800 5450 0    60   Input ~ 0
A2IN
Wire Wire Line
	3800 5650 4900 5650
Wire Wire Line
	3800 5450 4300 5450
Wire Wire Line
	4300 5450 4300 5550
Wire Wire Line
	4300 5550 4900 5550
Wire Wire Line
	2600 2550 2800 2550
Wire Wire Line
	2600 2400 2800 2400
Wire Wire Line
	2600 2250 2800 2250
Wire Wire Line
	2800 2700 2600 2700
Wire Wire Line
	2600 2850 2800 2850
Text GLabel 2600 3150 0    60   Input ~ 0
A2EX
Wire Wire Line
	2600 3150 2800 3150
Text GLabel 2600 3000 0    60   Input ~ 0
A2IN
Wire Wire Line
	2600 3000 2800 3000
Wire Wire Line
	2600 3450 2800 3450
$Comp
L MMBT3904 Q1
U 1 1 592F677E
P 8050 1550
F 0 "Q1" H 8250 1625 50  0000 L CNN
F 1 "MMBT3904" V 8050 1750 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SOT23-3L" V 8250 1800 50  0001 L CIN
F 3 "" H 8050 1550 50  0000 L CNN
F 4 "MF-DSC-SOT233-MMBT3904" H 8050 1550 60  0001 C CNN "Mfr Part #"
F 5 "SOT23-3L" H 8050 1550 60  0001 C CNN "Package"
F 6 "No" H 8050 1550 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 8050 1550 60  0001 C CNN "RoHS"
	1    8050 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 1650 7650 1650
$Comp
L R R5
U 1 1 592F68FF
P 7350 1200
F 0 "R5" V 7430 1200 50  0000 C CNN
F 1 "1k" V 7350 1200 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 7280 1200 50  0001 C CNN
F 3 "" H 7350 1200 50  0000 C CNN
F 4 "MF-RES-0402-1K" H 7350 1200 60  0001 C CNN "Mfr Part #"
F 5 "R0402" H 7350 1200 60  0001 C CNN "Package"
F 6 "No" H 7350 1200 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 7350 1200 60  0001 C CNN "RoHS"
	1    7350 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 1200 8050 1200
Wire Wire Line
	8050 1200 8050 1350
Wire Wire Line
	6800 1200 7200 1200
$Comp
L MMBT3904 Q2
U 1 1 592F6BA0
P 8050 2350
F 0 "Q2" H 8250 2425 50  0000 L CNN
F 1 "MMBT3904" V 8050 2550 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SOT23-3L" V 8250 2600 50  0001 L CIN
F 3 "" H 8050 2350 50  0000 L CNN
F 4 "MF-DSC-SOT233-MMBT3904" H 8050 2350 60  0001 C CNN "Mfr Part #"
F 5 "SOT23-3L" H 8050 2350 60  0001 C CNN "Package"
F 6 "No" H 8050 2350 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 8050 2350 60  0001 C CNN "RoHS"
	1    8050 2350
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 592F6D17
P 7350 2000
F 0 "R6" V 7430 2000 50  0000 C CNN
F 1 "1k" V 7350 2000 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 7280 2000 50  0001 C CNN
F 3 "" H 7350 2000 50  0000 C CNN
F 4 "MF-RES-0402-1K" H 7350 2000 60  0001 C CNN "Mfr Part #"
F 5 "R0402" H 7350 2000 60  0001 C CNN "Package"
F 6 "No" H 7350 2000 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 7350 2000 60  0001 C CNN "RoHS"
	1    7350 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 2000 8050 2000
Wire Wire Line
	8050 2000 8050 2150
Wire Wire Line
	7850 2450 7650 2450
Connection ~ 7650 2450
Wire Wire Line
	6800 2000 7200 2000
$Comp
L R R7
U 1 1 592F71A8
P 7350 2800
F 0 "R7" V 7430 2800 50  0000 C CNN
F 1 "1k" V 7350 2800 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 7280 2800 50  0001 C CNN
F 3 "" H 7350 2800 50  0000 C CNN
F 4 "MF-RES-0402-1K" H 7350 2800 60  0001 C CNN "Mfr Part #"
F 5 "R0402" H 7350 2800 60  0001 C CNN "Package"
F 6 "No" H 7350 2800 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 7350 2800 60  0001 C CNN "RoHS"
	1    7350 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 2800 6800 2800
$Comp
L MMBT3904 Q3
U 1 1 592F72A0
P 8050 3150
F 0 "Q3" H 8250 3225 50  0000 L CNN
F 1 "MMBT3904" V 8050 3350 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SOT23-3L" V 8250 3400 50  0001 L CIN
F 3 "" H 8050 3150 50  0000 L CNN
F 4 "MF-DSC-SOT233-MMBT3904" H 8050 3150 60  0001 C CNN "Mfr Part #"
F 5 "SOT23-3L" H 8050 3150 60  0001 C CNN "Package"
F 6 "No" H 8050 3150 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 8050 3150 60  0001 C CNN "RoHS"
	1    8050 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 2950 8050 2800
Wire Wire Line
	8050 2800 7500 2800
Wire Wire Line
	7850 3250 7650 3250
Connection ~ 7650 3250
Wire Wire Line
	8250 3250 8750 3250
Wire Wire Line
	8750 3250 8750 2650
Wire Wire Line
	8750 2650 9000 2650
$Comp
L C C2
U 1 1 592F7BC3
P 6750 3800
F 0 "C2" H 6775 3900 50  0000 L CNN
F 1 "10uF" H 6775 3700 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_nonpol_1206" H 6788 3650 50  0001 C CNN
F 3 "" H 6750 3800 50  0000 C CNN
F 4 "MF-CAP-1206-10uF" H 6750 3800 60  0001 C CNN "Mfr Part #"
F 5 "C1206" H 6750 3800 60  0001 C CNN "Package"
F 6 "No" H 6750 3800 60  0001 C CNN "Subs Allowed"
F 7 "Yes" H 6750 3800 60  0001 C CNN "RoHS"
	1    6750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5050 9850 5050
Wire Wire Line
	9850 5050 9850 4150
$Comp
L CONN_01X05 P1
U 1 1 598DF7EC
P 10500 4850
F 0 "P1" H 10500 5150 50  0000 C CNN
F 1 "JST_GH_5-pos" V 10600 4850 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH_5POS" H 10500 5250 50  0000 C CNN
F 3 "" H 10500 4850 50  0000 C CNN
F 4 "No" H 10500 4850 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 10500 4850 60  0001 C CNN "RoHS"
	1    10500 4850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
