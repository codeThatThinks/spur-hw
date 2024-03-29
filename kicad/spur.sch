EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Spur - A physical UEFI boot switch"
Date "2020-09-26"
Rev "v1.0"
Comp "Ian Glen <ian@ianglen.me>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L spur:AT25SF081-MAHB-X U2
U 1 1 5F6417B2
P 2800 6900
F 0 "U2" H 2350 7300 50  0000 L CNN
F 1 "AT25SF081-MAHB-X" H 2850 7300 50  0000 L CNN
F 2 "spur:SON-8-1EP_3x2mm_P0.5mm_EP0.2x1.6mm" H 2800 6300 50  0001 C CNN
F 3 "https://www.adestotech.com/wp-content/uploads/DS-AT25SF081_045.pdf" H 2800 6900 50  0001 C CNN
	1    2800 6900
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F4:STM32F401CBUx U3
U 1 1 5F642057
P 8750 4600
F 0 "U3" H 8200 6150 50  0000 C CNN
F 1 "STM32F401CBUx" H 9200 6150 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm" H 8150 3100 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00086815.pdf" H 8750 4600 50  0001 C CNN
	1    8750 4600
	1    0    0    -1  
$EndComp
$Comp
L spur:MIC5377YC5 U1
U 1 1 5F645922
P 1950 4100
F 0 "U1" H 1950 4442 50  0000 C CNN
F 1 "MIC5377YC5" H 1950 4351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 1950 4425 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005785A.pdf" H 1950 4100 50  0001 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:PRTR5V0U2X D2
U 1 1 5F6460CD
P 4900 1700
F 0 "D2" H 4600 2050 50  0000 L CNN
F 1 "PRTR5V0U2X" H 5000 2050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-886" H 4960 1700 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PRTR5V0U2X.pdf" H 4960 1700 50  0001 C CNN
	1    4900 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 5F6477EC
P 3150 1650
F 0 "D1" V 3104 1730 50  0000 L CNN
F 1 "NSPU3051N2T5G" V 3195 1730 50  0000 L CNN
F 2 "Diode_SMD:D_0402_1005Metric" H 3150 1650 50  0001 C CNN
F 3 "~" H 3150 1650 50  0001 C CNN
	1    3150 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F64978B
P 2050 2150
F 0 "#PWR0101" H 2050 1900 50  0001 C CNN
F 1 "GND" H 2055 1977 50  0000 C CNN
F 2 "" H 2050 2150 50  0001 C CNN
F 3 "" H 2050 2150 50  0001 C CNN
	1    2050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2150 2050 2100
NoConn ~ 1950 2050
Text Notes 1750 1750 2    79   ~ 0
USB A\n(PCB PADS)
$Comp
L power:GND #PWR0102
U 1 1 5F64A8B5
P 8550 6300
F 0 "#PWR0102" H 8550 6050 50  0001 C CNN
F 1 "GND" H 8555 6127 50  0000 C CNN
F 2 "" H 8550 6300 50  0001 C CNN
F 3 "" H 8550 6300 50  0001 C CNN
	1    8550 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 6300 8550 6250
Wire Wire Line
	8550 6250 8650 6250
Wire Wire Line
	8650 6250 8650 6200
Connection ~ 8550 6250
Wire Wire Line
	8550 6250 8550 6200
Wire Wire Line
	8650 6250 8750 6250
Wire Wire Line
	8750 6250 8750 6200
Connection ~ 8650 6250
Wire Wire Line
	8750 6250 8850 6250
Wire Wire Line
	8850 6250 8850 6200
Connection ~ 8750 6250
Wire Wire Line
	8850 6250 8950 6250
Wire Wire Line
	8950 6250 8950 6200
Connection ~ 8850 6250
$Comp
L power:VBUS #PWR0103
U 1 1 5F64C0DF
P 2450 1350
F 0 "#PWR0103" H 2450 1200 50  0001 C CNN
F 1 "VBUS" H 2465 1523 50  0000 C CNN
F 2 "" H 2450 1350 50  0001 C CNN
F 3 "" H 2450 1350 50  0001 C CNN
	1    2450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1350 2450 1450
Wire Wire Line
	2450 1450 2350 1450
