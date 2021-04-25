EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR02
U 1 1 6057718C
P 3100 2200
F 0 "#PWR02" H 3100 1950 50  0001 C CNN
F 1 "GND" H 3105 2027 50  0000 C CNN
F 2 "" H 3100 2200 50  0001 C CNN
F 3 "" H 3100 2200 50  0001 C CNN
	1    3100 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60578CD4
P 3100 1050
F 0 "#PWR01" H 3100 900 50  0001 C CNN
F 1 "+5V" H 3115 1223 50  0000 C CNN
F 2 "" H 3100 1050 50  0001 C CNN
F 3 "" H 3100 1050 50  0001 C CNN
	1    3100 1050
	1    0    0    -1  
$EndComp
NoConn ~ 3650 1800
$Comp
L power:+5V #PWR012
U 1 1 6056BFB7
P 7850 1600
F 0 "#PWR012" H 7850 1450 50  0001 C CNN
F 1 "+5V" H 7865 1773 50  0000 C CNN
F 2 "" H 7850 1600 50  0001 C CNN
F 3 "" H 7850 1600 50  0001 C CNN
	1    7850 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6056BAA0
P 7650 3700
F 0 "#PWR011" H 7650 3450 50  0001 C CNN
F 1 "GND" H 7655 3527 50  0000 C CNN
F 2 "" H 7650 3700 50  0001 C CNN
F 3 "" H 7650 3700 50  0001 C CNN
	1    7650 3700
	1    0    0    -1  
$EndComp
NoConn ~ 8150 2400
NoConn ~ 8150 2200
NoConn ~ 7750 1600
NoConn ~ 7550 1600
NoConn ~ 7150 2100
NoConn ~ 7150 2000
Connection ~ 7650 3700
Wire Wire Line
	7650 3700 7750 3700
Wire Wire Line
	7550 3700 7650 3700
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 6056665F
P 7650 2600
F 0 "A1" H 7650 2800 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 7400 3700 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 7650 2600 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 7650 2600 50  0001 C CNN
	1    7650 2600
	1    0    0    -1  
$EndComp
NoConn ~ 3650 4000
$Comp
L power:+5V #PWR03
U 1 1 60578EE5
P 3100 3250
F 0 "#PWR03" H 3100 3100 50  0001 C CNN
F 1 "+5V" H 3115 3423 50  0000 C CNN
F 2 "" H 3100 3250 50  0001 C CNN
F 3 "" H 3100 3250 50  0001 C CNN
	1    3100 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60576F19
P 3100 4400
F 0 "#PWR04" H 3100 4150 50  0001 C CNN
F 1 "GND" H 3105 4227 50  0000 C CNN
F 2 "" H 3100 4400 50  0001 C CNN
F 3 "" H 3100 4400 50  0001 C CNN
	1    3100 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 605917E0
P 5100 3950
F 0 "#PWR08" H 5100 3700 50  0001 C CNN
F 1 "GND" H 5105 3777 50  0000 C CNN
F 2 "" H 5100 3950 50  0001 C CNN
F 3 "" H 5100 3950 50  0001 C CNN
	1    5100 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 60592A7D
P 5100 1750
F 0 "#PWR07" H 5100 1600 50  0001 C CNN
F 1 "+5V" H 5115 1923 50  0000 C CNN
F 2 "" H 5100 1750 50  0001 C CNN
F 3 "" H 5100 1750 50  0001 C CNN
	1    5100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1250 2600 1250
Wire Wire Line
	2750 1350 2600 1350
Wire Wire Line
	2750 1450 2600 1450
Wire Wire Line
	2750 1550 2600 1550
Wire Wire Line
	2750 1650 2600 1650
Wire Wire Line
	2750 1750 2600 1750
Wire Wire Line
	2750 1850 2600 1850
Wire Wire Line
	2750 1950 2600 1950
Entry Wire Line
	2500 1350 2600 1250
