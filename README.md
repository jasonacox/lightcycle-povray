# LightCycle POV-Ray Model

A TRON LightCycle Model and Animation Script for POV-Ray

## Background

* The original TRON LightCycle was created using simple geometric primatives.
* [The Persistence of Vision Raytracer](http://www.povray.org/) is a free raytracer that takes simple geometic and scene descriptions to produce high-quality images. 

The POV-Ray model for the LightCycle used here is based on work done by Carl N. Hoff.


## How to Render

### Install POV-Ray
Install the `povray` software on your computer using a package manager:
* Linux (Ubuntu) - `apt-get install povray`
* MacOS - `brew install povray`
* Window - Download Installer [Here](http://www.povray.org/)

### Render a Single Frame
The model and scene description is located in the [LightCycle.pov](LightCycle.pov) file.
```
povray LightCycle.pov
```

### Render Movie
The animation (start/end frame) settings are located in the [LightCycle.ini](LightCycle.ini) file.
```
povray LightCycle.ini
ffmpeg -r 24 -i LightCycle%03d.png -s:v 800x600 -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p LightCycle.mp4
```

## Examples

![Lightcycle Image](/media/LightCycle.png)

## Blog Post on POV-Ray

https://www.jasonacox.com/wordpress/tron