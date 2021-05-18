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
L RPi_Pico:Pico U1
U 1 1 60A2A443
P 2400 2250
F 0 "U1" H 2900 3350 50  0000 C CNN
F 1 "Pico" H 2900 1100 50  0000 C CNN
F 2 "RPi_Pico:RPi_Pico_SMD_TH" V 2400 2250 50  0001 C CNN
F 3 "" H 2400 2250 50  0001 C CNN
	1    2400 2250
	1    0    0    -1  
$EndComp
$Comp
L ILI9488_Touch:ILI9488_Touch J2
U 1 1 60A2C4B1
P 5350 1950
F 0 "J2" H 5650 2600 50  0000 L CNN
F 1 "ILI9488_Touch" H 5450 1050 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical" H 6000 2400 50  0001 C CNN
F 3 "" H 6000 2400 50  0001 C CNN
	1    5350 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x20_Male J4
U 1 1 60A2E307
P 8200 2200
F 0 "J4" H 8300 3250 50  0000 C CNN
F 1 "Conn_01x20_Male" H 8300 1100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical" H 8200 2200 50  0001 C CNN
F 3 "~" H 8200 2200 50  0001 C CNN
	1    8200 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x20_Male J3
U 1 1 60A325E0
P 7800 2200
F 0 "J3" H 7900 3250 50  0000 C CNN
F 1 "Conn_01x20_Male" H 7900 1100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical" H 7800 2200 50  0001 C CNN
F 3 "~" H 7800 2200 50  0001 C CNN
	1    7800 2200
	-1   0    0    -1  
$EndComp
Text GLabel 1700 1300 0    50   Input ~ 0
GPIO0
Text GLabel 1700 1400 0    50   Input ~ 0
GPIO1
Text GLabel 1700 1500 0    50   Input ~ 0
GND
Text GLabel 1700 1600 0    50   Input ~ 0
GPIO2
Text GLabel 1700 1700 0    50   Input ~ 0
GPIO3
Text GLabel 1700 1800 0    50   Input ~ 0
GPIO4
Text GLabel 1700 1900 0    50   Input ~ 0
GPIO5
Text GLabel 1700 2000 0    50   Input ~ 0
GND
Text GLabel 1700 2100 0    50   Input ~ 0
GPIO6
Text GLabel 1700 2200 0    50   Input ~ 0
GPIO7
Text GLabel 1700 2300 0    50   Input ~ 0
GPIO8
Text GLabel 1700 2400 0    50   Input ~ 0
GPIO9
Text GLabel 1700 2500 0    50   Input ~ 0
GND
Text GLabel 1700 2600 0    50   Input ~ 0
GPIO10
Text GLabel 1700 2700 0    50   Input ~ 0
GPIO11
Text GLabel 1700 2800 0    50   Input ~ 0
GPIO12
Text GLabel 1700 2900 0    50   Input ~ 0
GPIO13
Text GLabel 1700 3000 0    50   Input ~ 0
GND
Text GLabel 1700 3100 0    50   Input ~ 0
GPIO14
Text GLabel 1700 3200 0    50   Input ~ 0
GPIO15
Text GLabel 3100 3200 2    50   Input ~ 0
GPIO16
Text GLabel 3100 3100 2    50   Input ~ 0
GPIO17
Text GLabel 3100 3000 2    50   Input ~ 0
GND
Text GLabel 3100 2900 2    50   Input ~ 0
GPIO18
Text GLabel 3100 2800 2    50   Input ~ 0
GPIO19
Text GLabel 3100 2700 2    50   Input ~ 0
GPIO20
Text GLabel 3100 2600 2    50   Input ~ 0
GPIO21
Text GLabel 3100 2500 2    50   Input ~ 0
GND
Text GLabel 3100 2400 2    50   Input ~ 0
GPIO22
Text GLabel 3100 2300 2    50   Input ~ 0
RUN
Text GLabel 3100 2200 2    50   Input ~ 0
GPIO26
Text GLabel 3100 2100 2    50   Input ~ 0
GPIO27
Text GLabel 3100 2000 2    50   Input ~ 0
AGND
Text GLabel 3100 1900 2    50   Input ~ 0
GPIO28
Text GLabel 3100 1800 2    50   Input ~ 0
ADC_VREF
Text GLabel 3100 1700 2    50   Input ~ 0
3V3
Text GLabel 3100 1600 2    50   Input ~ 0
3V3_EN
Text GLabel 3100 1500 2    50   Input ~ 0
GND
Text GLabel 3100 1400 2    50   Input ~ 0
VSYS
Text GLabel 3100 1300 2    50   Input ~ 0
VBUS
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 60A345C5
P 9600 1400
F 0 "J1" H 9450 1650 50  0000 L CNN
F 1 "Conn_01x03_Female" H 9400 1200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9600 1400 50  0001 C CNN
F 3 "~" H 9600 1400 50  0001 C CNN
	1    9600 1400
	1    0    0    -1  
