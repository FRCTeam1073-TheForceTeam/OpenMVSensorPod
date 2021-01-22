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
L Interface_CAN_LIN:SN65HVD230 U2
U 1 1 5FEBAA54
P 3400 4800
F 0 "U2" H 3150 5100 50  0000 C CNN
F 1 "SN65HVD230" H 3750 5050 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3400 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 3300 5200 50  0001 C CNN
	1    3400 4800
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5FEBC68E
P 6700 1750
F 0 "J2" H 6618 2267 50  0000 C CNN
F 1 "OpenMV_R" H 6618 2176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6700 1750 50  0001 C CNN
F 3 "~" H 6700 1750 50  0001 C CNN
	1    6700 1750
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5FEBFE14
P 2000 4800
F 0 "J4" H 1918 5017 50  0000 C CNN
F 1 "CAN" H 1918 4926 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.75sqmm_1x02_P4.8mm_D1.25mm_OD2.3mm" H 2000 4800 50  0001 C CNN
F 3 "~" H 2000 4800 50  0001 C CNN
	1    2000 4800
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5FEC09F4
P 1950 2950
F 0 "J5" H 1868 3267 50  0000 C CNN
F 1 "TF_MINI" H 1868 3176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1950 2950 50  0001 C CNN
F 3 "~" H 1950 2950 50  0001 C CNN
	1    1950 2950
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5FEC176F
P 1950 1550
F 0 "J6" H 1868 1867 50  0000 C CNN
F 1 "PIXIE_LED" H 1868 1776 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.75sqmm_1x04_P4.8mm_D1.25mm_OD2.3mm" H 1950 1550 50  0001 C CNN
F 3 "~" H 1950 1550 50  0001 C CNN
	1    1950 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4350 1450 2150 1450
Wire Wire Line
	4350 1550 2150 1550
Wire Wire Line
	4350 1650 3900 1650
Wire Wire Line
	3900 1650 3900 4700
Wire Wire Line
	3900 4700 3800 4700
Wire Wire Line
	3800 4800 4000 4800
Wire Wire Line
	4000 4800 4000 1750
Wire Wire Line
	4000 1750 4350 1750
Wire Wire Line
	4350 1850 2750 1850
Wire Wire Line
	2750 1850 2700 2950
Wire Wire Line
	4350 1950 2900 1950
Wire Wire Line
	2900 1950 2850 2850
Wire Wire Line
	3400 5200 3400 5400
Wire Wire Line
	3000 4900 2700 4900
Wire Wire Line
	3000 4800 2850 4800
$Comp
L power:GND #PWR0101
U 1 1 5FEF7679
P 6900 5550
F 0 "#PWR0101" H 6900 5300 50  0001 C CNN
F 1 "GND" H 6905 5377 50  0000 C CNN
F 2 "" H 6900 5550 50  0001 C CNN
F 3 "" H 6900 5550 50  0001 C CNN
	1    6900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5400 6900 5550
Connection ~ 6900 5400
$Comp
L power:GND #PWR0102
U 1 1 5FEF8CA3
P 2250 3300
F 0 "#PWR0102" H 2250 3050 50  0001 C CNN
F 1 "GND" H 2255 3127 50  0000 C CNN
F 2 "" H 2250 3300 50  0001 C CNN
F 3 "" H 2250 3300 50  0001 C CNN
	1    2250 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FEF8F0F
P 2200 1950
F 0 "#PWR0103" H 2200 1700 50  0001 C CNN
F 1 "GND" H 2205 1777 50  0000 C CNN
F 2 "" H 2200 1950 50  0001 C CNN
F 3 "" H 2200 1950 50  0001 C CNN
	1    2200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1750 2200 1750
Wire Wire Line
	2200 1750 2200 1950
Wire Wire Line
	2150 3150 2250 3150
Wire Wire Line
	2250 3150 2250 3300
$Comp
L power:+5V #PWR0105
U 1 1 5FEFB607
P 2450 1200
F 0 "#PWR0105" H 2450 1050 50  0001 C CNN
F 1 "+5V" H 2465 1373 50  0000 C CNN
F 2 "" H 2450 1200 50  0001 C CNN
F 3 "" H 2450 1200 50  0001 C CNN
	1    2450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1200 2450 1650
Wire Wire Line
	2450 1650 2150 1650
Wire Wire Line
	2450 1650 2450 3050
Wire Wire Line
	2450 3050 2150 3050