Text Label 2500 1650 2    50   ~ 0
D+
Text Label 2500 1750 2    50   ~ 0
D-
Wire Wire Line
	2500 1650 2350 1650
Wire Wire Line
	2350 1750 2500 1750
$Comp
L power:GND #PWR0104
U 1 1 5F64EDD5
P 4900 2250
F 0 "#PWR0104" H 4900 2000 50  0001 C CNN
F 1 "GND" H 4905 2077 50  0000 C CNN
F 2 "" H 4900 2250 50  0001 C CNN
F 3 "" H 4900 2250 50  0001 C CNN
	1    4900 2250
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0105
U 1 1 5F64F21D
P 4900 1150
F 0 "#PWR0105" H 4900 1000 50  0001 C CNN
F 1 "VBUS" H 4915 1323 50  0000 C CNN
F 2 "" H 4900 1150 50  0001 C CNN
F 3 "" H 4900 1150 50  0001 C CNN
	1    4900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1150 4900 1200
Wire Wire Line
	4900 2250 4900 2200
Text Label 4250 1700 0    50   ~ 0
D+
Wire Wire Line
	4250 1700 4400 1700
Text Label 5550 1700 2    50   ~ 0
D-
Wire Wire Line
	5550 1700 5400 1700
$Comp
L power:VBUS #PWR0106
U 1 1 5F653285
P 3150 1450
F 0 "#PWR0106" H 3150 1300 50  0001 C CNN
F 1 "VBUS" H 3165 1623 50  0000 C CNN
F 2 "" H 3150 1450 50  0001 C CNN
F 3 "" H 3150 1450 50  0001 C CNN
	1    3150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F653727
P 3150 1850
F 0 "#PWR0107" H 3150 1600 50  0001 C CNN
F 1 "GND" H 3155 1677 50  0000 C CNN
F 2 "" H 3150 1850 50  0001 C CNN
F 3 "" H 3150 1850 50  0001 C CNN
	1    3150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1850 3150 1800
Wire Wire Line
	3150 1500 3150 1450
Text Label 9800 5700 2    50   ~ 0
D+
Text Label 9800 5600 2    50   ~ 0
D-
Wire Wire Line
	9800 5600 9350 5600
Wire Wire Line
	9800 5700 9350 5700
Text Label 9800 5800 2    50   ~ 0
SWDIO
Text Label 9800 5900 2    50   ~ 0
SWCLK
$Comp
L power:+3.3V #PWR0108
U 1 1 5F6578D2
P 2800 6350
F 0 "#PWR0108" H 2800 6200 50  0001 C CNN
F 1 "+3.3V" H 2815 6523 50  0000 C CNN
F 2 "" H 2800 6350 50  0001 C CNN
F 3 "" H 2800 6350 50  0001 C CNN
	1    2800 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6350 2800 6400
$Comp
L power:GND #PWR0109
U 1 1 5F65845E
P 2800 7450
F 0 "#PWR0109" H 2800 7200 50  0001 C CNN
F 1 "GND" H 2805 7277 50  0000 C CNN
F 2 "" H 2800 7450 50  0001 C CNN
F 3 "" H 2800 7450 50  0001 C CNN
	1    2800 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7450 2800 7400
Text Label 1650 6800 0    50   ~ 0
SPI_SCK
Text Label 1650 6700 0    50   ~ 0
SPI_MOSI
Text Label 1650 6900 0    50   ~ 0
SPI_~CS
Text Label 3800 6700 2    50   ~ 0
SPI_MISO
Wire Wire Line
	3800 6700 3400 6700
Text Notes 750  800  0    98   ~ 0
USB & ESD PROTECTION
Text Notes 6550 800  0    98   ~ 0
STM32 MICROCONTROLLER
Text Notes 750  5850 0    98   ~ 0
NOR FLASH (1MB)
Text Notes 750  3350 0    98   ~ 0
+3.3V LDO
Text Notes 4200 3400 0    98   ~ 0
BOOT SELECT SWITCH
Wire Notes Line
	6300 6750 6300 500 
