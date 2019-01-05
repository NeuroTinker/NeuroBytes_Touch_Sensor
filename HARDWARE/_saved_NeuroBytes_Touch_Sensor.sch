EESchema Schematic File Version 4
LIBS:NeuroBytes_Touch_Sensor-cache
EELAYER 26 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "NeuroBytes Touch Sensor"
Date "2018-02-13"
Rev "D"
Comp "NeuroTinker, LLC"
Comment1 "(C) 2018 Zach Fredin"
Comment2 "License: CC-BY_SA 4.0"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NeuroBytes_Touch_Sensor-rescue:GND #PWR01
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
L NeuroBytes_Touch_Sensor-rescue:GND #PWR02
U 1 1 58B4A9A5
P 2200 5850
F 0 "#PWR02" H 2200 5600 50  0001 C CNN
F 1 "GND" H 2200 5700 50  0000 C CNN
F 2 "" H 2200 5850 50  0000 C CNN
F 3 "" H 2200 5850 50  0000 C CNN
	1    2200 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5050 2200 5200
Wire Wire Line
	2200 5600 2200 5700
Text GLabel 1650 1950 0    60   Input ~ 0
RESET
Wire Wire Line
	1650 1950 1800 1950
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
L NeuroBytes_Touch_Sensor-rescue:LED_RABG D1
U 1 1 58B4B5D1
P 10900 2550
F 0 "D1" H 10900 2920 50  0000 C CNN
F 1 "LED_RABG" H 10900 2200 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_LED_RGB_SunLED_XZMDKCBDDG45S-9_cast" H 11200 3000 50  0000 C CNN
F 3 "" H 10900 2500 50  0000 C CNN
F 4 "SunLED" H 10900 2550 60  0001 C CNN "Mfr"
F 5 "XZMDKCBDDG45S-9" H 10900 2550 60  0001 C CNN "Mfr Part #"
F 6 "SMT" H 10900 2550 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/sunled/XZMDKCBDDG45S-9/1497-1257-2-ND/4902045" H 10900 2550 60  0001 C CNN "Link"
F 8 "No" H 10900 2550 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 10900 2550 60  0001 C CNN "RoHS"
	1    10900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11600 1600 11600 2550
Wire Wire Line
	11600 2550 11100 2550
Wire Wire Line
	10500 2350 10700 2350
Wire Wire Line
	10500 2550 10700 2550
Wire Wire Line
	10500 2750 10700 2750
Text GLabel 8000 2900 0    60   Input ~ 0
LED_B
Text GLabel 8000 2100 0    60   Input ~ 0
LED_G
Text GLabel 8000 1300 0    60   Input ~ 0
LED_R
$Comp
L NeuroBytes_Touch_Sensor-rescue:GND #PWR03
U 1 1 58B4C48D
P 8850 3750
F 0 "#PWR03" H 8850 3500 50  0001 C CNN
F 1 "GND" H 8850 3600 50  0000 C CNN
F 2 "" H 8850 3750 50  0000 C CNN
F 3 "" H 8850 3750 50  0000 C CNN
	1    8850 3750
	1    0    0    -1  
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:+5V #PWR04
U 1 1 58B59B55
P 11600 1600
F 0 "#PWR04" H 11600 1450 50  0001 C CNN
F 1 "+5V" H 11600 1740 50  0000 C CNN
F 2 "" H 11600 1600 50  0000 C CNN
F 3 "" H 11600 1600 50  0000 C CNN
	1    11600 1600
	1    0    0    -1  
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:CONN_01X04 P6
U 1 1 58B5B32F
P 14900 1700
F 0 "P6" H 14900 1950 50  0000 C CNN
F 1 "CONN_01X04" V 15000 1700 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 14900 2050 50  0000 C CNN
F 3 "" H 14900 1700 50  0000 C CNN
F 4 "JST" H 14900 1700 60  0001 C CNN "Mfr"
F 5 "SM04B-GHS-TB(LF)(SN)" H 14900 1700 60  0001 C CNN "Mfr Part #"
F 6 "JST_GH_4-POS" H 14900 1700 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/SM04B-GHS-TB-LF-SN/455-1566-2-ND/807788" H 14900 1700 60  0001 C CNN "Link"
F 8 "No" H 14900 1700 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 14900 1700 60  0001 C CNN "RoHS"
	1    14900 1700
	1    0    0    -1  
