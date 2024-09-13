# GCode settings

## **M5999 - Save and Export Machine Parameters**

The `M5999` command is used to manage the printer's configuration parameters, either saving them or exporting them to an
external storage device (such as a USB drive).

### **Command Structure:**

```
M5999 I<number> ; <comment>
```

- **M5999**: Command to either save or export the machine parameters.
- **I<number>**: Defines the action to be taken (save or export).
- **; <comment>**: Optional comment explaining the action.

### **Parameters:**

- **I0**: **Save machine parameters**
    - Example: `M5999 I0 ;保存参数`
    - **Translation**: "Save parameters"
    - **Description**: This command saves the current machine parameters to the printer's internal memory. These
      parameters include all the settings related to axis movements, motor currents, homing speeds, and other system
      configurations. The command ensures that the current configurations are stored and will persist after a restart.

- **I1**: **Export machine parameters to USB**
    - Example: `M5999 I1 ;导出机器参数`
    - **Translation**: "Export machine parameters"
    - **Description**: This command exports the current machine parameters to USB drive with
      filename `100MachineParams.gcode`.

---

### **Usage:**

1. **create `dump.gcode` file on usb with below content**
    ```
   M5999 I0;
   M5999 I1;
   ```

2. **Print this file on your printer**
3. **Open `100MachineParams.gcode` from USB on your PC**

Here’s a comprehensive and detailed breakdown of the `M5000` commands in your MSLA resin printer G-code configuration
file, including explanations for each parameter and possible use cases. This documentation will help you understand what
each command does and how it affects your printer.

---

# **MSLA Resin Printer G-code Command Documentation**

Sure! Below is a table that organizes the settings from your G-code dump, translating the Chinese comments into English
and grouping them by the domain they control.

---

### **Z-Axis Settings**

| Command                     | Parameters      | Description                                                                                                                    |
|-----------------------------|-----------------|--------------------------------------------------------------------------------------------------------------------------------|
| M5000 I0 A0 B230.000000     | B230.000000     | Z-axis travel distance (mm)                                                                                                    |
| M5000 I0 A0 C20.000000      | C20.000000      | Maximum speed of Z-axis motor (mm/s)                                                                                           |
| M5000 I0 A0 D0.000625000000 | D0.000625000000 | Distance per step for Z-axis motor (mm/step)                                                                                   |
| M5000 I0 A0 E1              | E1              | Z-axis motor direction; 1 for positive, -1 for negative                                                                        |
| M5000 I0 A0 F1              | F1              | Z-axis limit mode; 0: minimum limit, 1: maximum limit, 2: dual limit                                                           |
| M5000 I0 A0 S1              | S1              | Z-axis homing direction; 1 for positive, -1 for negative                                                                       |
| M5000 I0 A0 P4.500000       | P4.500000       | First-stage homing speed for Z-axis (mm/s)                                                                                     |
| M5000 I0 A0 R1.000000       | R1.000000       | Second-stage homing speed for Z-axis (mm/s)                                                                                    |
| M5000 I0 A0 T0.000000       | T0.000000       | Reverse movement distance before Z-axis homing (mm); used to prevent collision if limit switch is far from physical zero point |
| M5000 I0 A0 X5.000000       | X5.000000       | Reverse movement distance after first limit trigger during Z-axis homing (mm)                                                  |
| M5000 I0 A0 Y0.450001       | Y0.450001       | Z-axis zero position                                                                                                           |
| M5000 I0 A0 Z1              | Z1              | Z zero point and limit position setting; 0: same as limit position, 1: different from limit position                           |
| M5000 I5 A0 B0              | B0              | Z-axis minimum limit polarity; 0 for low-level trigger, 1 for high-level trigger                                               |
| M5000 I5 A0 C0              | C0              | Z-axis maximum limit polarity; 0 for low-level trigger, 1 for high-level trigger                                               |
| M5000 I5 A0 D5.000000       | D5.000000       | Z-axis acceleration (mm/s²)                                                                                                    |
| M5000 I5 A0 E0.050000       | E0.050000       | Initial speed of Z-axis (mm/s)                                                                                                 |
| M5000 I6 F9                 | F9              | Z-axis motor current at idle (0-31); Current = (N+1)/32 * 2.5 A                                                                |
| M5000 I6 S18                | S18             | Z-axis motor operating current (0-31); Current = (N+1)/32 * 2.5 A                                                              |