$Comp
L Device:C C4
U 1 1 5F66E6FF
P 6950 1750
F 0 "C4" H 6850 1800 50  0000 R CNN
F 1 "4p" H 6850 1700 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6988 1600 50  0001 C CNN
F 3 "~" H 6950 1750 50  0001 C CNN
	1    6950 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1550 6950 1550
Wire Wire Line
	6950 1550 6950 1600
$Comp
L power:GND #PWR0110
U 1 1 5F671396
P 6950 2000
F 0 "#PWR0110" H 6950 1750 50  0001 C CNN
F 1 "GND" H 6955 1827 50  0000 C CNN
F 2 "" H 6950 2000 50  0001 C CNN
F 3 "" H 6950 2000 50  0001 C CNN
	1    6950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2000 6950 1950
Wire Wire Line
	6950 1950 7300 1950
Connection ~ 6950 1950
Wire Wire Line
	6950 1950 6950 1900
Text Label 6950 1550 2    50   ~ 0
OSC_IN
Text Label 7650 1550 0    50   ~ 0
OSC_OUT
Wire Wire Line
	7450 1550 7650 1550
Wire Wire Line
	7650 1950 7650 1900
Wire Wire Line
	7650 1550 7650 1600
$Comp
L Device:C C5
U 1 1 5F66EB05
P 7650 1750
F 0 "C5" H 7765 1796 50  0000 L CNN
F 1 "4p" H 7765 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7688 1600 50  0001 C CNN
F 3 "~" H 7650 1750 50  0001 C CNN
	1    7650 1750
	1    0    0    -1  
$EndComp
Text Label 9800 5000 2    50   ~ 0
SPI_SCK
Text Label 9800 5100 2    50   ~ 0
SPI_MISO
Text Label 9800 5200 2    50   ~ 0
SPI_MOSI
Wire Wire Line
	9800 5200 9350 5200
Wire Wire Line
	9350 5100 9800 5100
Wire Wire Line
	9800 5000 9350 5000
Wire Notes Line
	6300 3000 500  3000
Wire Notes Line
	500  5500 6300 5500
$Comp
L power:GND #PWR0111
U 1 1 5F69A270
P 1950 4450
F 0 "#PWR0111" H 1950 4200 50  0001 C CNN
F 1 "GND" H 1955 4277 50  0000 C CNN
F 2 "" H 1950 4450 50  0001 C CNN
F 3 "" H 1950 4450 50  0001 C CNN
	1    1950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4000 1550 4000
$Comp
L power:GND #PWR0112
U 1 1 5F69D302
P 2900 4400
F 0 "#PWR0112" H 2900 4150 50  0001 C CNN
F 1 "GND" H 2905 4227 50  0000 C CNN
F 2 "" H 2900 4400 50  0001 C CNN
F 3 "" H 2900 4400 50  0001 C CNN
	1    2900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4400 2900 4350
Wire Wire Line
	2900 4000 2900 4050
$Comp
L power:VBUS #PWR0113
U 1 1 5F6A051B
P 1300 3950
F 0 "#PWR0113" H 1300 3800 50  0001 C CNN
F 1 "VBUS" H 1315 4123 50  0000 C CNN
F 2 "" H 1300 3950 50  0001 C CNN
F 3 "" H 1300 3950 50  0001 C CNN
	1    1300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4100 1550 4100
Wire Wire Line
	1550 4100 1550 4000
Wire Wire Line
	1300 3950 1300 4000
Wire Wire Line
	1550 4000 1300 4000
Connection ~ 1550 4000
Connection ~ 1300 4000
Wire Wire Line
	1300 4000 1300 4050
Wire Wire Line
	1300 4350 1300 4400
$Comp
L power:+3.3V #PWR0114
U 1 1 5F6AD1E8
P 2900 3950
F 0 "#PWR0114" H 2900 3800 50  0001 C CNN
F 1 "+3.3V" H 2915 4123 50  0000 C CNN
F 2 "" H 2900 3950 50  0001 C CNN
F 3 "" H 2900 3950 50  0001 C CNN
	1    2900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4000 2500 4000
$Comp
L Device:R R1
U 1 1 5F6B18C8
P 2500 4200
F 0 "R1" H 2570 4246 50  0000 L CNN
F 1 "22K" H 2570 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2430 4200 50  0001 C CNN
F 3 "~" H 2500 4200 50  0001 C CNN
	1    2500 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F6B19B6