Entry Wire Line
	2500 1450 2600 1350
Entry Wire Line
	2500 1550 2600 1450
Entry Wire Line
	2500 1650 2600 1550
Entry Wire Line
	2500 1750 2600 1650
Entry Wire Line
	2500 1850 2600 1750
Entry Wire Line
	2500 1950 2600 1850
Entry Wire Line
	2500 2050 2600 1950
Text Label 2600 1250 0    50   ~ 0
A0
Text Label 2600 1550 0    50   ~ 0
A3
Text Label 2600 1650 0    50   ~ 0
A4
Text Label 2600 1750 0    50   ~ 0
A5
Text Label 2600 1850 0    50   ~ 0
A6
Text Label 2600 1950 0    50   ~ 0
A7
Wire Wire Line
	2750 3450 2600 3450
Wire Wire Line
	2750 3550 2600 3550
Wire Wire Line
	2750 3650 2600 3650
Wire Wire Line
	2750 3750 2600 3750
Wire Wire Line
	2750 3850 2600 3850
Wire Wire Line
	2750 3950 2600 3950
Wire Wire Line
	2750 4050 2600 4050
Entry Wire Line
	2500 3550 2600 3450
Entry Wire Line
	2500 3650 2600 3550
Entry Wire Line
	2500 3750 2600 3650
Entry Wire Line
	2500 3850 2600 3750
Entry Wire Line
	2500 3950 2600 3850
Entry Wire Line
	2500 4050 2600 3950
Entry Wire Line
	2500 4150 2600 4050
Text Label 2600 3450 0    50   ~ 0
A8
Text Label 2600 3550 0    50   ~ 0
A9
Text Label 2600 3650 0    50   ~ 0
A10
Text Label 2600 3750 0    50   ~ 0
A11
Text Label 2600 3850 0    50   ~ 0
A12
Text Label 2600 3950 0    50   ~ 0
A13
Text Label 2600 4050 0    50   ~ 0
A14
Wire Wire Line
	4700 1950 4550 1950
Wire Wire Line
	4700 2050 4550 2050
Wire Wire Line
	4700 2150 4550 2150
Wire Wire Line
	4700 2250 4550 2250
Wire Wire Line
	4700 2350 4550 2350
Wire Wire Line
	4700 2450 4550 2450
Wire Wire Line
	4700 2550 4550 2550
Wire Wire Line
	4700 2650 4550 2650
Entry Wire Line
	4450 2050 4550 1950
Entry Wire Line
	4450 2150 4550 2050
Entry Wire Line
	4450 2250 4550 2150
Entry Wire Line
	4450 2350 4550 2250
Entry Wire Line
	4450 2450 4550 2350
Entry Wire Line
	4450 2550 4550 2450
Entry Wire Line
	4450 2650 4550 2550
Entry Wire Line
	4450 2750 4550 2650
Text Label 4550 1950 0    50   ~ 0
A0
Text Label 4550 2050 0    50   ~ 0
A1
Text Label 4550 2150 0    50   ~ 0
A2
Text Label 4550 2250 0    50   ~ 0
A3
Text Label 4550 2350 0    50   ~ 0
A4
Text Label 4550 2450 0    50   ~ 0
A5
Text Label 4550 2550 0    50   ~ 0
A6
Text Label 4550 2650 0    50   ~ 0
A7
Wire Wire Line
	4700 2750 4550 2750
Wire Wire Line
	4700 2850 4550 2850
Wire Wire Line
	4700 2950 4550 2950
Wire Wire Line
	4700 3050 4550 3050
Wire Wire Line
	4700 3150 4550 3150
Wire Wire Line
	4700 3250 4550 3250
Wire Wire Line
	4700 3350 4550 3350
Entry Wire Line
	4450 2850 4550 2750
Entry Wire Line
	4450 2950 4550 2850
Entry Wire Line
	4450 3050 4550 2950
