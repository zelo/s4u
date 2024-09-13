; My adjustments for using anycubic mono x build plate on s4u

M5000 I0 A0 Y0.450001 ;Z-axis zero position - this is default
M5000 I1 B100.000000 ;[B60.000000] Lift a relative distance after printing is completed (mm)


; Because build plate is 1cm taller we need to move all height references by 10mm up
M5000 I204 A55.000000 ;The starting position of the resin detection (mm) must be at least greater than the highest liquid level position on the structure to start the measurement.
M5000 I204 B17.000000 ;End position of resin detection (mm), it is recommended to set 1mm or 2mm. Do not stick to the bottom, too close to the bottom will cause misjudgment due to the stress of the film.
M5000 I205 A17.000000 ;Automatic leveling starting position (mm), it is recommended to be greater than 1mm, and start the downward leveling at the place where the membrane does not generate stress on the platform.
M5000 I205 B2.000000 ;Automatic leveling end position (mm), it is recommended to set -1mm, too large may damage the screen.
M5000 I205 C0.0250000 ;[C0.0250000] Automatic leveling step value (mm), it is recommended to set 0.05mm, too small leveling time is long, too large may cause over-tightening.
M5000 I205 D1.000000 ;[D1.000000] Automatic leveling movement speed (mm/s), not suitable for high speed.

M5000 I205 E20000 ;[E28000] Automatic leveling threshold, under normal circumstances, this value is greater than 0. The influence of the resin itself has been considered in the adjustment process of this value.
M5000 I206 C25000 ;[C33000] Foreign matter detection trigger threshold

M5999 I0           ;Save