$EndComp
Text GLabel 2300 3400 3    50   Input ~ 0
SWCLK
Text GLabel 2400 3400 3    50   Input ~ 0
GND
Text GLabel 2500 3400 3    50   Input ~ 0
SWDIO
Text GLabel 7600 1300 0    50   Input ~ 0
GPIO0
Text GLabel 7600 1400 0    50   Input ~ 0
GPIO1
Text GLabel 7600 1500 0    50   Input ~ 0
GND
Text GLabel 7600 1600 0    50   Input ~ 0
GPIO2
Text GLabel 7600 1700 0    50   Input ~ 0
GPIO3
Text GLabel 7600 1800 0    50   Input ~ 0
GPIO4
Text GLabel 7600 1900 0    50   Input ~ 0
GPIO5
Text GLabel 7600 2000 0    50   Input ~ 0
GND
Text GLabel 7600 2100 0    50   Input ~ 0
GPIO6
Text GLabel 7600 2200 0    50   Input ~ 0
GPIO7
Text GLabel 7600 2300 0    50   Input ~ 0
GPIO8
Text GLabel 7600 2400 0    50   Input ~ 0
GPIO9
Text GLabel 7600 2500 0    50   Input ~ 0
GND
Text GLabel 7600 2600 0    50   Input ~ 0
GPIO10
Text GLabel 7600 2700 0    50   Input ~ 0
GPIO11
Text GLabel 7600 2800 0    50   Input ~ 0
GPIO12
Text GLabel 7600 2900 0    50   Input ~ 0
GPIO13
Text GLabel 7600 3000 0    50   Input ~ 0
GND
Text GLabel 7600 3100 0    50   Input ~ 0
GPIO14
Text GLabel 7600 3200 0    50   Input ~ 0
GPIO15
Text GLabel 8400 3200 2    50   Input ~ 0
GPIO16
Text GLabel 8400 3100 2    50   Input ~ 0
GPIO17
Text GLabel 8400 3000 2    50   Input ~ 0
GND
Text GLabel 8400 2900 2    50   Input ~ 0
GPIO18
Text GLabel 8400 2800 2    50   Input ~ 0
GPIO19
Text GLabel 8400 2700 2    50   Input ~ 0
GPIO20
Text GLabel 8400 2600 2    50   Input ~ 0
GPIO21
Text GLabel 8400 2500 2    50   Input ~ 0
GND
Text GLabel 8400 2400 2    50   Input ~ 0
GPIO22
Text GLabel 8400 2300 2    50   Input ~ 0
RUN
Text GLabel 8400 2200 2    50   Input ~ 0
GPIO26
Text GLabel 8400 2100 2    50   Input ~ 0
GPIO27
Text GLabel 8400 2000 2    50   Input ~ 0
AGND
Text GLabel 8400 1900 2    50   Input ~ 0
GPIO28
Text GLabel 8400 1800 2    50   Input ~ 0
ADC_VREF
Text GLabel 8400 1700 2    50   Input ~ 0
3V3
Text GLabel 8400 1600 2    50   Input ~ 0
3V3_EN
Text GLabel 8400 1500 2    50   Input ~ 0
GND
Text GLabel 8400 1400 2    50   Input ~ 0
VSYS
Text GLabel 8400 1300 2    50   Input ~ 0
VBUS
Text GLabel 9400 1300 0    50   Input ~ 0
SWCLK
Text GLabel 9400 1400 0    50   Input ~ 0
GND
Text GLabel 9400 1500 0    50   Input ~ 0
SWDIO
Text GLabel 5150 1400 0    50   Input ~ 0
3V3
Text GLabel 5150 2400 0    50   Input ~ 0
GPIO14
Text GLabel 5150 2600 0    50   Input ~ 0
GPIO0
Text GLabel 5150 1900 0    50   Input ~ 0
GPIO3
NoConn ~ 5150 2200
Text GLabel 5150 2700 0    50   Input ~ 0
GPIO15
Text GLabel 5150 2500 0    50   Input ~ 0
GPIO3
Text GLabel 5150 1500 0    50   Input ~ 0
GND
Text GLabel 5150 1600 0    50   Input ~ 0
GPIO20
Text GLabel 5150 1700 0    50   Input ~ 0
GPIO21
Text GLabel 5150 1800 0    50   Input ~ 0
GPIO22
Text GLabel 5150 2000 0    50   Input ~ 0
GPIO2
Text GLabel 5150 2100 0    50   Input ~ 0
3V3
Text GLabel 5150 2300 0    50   Input ~ 0
GPIO2
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 60A59026
P 9600 2100
F 0 "J5" H 9700 1800 50  0000 R CNN
F 1 "Conn_01x04_Male" H 9800 2300 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9600 2100 50  0001 C CNN
F 3 "~" H 9600 2100 50  0001 C CNN
	1    9600 2100
	-1   0    0    1   
$EndComp
Text GLabel 9400 2200 0    50   Input ~ 0
GPIO17
Text GLabel 9400 2000 0    50   Input ~ 0
GPIO0
Text GLabel 9400 2100 0    50   Input ~ 0
GPIO3
Text GLabel 9400 1900 0    50   Input ~ 0
GPIO2
$EndSCHEMATC