P 2500 4600
F 0 "R2" H 2570 4646 50  0000 L CNN
F 1 "10K" H 2570 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2430 4600 50  0001 C CNN
F 3 "~" H 2500 4600 50  0001 C CNN
	1    2500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4450 2500 4400
Wire Wire Line
	2500 4050 2500 4000
Connection ~ 2500 4000
Wire Wire Line
	2500 4000 2900 4000
Wire Wire Line
	2500 4400 2350 4400
Wire Wire Line
	2350 4400 2350 4200
Wire Wire Line
	2350 4200 2250 4200
Connection ~ 2500 4400
Wire Wire Line
	2500 4400 2500 4350
$Comp
L power:GND #PWR0115
U 1 1 5F6B69C8
P 2500 4800
F 0 "#PWR0115" H 2500 4550 50  0001 C CNN
F 1 "GND" H 2505 4627 50  0000 C CNN
F 2 "" H 2500 4800 50  0001 C CNN
F 3 "" H 2500 4800 50  0001 C CNN
	1    2500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4800 2500 4750
Wire Wire Line
	1950 4400 1950 4450
$Comp
L power:GND #PWR0116
U 1 1 5F6BEB32
P 1300 4400
F 0 "#PWR0116" H 1300 4150 50  0001 C CNN
F 1 "GND" H 1305 4227 50  0000 C CNN
F 2 "" H 1300 4400 50  0001 C CNN
F 3 "" H 1300 4400 50  0001 C CNN
	1    1300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4000 2900 3950
Wire Notes Line
	4000 5500 4000 3000
$Comp
L Device:C C3
U 1 1 5F6F8810
P 4750 6800
F 0 "C3" H 4865 6846 50  0000 L CNN
F 1 "0.1u" H 4865 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4788 6650 50  0001 C CNN
F 3 "~" H 4750 6800 50  0001 C CNN
	1    4750 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F6F8AB9
P 4750 7000
F 0 "#PWR0120" H 4750 6750 50  0001 C CNN
F 1 "GND" H 4755 6827 50  0000 C CNN
F 2 "" H 4750 7000 50  0001 C CNN
F 3 "" H 4750 7000 50  0001 C CNN
	1    4750 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0121
U 1 1 5F6F8DFE
P 4750 6600
F 0 "#PWR0121" H 4750 6450 50  0001 C CNN
F 1 "+3.3V" H 4765 6773 50  0000 C CNN
F 2 "" H 4750 6600 50  0001 C CNN
F 3 "" H 4750 6600 50  0001 C CNN
	1    4750 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6600 4750 6650
Wire Wire Line
	4750 7000 4750 6950
Wire Wire Line
	1650 6700 2200 6700
Wire Wire Line
	1650 6800 2200 6800
Text Label 7650 3400 0    50   ~ 0
BOOT
$Comp
L power:+3.3V #PWR0122
U 1 1 5F715B98
P 8550 2900
F 0 "#PWR0122" H 8550 2750 50  0001 C CNN
F 1 "+3.3V" H 8565 3073 50  0000 C CNN
F 2 "" H 8550 2900 50  0001 C CNN
F 3 "" H 8550 2900 50  0001 C CNN
	1    8550 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F716770
P 7450 3800
F 0 "C6" H 7550 3850 50  0000 L CNN
F 1 "4.7u" H 7550 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7488 3650 50  0001 C CNN
F 3 "~" H 7450 3800 50  0001 C CNN
	1    7450 3800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F717244
P 7450 4000
F 0 "#PWR0123" H 7450 3750 50  0001 C CNN
F 1 "GND" H 7455 3827 50  0000 C CNN
F 2 "" H 7450 4000 50  0001 C CNN
F 3 "" H 7450 4000 50  0001 C CNN
	1    7450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4000 7450 3950
Wire Wire Line
	8050 3600 7450 3600
Wire Wire Line
	7450 3600 7450 3650
$Comp
L Device:C C7
U 1 1 5F71CDCD
P 8650 1750
F 0 "C7" H 8765 1796 50  0000 L CNN
F 1 "0.1u" H 8765 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8688 1600 50  0001 C CNN
F 3 "~" H 8650 1750 50  0001 C CNN
	1    8650 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F71D8CF
