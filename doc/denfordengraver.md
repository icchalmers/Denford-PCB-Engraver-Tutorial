# Denford PCB Engraver

## Overview

You can find the full specification for the engraver on the [Denford website](https://denford.co.uk/products/pcb-engraver/). For our purposes, only two of the features are worth discussing:

- The maximum board size is 360 mm x 210 mm.
- The Z axis (that is, the bit that goes up and down) "floats" on top of the workpiece. The big advantage this brings over a traditional CNC is that the depth of cut into the copper (which is only 0.035 mm think) doesn't rely so heavily on the workpiece being completely flat with respect to the machine. That means it's easier to setup and using V-shaped cutting bits give more consistent cut widths.

## Capabilities

In the FabLab@Stratchlyde, we use a combination of V-shaped milling bits for milling trace outlines and corncob bits for milling the PCB contour. If you use different bits, you might have slightly different capabilities but the list below should give you a decent idea of what the machine can do.

- **Single Sided PCBs:** While it is possible to engrave double-sided PCBs, it's almost always more hassle than it's worth. You would be surprised how complex a board you can get with just a single layer PCB. What I would call 1.5 layer PCBs are also easy - single layer boards where you add either 0 ohm resistors or a flying wire to jump signals where you need them. If you're feeling masochistic, you can see an example of a double-sided PCB [here](http://fabacademy.org/archives/2015/eu/students/chalmers.iain/week-11-outputs.html).
- **0.4 mm space:** We typically use [0.2 mm, 60° V-bit engraving bits](https://www.shop-apt.co.uk/carbide-engraving-tools-flat-bottom-half-round-60/3-175mm-1-8-diameter-carbide-engraving-cutter-0-2mm-tip-half-round-60.html). By the time these are cutting through the copper we find that they have a cut width of about 0.4 mm. We do have a combination of 0.1/0.2 mm and 30/60° bits, but the 0.2@60° bits are a good compromise between detail and bit life. Smaller spaces are possible with the 0.1 mm 30° bits but they are very fragile.
- **0.4 mm trace:** The hard limit on trace width is actually a fair but smaller than 0.4 mm (limited by how small you can go before the trace gets lifted in the milling process). From experience, we've found that 0.4 mm for trace/space is a nice combination as it makes it easier to identify when the bits are wearing out, and at that combination you can still sneak a trace between the pads on 1206 (3216) SMD parts.
- **Contour milling:** This was one of the main drivers to ditch the Denford software for generating the GCode, as it didn't support milling board outlines. pcb2gcode supports complex board outlines and automatically handles things like multi-pass cuts and bridge tabs. We use [2 mm corncob bits](https://www.aliexpress.com/item/32677591025.html?) because they're cheap and pretty hard to break. They don't give the cleanest of cut though, so it's best to keep traces at least 1 mm away from the edge of the PCB. We've experimented with some [2mm endmills](https://uk.rs-online.com/web/p/end-mills/6666681) that gave an excellent finish, but they're not really designed to plunge so required some extra steps to use. Plus, they're a lot more expensive.
- **Drill sizes:** The only sure way to know what drill sizes we have available is to check the box, but 0.5/0.8/1.0 mm are typically safe bets. We do have a range from 0.3 mm to 3 mm but it depends who's broken what recently! Generally it's best to limit yourself to as few drill sizes as possible so you don't have to change the bit a million times. I personally find you can bodge most components to 0.5 mm for through hole components, 1 mm for headers and 3 mm for mounting holes.

## Limitations

Aside from the above, there are a few specific limitations that are worth keeping in mind:

- **FR1/FR2 substrates:** This is the copper clad material we mill the PCB from. We only allow the use of FR1 or FR2 substrates on the engraver.
  - FR1 is ideal as it is easy to mill. The downside is that it's a nightmare to source in small quantities at a reasonable price. We also found that it wasn't suitable to use in the reflow oven as the substrate tended to start to burn.
  - FR2 is a bit tougher on the bits but more widely available. Most of the PCB blanks we have in the FabLab@Strathclyde are FR2
  - FR4 is **not allowed** to be used in the engraver. Not only is the dust toxic, but FR4 is much harder than FR1/FR2 and it significantly reduces the life of the milling bits.

  To enforce this, **only materials purchased from the FabLab can be used on the engraver.** The main downside of FR2 is that it isn't capable of handling as high temperatures as FR4, and as such it can't be used with the reflow oven.
- **No solder mask:** Solder mask is the green stuff on top of almost every PCB you see. It protects the raw copper and also helps during soldering by forcing the solder to go where it's meant to. Without a solder mask, you can still use the reflow oven but it has a tendency to heavily discolour the copper to the point it looks burnt.
- **No silkscreen:** The lack of silkscreen can be unexpectedly annoying when it comes to populating your PCB!

## When To Use The Denford PCB Engraver

Keeping in mind the above capabilites and limitations, here's some advice on when the Denford PCB Engraver is a good choice for making your PCB:

- Simple quick-n-dirty prototypes. If you just need to prove out an idea, you can iterate on multiple designs in a day.
- If you need a breakout board for an IC because you forgot to order adapters.
- For one-off designs. For example, if you need to get a bunch of LEDs in the right place in a 3D model and you need a weird PCB shape to make it work.

I wouldn't recommend the engraver if:

- You want multiple copies of a finalised design.
- You want a long term, high quality PCB.
- Your design isn't simple enough to be implemented on a single layer PCB. The more complex a PCB (in terms of size, part and trace count), the more likely you are to run into issues producing it.

Once you're happy that your design is compatible with the engraver, it's time to generate the gerber files.
___
  <[Previous](introduction.md) | [Index](index.md) | [Next](kicadgerbers.md)>