Entry Wire Line
	4450 3150 4550 3050
Entry Wire Line
	4450 3250 4550 3150
Entry Wire Line
	4450 3350 4550 3250
Entry Wire Line
	4450 3450 4550 3350
Text Label 4550 2750 0    50   ~ 0
A8
Text Label 4550 2850 0    50   ~ 0
A9
Text Label 4550 2950 0    50   ~ 0
A10
Text Label 4550 3050 0    50   ~ 0
A11
Text Label 4550 3150 0    50   ~ 0
A12
Text Label 4550 3250 0    50   ~ 0
A13
Text Label 4550 3350 0    50   ~ 0
A14
Text Label 2600 1450 0    50   ~ 0
A2
Text Label 2600 1350 0    50   ~ 0
A1
Wire Bus Line
	2500 2850 4450 2850
Wire Wire Line
	3650 1700 3850 1700
Wire Wire Line
	3850 1700 3850 3450
Wire Wire Line
	3850 3450 3650 3450
Connection ~ 2500 2850
Wire Wire Line
	3650 1450 4150 1450
Wire Wire Line
	3650 1550 3900 1550
Wire Wire Line
	3900 1550 3900 1350
Wire Wire Line
	3650 1350 3900 1350
Connection ~ 3900 1350
Wire Wire Line
	3900 1350 3900 1100
$Comp
L power:+5V #PWR05
U 1 1 605DA105
P 3900 1100
F 0 "#PWR05" H 3900 950 50  0001 C CNN
F 1 "+5V" H 3915 1273 50  0000 C CNN
F 2 "" H 3900 1100 50  0001 C CNN
F 3 "" H 3900 1100 50  0001 C CNN
	1    3900 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 605DE3AD
P 4000 3300
F 0 "#PWR06" H 4000 3150 50  0001 C CNN
F 1 "+5V" H 4015 3473 50  0000 C CNN
F 2 "" H 4000 3300 50  0001 C CNN
F 3 "" H 4000 3300 50  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3750 4000 3750
Wire Wire Line
	4000 3750 4000 3550
Wire Wire Line
	3650 3550 4000 3550
Connection ~ 4000 3550
Wire Wire Line
	4000 3550 4000 3300
Wire Wire Line
	3650 3650 4150 3650
Wire Wire Line
	4150 3650 4150 1450
Connection ~ 4150 1450
NoConn ~ 3650 3900
Wire Wire Line
	5500 1950 5700 1950
Entry Wire Line
	5700 1950 5800 2050
Text Label 5550 1950 0    50   ~ 0
D0
Wire Wire Line
	5500 2050 5700 2050
Entry Wire Line
	5700 2050 5800 2150
Text Label 5550 2050 0    50   ~ 0
D1
Wire Wire Line
	5500 2150 5700 2150
Entry Wire Line
	5700 2150 5800 2250
Text Label 5550 2150 0    50   ~ 0
D2
Wire Wire Line
	5500 2250 5700 2250
Entry Wire Line
	5700 2250 5800 2350
Text Label 5550 2250 0    50   ~ 0
D3
Wire Wire Line
	5500 2350 5700 2350
Entry Wire Line
	5700 2350 5800 2450
Text Label 5550 2350 0    50   ~ 0
D4
Wire Wire Line
	5500 2450 5700 2450
Entry Wire Line
	5700 2450 5800 2550
Text Label 5550 2450 0    50   ~ 0
D5
Wire Wire Line
	5500 2550 5700 2550
Entry Wire Line
	5700 2550 5800 2650
Text Label 5550 2550 0    50   ~ 0
D6
Wire Wire Line
	5500 2650 5700 2650
Entry Wire Line
	5700 2650 5800 2750
Text Label 5550 2650 0    50   ~ 0
D7
Wire Wire Line
	6600 3300 7150 3300
Wire Wire Line
	6750 1250 6750 3100
Wire Wire Line
	6750 3100 7150 3100
