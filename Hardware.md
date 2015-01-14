# LEDs
Here are just some thoughts about driving the LEDs

## Powering
[Constant current source](http://www.mikrocontroller.net/articles/Konstantstromquelle_fuer_Power_LED), one per channel.
Alternatives: [Power regulators](http://www.mikrocontroller.net/articles/Konstantstromquelle#.23Konstantstromquelle_mit_Schaltregler)

[parts for 5 RGB LEDs](https://secure.reichelt.de/index.html?&ACTION=20&AWKID=1009635&PROVID=2084)

## Controlling
Two chained shift registers (74HC595) could be used to drive 16 channels.

## Cooling
As the LEDs will draw a lot of power, cooling will be necessary

Maybe something like [this](http://www.pollin.de/shop/dt/MDE5OTY1OTk-/Bauelemente_Bauteile/Mechanische_Bauelemente/Kuehlkoerper/Finger_Kuehlkoerper_AAVID_50x50x45_2_Stueck.html) would work? Additoinally, a slow spinning fan might be neccessary if temperatures get too high.

Every LED should be temperature monitored. One DS18B20 per LED would be useful.

# Servo 
Thoughts about the servo to open/close the lamp

## Powering
If 3A are sufficient, [this](http://www.reichelt.de/LM-2576-T-ADJ/3/index.html?&ACTION=3&LA=446&ARTICLE=39444&artnr=LM+2576+T-ADJ) could be used