$EndComp
Text GLabel 13600 1850 0    60   Input ~ 0
A1EX
Text GLabel 13600 1650 0    60   Input ~ 0
A1IN
Wire Wire Line
	13600 1850 14700 1850
Wire Wire Line
	14100 1750 14700 1750
Wire Wire Line
	13600 1650 14100 1650
Wire Wire Line
	14300 2200 14700 2200
Wire Wire Line
	14300 1200 14300 1650
Wire Wire Line
	14300 1650 14700 1650
Wire Wire Line
	14700 2100 14500 2100
Wire Wire Line
	14500 1550 14500 2100
Wire Wire Line
	14500 1550 14700 1550
$Comp
L NeuroBytes_Touch_Sensor-rescue:STM32L011Gx U1
U 1 1 58B5C156
P 4000 2400
F 0 "U1" H 4000 1975 60  0000 C CNN
F 1 "STM32L011Gx" H 4000 2850 60  0000 C CNN
F 2 "KiCad_Footprints:ZF_IC_UFQFPN28-050" H 4000 1150 60  0000 C CNN
F 3 "" H 4000 2400 60  0001 C CNN
F 4 "ST Microelectronics" H 4000 2400 60  0001 C CNN "Mfr"
F 5 "STM32L011G4U6" H 4000 2400 60  0001 C CNN "Mfr Part #"
F 6 "UFQFPN28" H 4000 2400 60  0001 C CNN "Package"
F 7 "http://www.mouser.com/ProductDetail/STMicroelectronics/STM32L011G4U6/?qs=sGAEpiMZZMuoKKEcg8mMKFZaGHZhaFFC%252b5Ex1OjcSxhBnExI6VEL3Q%3d%3d" H 4000 2400 60  0001 C CNN "Link"
F 8 "No" H 4000 2400 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 4000 2400 60  0001 C CNN "RoHS"
	1    4000 2400
	1    0    0    -1  
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:LD3985G33R U2
U 1 1 58B5C9D0
P 13550 6050
F 0 "U2" H 13300 6250 50  0000 C CNN
F 1 "3v3 LDO" H 13750 6250 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SOT23-5L" H 13550 6350 50  0000 C CNN
F 3 "" H 13550 6050 50  0000 C CNN
F 4 "ON Semiconductor" H 13550 6050 60  0001 C CNN "Mfr"
F 5 "NCP114BSN330T1G" H 13550 6050 60  0001 C CNN "Mfr Part #"
F 6 "SOT23-5L" H 13550 6050 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/on-semiconductor/NCP114BSN330T1G/NCP114BSN330T1GOSTR-ND/6560606" H 13550 6050 60  0001 C CNN "Link"
F 8 "Yes" H 13550 6050 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 13550 6050 60  0001 C CNN "RoHS"
	1    13550 6050
	1    0    0    -1  
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:C C1
U 1 1 58B5CACA
P 12700 6250
F 0 "C1" H 12725 6350 50  0000 L CNN
F 1 "1u" H 12725 6150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 12738 6100 50  0001 C CNN
F 3 "" H 12700 6250 50  0000 C CNN
F 4 "Taiyo Yuden" H 12700 6250 60  0001 C CNN "Mfr"
F 5 "LMK107B7105KA-T" H 12700 6250 60  0001 C CNN "Mfr Part #"
F 6 "C0603" H 12700 6250 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/taiyo-yuden/LMK107B7105KA-T/587-1242-2-ND/930594" H 12700 6250 60  0001 C CNN "Link"
F 8 "Yes" H 12700 6250 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 12700 6250 60  0001 C CNN "RoHS"
	1    12700 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 6000 12700 6000
Wire Wire Line
	12900 6000 12900 6150
Wire Wire Line
	12900 6150 13100 6150
Wire Wire Line
	12700 6100 12700 6000
Connection ~ 12900 6000
Wire Wire Line
	12700 6400 12700 6600