### **X-Axis Settings**

| Command                     | Parameters      | Description                                                                                          |
|-----------------------------|-----------------|------------------------------------------------------------------------------------------------------|
| M5000 I6 A12                | A12             | X-axis motor current at idle (0-31); Current = (N+1)/32 * 2.5 A                                      |
| M5000 I6 B25                | B25             | X-axis motor operating current (0-31); Current = (N+1)/32 * 2.5 A                                    |
| M5000 I6 C36.000000         | C36.000000      | X-axis acceleration (degrees/s²)                                                                     |
| M5000 I6 D36.000000         | D36.000000      | X-axis deceleration (degrees/s²)                                                                     |
| M5000 I6 E36.000000         | E36.000000      | Initial speed of X-axis (degrees/s)                                                                  |
| M5000 I6 P1                 | P1              | X-axis current change step value per time (1-31)                                                     |
| M5000 I6 R1000              | R1000           | X-axis current change interval (ms)                                                                  |
| M5000 I0 A1 B140.000000     | B140.000000     | Total peeling angle of X-axis (degrees)                                                              |
| M5000 I0 A1 C900.000000     | C900.000000     | Maximum speed of X-axis motor (degrees/s)                                                            |
| M5000 I0 A1 D0.007031250000 | D0.007031250000 | Angle per step for X-axis motor (degrees/step)                                                       |
| M5000 I0 A1 E1              | E1              | X-axis motor direction; 1 for positive, -1 for negative                                              |
| M5000 I0 A1 F1              | F1              | X-axis limit mode; 0: minimum limit, 1: maximum limit, 2: dual limit                                 |
| M5000 I0 A1 S1              | S1              | X-axis homing direction; 1 for positive, -1 for negative                                             |
| M5000 I0 A1 P36.000000      | P36.000000      | First-stage homing speed for X-axis (degrees/s)                                                      |
| M5000 I0 A1 R36.000000      | R36.000000      | Second-stage homing speed for X-axis (degrees/s)                                                     |
| M5000 I0 A1 T0.000000       | T0.000000       | Reverse movement angle before X-axis homing (degrees); used to prevent collision                     |
| M5000 I0 A1 X60.000000      | X60.000000      | Reverse movement angle after first limit trigger during X-axis homing (degrees)                      |
| M5000 I0 A1 Y0.000000       | Y0.000000       | X-axis zero position                                                                                 |
| M5000 I0 A1 Z1              | Z1              | X zero point and limit position setting; 0: same as limit position, 1: different from limit position |
| M5000 I5 A1 B0              | B0              | X-axis minimum limit polarity; 0 for low-level trigger, 1 for high-level trigger                     |
| M5000 I5 A1 C0              | C0              | X-axis maximum limit polarity; 0 for low-level trigger, 1 for high-level trigger                     |
| M5000 I201 C40.000000       | C40.000000      | Manual control speed of X-axis (degrees/s)                                                           |
| M5000 I201 D-10.000000      | D-10.000000     | Maximum zero position of X-axis; the range for adjustment after homing (degrees)                     |

### **Layer Settings for X-Axis**

