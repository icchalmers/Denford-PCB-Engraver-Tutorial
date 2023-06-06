# Introduction

This tutorial will lead you through using the [Denford PCB Engraver](https://denford.co.uk/products/pcb-engraver/) to mill a small breakout board for a surface mount ATtiny85. The tutorial was written specifically for the FabLab at the University of Strathclyde, but should be applicable to anyone with a Denford PCB Engraver.

If you are in the FabLab@Strathclyde, you should use this tutorial as a supplement to your machine induction.

All the files for this tutorial can be found on github: <https://github.com/icchalmers/Denford-PCB-Engraver-Tutorial>

Any feedback is greatly appreciated and can be submitted by [opening an issue](https://github.com/icchalmers/Denford-PCB-Engraver-Tutorial/issues/new) on GitHub.

## Prerequisites

This tutorial assumes you already know how to design a PCB in your CAD software of choice and generate gerber files for fabrication. The tutorial does cover how to generate gerbers suitable for the engraver using KiCAD, but the general settings should be easy enough to translate to other software (Eagle, Altium etc).

If you don't know how to design a PCB yet, I would recommend looking at [KiCAD](https://www.kicad.org/). Here are a few recommended resources to get your started:

- The KiCAD website has a (small) list of [recommended resources](https://www.kicad.org/help/learning-resources/).
  - In particular, see the offical KiCAD [Getting Started](https://docs.kicad.org/#_getting_started) guide.
- Chris Gammel of [Contextual Electronics](https://contextualelectronics.com/) has two excellent free course that teach you how to design a simple PCB:
  - [Shine On You Crazy KiCAD](https://contextualelectronics.com/courses/shine-on-you-crazy-kicad/)
  - [Getting to Blinky 5.0](https://contextualelectronics.com/courses/getting-to-blinky-5-0/)

## Software

To produce our PCB we'll be using two main pieces of software:

- [Denford PCB Engraver V1.9](https://denford.co.uk/software-downloads-support/): Although this is available for download on the Denford website, it needs a licence to work. It is only used for controlling the engraver, so you can still prepare all your files without it. If you're in the FabLab@Strathclyde, it should already be installed on Laptop 1.
Technically, the Denford software is capable of generating the milling files from gerbers directly, but it's very buggy and lacks some key features.
- [pcb2gcode](https://github.com/pcb2gcode/pcb2gcode): This is the software we use to turn gerbers into gcode that can be used on the engraver. Technically, we're using two bits of software. pcb2gcode is a command line only piece of software for turning gerber files into gcode for milling. We'll also be using the [pcb2gcodeGUI](https://github.com/pcb2gcode/pcb2gcodeGUI) wrapper to add a more user friendly interface and visualise the output. If you're in the FabLab@Strathclyde, it should be installed on Laptop 1. If there is no shortcut on the desktop, you can find it in `C:\pcb2gcode`.
  - When writing this tutorial I used pcb2gcode v2.5.0 and pcb2gcodeGUI v1.3.2-1. Installing these on Linux is pretty easy, but for Windows it can be a bit of a nightmare. I've included pre-compiled x64 Windows binaries in the [releases](https://github.com/icchalmers/Denford-PCB-Engraver-Tutorial/releases/latest) of this tutorial. See the readme in the release for installation help.
- [KiCAD](https://www.kicad.org/) (optional): I use KiCAD as my PCB design software and this tutorial will cover generating gerber files suitable for the engraver using KiCAD, but you can skip this if you already have gerbers ready to use. The [example PCB](/example/PCB/) was created in KiCAD V6.0.

Before we get started, we'll take a quick look at the Denford PCB engraver, it's capabilities and some things to keep in mind when designing circuits to be milled on it.
___
  <[Previous](index.md) | [Index](index.md) | [Next](denfordengraver.md)>