Wire Wire Line
	12700 6600 13550 6600
Wire Wire Line
	13550 6350 13550 6500
$Comp
L NeuroBytes_Touch_Sensor-rescue:+5V #PWR05
U 1 1 58B5CCCF
P 12400 5800
F 0 "#PWR05" H 12400 5650 50  0001 C CNN
F 1 "+5V" H 12400 5940 50  0000 C CNN
F 2 "" H 12400 5800 50  0000 C CNN
F 3 "" H 12400 5800 50  0000 C CNN
	1    12400 5800
	1    0    0    -1  
$EndComp
Connection ~ 12700 6000
$Comp
L NeuroBytes_Touch_Sensor-rescue:+5V #PWR06
U 1 1 58B5CECC
P 14300 1200
F 0 "#PWR06" H 14300 1050 50  0001 C CNN
F 1 "+5V" H 14300 1340 50  0000 C CNN
F 2 "" H 14300 1200 50  0000 C CNN
F 3 "" H 14300 1200 50  0000 C CNN
	1    14300 1200
	1    0    0    -1  
$EndComp
Connection ~ 14300 1650
$Comp
L NeuroBytes_Touch_Sensor-rescue:GND #PWR07
U 1 1 58B5CF99
P 14500 2700
F 0 "#PWR07" H 14500 2450 50  0001 C CNN
F 1 "GND" H 14500 2550 50  0000 C CNN
F 2 "" H 14500 2700 50  0000 C CNN
F 3 "" H 14500 2700 50  0000 C CNN
	1    14500 2700
	1    0    0    -1  
$EndComp
Connection ~ 14500 2100
$Comp
L NeuroBytes_Touch_Sensor-rescue:GND #PWR08
U 1 1 58B5D12A
P 13550 7050
F 0 "#PWR08" H 13550 6800 50  0001 C CNN
F 1 "GND" H 13550 6900 50  0000 C CNN
F 2 "" H 13550 7050 50  0000 C CNN
F 3 "" H 13550 7050 50  0000 C CNN
	1    13550 7050
	1    0    0    -1  
$EndComp
Connection ~ 13550 6600
Wire Wire Line
	14350 6000 14350 6100
Wire Wire Line
	14350 6400 14350 6500
Wire Wire Line
	14350 6500 13550 6500
Connection ~ 13550 6500
$Comp
L NeuroBytes_Touch_Sensor-rescue:+3.3V #PWR09
U 1 1 58B5D373
P 14600 5800
F 0 "#PWR09" H 14600 5650 50  0001 C CNN
F 1 "+3.3V" H 14600 5940 50  0000 C CNN
F 2 "" H 14600 5800 50  0000 C CNN
F 3 "" H 14600 5800 50  0000 C CNN
	1    14600 5800
	1    0    0    -1  
$EndComp
Connection ~ 14350 6000
$Comp
L NeuroBytes_Touch_Sensor-rescue:+3.3V #PWR010
U 1 1 58B5D4CD
P 2200 5050
F 0 "#PWR010" H 2200 4900 50  0001 C CNN
F 1 "+3.3V" H 2200 5190 50  0000 C CNN
F 2 "" H 2200 5050 50  0000 C CNN
F 3 "" H 2200 5050 50  0000 C CNN
	1    2200 5050
	1    0    0    -1  
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:+3.3V #PWR011
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
L NeuroBytes_Touch_Sensor-rescue:+3.3V #PWR012
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
	14000 6000 14350 6000
Wire Wire Line
	14600 6000 14600 5800
Wire Wire Line
	12400 6000 12400 5800
Wire Wire Line
	2200 5700 1900 5700
Wire Wire Line
	1900 5700 1900 5600
Connection ~ 2200 5700
Wire Wire Line
	1900 5300 1900 5200
Wire Wire Line
	1900 5200 2200 5200
Connection ~ 2200 5200
$Comp
L NeuroBytes_Touch_Sensor-rescue:GND #PWR013
U 1 1 58B5E0E3
P 9500 7100
F 0 "#PWR013" H 9500 6850 50  0001 C CNN
F 1 "GND" H 9500 6950 50  0000 C CNN
F 2 "" H 9500 7100 50  0000 C CNN
F 3 "" H 9500 7100 50  0000 C CNN
	1    9500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 7100 9500 6050