P 9050 1750
F 0 "C8" H 9165 1796 50  0000 L CNN
F 1 "0.1u" H 9165 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9088 1600 50  0001 C CNN
F 3 "~" H 9050 1750 50  0001 C CNN
	1    9050 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F71DB97
P 9450 1750
F 0 "C9" H 9565 1796 50  0000 L CNN
F 1 "0.1u" H 9565 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9488 1600 50  0001 C CNN
F 3 "~" H 9450 1750 50  0001 C CNN
	1    9450 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5F71DEDE
P 8650 2000
F 0 "#PWR0124" H 8650 1750 50  0001 C CNN
F 1 "GND" H 8655 1827 50  0000 C CNN
F 2 "" H 8650 2000 50  0001 C CNN
F 3 "" H 8650 2000 50  0001 C CNN
	1    8650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1950 9050 1950
Wire Wire Line
	9450 1950 9450 1900
Wire Wire Line
	8650 1900 8650 1950
Connection ~ 8650 1950
Wire Wire Line
	9050 1900 9050 1950
Connection ~ 9050 1950
Wire Wire Line
	9050 1950 8650 1950
Wire Wire Line
	9450 1600 9450 1550
Wire Wire Line
	9450 1550 9050 1550
Wire Wire Line
	8650 1600 8650 1550
Connection ~ 8650 1550
Wire Wire Line
	9050 1600 9050 1550
Connection ~ 9050 1550
Wire Wire Line
	9050 1550 8650 1550
Wire Wire Line
	8750 3000 8750 2950
Wire Wire Line
	8750 2950 8650 2950
Wire Wire Line
	8650 2950 8650 3000
Wire Wire Line
	8850 3000 8850 2950
Wire Wire Line
	8850 2950 8750 2950
Connection ~ 8750 2950
Wire Wire Line
	8650 2000 8650 1950
$Comp
L power:+3.3V #PWR0125
U 1 1 5F7448EF
P 8650 1500
F 0 "#PWR0125" H 8650 1350 50  0001 C CNN
F 1 "+3.3V" H 8665 1673 50  0000 C CNN
F 2 "" H 8650 1500 50  0001 C CNN
F 3 "" H 8650 1500 50  0001 C CNN
	1    8650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1500 8650 1550
Wire Wire Line
	8650 2950 8550 2950
Wire Wire Line
	8550 2950 8550 3000
Connection ~ 8650 2950
Wire Wire Line
	8550 2950 8550 2900
Connection ~ 8550 2950
$Comp
L Device:C C10
U 1 1 5F75DE91
P 9850 1750
F 0 "C10" H 9965 1796 50  0000 L CNN
F 1 "0.1u" H 9965 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9888 1600 50  0001 C CNN
F 3 "~" H 9850 1750 50  0001 C CNN
	1    9850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1600 9850 1550
Wire Wire Line
	9850 1550 9450 1550
Connection ~ 9450 1550
Wire Wire Line
	9450 1950 9850 1950
Wire Wire Line
	9850 1950 9850 1900
Connection ~ 9450 1950
$Comp
L power:+3.3V #PWR0126
U 1 1 5F769C83
P 7950 3100
F 0 "#PWR0126" H 7950 2950 50  0001 C CNN
F 1 "+3.3V" H 7965 3273 50  0000 C CNN
F 2 "" H 7950 3100 50  0001 C CNN
F 3 "" H 7950 3100 50  0001 C CNN
	1    7950 3100
	1    0    0    -1  
$EndComp
Text Label 7650 3200 0    50   ~ 0
~NRST
Text Notes 4300 7500 0    50   ~ 0
NOTE: DECOUPLING CAP\nFOR U2 PIN 8
Wire Wire Line
	7950 3100 7950 3700
Wire Wire Line
	7950 3700 8050 3700
