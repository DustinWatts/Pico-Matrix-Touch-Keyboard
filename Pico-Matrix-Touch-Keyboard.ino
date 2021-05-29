/**
  Title: Raspberry Pi Pico Touch Macro Keyboard Demo
  Author: Dustin Watts
  Date: 17-05-2021

  A simple 4 by 3 matrix of buttons. To show you how to create a custom marco keyboard. Each button can have it's
  own function. The button presses are handled in buttonpress().

  Using Earle Philhower's 'arduino-pico': https://github.com/earlephilhower/arduino-pico . This core comes with LittleFS and a Keyboard library.
  Make sure to flash your Pico with at least 64KB for the filesystem!

  This example is based on the examples that come with the TFT_eSPI library. Which includes the Adafruit GFX button handling class.

  These libraries need to be installed:

  - TFT_eSPI (available through the Library Manager)

  ! Don't forget to configure User_Setup.h in the TFT_eSPI library!
  
    TFT_MISO  0
    TFT_MOSI  3
    TFT_SCLK  2
    TFT_CS   20
    TFT_DC   22
    TFT_RST  21
    TOUCH_CS 14

*/

#include <FS.h>
#include <LittleFS.h>
#include <Keyboard.h>
#include <SPI.h>
#include <TFT_eSPI.h>

// Name of the Touch calibration file
#define CALIBRATION_FILE "/TouchCalData2"

// Define our filesystem
#define FILESYSTEM LittleFS

// Set to tru if you want the calibration to run on each boot
#define REPEAT_CAL false

// Keypad start position, key sizes and spacing
#define KEY_W 95 // Key width
#define KEY_H 95 // Key height
#define KEY_SPACING_X 20 // X gap
#define KEY_SPACING_Y 10 // Y gap

#define KEY_X (KEY_W/2) + KEY_SPACING_X // X-axis centre of the first key
#define KEY_Y (KEY_H/2) + KEY_SPACING_Y // Y-axis centre of the first key

#define KEY_TEXTSIZE 3   // Font size multiplier

// Choose the font you are using
#define LABEL1_FONT &FreeSansOblique12pt7b // Key label font

// Adding a delay between keypressing to give our OS time to respond
uint8_t keydelay = 100;

// Create the screen object
TFT_eSPI tft = TFT_eSPI();

// Creating the labels for the buttons
// <name>[<number-of-lables>][<number-of-chars-per-label]
// The number of chars per label should include the termination \0.
char keyLabel[12][3] = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"};

// Setting the colour for each button
// You can use the colours defined in TFT_eSPI.h
uint16_t keyColor[12] = {TFT_BLUE, TFT_RED, TFT_GREEN, TFT_NAVY, 
                         TFT_MAROON, TFT_MAGENTA, TFT_ORANGE, TFT_SKYBLUE, 
                         TFT_PURPLE, TFT_CYAN, TFT_PINK, TFT_DARKCYAN
                        };
                        
// Create 12 'keys' to use later
TFT_eSPI_Button key[12];

void setup() {
  
  Serial.begin(115200);
  Serial.println("");

  // Initialise the TFT screen
  tft.init();

  // Set the rotation before we calibrate
  tft.setRotation(1);

  touch_calibrate();
  
  // Clear the screen
  tft.fillScreen(TFT_BLACK);

  // Begin the Keyboard
  Keyboard.begin();

  // Draw the keys ( 3 times 4 loops to create 12)
  for (uint8_t row = 0; row < 3; row++) {   // 3 rows
    for (uint8_t col = 0; col < 4; col++) { // of 4 buttons
      
      uint8_t b = col + row * 4; // The button number is the column we are on added to the row we are on 
                                 // multiplied by the number of buttons per row. C++ uses the Order of operations
                                 // you are used to so first the row is multiplied by 4 and then the col is added.
                                 // The first button is 0.
                                 // Example. col = 2 (third column), row = 1 (second row), becomes: 1 * 4 = 4 --> 4 + 2 = 6. This is the 7th button.

      key[b].initButton(&tft, KEY_X + col * (KEY_W + KEY_SPACING_X),
                        KEY_Y + row * (KEY_H + KEY_SPACING_Y), // x, y, w, h, outline, fill, text
                        KEY_W, KEY_H, TFT_WHITE, keyColor[b], TFT_WHITE,
                        keyLabel[b], KEY_TEXTSIZE);
      key[b].drawButton();
    }
  }

}

void loop() {

  uint16_t t_x = 0, t_y = 0; // To store the touch coordinates

  // Pressed will be set true is there is a valid touch on the screen
  bool pressed = tft.getTouch(&t_x, &t_y);
  
  // Check if any key coordinate boxes contain the touch coordinates
  for (uint8_t b = 0; b < 12; b++) {
    if (pressed && key[b].contains(t_x, t_y)) {
      key[b].press(true);  // tell the button it is pressed
    } else {
      key[b].press(false);  // tell the button it is NOT pressed
    }
  }

  // Check if any key has changed state
  for (uint8_t b = 0; b < 12; b++) {

    if (key[b].justReleased()) key[b].drawButton(); // draw normal again

    if (key[b].justPressed()) 
    {
      key[b].drawButton(true);  // draw invert (background becomes text colour and text becomes background colour
      buttonpress(b); // Call the button press function and pass the button number
    }
  }

}