Wire Wire Line
	9500 6050 9750 6050
$Comp
L NeuroBytes_Touch_Sensor-rescue:+5V #PWR014
U 1 1 58B5E2AE
P 9300 5550
F 0 "#PWR014" H 9300 5400 50  0001 C CNN
F 1 "+5V" H 9300 5690 50  0000 C CNN
F 2 "" H 9300 5550 50  0000 C CNN
F 3 "" H 9300 5550 50  0000 C CNN
	1    9300 5550
	1    0    0    -1  
$EndComp
Text GLabel 8700 6150 0    60   Input ~ 0
RESET
Wire Wire Line
	8700 6150 9750 6150
Text GLabel 8700 6550 0    60   Input ~ 0
SWCLK
Text GLabel 8700 6350 0    60   Input ~ 0
SWDIO
Wire Wire Line
	8700 6550 8900 6550
Wire Wire Line
	8900 6550 8900 6350
Wire Wire Line
	8900 6350 9750 6350
Wire Wire Line
	8700 6350 8800 6350
Wire Wire Line
	8800 6350 8800 6250
Wire Wire Line
	8800 6250 9750 6250
$Comp
L NeuroBytes_Touch_Sensor-rescue:SW_PUSH SW1
U 1 1 58B5A249
P 5550 5100
F 0 "SW1" H 5700 5210 50  0000 C CNN
F 1 "SW_PUSH" H 5550 5020 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SW_Momentary_SideMtg" H 5850 4950 50  0000 C CNN
F 3 "" H 5550 5100 50  0000 C CNN
F 4 "E-Switch" H 5550 5100 60  0001 C CNN "Mfr"
F 5 "TL3330AF130QG" H 5550 5100 60  0001 C CNN "Mfr Part #"
F 6 "SMT" H 5550 5100 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/e-switch/TL3330AF130QG/EG4388TR-ND/1426835" H 5550 5100 60  0001 C CNN "Link"
F 8 "No" H 5550 5100 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 5550 5100 60  0001 C CNN "RoHS"
	1    5550 5100
	1    0    0    -1  
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:R R1
U 1 1 58B5C233
P 10350 2350
F 0 "R1" V 10430 2350 50  0000 C CNN
F 1 "150" V 10350 2350 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 10550 1750 50  0001 C CNN
F 3 "" H 10350 2350 50  0000 C CNN
F 4 "Yageo" H 10350 2350 60  0001 C CNN "Mfr"
F 5 "RC0402FR-07150RL" H 10350 2350 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 10350 2350 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-07150RL/311-150LRCT-ND/729490" H 10350 2350 60  0001 C CNN "Link"
F 8 "Yes" H 10350 2350 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 10350 2350 60  0001 C CNN "RoHS"
	1    10350 2350
	0    1    1    0   
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:R R2
U 1 1 58B5C2BE
P 10350 2550
F 0 "R2" V 10430 2550 50  0000 C CNN
F 1 "100" V 10350 2550 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 10550 1950 50  0001 C CNN
F 3 "" H 10350 2550 50  0000 C CNN
F 4 "Yageo" H 10350 2550 60  0001 C CNN "Mfr"
F 5 "RC0402FR-07100RL" H 10350 2550 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 10350 2550 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-07100RL/311-100LRTR-ND/726527" H 10350 2550 60  0001 C CNN "Link"
F 8 "Yes" H 10350 2550 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 10350 2550 60  0001 C CNN "RoHS"
	1    10350 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 1750 8850 2550
Wire Wire Line
	2000 1000 2000 2100
Wire Wire Line
	2000 2100 2800 2100
Wire Wire Line
	5000 5100 5250 5100
Text GLabel 6950 5100 2    60   Input ~ 0
IDENTIFY
Wire Wire Line
	5850 5100 6950 5100