Wire Wire Line
	3650 1250 6750 1250
Wire Wire Line
	6600 1450 6600 3300
Wire Wire Line
	4150 1450 6600 1450
Wire Wire Line
	6950 2200 7150 2200
Text Label 8200 2600 0    50   ~ 0
D0
Wire Wire Line
	6950 2300 7150 2300
Text Label 8200 2700 0    50   ~ 0
D1
Text Label 8200 2800 0    50   ~ 0
D2
Text Label 8200 2900 0    50   ~ 0
D3
Text Label 8300 3000 2    50   ~ 0
D4
Text Label 8300 3100 2    50   ~ 0
D5
Text Label 7100 2200 2    50   ~ 0
D6
Text Label 7100 2300 2    50   ~ 0
D7
Entry Wire Line
	6850 2300 6950 2200
Entry Wire Line
	6850 2400 6950 2300
NoConn ~ 7150 3000
NoConn ~ 7150 3200
NoConn ~ 8150 3400
NoConn ~ 8150 3300
$Comp
L Device:C C1
U 1 1 6068478C
P 5700 3450
F 0 "C1" H 5815 3496 50  0000 L CNN
F 1 "0.1uF" H 5815 3405 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W3.0mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 5738 3300 50  0001 C CNN
F 3 "~" H 5700 3450 50  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 606863E3
P 5700 3600
F 0 "#PWR010" H 5700 3350 50  0001 C CNN
F 1 "GND" H 5705 3427 50  0000 C CNN
F 2 "" H 5700 3600 50  0001 C CNN
F 3 "" H 5700 3600 50  0001 C CNN
	1    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 6068B3F0
P 5700 3300
F 0 "#PWR09" H 5700 3150 50  0001 C CNN
F 1 "+5V" H 5715 3473 50  0000 C CNN
F 2 "" H 5700 3300 50  0001 C CNN
F 3 "" H 5700 3300 50  0001 C CNN
	1    5700 3300
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U3
U 1 1 6056804A
P 5100 2850
F 0 "U3" H 5100 2900 50  0000 C CNN
F 1 "28C256" H 5300 3900 50  0000 C CNN
F 2 "Socket:DIP_Socket-28_W11.9_W12.7_W15.24_W17.78_W18.5_3M_228-1277-00-0602J" H 5100 2850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3650 4500 3650
Wire Wire Line
	4500 3650 4500 4250
Wire Wire Line
	4500 4250 7050 4250
Wire Wire Line
	7050 4250 7050 2900
Wire Wire Line
	7050 2900 7150 2900
Wire Wire Line
	4700 3550 4400 3550
Wire Wire Line
	4400 3550 4400 4350
Wire Wire Line
	4400 4350 6950 4350
Wire Wire Line
	6950 4350 6950 2800
Wire Wire Line
	6950 2800 7150 2800
Wire Wire Line
	4700 3750 4700 3950
Wire Wire Line
	4700 3950 5100 3950
Connection ~ 5100 3950
Wire Wire Line
	8150 2600 8350 2600
Wire Wire Line
	8150 2700 8350 2700
Wire Wire Line
	8150 2800 8350 2800
Wire Wire Line
	8150 2900 8350 2900
Wire Wire Line
	8150 3000 8350 3000
Wire Wire Line
	8150 3100 8350 3100
Entry Wire Line
	8350 2600 8450 2700
Entry Wire Line
	8350 2700 8450 2800
Entry Wire Line
	8350 2800 8450 2900
Entry Wire Line
	8350 2900 8450 3000
Entry Wire Line
	8350 3000 8450 3100
Entry Wire Line
	8350 3100 8450 3200
Wire Bus Line
	6850 3000 6350 3000
Wire Bus Line
	8450 4000 6350 4000
Wire Bus Line
	6350 4000 6350 3000
Connection ~ 6350 3000
Wire Bus Line
	6350 3000 5800 3000