void buttonpress(int button)
{
  //Handle a button press. Buttons are 0 indexed, meaning that the first button is button 0.
  switch(button){
    case 0:
     // Sending a combination of CTRL, ALT and a Function key.
     Serial.println("Button 1 pressed");
     Keyboard.press(KEY_LEFT_CTRL);
     delay(keydelay);
     Keyboard.press(KEY_LEFT_ALT);
     delay(keydelay);
     Keyboard.press(KEY_F1);
     delay(keydelay);
     Keyboard.releaseAll();
     break;
    case 1:
     // Sending a combination of CTRL, ALT and a Function key.
     Serial.println("Button 2 pressed");
     Keyboard.press(KEY_LEFT_CTRL);
     delay(keydelay);
     Keyboard.press(KEY_LEFT_ALT);
     delay(keydelay);
     Keyboard.press(KEY_F2);
     delay(keydelay);
     Keyboard.releaseAll();
     break;
    case 2:
     // Sending a combination of CTRL, ALT and a Function key.
     Serial.println("Button 3 pressed");
     Keyboard.press(KEY_LEFT_CTRL);
     delay(keydelay);
     Keyboard.press(KEY_LEFT_ALT);
     delay(keydelay);
     Keyboard.press(KEY_F3);
     delay(keydelay);
     Keyboard.releaseAll();
     break;
    case 3:
     Serial.println("Button 4 pressed");
     // Typing something in the active window
     Keyboard.print("Can you type as fast as this?");
     break;
    case 4:
     Serial.println("Button 5 pressed");
     // Using the GUI key + R to start an application
     Keyboard.press(KEY_LEFT_GUI); // GUI is WIN on windows, CMD on MacOs and GUI on Linux
     delay(keydelay);
     Keyboard.print("r");
     delay(keydelay);
     Keyboard.releaseAll();
     delay(keydelay);
     Keyboard.print("cmd");
     delay(keydelay);
     Keyboard.write(KEY_RETURN);
     break;
    case 5:
     Serial.println("Button 6 pressed");
     // println() presses RETURN at the end of printing characters
     Keyboard.println("Can you type as fast as this?");
     break;
    case 6:
     Serial.println("Button 7 pressed");
     // Using println() we can skip a seperate RETURN press
     Keyboard.press(KEY_LEFT_GUI);
     delay(keydelay);
     Keyboard.print("r");
     delay(keydelay);
     Keyboard.releaseAll();
     delay(keydelay);
     Keyboard.println("cmd");
     break;
    case 7:
     Serial.println("Button 8 pressed");
     // ALT + TAB
     Keyboard.press(KEY_LEFT_ALT);
     delay(keydelay);
     Keyboard.write(KEY_TAB);
     Keyboard.releaseAll();
     break;
    case 8:
     Serial.println("Button 9 pressed");
     // Open an URL. Typing an URL in WIN + R (run) will use your default browser to open an URL
     Keyboard.press(KEY_LEFT_GUI);
     delay(keydelay);
     Keyboard.print("r");
     delay(keydelay);
     Keyboard.releaseAll();
     delay(keydelay);
     Keyboard.println("https://www.youtube.com/dustinwatts");
     break;
    case 9:
     Serial.println("Button 10 pressed");
     // Nothing for now
     break;
    case 10:
     Serial.println("Button 11 pressed");
     // Nothing for now
     break;
    case 11:
     Serial.println("Button 12 pressed");
     // Nothing for now
     break;
  }
}

void touch_calibrate()
{
  uint16_t calData[5];
  uint8_t calDataOK = 0;

  // check file system exists
  if (!FILESYSTEM.begin()) {
    Serial.println("Formating file system");
    FILESYSTEM.format();
    FILESYSTEM.begin();
  }

  // check if calibration file exists and size is correct
  if (FILESYSTEM.exists(CALIBRATION_FILE)) {
    if (REPEAT_CAL)
    {
      // Delete if we want to re-calibrate
      FILESYSTEM.remove(CALIBRATION_FILE);
    }
    else
    {
      File f = FILESYSTEM.open(CALIBRATION_FILE, "r");
      if (f) {
        if (f.readBytes((char *)calData, 14) == 14)
          calDataOK = 1;
        f.close();
      }
    }
  }

  if (calDataOK && !REPEAT_CAL) {
    // calibration data valid
    tft.setTouch(calData);
  } else {
    // data not valid so recalibrate
    tft.fillScreen(TFT_BLACK);
    tft.setCursor(20, 0);
    tft.setTextFont(2);
    tft.setTextSize(1);
    tft.setTextColor(TFT_WHITE, TFT_BLACK);

    tft.println("Touch corners as indicated");

    tft.setTextFont(1);
    tft.println();

    if (REPEAT_CAL) {
      tft.setTextColor(TFT_RED, TFT_BLACK);
      tft.println("Set REPEAT_CAL to false to stop this running again!");
    }

    tft.calibrateTouch(calData, TFT_MAGENTA, TFT_BLACK, 15);

    tft.setTextColor(TFT_GREEN, TFT_BLACK);
    tft.println("Calibration complete!");

    // store data
    File f = FILESYSTEM.open(CALIBRATION_FILE, "w");
    if (f) {
      f.write((const unsigned char *)calData, 14);
      f.close();
    }
  }
}
  
