# Pico-Matrix-Touch-Keyboard

![alt text](/assets/with_case.jpg "Pico Martix")

A touchscreen matrix using an 3.5" ILI9488 TFT with resistive touch and a Raspberry Pi Pico. The Raspberry Pi Pico has native HID Keyboard support. This sketch gives you 12 buttons in a 4x3 matrix. Each button can have one or more keyboard functions. 

## Earle Philhower's `arduino-pico` core
Installing the `arduino-pico` (https://github.com/earlephilhower/arduino-pico) core: 

- In the Arduino IDE go to File->Preferences.
- Under "Additional Board Manager URLs" add this line:
	`https://github.com/earlephilhower/arduino-pico/releases/download/global/package_rp2040_index.json`. Click OK.
- Go to Tools->Boards->Board Manager. Type "pico" in the search box and click "Install" for "Raspberry Pi Pico/RP2040".

## Upload settings

The sketch and board have been tested with the following Board Settings:

![alt text](https://github.com/DustinWatts/Pico-Matrix-Touch-Keyboard/raw/main/assets/Board_Settings.png "Board Settings")

## LittleFS
This example uses LittleFS for a tiny bit of storage. Storage is needed to store the calibration file that is created when calibrating the touchscreen. So make sure when you flash the Pico, you flash it with at least 64KB for the FS under "Flash Size".

## Pico TFT Combiner board
For better connections and a nice finished project you can use the Pico + TFT Combiner board I designed. You can order these straight from PCBWay (https://www.pcbway.com/project/shareproject/Pico_Matrix_Touch_Keypad.html), donwload the gerbers, or the Kicad project. You can find them in the `Pico_TFT_Combiner_Board` folder of this repository.
![alt text](https://github.com/DustinWatts/Pico-Matrix-Touch-Keyboard/raw/main/assets/3drender.png "Combiner Board")

## Connections

You can use the diagrams below if you want to connect the screen without using the combiner board.
![alt text](https://github.com/DustinWatts/Pico-Matrix-Touch-Keyboard/raw/main/assets/Connections.png "Connections")
![alt text](https://github.com/DustinWatts/Pico-Matrix-Touch-Keyboard/raw/main/assets/connecting_ili9488_pico.png "Connections")

## Support Me

If you like what I am doing, there are a number of ways you can support me. 

| Platform | Link|
|:-----:|:-----|
| [<img src="https://github.com/DustinWatts/small_logos/blob/main/twitter_logo.png" alt="Twtter" width="24"/>](https://twitter.com/dustinwattsnl "Follow me on Twitter") | You can follow me on Twitter: [@dustinwattsnl](https://twitter.com/dustinwattsnl "Follow me on Twitter")|
| [<img src="https://github.com/DustinWatts/small_logos/blob/main/youtube_logo.png" alt="YouTube" width="32"/>](https://www.youtube.com/dustinwatts "Subscrive to my YouTube channel") | You can subscribe to my channel on Youtube: [/dustinWatts](https://www.youtube.com/dustinwatts "Subscribe to my YouTube channel") |
| [<img src="https://github.com/DustinWatts/small_logos/blob/main/patreon_logo.png" alt="Patreon" width="32"/>](https://www.patreon.com/dustinwatts) | You can support me by becoming a patron on Patreon: https://www.patreon.com/dustinwatts |
| [<img src="https://github.com/DustinWatts/small_logos/blob/main/paypalme_logo.png" alt="PayPal.me" width="32"/>](https://www.paypal.me/dustinwattsnl) | You can make a one time donation using PayPal.me: https://www.paypal.me/dustinwattsnl |

## Get help

For quick access to help you can join my Discord server: https://discord.gg/RE3XevS