Text GLabel 2600 3450 0    60   Input ~ 0
IDENTIFY
$Comp
L NeuroBytes_Touch_Sensor-rescue:GND #PWR015
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
L NeuroBytes_Touch_Sensor-rescue:C C5
U 1 1 58B73F8A
P 1800 2300
F 0 "C5" H 1825 2400 50  0000 L CNN
F 1 "0u1" H 1825 2200 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402_cap" H 1838 2150 50  0001 C CNN
F 3 "" H 1800 2300 50  0000 C CNN
F 4 "Taiyo Yuden" H 1800 2300 60  0001 C CNN "Mfr"
F 5 "LMK105BJ104KV-F" H 1800 2300 60  0001 C CNN "Mfr Part #"
F 6 "C0402" H 1800 2300 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/taiyo-yuden/LMK105BJ104KV-F/587-1227-2-ND/930579" H 1800 2300 60  0001 C CNN "Link"
F 8 "Yes" H 1800 2300 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 1800 2300 60  0001 C CNN "RoHS"
	1    1800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2650 1800 2450
Wire Wire Line
	1800 2150 1800 1950
$Comp
L NeuroBytes_Touch_Sensor-rescue:SW_PUSH SW2
U 1 1 58D1A180
P 5550 5850
F 0 "SW2" H 5700 5960 50  0000 C CNN
F 1 "SW_SNAP_ACTION" H 5550 5770 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SW_Momentary_Snap-Action_side-mtg" H 6150 5700 50  0000 C CNN
F 3 "" H 5550 5850 50  0000 C CNN
F 4 "C&K" H 5550 5850 60  0001 C CNN "Mfr"
F 5 "ZMA00A080S06PC" H 5550 5850 60  0001 C CNN "Mfr Part #"
F 6 "THT (SMT side mtg)" H 5550 5850 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/c-k/ZMA00A080S06PC/CKN10156-ND/2044492" H 5550 5850 60  0001 C CNN "Link"
F 8 "No" H 5550 5850 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 5550 5850 60  0001 C CNN "RoHS"
	1    5550 5850
	1    0    0    -1  
$EndComp
Text GLabel 6950 5850 2    60   Input ~ 0
INPUT
Wire Wire Line
	5000 5850 5250 5850
Wire Wire Line
	5850 5850 6950 5850
Text GLabel 5400 3450 2    60   Input ~ 0
INPUT
$Comp
L NeuroBytes_Touch_Sensor-rescue:R R4
U 1 1 58D1B582
P 2450 1500
F 0 "R4" V 2530 1500 50  0000 C CNN
F 1 "JMP" V 2450 1500 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 2380 1500 50  0001 C CNN
F 3 "" H 2450 1500 50  0000 C CNN
F 4 "Yageo" H 2450 1500 60  0001 C CNN "Mfr"
F 5 "RC0402JR-070RL" H 2450 1500 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 2450 1500 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402JR-070RL/311-0.0JRTR-ND/726406" H 2450 1500 60  0001 C CNN "Link"
F 8 "Yes" H 2450 1500 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 2450 1500 60  0001 C CNN "RoHS"
	1    2450 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1500 2600 1500
$Comp
L NeuroBytes_Touch_Sensor-rescue:GND #PWR016
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
	5000 5100 5000 5850
$Comp
L NeuroBytes_Touch_Sensor-rescue:GND #PWR017
U 1 1 58DA7837
P 5000 6350
F 0 "#PWR017" H 5000 6100 50  0001 C CNN
F 1 "GND" H 5000 6200 50  0000 C CNN
F 2 "" H 5000 6350 50  0000 C CNN
F 3 "" H 5000 6350 50  0000 C CNN
	1    5000 6350
	1    0    0    -1  
$EndComp
Connection ~ 5000 5850
Wire Wire Line
	9950 1750 9450 1750
Wire Wire Line
	9950 1750 9950 2350
Wire Wire Line
	9950 2350 10200 2350
Wire Wire Line
	9450 2550 10200 2550
Wire Wire Line
	14100 1650 14100 1750
Text GLabel 13600 2400 0    60   Input ~ 0
A2EX
Text GLabel 13600 2200 0    60   Input ~ 0
A2IN
Wire Wire Line
	13600 2400 14700 2400
Wire Wire Line
	13600 2200 14100 2200