| Command               | Parameters | Description                                                                                       |
|-----------------------|------------|---------------------------------------------------------------------------------------------------|
| M5000 I200 A36.000000 | A36.000000 | First-stage return speed before N layers (high speed) (degrees/s)                                 |
| M5000 I200 B36.000000 | B36.000000 | Second-stage return speed before N layers (low speed) (degrees/s)                                 |
| M5000 I200 C36.000000 | C36.000000 | First-stage peeling speed before N layers (low speed) (degrees/s)                                 |
| M5000 I200 D36.000000 | D36.000000 | Second-stage peeling speed before N layers (high speed) (degrees/s)                               |
| M5000 I200 E0.000000  | E0.000000  | Second-stage return angle before N layers (degrees)                                               |
| M5000 I200 F0.000000  | F0.000000  | First-stage peeling angle before N layers (degrees)                                               |
| M5000 I200 S72.000000 | S72.000000 | First-stage return speed after N layers (high speed) (degrees/s)                                  |
| M5000 I200 P72.000000 | P72.000000 | Second-stage return speed after N layers (low speed) (degrees/s)                                  |
| M5000 I200 R72.000000 | R72.000000 | First-stage peeling speed after N layers (low speed) (degrees/s)                                  |
| M5000 I200 T72.000000 | T72.000000 | Second-stage peeling speed after N layers (high speed) (degrees/s)                                |
| M5000 I200 X0.000000  | X0.000000  | Second-stage return angle after N layers (degrees)                                                |
| M5000 I200 Y0.000000  | Y0.000000  | First-stage peeling angle after N layers (degrees)                                                |
| M5000 I201 A1         | A1         | X-axis return mode; 0: limit method, 1: fixed angle                                               |
| M5000 I201 B1         | B1         | Rotary peeling mode; 0: both motors move simultaneously, 1: X-axis motor moves first, then Z-axis |
| M5000 I201 E50        | E50        | N-layer value for X-axis                                                                          |

### **Secondary Layer Settings for X-Axis (S2)**

| Command                | Parameters  | Description                                                                                           |
|------------------------|-------------|-------------------------------------------------------------------------------------------------------|
| M5000 I210 A36.000000  | A36.000000  | S2: First-stage return speed before N layers (high speed) (degrees/s)                                 |
| M5000 I210 B36.000000  | B36.000000  | S2: Second-stage return speed before N layers (low speed) (degrees/s)                                 |
| M5000 I210 C36.000000  | C36.000000  | S2: First-stage peeling speed before N layers (low speed) (degrees/s)                                 |
| M5000 I210 D36.000000  | D36.000000  | S2: Second-stage peeling speed before N layers (high speed) (degrees/s)                               |
| M5000 I210 E0.000000   | E0.000000   | S2: Second-stage return angle before N layers (degrees)                                               |
| M5000 I210 F0.000000   | F0.000000   | S2: First-stage peeling angle before N layers (degrees)                                               |
| M5000 I210 S144.000000 | S144.000000 | S2: First-stage return speed after N layers (high speed) (degrees/s)                                  |
| M5000 I210 P144.000000 | P144.000000 | S2: Second-stage return speed after N layers (low speed) (degrees/s)                                  |
| M5000 I210 R144.000000 | R144.000000 | S2: First-stage peeling speed after N layers (low speed) (degrees/s)                                  |
| M5000 I210 T144.000000 | T144.000000 | S2: Second-stage peeling speed after N layers (high speed) (degrees/s)                                |
| M5000 I210 X0.000000   | X0.000000   | S2: Second-stage return angle after N layers (degrees)                                                |
| M5000 I210 Y0.000000   | Y0.000000   | S2: First-stage peeling angle after N layers (degrees)                                                |
| M5000 I211 A1          | A1          | S2: X-axis return mode; 0: limit method, 1: fixed angle                                               |
| M5000 I211 B1          | B1          | S2: Rotary peeling mode; 0: both motors move simultaneously, 1: X-axis motor moves first, then Z-axis |
| M5000 I211 E50         | E50         | S2: N-layer value for X-axis                                                                          |

### **Printing Completion and Pause Settings**

