# Pico-Matrix-Touch-Keyboard
A touchscreen matrix using an 3.5" ILI9488 TFT with resistive touch and a Raspberry Pi Pico. The Raspberry Pi Pico has native HID Keyboard support. This sketch gives you 12 buttons in a 4x3 matrix. Each button can have one or more keyboard functions. 

![alt text](https://github.com/DustinWatts/Pico-Matrix-Touch-Keyboard/raw/main/assets/3drender.png "Board Settings")

# Earle Philhower's `arduino-pico` core
Installing the `arduino-pico` (https://github.com/earlephilhower/arduino-pico) core: 

- In the Arduino IDE go to File->Preferences.
- Under "Additional Board Manager URLs" add this line:
	`https://github.com/earlephilhower/arduino-pico/releases/download/global/package_rp2040_index.json`. Click OK.
- Go to Tools->Boards->Board Manager. Type "pico" in the search box and click "Install" for "Raspberry Pi Pico/RP2040".

# Upload settings

The sketch and board have been tested with the following Board Settings:

![alt text](https://github.com/DustinWatts/Pico-Matrix-Touch-Keyboard/raw/main/assets/Board_Settings.png "Board Settings")

# LittleFS
This example uses LittleFS for a tiny bit of storage. Storage is needed to store the calibration file that is created when calibrating the touchscreen. So make sure when you flash the Pico, you flash it with at least 64KB for the FS under "Flash Size".

# Pico TFT Combiner board
For better connections and a nice finished project you can use the Pico + TFT Combiner board I designed. You can order these straight from PCBWay (-link-), donwload the gerbers, or the Kicad project. You can find them in the `Pico_TFT_Combiner_Board` folder of this repository.