NoConn ~ 7150 2400
NoConn ~ 7150 2500
NoConn ~ 7150 2600
$Comp
L Device:R R1
U 1 1 606993E7
P 9550 2150
F 0 "R1" H 9620 2196 50  0000 L CNN
F 1 "R" H 9620 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9480 2150 50  0001 C CNN
F 3 "~" H 9550 2150 50  0001 C CNN
	1    9550 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 60699EB8
P 9550 2450
F 0 "D1" V 9589 2332 50  0000 R CNN
F 1 "LED" V 9498 2332 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 9550 2450 50  0001 C CNN
F 3 "~" H 9550 2450 50  0001 C CNN
	1    9550 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6069A635
P 9550 2600
F 0 "#PWR013" H 9550 2350 50  0001 C CNN
F 1 "GND" H 9555 2427 50  0000 C CNN
F 2 "" H 9550 2600 50  0001 C CNN
F 3 "" H 9550 2600 50  0001 C CNN
	1    9550 2600
	1    0    0    -1  
$EndComp
Text GLabel 9550 1900 0    50   Input ~ 0
STATUS
Text GLabel 7000 2700 1    50   Input ~ 0
STATUS
Wire Wire Line
	9550 2000 9550 1900
Connection ~ 4450 2850
NoConn ~ 2750 4150
Wire Wire Line
	7150 2700 7000 2700
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 607240F2
P 8900 2350
F 0 "SW1" V 8854 2480 50  0000 L CNN
F 1 "Reset" V 8945 2480 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8900 2350 50  0001 C CNN
F 3 "~" H 8900 2350 50  0001 C CNN
	1    8900 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 2000 8900 2000
Wire Wire Line
	8900 2000 8900 2050
$Comp
L power:GND #PWR014
U 1 1 6072883B
P 8900 2650
F 0 "#PWR014" H 8900 2400 50  0001 C CNN
F 1 "GND" H 8905 2477 50  0000 C CNN
F 2 "" H 8900 2650 50  0001 C CNN
F 3 "" H 8900 2650 50  0001 C CNN
	1    8900 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6074421B
P 8800 3600
F 0 "#PWR0101" H 8800 3350 50  0001 C CNN
F 1 "GND" H 8805 3427 50  0000 C CNN
F 2 "" H 8800 3600 50  0001 C CNN
F 3 "" H 8800 3600 50  0001 C CNN
	1    8800 3600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60745093
P 8800 3600
F 0 "#FLG0101" H 8800 3675 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 3773 50  0000 C CNN
F 2 "" H 8800 3600 50  0001 C CNN
F 3 "~" H 8800 3600 50  0001 C CNN
	1    8800 3600
	1    0    0    -1  
$EndComp
$Comp
L 4xxx-custom:4094 U1
U 1 1 607511B9
P 3200 1750
F 0 "U1" H 3200 1900 50  0000 C CNN
F 1 "4094" H 3400 2400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 3150 1900 50  0001 C CNN
F 3 "" H 3150 1900 50  0001 C CNN
	1    3200 1750
	1    0    0    -1  
$EndComp
$Comp
L 4xxx-custom:4094 U2
U 1 1 6075EC0E
P 3200 3950
F 0 "U2" H 3200 4100 50  0000 C CNN
F 1 "4094" H 3400 4600 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 3150 4100 50  0001 C CNN
F 3 "" H 3150 4100 50  0001 C CNN
	1    3200 3950
	1    0    0    -1  
$EndComp
Wire Bus Line
	6850 2300 6850 3000
Wire Bus Line
	2500 2850 2500 4150
Wire Bus Line
	4450 2850 4450 3450
Wire Bus Line
	8450 2700 8450 4000
Wire Bus Line
	2500 1350 2500 2850
Wire Bus Line
	5800 2050 5800 3000
Wire Bus Line
	4450 2050 4450 2850
$EndSCHEMATC