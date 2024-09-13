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

## **Overview**

- The `M5000` command is used to set or modify various machine settings.
- `I<number>` identifies a specific registry or functional group within the printer (e.g., Z-axis, X-axis, motors,
  leveling).
- Each letter (`A`, `B`, `C`, etc.) refers to a specific parameter within that functional group, and the value
  associated with that letter sets the desired configuration for that parameter.

Each group (I<number>) and letter (A, B, C, etc.) affects different aspects of the printer’s operation, such as motor
speed, axis limits, homing directions, and more.

---

## **General Format**

```
M5000 I<number> <letter><value> ; <comment>
```

- **M5000**: Command to set the configuration.
- **I<number>**: Defines the functional group (e.g., Z-axis, X-axis, motor settings, etc.).
- **<letter><value>**: Parameter and value to be set.
- **; <comment>**: Optional comment explaining the setting.

---

## **Z-Axis (I0)**

The Z-axis controls the movement of the build platform up and down.

### **Command Structure:**

```
M5000 I0 <letter><value> ; <comment>
```

### **Parameters:**

- **B<value>**: **Z-axis travel distance (mm)**
    - Example: `M5000 I0 A0 B230.000000 ;Z轴行程(mm)`
    - **Description**: Sets the maximum travel distance for the Z-axis in millimeters.

- **C<value>**: **Z-axis motor maximum speed (mm/s)**
    - Example: `M5000 I0 A0 C20.000000 ;Z轴电机最高速度(mm/s)`
    - **Description**: Defines the maximum speed at which the Z-axis motor can move.

- **D<value>**: **Z-axis step size (mm/step)**
    - Example: `M5000 I0 A0 D0.000625000000 ;Z轴电机每步对应的距离(mm/step)`
    - **Description**: Sets the distance moved by the Z-axis per motor step. A smaller value increases the resolution.

- **E<value>**: **Z-axis motor direction**
    - Example: `M5000 I0 A0 E1 ;Z轴电机方向;1为正方向,-1为反方向`
    - **Description**: Determines the direction of the Z-axis motor.
        - `1`: Positive direction
        - `-1`: Negative direction

- **F<value>**: **Z-axis limit mode**
    - Example: `M5000 I0 A0 F1 ;Z轴限位模式;0最小限位,1最大限位,2双限位`
    - **Description**: Sets the limit switch mode for the Z-axis.
        - `0`: Minimum limit
        - `1`: Maximum limit
        - `2`: Dual limit

- **S<value>**: **Z-axis homing direction**
    - Example: `M5000 I0 A0 S1 ;Z轴归零方向;1为正方向,-1为反方向`
    - **Description**: Sets the direction the Z-axis moves during homing.
        - `1`: Positive direction
        - `-1`: Negative direction

- **P<value>**: **Z-axis first stage homing speed (mm/s)**
    - Example: `M5000 I0 A0 P4.500000 ;Z轴第一段归零速度(mm/s)`
    - **Description**: Defines the speed of the Z-axis during the first stage of the homing process.

- **R<value>**: **Z-axis second stage homing speed (mm/s)**
    - Example: `M5000 I0 A0 R1.000000 ;Z轴第二段归零速度(mm/s)`
    - **Description**: Sets the Z-axis speed during the second stage of homing.

- **T<value>**: **Z-axis reverse movement distance before homing (mm)**
    - Example: `M5000 I0 A0 T0.000000 ;Z轴归零前反方向移动距离(mm)`
    - **Description**: Defines the reverse movement distance to be taken before the Z-axis begins homing. This helps
      avoid crashes if the limit switch is far from the physical zero point.

- **X<value>**: **Z-axis reverse movement distance after limit switch trigger (mm)**
    - Example: `M5000 I0 A0 X5.000000 ;Z轴归零过程中第一次触发限位后反向移动的距离(mm)`
    - **Description**: Sets how far the Z-axis should move in reverse after triggering the limit switch during the
      homing process.

- **Y<value>**: **Z-axis zero position**
    - Example: `M5000 I0 A0 Y0.450001 ;Z轴零点位置`
    - **Description**: Defines the zero position for the Z-axis.

- **Z<value>**: **Z zero-point and limit position setting**
    - Example: `M5000 I0 A0 Z1 ;Z零点与限位位置设置; 0:限位位置和Z的零点相同，1:限位位置即和Z的零点不同`
    - **Description**: Determines whether the Z zero-point and limit position are the same.
        - `0`: Same
        - `1`: Different

- **B<value>**: **Z-axis minimum limit polarity**
    - Example: `M5000 I5 A0 B0 ;Z轴最小限位极性;0为低电平触发;1为高电平触发`
    - **Description**: Sets the polarity of the Z-axis minimum limit switch trigger.
        - `0`: Low-level trigger
        - `1`: High-level trigger

- **C<value>**: **Z-axis maximum limit polarity**
    - Example: `M5000 I5 A0 C0 ;Z轴最大限位极性;0为低电平触发;1为高电平触发`
    - **Description**: Defines the polarity for the maximum limit switch of the Z-axis.
        - `0`: Low-level trigger
        - `1`: High-level trigger

