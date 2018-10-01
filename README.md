# luma_oled_jetson
Python scrpits to run 128x64 pixel monochrome OLED from Adafruit on nVidia Jetson TX1  
This repository makes use of the luma oled python library: https://github.com/rm-hull/luma.oled  
For pin-out description of jetson tx1 please see: https://www.jetsonhacks.com/nvidia-jetson-tx1-j21-header-pinout/  
Note: the above link also gives the board-level addressing of the GPIO pins - critical to use i2c devices  
  
Note: this repository uses a lot of code borrowed from https://github.com/rm-hull/luma.examples  

  
I use Jetson TX1 J21 Header pins as follows:  

|1|6|27|28|29|
|---------|--------|--------|---------|------------------|
|3.3v power|ground|ID_SDA|ID_SCL|GPIO for reset via 2k resistor|
  
Note:  
The 2k resistor & reset pin are critical if you're using the Adafruit SSD1306 based 128x64 pixel monochrome display. If you don't use the reset pin, and pull it High Low High, you will get "snow"/garbage instead of the image you want.