| Command             | Parameters | Description                                                                                                            |
|---------------------|------------|------------------------------------------------------------------------------------------------------------------------|
| M5000 I1 A4.500000  | A4.500000  | Lifting speed after printing completion (mm/s)                                                                         |
| M5000 I1 B60.000000 | B60.000000 | Relative distance lifted after printing completion (mm)                                                                |
| M5000 I1 C1         | C1         | Lifting mode after printing completion; 0: lift to highest point, 1: lift to specified relative distance, 2: no action |
| M5000 I1 D4.500000  | D4.500000  | Lifting speed after print pause (mm/s)                                                                                 |
| M5000 I1 E60.000000 | E60.000000 | Relative distance lifted after print pause (mm)                                                                        |
| M5000 I1 F1         | F1         | Lifting mode after print pause; 0: lift to highest point, 1: lift to specified relative distance, 2: no action         |
| M5000 I1 S4.500000  | S4.500000  | Lifting speed after print stop (mm/s)                                                                                  |
| M5000 I1 P60.000000 | P60.000000 | Relative distance lifted after print stop (mm)                                                                         |
| M5000 I1 R1         | R1         | Lifting mode after print stop; 0: lift to highest point, 1: lift to specified relative distance, 2: no action          |
| M5000 I1 T4.500000  | T4.500000  | Manual control speed (mm/s)                                                                                            |

### **Light Source and Fan Settings**

| Command        | Parameters | Description                                                                                               |
|----------------|------------|-----------------------------------------------------------------------------------------------------------|
| M5000 I2 B200  | B200       | Light source fan frequency                                                                                |
| M5000 I2 C200  | C200       | Light source frequency                                                                                    |
| M5000 I2 D200  | D200       | Illumination frequency                                                                                    |
| M5000 I2 E3000 | E3000      | Buzzer frequency                                                                                          |
| M5000 I3 B2    | B2         | Light source fan mode; 0: always on, 1: off at startup, 2: follow print status, 3: follow exposure status |
| M5000 I3 C2    | C2         | Light source mode; 0: follow machine parameters, 1: follow print file, 2: combine both                    |
| M5000 I4 B255  | B255       | Light source fan PWM (0-255)                                                                              |
| M5000 I4 C255  | C255       | Light source PWM (0-255)                                                                                  |
| M5000 I4 D255  | D255       | Illumination PWM (0-255)                                                                                  |
| M5000 I4 E100  | E100       | Buzzer volume (0-100)                                                                                     |
| M5000 I4 F0    | F0         | Screen orientation (0-3); 0: 0°, 1: 90°, 2: 180°, 3: 270°                                                 |
| M5000 I4 S180  | S180       | Time to enter screensaver (s)                                                                             |
| M5000 I4 P5    | P5         | Time to enter grayscale screensaver (min)                                                                 |

### **Temperature and Sensor Settings**

| Command      | Parameters | Description                                          |
|--------------|------------|------------------------------------------------------|
| M5000 I7 A80 | A80        | Temperature protection upper limit (℃)               |
| M5000 I7 B1  | B1         | Temperature detection disable; 0: disable, 1: enable |
| M5000 I8 A50 | A50        | Factory mode temperature sensor maximum value (℃)    |
| M5000 I8 B0  | B0         | Factory mode temperature sensor minimum value (℃)    |

### **Resin Detection and Calibration Settings**

