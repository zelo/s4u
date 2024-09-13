; This is original dump of S4U settings with translated comments, those were default values in my printer

M5000 I0 A0 B230.000000 ;Z-axis travel (mm)
M5000 I0 A0 C20.000000 ;Z-axis motor maximum speed (mm/s)
M5000 I0 A0 D0.000625000000 ;Z-axis motor distance corresponding to each step (mm/step)
M5000 I0 A0 E1 ;Z-axis motor direction; 1 is positive direction, -1 is negative direction
M5000 I0 A0 F1 ;Z-axis limit mode; 0 minimum limit, 1 maximum limit, 2 double limit
M5000 I0 A0 S1 ;Z-axis zero direction; 1 is positive direction, -1 is negative direction
M5000 I0 A0 P4.500000 ;Z-axis first section zero speed (mm/s)
M5000 I0 A0 R1.000000 ;Z-axis second-stage zeroing speed (mm/s)
M5000 I0 A0 T0.000000 ;Z-axis reverse movement distance before zeroing (mm); This parameter is mainly used to avoid zeroing collision when the axis is below the limit when the limit assembly is far away from the physical zero point
M5000 I0 A0 X5.000000 ;Z-axis zeroing process reverse movement distance after the first limit is triggered (mm)
M5000 I0 A0 Y0.450001 ;Z-axis zero position
M5000 I0 A0 Z1 ;Z-axis zero point and limit position setting; 0: limit position is the same as Z zero point, 1: limit position is different from Z zero point
M5000 I5 A0 B0 ;Z-axis minimum limit polarity; 0 is low level trigger; 1 is high level trigger
M5000 I5 A0 C0 ;Z axis maximum limit polarity; 0 is low level trigger; 1 is high level trigger
M5000 I5 A0 D5.000000 ;Z axis acceleration (mm/s^2)
M5000 I5 A0 E0.050000 ;Z axis initial speed (mm/s)
M5000 I6 A12 ;X axis motor current in static state (0-31): (N+1)/32 * 2.5 (A)
M5000 I6 B25 ;X axis motor running current (0-31): (N+1)/32 * 2.5 (A)
M5000 I6 C36.000000 ;X axis acceleration (degrees/s^2)
M5000 I6 D36.000000 ;X axis deceleration (degrees/s^2)
M5000 I6 E36.000000 ;X-axis initial speed (degrees/s)
M5000 I6 P1 ;X-axis current change step value (1-31)
M5000 I6 R1000 ;X-axis current change time interval (ms)
M5000 I6 F9 ;Z-axis motor current in static state (0-31): (N+1)/32 * 2.5 (A)
M5000 I6 S18 ;Z-axis motor running current (0-31): (N+1)/32 * 2.5 (A)
M5000 I0 A1 B140.000000 ;X-axis total angle of separation (degrees)
M5000 I0 A1 C900.000000 ;X-axis motor maximum speed (degrees/s)
M5000 I0 A1 D0.007031250000 ;The angle corresponding to each step of the X-axis motor (degrees/step)
M5000 I0 A1 E1 ;Direction of the X-axis motor; 1 is the positive direction, -1 is the reverse direction
M5000 I0 A1 F1 ;X-axis limit mode; 0 minimum limit, 1 maximum limit, 2 double limit
M5000 I0 A1 S1 ;X-axis zeroing direction; 1 is the positive direction, -1 is the reverse direction
M5000 I0 A1 P36.000000 ;X-axis first section zeroing speed (degrees/s)
M5000 I0 A1 R36.000000 ;X-axis second section zeroing speed (degrees/s)
M5000 I0 A1 T0.000000 ;Angle of movement in the reverse direction before the X-axis zeroing (degrees); This parameter is mainly used to avoid zeroing collision when the axis is below the limit when the limit assembly is far away from the physical zero point
M5000 I0 A1 X60.000000 ; Angle of reverse movement after the first limit trigger during the X-axis zeroing process (degrees)
M5000 I0 A1 Y0.000000 ; X-axis zero position
M5000 I0 A1 Z1 ; X-axis zero point and limit position setting; 0: limit position is the same as Z zero point, 1: limit position is different from Z zero point
M5000 I5 A1 B0 ; X-axis minimum limit polarity; 0 is low level trigger; 1 is high level trigger
M5000 I5 A1 C0 ; X-axis maximum limit polarity; 0 is low level trigger; 1 is high level trigger
M5000 I200 A36.000000 ; X-axis head N layer first section return speed <high ​​speed> (degrees/s)
M5000 I200 B36.000000 ; X-axis head N layer second section return speed <low speed> (degrees/s)
M5000 I200 C36.000000 ; X-axis head N-layer first section release speed <low speed> (degrees/s)
M5000 I200 D36.000000 ; X-axis head N-layer second section release speed <high ​​speed> (degrees/s)
M5000 I200 E0.000000 ; X-axis head N-layer second section return angle (degrees)
M5000 I200 F0.000000 ; X-axis head N-layer first section release angle (degrees)
M5000 I200 S72.000000 ; X-axis N-layer first section return speed <high ​​speed> (degrees/s)
M5000 I200 P72.000000 ; X-axis N-layer second section return speed <low speed> (degrees/s)
M5000 I200 R72.000000 ; X-axis first section release speed after N layers <low speed> (degrees/s)
M5000 I200 T72.000000 ; X-axis second section release speed after N layers <high ​​speed> (degrees/s)
M5000 I200 X0.000000 ; X-axis second section return angle after N layers (degrees)
M5000 I200 Y0.000000 ; X-axis first section release angle after N layers (degrees)
M5000 I201 A1 ; X-axis return mode (0: limit mode 1: fixed angle)
M5000 I201 B1 ; Rotation release mode, 0: two motors move synchronously 1: X-axis motor arrives first, then Z-axis starts to move 2: Z-axis motor moves first, then X-axis starts to move
M5000 I201 E50 ;X-axis N-layer value
M5000 I210 A36.000000 ;S2-X axis head N-layer first stage return speed <high ​​speed> (degrees/s)
M5000 I210 B36.000000 ;S2-X axis head N-layer second stage return speed <low speed> (degrees/s)
M5000 I210 C36.000000 ;S2-X axis head N-layer first stage release speed <low speed> (degrees/s)
M5000 I210 D36.000000 ;S2-X axis head N-layer second stage release speed <high ​​speed> (degrees/s)
M5000 I210 E0.000000 ;S2-X axis head N-layer second stage return angle (degrees)
M5000 I210 F0.000000 ;S2-X axis head N layers first section release angle (degrees)
M5000 I210 S144.000000 ;S2-X axis first section return speed after N layers <high ​​speed> (degrees/s)
M5000 I210 P144.000000 ;S2-X axis second section return speed after N layers <low speed> (degrees/s)
M5000 I210 R144.000000 ;S2-X axis first section release speed after N layers <low speed> (degrees/s)
M5000 I210 T144.000000 ;S2-X axis second section release speed after N layers <high ​​speed> (degrees/s)
M5000 I210 X0.000000 ;S2-X axis second section return angle after N layers (degrees)
M5000 I210 Y0.000000 ;S2-X axis first section release angle after N layers (degrees)
M5000 I211 A1 ;S2-X axis return to leveling mode (0: limit mode 1: fixed angle)
M5000 I211 B1 ;S2-rotation release mode, 0: two motors move synchronously 1: X axis motor first in place, then Z axis starts to move 2: Z axis motor first moves, then X axis starts to move
M5000 I211 E50 ;S2-X axis N layer value
M5000 I201 C40.000000 ;X axis manual control speed (degrees/s)
M5000 I201 D-10.000000 ;X axis maximum zero position, the size that can be continued to level after zeroing (degrees)
M5000 I1 A4.500000 ;Lifting speed after printing is completed (mm/s)
M5000 I1 B60.000000 ;Lift a relative distance after printing is completed (mm)
M5000 I1 C1 ;Lifting mode after printing is completed; 0 lift to the highest point, 1 lift to the specified relative distance, 2 no action
M5000 I1 D4.500000 ;Lifting speed after printing is paused (mm/s)
M5000 I1 E60.000000 ;Lifting a relative distance after printing is paused (mm)
M5000 I1 F1 ;Lifting mode after printing is paused; 0 lift to the highest point, 1 lift to the specified relative distance, 2 no action
M5000 I1 S4.500000 ;Lifting speed after printing is stopped (mm/s)
M5000 I1 P60.000000 ;Lifting a relative distance after printing is stopped (mm)
M5000 I1 R1 ;Stop printing lift mode; 0 lift to the highest point, 1 lift to the specified relative distance, 2 no action
M5000 I1 T4.500000 ;Manual control speed (mm/s)
M5000 I2 B200 ;Light source fan frequency
M5000 I2 C200 ;Light source frequency
M5000 I2 D200 ;Light frequency
M5000 I2 E3000 ;Buzzer frequency
M5000 I3 B2 ;Light source fan mode; 0 power on normally, 1 power off, 2 follow the printing status, 3 follow the exposure status
M5000 I3 C2 ;Light source mode; 0 only follow the machine parameters, 1 only follow the print file, 2 mix two print files and machine parameters
M5000 I4 B255 ;Light source fan PWM (0-255)
M5000 I4 C255 ;Light source PWM (0-255)
M5000 I4 D255 ;Light PWM (0-255)
M5000 I4 E100 ;Buzzer volume (0-100)
M5000 I4 F0 ;Screen direction (0-3), 0:0, 1:90, 2:180, 3:270
M5000 I4 S180 ;Enter screen saver time (s)
M5000 I7 A80 ;Temperature protection upper limit (℃)
M5000 I7 B1 ;Shield temperature detection 0: Shield 1: Unshielded
M5000 I4 P5 ;Enter gray screen saver time (min)
M5000 I4 R0 ;Estimated resin value shield 0: Shield 1: Unshielded
M5000 I4 T870.000000 ;Maximum trough volume (ml)
M5000 I4 X25.500000 ;The maximum abnormal line in the actual resin detection stage (mm)
M5000 I4 Y4.000000 ;The minimum abnormal line in the actual resin detection stage (mm)
M5000 I8 A50 ;The maximum value of the factory mode temperature sensor (℃)
M5000 I8 B0 ;The minimum value of the factory mode temperature sensor (℃)
M5000 I203 B4.500000 ;The movement speed of the strain gauge calibration process (mm/s)
M5000 I203 C30000 ;The maximum calibration time of the strain gauge (ms)
M5000 I203 D5000 ;The static judgment time of the strain gauge (ms)
M5000 I203 E50 ;The static judgment threshold of the strain gauge
M5000 I204 A45.000000 ;The starting position of the resin detection (mm) must be at least greater than the highest liquid level position on the structure to start the measurement.
M5000 I204 B2.000000 ; End position of resin detection (mm), it is recommended to set 1mm or 2mm. Do not stick to the bottom, too close to the bottom will cause misjudgment due to the stress of the film.
M5000 I204 C0.050000 ; Step value of resin detection process (mm), it is recommended to set 0.05mm, too small detection time is long, too large will easily lead to increased estimation error
M5000 I204 D2.500000 ;Movement speed of resin detection process (mm/s)
M5000 I204 E200 ;Resin detection trigger threshold, when the liquid surface stress is greater than this threshold, it is considered as the trigger liquid level.
M5000 I204 S143.000000 ;Groove width (mm), the firmware uses this parameter to estimate the volume in the container in combination with the detected liquid level height
M5000 I204 P244.000000 ;Groove height (mm), the firmware uses this parameter to estimate the volume in the container in combination with the detected liquid level height
M5000 I204 R100.000000 ;Resin detection estimated volume compensation value (ml).
M5000 I205 A2.000000 ;Automatic leveling starting position (mm), it is recommended to be greater than 1mm, and start the downward leveling at the place where the membrane does not generate stress on the platform.
M5000 I205 B-2.000000 ;Automatic leveling end position (mm), it is recommended to set -1mm, too large may damage the screen.
M5000 I205 C0.050000 ;Automatic leveling step value (mm), it is recommended to set 0.05mm, too small leveling time is long, too large may cause over-tightening.
M5000 I205 D2.000000 ;Automatic leveling movement speed (mm/s), not suitable for high speed.
M5000 I205 E28000 ;Automatic leveling threshold, under normal circumstances, this value is greater than 0. The influence of the resin itself has been considered in the adjustment process of this value.
M5000 I206 C33000 ;Foreign matter detection trigger threshold
M5000 I206 D1 ;Resin detection detection switch
M5000 I206 E10 ;Resin detection detection times
M5000 I206 F-200 ;Resin detection detection minimum threshold
M5000 I206 S200 ;Resin detection detection maximum threshold
M5000 I208 A1 ;AI camera detection switch, 0, off, 1, on
M5000 I208 B100.000000 ;AI camera detection position
M5000 I209 A1 ;Time-lapse photography switch, 0, off, 1, on
M5000 I209 B50.000000 ;Model height threshold for not performing time-lapse photography
M5000 I209 C30.000000 ;Model height at which time-lapse photography starts
M5000 I209 D10 ;Time-lapse photography interval layers
M5000 I209 E0 ;Does manual zeroing Z move to zero position?
M5000 I209 F1 ;Does manual zeroing X move to zero position?
M5000 I212 A8420 ;Slow mode before n layers, x-axis movement time (ms)
M5000 I212 B4410 ;Slow mode after n layers, x-axis movement time (ms)
M5000 I212 C8420 ;Fast mode before n layers, x-axis movement time (ms)
M5000 I212 D2430 ;Fast mode after n layers, x-axis movement time (ms)
M5000 I212 E0 ;Estimated printing compensation time (ms), can be negative
M5000 I209 S10000 ;Time-lapse photography snapshot time (real time unit: ms)
M5000 I209 P70 ;Time-lapse photography snapshot interval (ms)
M5999 I0 ;Save machine parameters