Wire Wire Line
	14100 2200 14100 2300
Wire Wire Line
	14100 2300 14700 2300
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
L NeuroBytes_Touch_Sensor-rescue:MMBT3904 Q1
U 1 1 592F677E
P 9250 1650
F 0 "Q1" H 9450 1725 50  0000 L CNN
F 1 "MMBT3904" V 9250 1850 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SOT23-3L" V 9450 1900 50  0001 L CIN
F 3 "" H 9250 1650 50  0000 L CNN
F 4 "Micro Commercial Co" H 9250 1650 60  0001 C CNN "Mfr"
F 5 "MMBT3904-TP" H 9250 1650 60  0001 C CNN "Mfr Part #"
F 6 "SOT23-3L" H 9250 1650 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/micro-commercial-co/MMBT3904-TP/MMBT3904TPMSTR-ND/717280" H 9250 1650 60  0001 C CNN "Link"
F 8 "Yes" H 9250 1650 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 9250 1650 60  0001 C CNN "RoHS"
	1    9250 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 1750 8850 1750
$Comp
L NeuroBytes_Touch_Sensor-rescue:R R5
U 1 1 592F68FF
P 8550 1300
F 0 "R5" V 8630 1300 50  0000 C CNN
F 1 "1k" V 8550 1300 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 8480 1300 50  0001 C CNN
F 3 "" H 8550 1300 50  0000 C CNN
F 4 "Yageo" H 8550 1300 60  0001 C CNN "Mfr"
F 5 "RC0402FR-071KL" H 8550 1300 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 8550 1300 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-071KL/311-1.00KLRTR-ND/726513" H 8550 1300 60  0001 C CNN "Link"
F 8 "Yes" H 8550 1300 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 8550 1300 60  0001 C CNN "RoHS"
	1    8550 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 1300 9250 1300
Wire Wire Line
	9250 1300 9250 1450
Wire Wire Line
	8000 1300 8400 1300
Wire Wire Line
	8700 2100 9250 2100
Wire Wire Line
	9250 2100 9250 2250
Wire Wire Line
	9050 2550 8850 2550
Connection ~ 8850 2550
Wire Wire Line
	8000 2100 8400 2100
Wire Wire Line
	8400 2900 8000 2900
Wire Wire Line
	9250 3050 9250 2900
Wire Wire Line
	9250 2900 8700 2900
Wire Wire Line
	9050 3350 8850 3350
Connection ~ 8850 3350
Wire Wire Line
	9450 3350 9950 3350
Wire Wire Line
	9950 3350 9950 2750
Wire Wire Line
	9950 2750 10200 2750
$Comp
L NeuroBytes_Touch_Sensor-rescue:C C2
U 1 1 592F7BC3
P 1900 5450
F 0 "C2" H 1925 5550 50  0000 L CNN
F 1 "10u" H 1925 5350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1938 5300 50  0001 C CNN
F 3 "" H 1900 5450 50  0000 C CNN
F 4 "Taiyo Yuden" H 1900 5450 60  0001 C CNN "Mfr"
F 5 "EMK316B7106KL-TD " H 1900 5450 60  0001 C CNN "Mfr Part #"
F 6 "C1206" H 1900 5450 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/taiyo-yuden/EMK316B7106KL-TD/587-2395-2-ND/2178914" H 1900 5450 60  0001 C CNN "Link"
F 8 "Yes" H 1900 5450 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 1900 5450 60  0001 C CNN "RoHS"
	1    1900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 6450 9300 6450
Wire Wire Line
	9300 6450 9300 5550