- **D<value>**: **Z-axis acceleration (mm/s²)**
    - Example: `M5000 I5 A0 D5.000000 ;Z轴加速度(mm/s²)`
    - **Description**: Sets the Z-axis acceleration in mm/s².

- **E<value>**: **Z-axis initial speed (mm/s)**
    - Example: `M5000 I5 A0 E0.050000 ;Z轴初始速度(mm/s)`
    - **Description**: Sets the initial speed of the Z-axis when starting a movement.

---

## **X-Axis (I1 and I200)**

The X-axis controls the tilting of the vat, which is critical for the resin separation process.

### **Command Structure:**

```
M5000 I1 <letter><value> ; <comment>
M5000 I200 <letter><value> ; <comment>
```

### **Parameters:**

- **B<value>**: **X-axis tilt total angle (degrees)**
    - Example: `M5000 I0 A1 B140.000000 ;X轴离型总角度(度)`
    - **Description**: Sets the total angle that the X-axis tilts for the detachment process.

- **C<value>**: **X-axis motor maximum speed (degrees/s)**
    - Example: `M5000 I0 A1 C900.000000 ;X轴电机最高速度(度/s)`
    - **Description**: Defines the maximum speed for the X-axis motor.

- **D<value>**: **X-axis step size (degrees/step)**
    - Example: `M5000 I0 A1 D0.007031250000 ;X轴电机每步对应的角度(度/step)`
    - **Description**: Sets the angle per step of the X-axis motor.

- **E<value>**: **X-axis motor direction**
    - Example: `M5000 I0 A1 E1 ;X轴电机方向;1为正方向,-1为反方向`
    - **Description**: Determines the direction of the X-axis motor.
        - `1`: Positive direction
        - `-1`: Negative direction

- **P<value>**: **X-axis first stage homing speed (degrees/s)**
    - Example: `M5000 I0 A1 P36.000000 ;X轴第一段归零速度(度/s)`
    - **Description**: Defines the speed of the X-axis during the first stage of homing.

- **R<value>**

  : **X-axis second stage homing speed (degrees/s)**  
  - Example: `M5000 I0 A1 R36.000000 ;X轴第二段归零速度(度/s)`  
  - **Description**: Sets the X-axis speed during the second stage of homing.

- **B<value>**: **X-axis minimum limit polarity**
    - Example: `M5000 I5 A1 B0 ;X轴最小限位极性;0为低电平触发;1为高电平触发`
    - **Description**: Defines the polarity for the minimum limit switch of the X-axis.
        - `0`: Low-level trigger
        - `1`: High-level trigger

- **C<value>**: **X-axis maximum limit polarity**
    - Example: `M5000 I5 A1 C0 ;X轴最大限位极性;0为低电平触发;1为高电平触发`
    - **Description**: Defines the polarity for the maximum limit switch of the X-axis.
        - `0`: Low-level trigger
        - `1`: High-level trigger

- **S<value>**: **X-axis leveling speed after N layers (degrees/s)**
    - Example: `M5000 I200 S72.000000 ;X轴N层后第一段回平速度<高速>(度/s)`
    - **Description**: Sets the first stage leveling speed for the X-axis after printing N layers.

---

## **Motor Currents and Speed Control (I6)**

### **Command Structure:**

```
M5000 I6 <letter><value> ; <comment>
```

### **Parameters:**

- **A<value>**: **X-axis motor current when stationary (0-31)**
    - Example: `M5000 I6 A12 ;X轴静止状态下电机电流(0-31)`
    - **Description**: Sets the motor current for the X-axis while stationary. The value `12`
      represents `(12+1)/32 * 2.5 = 1.02A`.

- **B<value>**: **X-axis motor running current (0-31)**
    - Example: `M5000 I6 B25 ;X轴电机运行电流(0-31)`
    - **Description**: Defines the motor current for the X-axis during operation. The value `25`
      represents `(25+1)/32 * 2.5 = 2.03A`.

- **F<value>**: **Z-axis motor current when stationary (0-31)**
    - Example: `M5000 I6 F9 ;Z轴静止状态下电机电流(0-31)`
    - **Description**: Sets the motor current for the Z-axis while stationary.

- **S<value>**: **Z-axis motor running current (0-31)**
    - Example: `M5000 I6 S18 ;Z轴电机运行电流(0-31)`
    - **Description**: Defines the motor current for the Z-axis during operation.

---

## **Other System Settings**

### **Print Completion and Pause Lift (I1)**

- **A<value>**: **Print completion lift speed (mm/s)**
    - Example: `M5000 I1 A4.500000 ;完成打印抬升速度(mm/s)`
    - **Description**: Sets the speed at which the Z-axis lifts after print completion.

- **B<value>**: **Relative lift distance after print completion (mm)**
    - Example: `M5000 I1 B60.000000 ;完成打印后抬升一段相对距离(mm)`
    - **Description**: Defines the relative lift distance after print completion.

---

