# Generating Gerbers Using KiCAD

In this tutorial, we're going to make a simple breakout board for an ATtiny85. You can find the KiCAD project [here](/example/PCB/).

If you want to skip this step because you don't have KiCAD installed, you can find the generated gerbers files [here](/example/gerbers/).

![ATtiny85_layout.png](./images/ATtiny85_breakout.png)

If you're using different PCB design software, you can probably adapt the settings below for your software. If you want to contribute settings for your software, pull requests are welcome!

## DRC Constraints

Below are the DRC rules we recommend for projects designed to be made on the Denford. If you're using your own design, you can import the design rules from the example project to save yourself some time.

![KiCAD_DRC_Constraints.png](./images/KiCAD_DRC_Constraints.png)

___
  <[Previous](denfordengraver.md) | [Index](index.md) | [Next](pcb2gcode.md)>