NoConn ~ 9350 5500
NoConn ~ 9350 5400
NoConn ~ 9350 5300
NoConn ~ 8050 6000
NoConn ~ 8050 5900
NoConn ~ 8050 5800
NoConn ~ 8050 5700
NoConn ~ 8050 5600
NoConn ~ 8050 5500
NoConn ~ 8050 5400
NoConn ~ 8050 5300
NoConn ~ 8050 5200
NoConn ~ 8050 5100
NoConn ~ 8050 4900
NoConn ~ 8050 4800
NoConn ~ 8050 4400
NoConn ~ 8050 4300
NoConn ~ 8050 4200
NoConn ~ 8050 5000
NoConn ~ 9350 6000
$Comp
L power:GND #PWR0129
U 1 1 5F879AFD
P 7000 3800
F 0 "#PWR0129" H 7000 3550 50  0001 C CNN
F 1 "GND" H 7005 3627 50  0000 C CNN
F 2 "" H 7000 3800 50  0001 C CNN
F 3 "" H 7000 3800 50  0001 C CNN
	1    7000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3900 8050 3900
Wire Wire Line
	7650 4000 8050 4000
Text Label 7650 4000 0    50   ~ 0
OSC_OUT
Text Label 7650 3900 0    50   ~ 0
OSC_IN
Text Label 9800 4900 2    50   ~ 0
SPI_~CS
Wire Wire Line
	9800 4900 9350 4900
Text Notes 8850 2250 0    50   ~ 0
NOTE: DECOUPLING CAPS\nFOR U3 PINS 1, 24, 36, 48
$Comp
L power:+3.3V #PWR0130
U 1 1 5F9017F5
P 2100 6600
F 0 "#PWR0130" H 2100 6450 50  0001 C CNN
F 1 "+3.3V" H 2115 6773 50  0000 C CNN
F 2 "" H 2100 6600 50  0001 C CNN
F 3 "" H 2100 6600 50  0001 C CNN
	1    2100 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6600 2100 7000
Wire Wire Line
	2100 7000 2200 7000
Wire Wire Line
	2100 7000 2100 7100
Wire Wire Line
	2100 7100 2200 7100
Connection ~ 2100 7000
Wire Wire Line
	7300 1750 7300 1950
Connection ~ 7300 1950
Wire Wire Line
	7300 1950 7650 1950
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5F648147
P 7300 1550
F 0 "Y1" H 7050 1750 50  0000 L CNN
F 1 "24MHz" H 7400 1750 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_2016-4Pin_2.0x1.6mm" H 7300 1550 50  0001 C CNN
F 3 "~" H 7300 1550 50  0001 C CNN
	1    7300 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5F9305E9
P 7300 1300
F 0 "#PWR0132" H 7300 1050 50  0001 C CNN
F 1 "GND" H 7305 1127 50  0000 C CNN
F 2 "" H 7300 1300 50  0001 C CNN
F 3 "" H 7300 1300 50  0001 C CNN
	1    7300 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 1300 7300 1350
$Comp
L Connector:TestPoint TP4
U 1 1 5F6945B2
P 7600 3200
F 0 "TP4" V 7600 3450 50  0000 C CNN
F 1 "NRST" V 7704 3272 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7800 3200 50  0001 C CNN
F 3 "~" H 7800 3200 50  0001 C CNN
	1    7600 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 3200 8050 3200
$Comp
L Device:R R3
U 1 1 5F69B611
P 7000 3600
F 0 "R3" H 6950 3650 50  0000 R CNN
F 1 "10K" H 6950 3550 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6930 3600 50  0001 C CNN
F 3 "~" H 7000 3600 50  0001 C CNN
	1    7000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3750 7000 3800
Wire Wire Line
	7000 3400 7000 3450
Wire Wire Line
	7000 3400 8050 3400
$Comp
L Connector:TestPoint TP3
U 1 1 5F6AC683
P 6950 3400
F 0 "TP3" V 6950 3650 50  0000 C CNN
F 1 "BOOT" V 7054 3472 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7150 3400 50  0001 C CNN
F 3 "~" H 7150 3400 50  0001 C CNN
	1    6950 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 3400 7000 3400
Connection ~ 7000 3400
$Comp
L Connector:TestPoint TP5
U 1 1 5F6B941A
P 9850 5800
F 0 "TP5" V 9850 6050 50  0000 C CNN
F 1 "SWDIO" V 9954 5872 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 5800 50  0001 C CNN
F 3 "~" H 10050 5800 50  0001 C CNN
	1    9850 5800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5F6B9F42