$Comp
L NeuroBytes_Touch_Sensor-rescue:CONN_01X05 P1
U 1 1 598DF7EC
P 9950 6250
F 0 "P1" H 9950 6550 50  0000 C CNN
F 1 "JST_GH_5-pos" V 10050 6250 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH_5POS" H 9950 6650 50  0000 C CNN
F 3 "" H 9950 6250 50  0000 C CNN
F 4 "JST" H 9950 6250 60  0001 C CNN "Mfr"
F 5 "SM05B-GHS-TB(LF)(SN)" H 9950 6250 60  0001 C CNN "Mfr Part #"
F 6 "SMT" H 9950 6250 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/SM05B-GHS-TB-LF-SN/455-1567-2-ND/807789" H 9950 6250 60  0001 C CNN "Link"
F 8 "No" H 9950 6250 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 9950 6250 60  0001 C CNN "RoHS"
	1    9950 6250
	1    0    0    -1  
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:R R6
U 1 1 59C58AB7
P 8550 2100
F 0 "R6" V 8630 2100 50  0000 C CNN
F 1 "1k" V 8550 2100 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 8480 2100 50  0001 C CNN
F 3 "" H 8550 2100 50  0000 C CNN
F 4 "Yageo" H 8550 2100 60  0001 C CNN "Mfr"
F 5 "RC0402FR-071KL" H 8550 2100 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 8550 2100 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-071KL/311-1.00KLRTR-ND/726513" H 8550 2100 60  0001 C CNN "Link"
F 8 "Yes" H 8550 2100 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 8550 2100 60  0001 C CNN "RoHS"
	1    8550 2100
	0    1    1    0   
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:R R7
U 1 1 59C58B51
P 8550 2900
F 0 "R7" V 8630 2900 50  0000 C CNN
F 1 "1k" V 8550 2900 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 8480 2900 50  0001 C CNN
F 3 "" H 8550 2900 50  0000 C CNN
F 4 "Yageo" H 8550 2900 60  0001 C CNN "Mfr"
F 5 "RC0402FR-071KL" H 8550 2900 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 8550 2900 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-071KL/311-1.00KLRTR-ND/726513" H 8550 2900 60  0001 C CNN "Link"
F 8 "Yes" H 8550 2900 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 8550 2900 60  0001 C CNN "RoHS"
	1    8550 2900
	0    1    1    0   
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:MMBT3904 Q2
U 1 1 59C5960F
P 9250 2450
F 0 "Q2" H 9450 2525 50  0000 L CNN
F 1 "MMBT3904" V 9250 2650 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SOT23-3L" V 9450 2700 50  0001 L CIN
F 3 "" H 9250 2450 50  0000 L CNN
F 4 "Micro Commercial Co" H 9250 2450 60  0001 C CNN "Mfr"
F 5 "MMBT3904-TP" H 9250 2450 60  0001 C CNN "Mfr Part #"
F 6 "SOT23-3L" H 9250 2450 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/micro-commercial-co/MMBT3904-TP/MMBT3904TPMSTR-ND/717280" H 9250 2450 60  0001 C CNN "Link"
F 8 "Yes" H 9250 2450 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 9250 2450 60  0001 C CNN "RoHS"
	1    9250 2450
	0    1    1    0   
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:MMBT3904 Q3
U 1 1 59C59697
P 9250 3250
F 0 "Q3" H 9450 3325 50  0000 L CNN
F 1 "MMBT3904" V 9250 3450 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SOT23-3L" V 9450 3500 50  0001 L CIN
F 3 "" H 9250 3250 50  0000 L CNN
F 4 "Micro Commercial Co" H 9250 3250 60  0001 C CNN "Mfr"
F 5 "MMBT3904-TP" H 9250 3250 60  0001 C CNN "Mfr Part #"
F 6 "SOT23-3L" H 9250 3250 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/micro-commercial-co/MMBT3904-TP/MMBT3904TPMSTR-ND/717280" H 9250 3250 60  0001 C CNN "Link"
F 8 "Yes" H 9250 3250 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 9250 3250 60  0001 C CNN "RoHS"
	1    9250 3250
	0    1    1    0   
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:R R3
U 1 1 59C5990C
P 10350 2750
F 0 "R3" V 10430 2750 50  0000 C CNN
F 1 "100" V 10350 2750 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 10550 2150 50  0001 C CNN
F 3 "" H 10350 2750 50  0000 C CNN
F 4 "Yageo" H 10350 2750 60  0001 C CNN "Mfr"
F 5 "RC0402FR-07100RL" H 10350 2750 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 10350 2750 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-07100RL/311-100LRTR-ND/726527" H 10350 2750 60  0001 C CNN "Link"
F 8 "Yes" H 10350 2750 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 10350 2750 60  0001 C CNN "RoHS"
	1    10350 2750
	0    1    1    0   
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:CONN_01X04 P7
U 1 1 59C59EBF
P 14900 2250
F 0 "P7" H 14900 2500 50  0000 C CNN
F 1 "CONN_01X04" V 15000 2250 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 14900 2600 50  0000 C CNN
F 3 "" H 14900 2250 50  0000 C CNN
F 4 "JST" H 14900 2250 60  0001 C CNN "Mfr"
F 5 "SM04B-GHS-TB(LF)(SN)" H 14900 2250 60  0001 C CNN "Mfr Part #"
F 6 "JST_GH_4-POS" H 14900 2250 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/SM04B-GHS-TB-LF-SN/455-1566-2-ND/807788" H 14900 2250 60  0001 C CNN "Link"
F 8 "No" H 14900 2250 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 14900 2250 60  0001 C CNN "RoHS"
	1    14900 2250
	1    0    0    -1  
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:C C3
U 1 1 59C5A256
P 2200 5450
F 0 "C3" H 2225 5550 50  0000 L CNN
F 1 "0u1" H 2225 5350 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402_cap" H 2238 5300 50  0001 C CNN
F 3 "" H 2200 5450 50  0000 C CNN
F 4 "Taiyo Yuden" H 2200 5450 60  0001 C CNN "Mfr"
F 5 "LMK105BJ104KV-F" H 2200 5450 60  0001 C CNN "Mfr Part #"
F 6 "C0402" H 2200 5450 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/taiyo-yuden/LMK105BJ104KV-F/587-1227-2-ND/930579" H 2200 5450 60  0001 C CNN "Link"
F 8 "Yes" H 2200 5450 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 2200 5450 60  0001 C CNN "RoHS"
	1    2200 5450
	1    0    0    -1  