| Command                | Parameters  | Description                                                                                  |
|------------------------|-------------|----------------------------------------------------------------------------------------------|
| M5000 I4 R0            | R0          | Resin value estimation disable; 0: disable, 1: enable                                        |
| M5000 I4 T870.000000   | T870.000000 | Maximum capacity of the vat (ml)                                                             |
| M5000 I4 X25.500000    | X25.500000  | Maximum abnormal line during actual resin detection stage (mm)                               |
| M5000 I4 Y4.000000     | Y4.000000   | Minimum abnormal line during actual resin detection stage (mm)                               |
| M5000 I203 B4.500000   | B4.500000   | Strain gauge calibration movement speed (mm/s)                                               |
| M5000 I203 C30000      | C30000      | Maximum calibration time for strain gauge (ms)                                               |
| M5000 I203 D5000       | D5000       | Strain gauge stationary judgment time (ms)                                                   |
| M5000 I203 E50         | E50         | Strain gauge stationary judgment threshold                                                   |
| M5000 I204 A45.000000  | A45.000000  | Resin detection starting position (mm); should be greater than the highest liquid level      |
| M5000 I204 B2.000000   | B2.000000   | Resin detection ending position (mm); recommended 1mm or 2mm                                 |
| M5000 I204 C0.050000   | C0.050000   | Resin detection step value (mm); recommended 0.05mm                                          |
| M5000 I204 D2.500000   | D2.500000   | Resin detection movement speed (mm/s)                                                        |
| M5000 I204 E200        | E200        | Resin detection trigger threshold; recognized as liquid level when stress exceeds this value |
| M5000 I204 S143.000000 | S143.000000 | Vat width (mm); used for estimating volume based on detected liquid height                   |
| M5000 I204 P244.000000 | P244.000000 | Vat height (mm); used for estimating volume based on detected liquid height                  |
| M5000 I204 R100.000000 | R100.000000 | Compensation value for estimated resin detection volume (ml)                                 |
| M5000 I205 A2.000000   | A2.000000   | Auto-leveling starting position (mm); should be greater than 1mm                             |
| M5000 I205 B-2.000000  | B-2.000000  | Auto-leveling ending position (mm); recommended -1mm                                         |
| M5000 I205 C0.050000   | C0.050000   | Auto-leveling step value (mm); recommended 0.05mm                                            |
| M5000 I205 D2.000000   | D2.000000   | Auto-leveling movement speed (mm/s); should not be too fast                                  |
| M5000 I205 E28000      | E28000      | Auto-leveling threshold; normally greater than 0                                             |
| M5000 I206 C33000      | C33000      | Foreign object detection trigger threshold                                                   |
| M5000 I206 D1          | D1          | Resin detection probe switch                                                                 |
| M5000 I206 E10         | E10         | Number of resin detection probes                                                             |
| M5000 I206 F-200       | F-200       | Minimum threshold for resin detection probes                                                 |
| M5000 I206 S200        | S200        | Maximum threshold for resin detection probes                                                 |

### **AI Camera and Time-lapse Settings**

| Command                | Parameters  | Description                                                            |
|------------------------|-------------|------------------------------------------------------------------------|
| M5000 I208 A1          | A1          | AI camera detection switch; 0: off, 1: on                              |
| M5000 I208 B100.000000 | B100.000000 | AI camera detection position                                           |
| M5000 I209 A1          | A1          | Time-lapse photography switch; 0: off, 1: on                           |
| M5000 I209 B50.000000  | B50.000000  | Model height threshold not to perform time-lapse photography           |
| M5000 I209 C30.000000  | C30.000000  | Model height to start time-lapse photography                           |
| M5000 I209 D10         | D10         | Time-lapse photography interval layers                                 |
| M5000 I209 E0          | E0          | Whether to move Z to zero position during manual homing; 0: no, 1: yes |
| M5000 I209 F1          | F1          | Whether to move X to zero position during manual homing; 0: no, 1: yes |
| M5000 I209 S10000      | S10000      | Time-lapse quick shot time (real time in ms)                           |
| M5000 I209 P70         | P70         | Interval time between time-lapse quick shots (ms)                      |

### **Printing Time Estimation Settings**

| Command          | Parameters | Description                                             |
|------------------|------------|---------------------------------------------------------|
| M5000 I212 A8420 | A8420      | Slow mode before N layers, X-axis movement time (ms)    |
| M5000 I212 B4410 | B4410      | Slow mode after N layers, X-axis movement time (ms)     |
| M5000 I212 C8420 | C8420      | Fast mode before N layers, X-axis movement time (ms)    |
| M5000 I212 D2430 | D2430      | Fast mode after N layers, X-axis movement time (ms)     |
| M5000 I212 E0    | E0         | Estimated print compensation time (ms); can be negative |

### **Save Parameters**

| Command  | Parameters | Description             |
|----------|------------|-------------------------|
| M5999 I0 | I0         | Save machine parameters |

---