Connection ~ 2450 1650
$Comp
L Connector_Generic:Conn_01x05 J7
U 1 1 5FEF89D7
P 7950 4300
F 0 "J7" H 8030 4342 50  0000 L CNN
F 1 "D24V22F5" H 8030 4251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7950 4300 50  0001 C CNN
F 3 "~" H 7950 4300 50  0001 C CNN
	1    7950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2150 6900 4200
$Comp
L power:+5V #PWR0104
U 1 1 5FEFE462
P 7750 3750
F 0 "#PWR0104" H 7750 3600 50  0001 C CNN
F 1 "+5V" H 7765 3923 50  0000 C CNN
F 2 "" H 7750 3750 50  0001 C CNN
F 3 "" H 7750 3750 50  0001 C CNN
	1    7750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4100 7750 4000
Text Label 7750 3900 0    50   ~ 0
VOUT
Wire Wire Line
	7750 4200 6900 4200
Connection ~ 6900 4200
Wire Wire Line
	6900 4200 6900 5400
Text Label 7200 4200 0    50   ~ 0
GND
Wire Wire Line
	7750 4300 7450 4300
Wire Wire Line
	7450 4300 7450 5300
Wire Wire Line
	7450 5300 7800 5300
Text Label 7450 4800 0    50   ~ 0
VIN
Wire Wire Line
	7800 5400 6900 5400
Wire Wire Line
	6900 2050 7200 2050
Wire Wire Line
	7200 2050 7200 4000
Wire Wire Line
	7200 4000 7750 4000
Connection ~ 7750 4000
Wire Wire Line
	7750 4000 7750 3750
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5FF0E354
P 2000 5300
F 0 "J8" H 1918 5517 50  0000 C CNN
F 1 "CAN2" H 1918 5426 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.75sqmm_1x02_P4.8mm_D1.25mm_OD2.3mm" H 2000 5300 50  0001 C CNN
F 3 "~" H 2000 5300 50  0001 C CNN
	1    2000 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 5300 2400 5300
Wire Wire Line
	2400 5300 2400 4800
Connection ~ 2400 4800
Wire Wire Line
	2400 4800 2200 4800
Wire Wire Line
	2200 5400 2500 5400
Wire Wire Line
	2500 5400 2500 4900
Connection ~ 2500 4900
Wire Wire Line
	2500 4900 2200 4900
NoConn ~ 7750 4400
NoConn ~ 7750 4500
Wire Wire Line
	3400 4500 3400 3800
Wire Wire Line
	3400 2150 4350 2150
NoConn ~ 3800 4900
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5FF427F0
P 2000 5800
F 0 "J9" H 1918 6017 50  0000 C CNN
F 1 "Term" H 1918 5926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2000 5800 50  0001 C CNN
F 3 "~" H 2000 5800 50  0001 C CNN
	1    2000 5800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 5800 2400 5800
Wire Wire Line
	2400 5800 2400 5300
Connection ~ 2400 5300
Wire Wire Line
	2200 5900 2500 5900
Wire Wire Line
	2500 5900 2500 5400
Connection ~ 2500 5400
Wire Wire Line
	2850 2850 2150 2850
Wire Wire Line
	2700 2950 2150 2950
$Comp
L Device:C_Small C1
U 1 1 5FFDBD26
P 3000 3900
F 0 "C1" H 3092 3946 50  0000 L CNN
F 1 "0.1uf" H 3092 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3000 3900 50  0001 C CNN
F 3 "~" H 3000 3900 50  0001 C CNN
	1    3000 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FFDCB16
P 2650 4200
F 0 "#PWR0106" H 2650 3950 50  0001 C CNN
F 1 "GND" H 2655 4027 50  0000 C CNN
F 2 "" H 2650 4200 50  0001 C CNN
F 3 "" H 2650 4200 50  0001 C CNN
	1    2650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3800 3000 3800
Connection ~ 3400 3800
Wire Wire Line
	3400 3800 3400 2450
Wire Wire Line
	3000 4000 3000 4200
Wire Wire Line
	3000 4200 2650 4200
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5FFDF748
P 8000 5300
F 0 "J3" H 8080 5292 50  0000 L CNN
F 1 "Power In" H 8080 5201 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-1.5sqmm_1x02_P6mm_D1.7mm_OD3mm" H 8000 5300 50  0001 C CNN
F 3 "~" H 8000 5300 50  0001 C CNN
	1    8000 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5FFE4EA7
P 4100 5200
F 0 "R1" H 4159 5246 50  0000 L CNN
F 1 "10K" H 4159 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4100 5200 50  0001 C CNN
F 3 "~" H 4100 5200 50  0001 C CNN
	1    4100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5400 4100 5400
