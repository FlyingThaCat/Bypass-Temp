# Bypass-Temp

## WARNING :
This Script ONLY WORKS ON ROOTED DEVICE AND ADB AUTHORIZED & Tested on Asus Zenfone 2 Laser w/ ViperOS

## Idea :
I found an old phone and decided to make a server out of it but it appears the battery is swollen but the phone still can be turned on but after few month plugged in the charger 24/7 i found out that the battery is swollen even more and after that im just solder a wire directly in the battery tab like this.
<div>
  <p align="center">
    <img src="https://user-images.githubusercontent.com/95353217/209465540-efe3c5c6-a1dc-4042-8072-a167a8b91772.jpg" width="500"> 
  </p>
  <p align="center">
    <em>My solder is kinda bad</em>
  </p>
</div>
Because it has 4 pin i'm kinda confused and YOLO it and it just works like a charm it boots but strangely enough after it boots like 4s after it just shutdown itself and after some research that i need a sensor pin connected because i dont have any resistor and im too lazy to buy it i just make the phone to thinks the temperature is fine

## How it Works :
Phone Boots -> Script will change the sensor reading -> Phone will boot successfully before the warning shows up and power off the device

## Requirement :
 - Rooted Phone
 - ADB Authorized
 - USB Cable
 - ADB Installed

## Usage :
```
git clone https://github.com/FlyingThaCat/Bypass-Temp
cd Bypass-Temp
chmod +x Bypass.sh
./Bypass.sh #(AND FOLLOW THE INSTRUCTION)
```