P 9850 5900
F 0 "TP6" V 9850 6150 50  0000 C CNN
F 1 "SWCLK" V 9954 5972 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 5900 50  0001 C CNN
F 3 "~" H 10050 5900 50  0001 C CNN
	1    9850 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 5800 9850 5800
Wire Wire Line
	9350 5900 9850 5900
$Comp
L Connector:TestPoint TP2
U 1 1 5F6F5D70
P 2950 4000
F 0 "TP2" V 2950 4250 50  0000 C CNN
F 1 "3V3" V 3054 4072 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3150 4000 50  0001 C CNN
F 3 "~" H 3150 4000 50  0001 C CNN
	1    2950 4000
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5F6F69DF
P 2100 2100
F 0 "TP1" V 2100 2350 50  0000 C CNN
F 1 "GND" V 2204 2172 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2300 2100 50  0001 C CNN
F 3 "~" H 2300 2100 50  0001 C CNN
	1    2100 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 2100 2050 2100
Connection ~ 2050 2100
Wire Wire Line
	2050 2100 2050 2050
Wire Wire Line
	2950 4000 2900 4000
Text Label 9800 4600 2    50   ~ 0
SW_POS2
Text Label 9800 4500 2    50   ~ 0
SW_POS1
Wire Wire Line
	9350 4600 9800 4600
Wire Wire Line
	9800 4500 9350 4500
NoConn ~ 9350 4700
NoConn ~ 9350 4800
NoConn ~ 8050 4700
NoConn ~ 8050 4600
Text Label 5000 3850 3    50   ~ 0
SW_POS1
Text Label 5200 3850 3    50   ~ 0
SW_POS2
Text Notes 1850 5250 0    50   ~ 0
NOTE: USING E24 VALUES FOR R2 & R3,\nOUTPUT IS ACTUALLY 3.2V
$Comp
L Device:C C1
U 1 1 5F6F755F
P 1300 4200
F 0 "C1" H 1415 4246 50  0000 L CNN
F 1 "1u" H 1415 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1338 4050 50  0001 C CNN
F 3 "~" H 1300 4200 50  0001 C CNN
	1    1300 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F6F9410
P 2900 4200
F 0 "C2" H 3015 4246 50  0000 L CNN
F 1 "1u" H 3015 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2938 4050 50  0001 C CNN
F 3 "~" H 2900 4200 50  0001 C CNN
	1    2900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3850 5200 4250
Wire Wire Line
	5000 3850 5000 4250
$Comp
L Switch:SW_SPDT SW1
U 1 1 5F648D3D
P 5100 4450
F 0 "SW1" V 5054 4262 50  0000 R CNN
F 1 "JS102000SAQN" V 5145 4262 50  0000 R CNN
F 2 "spur:SW_SPDT_CK-JS102000SAQN" H 5100 4450 50  0001 C CNN
F 3 "~" H 5100 4450 50  0001 C CNN
	1    5100 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 4700 5100 4650
$Comp
L power:GND #PWR0119
U 1 1 5F6E12F1
P 5100 4700
F 0 "#PWR0119" H 5100 4450 50  0001 C CNN
F 1 "GND" H 5105 4527 50  0000 C CNN
F 2 "" H 5100 4700 50  0001 C CNN
F 3 "" H 5100 4700 50  0001 C CNN
	1    5100 4700
	1    0    0    -1  
$EndComp
Text Notes 6650 6350 0    50   ~ 0
NOTE: ENABLE INTERNAL PULL-UPS\nON SW_POS1, SW_POS2, AND SPI_~CS
Connection ~ 2900 4000
Wire Wire Line
	1650 6900 2200 6900
$Comp
L Connector:USB_A J1
U 1 1 5FC9E106
P 2050 1650
F 0 "J1" H 2050 2000 50  0000 C CNN
F 1 "USB_A" H 2107 2026 50  0001 C CNN
F 2 "spur:USB_A_pads" H 2200 1600 50  0001 C CNN
F 3 " ~" H 2200 1600 50  0001 C CNN
	1    2050 1650
	1    0    0    -1  
$EndComp
Connection ~ 3150 1850
$EndSCHEMATC
