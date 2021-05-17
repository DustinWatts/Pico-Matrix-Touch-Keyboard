# Pico-Matrix-Touch-Keyboard
A touchscreen matrix using an 3.5" ILI9488 TFT with resistive touch and a Raspberry Pi Pico

# Earle Philhower's `arduino-pico` core

Installing the `arduino-pico` (https://github.com/earlephilhower/arduino-pico) core: 

- In the Arduino IDE go to File->Preferences
- Under "Additional Board Manager URLs" add this line:
	`https://github.com/earlephilhower/arduino-pico/releases/download/global/package_rp2040_index.json`. Click OK.
- Go to Tools->Boards->Board Manager. Type "pico" in the search box and click "Install" for "Raspberry Pi Pico/RP2040"

# LittleFS
This example uses LittleFS for a tiny bit of storage. Storage is needed to store the calibration file that is created when calibrating the touch screen. So make sure when you flash the Pico, you flash it with at least 64KB for the FS under "Flash Size".