Wire Wire Line
	3800 5000 4100 5000
Wire Wire Line
	4100 5000 4100 5100
Wire Wire Line
	4100 5300 4100 5400
Connection ~ 4100 5400
Wire Wire Line
	4100 5400 6900 5400
$Comp
L Device:C_Small C2
U 1 1 5FFEAA6E
P 2450 3900
F 0 "C2" H 2542 3946 50  0000 L CNN
F 1 "1uF" H 2542 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2450 3900 50  0001 C CNN
F 3 "~" H 2450 3900 50  0001 C CNN
	1    2450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3800 2450 3800
Connection ~ 3000 3800
Wire Wire Line
	2450 4000 3000 4000
Connection ~ 3000 4000
$Comp
L Device:C_Small C4
U 1 1 5FFDE5B6
P 2700 6150
F 0 "C4" H 2792 6196 50  0000 L CNN
F 1 "560pf" H 2792 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2700 6150 50  0001 C CNN
F 3 "~" H 2700 6150 50  0001 C CNN
	1    2700 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5FFDF1DD
P 3100 6150
F 0 "C3" H 3192 6196 50  0000 L CNN
F 1 "560pf" H 3192 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3100 6150 50  0001 C CNN
F 3 "~" H 3100 6150 50  0001 C CNN
	1    3100 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5FFE4673
P 2700 5850
F 0 "R2" H 2759 5896 50  0000 L CNN
F 1 "100" H 2759 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2700 5850 50  0001 C CNN
F 3 "~" H 2700 5850 50  0001 C CNN
	1    2700 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5FFE57D8
P 3100 5850
F 0 "R3" H 3159 5896 50  0000 L CNN
F 1 "100" H 3159 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3100 5850 50  0001 C CNN
F 3 "~" H 3100 5850 50  0001 C CNN
	1    3100 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5FFE71A5
P 2700 6500
F 0 "#PWR0107" H 2700 6250 50  0001 C CNN
F 1 "GND" H 2705 6327 50  0000 C CNN
F 2 "" H 2700 6500 50  0001 C CNN
F 3 "" H 2700 6500 50  0001 C CNN
	1    2700 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6250 2700 6350
Wire Wire Line
	3100 6250 3100 6350
Wire Wire Line
	3100 6350 2700 6350
Connection ~ 2700 6350
Wire Wire Line
	2700 6350 2700 6500
Wire Wire Line
	2700 5950 2700 6050
Wire Wire Line
	3100 5950 3100 6050
Wire Wire Line
	2700 4900 2700 5750
Connection ~ 2700 4900
Wire Wire Line
	2700 4900 2500 4900
Wire Wire Line
	2850 4800 2850 5550
Wire Wire Line
	2850 5550 3100 5550
Wire Wire Line
	3100 5550 3100 5750
Connection ~ 2850 4800
Wire Wire Line
	2850 4800 2400 4800
$Comp
L power:+3V3 #PWR0108
U 1 1 6002BD9B
P 3150 2450
F 0 "#PWR0108" H 3150 2300 50  0001 C CNN
F 1 "+3V3" H 3165 2623 50  0000 C CNN
F 2 "" H 3150 2450 50  0001 C CNN
F 3 "" H 3150 2450 50  0001 C CNN
	1    3150 2450
	1    0    0    -1  
$EndComp
NoConn ~ 6900 1450
NoConn ~ 6900 1550
NoConn ~ 6900 1650
Wire Wire Line
	3150 2450 3400 2450
Connection ~ 3400 2450
Wire Wire Line
	3400 2450 3400 2150
Text Label 3900 1450 0    50   ~ 0
UART_1_RX
Text Label 3600 1550 0    50   ~ 0
UART_1_TX
Text Label 3300 1850 0    50   ~ 0
UART_3_TX
Text Label 3050 1950 0    50   ~ 0
UART_3_RX
Text Label 4000 3550 0    50   ~ 0
CAN_RX
Text Label 3900 3250 0    50   ~ 0
CAN_TX
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 5FEBB7F7
P 4550 1750
F 0 "J1" H 4550 2250 50  0000 L CNN
F 1 "OpenMV_L" H 4400 2150 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4550 1750 50  0001 C CNN
F 3 "~" H 4550 1750 50  0001 C CNN
	1    4550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2050 4250 2050
Wire Wire Line
	4250 2050 4250 5000
Wire Wire Line
	4250 5000 4100 5000
Connection ~ 4100 5000
NoConn ~ 6900 1950
NoConn ~ 6900 1850
NoConn ~ 6900 1750
$EndSCHEMATC