$EndComp
$Comp
L NeuroBytes_Touch_Sensor-rescue:C C4
U 1 1 59C5A4A7
P 14350 6250
F 0 "C4" H 14375 6350 50  0000 L CNN
F 1 "1u" H 14375 6150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 14388 6100 50  0001 C CNN
F 3 "" H 14350 6250 50  0000 C CNN
F 4 "Taiyo Yuden" H 14350 6250 60  0001 C CNN "Mfr"
F 5 "LMK107B7105KA-T" H 14350 6250 60  0001 C CNN "Mfr Part #"
F 6 "C0603" H 14350 6250 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/taiyo-yuden/LMK107B7105KA-T/587-1242-2-ND/930594" H 14350 6250 60  0001 C CNN "Link"
F 8 "Yes" H 14350 6250 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 14350 6250 60  0001 C CNN "RoHS"
	1    14350 6250
	1    0    0    -1  
$EndComp
Text Notes 3550 1200 0    60   ~ 0
MICROCONTROLLER
Text Notes 1850 6300 0    60   ~ 0
BYPASS CAPS
Text Notes 14250 3150 0    60   ~ 0
AXON TERMINAL
Text Notes 13300 7450 0    60   ~ 0
POWER SUPPLY
Text Notes 8800 7500 0    60   ~ 0
POWER/PROGRAMMING CONNECTOR
Text Notes 4850 6750 0    60   ~ 0
IDENTIFICATION SWITCH AND MECHANORECEPTOR
Text Notes 9600 3800 0    60   ~ 0
LED
Wire Wire Line
	12900 6000 13100 6000
Wire Wire Line
	12700 6000 12900 6000
Wire Wire Line
	14300 1650 14300 2200
Wire Wire Line
	14500 2100 14500 2700
Wire Wire Line
	13550 6600 13550 7050
Wire Wire Line
	13550 6500 13550 6600
Wire Wire Line
	14350 6000 14600 6000
Wire Wire Line
	2200 5700 2200 5850
Wire Wire Line
	2200 5200 2200 5300
Wire Wire Line
	1800 1950 2800 1950
Wire Wire Line
	5000 5850 5000 6350
Wire Wire Line
	8850 2550 8850 3350
Wire Wire Line
	8850 3350 8850 3750
$EndSCHEMATC
