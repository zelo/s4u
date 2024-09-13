Informations about Elegoo Saturn 4 Ultra

# Hardware (from boot log analysis)

**Updated Hardware Components Table with Links**

| **Component**             | **Details**                                          | **Additional Information & Links**                                                                                                                                                                                                                                                                                                  |
|---------------------------|------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **SoC**                   | **SigmaStar SSD202D**                                | - Dual-core ARM Cortex-A7 CPU<br>- 128 MB DDR RAM<br>- Integrated peripherals including Ethernet, USB, and more<br>- [SigmaStar SSD202D Documentation](https://github.com/iscle/SigmaStar-SSD202D-Docs/tree/main)<br>- [Linux Support Information](https://linux-chenxing.org/infinity2/#ssd202d)                                   |
| **Storage**               | **8 GB eMMC - Samsung KLM8G1GETF-B041**              | - eMMC 5.1 standard<br>- High performance and reliability for embedded applications<br>- [Samsung KLM8G1GETF-B041 Product Page](https://semiconductor.samsung.com/estorage/emmc/emmc-5-1/klm8g1getf-b041/)                                                                                                                          |
| **FPGA**                  | **WILNX17 BG256**                                    | - FPGA device by Jing Zhong Semiconductor<br>- Specific datasheet unavailable<br>- [WILNX17 BG256 Product Page](https://jingzhongsemi.com/cn/product/WILNX17.html)                                                                                                                                                                  |
| **Wi-Fi Module**          | **Realtek RTL8811CU**                                | - Supports 802.11ac Wi-Fi standard<br>- USB interface<br>- Provides wireless connectivity<br>- [Realtek RTL8811CU Product Page](https://www.realtek.com/en/products/communications-network-ics/item/rtl8811cu)<br>- [Datasheet](https://www.lcsc.com/datasheet/lcsc_datasheet_2302141730_Realtek-Semicon-RTL8811CU-CG_C2687136.pdf) |
| **Touchscreen**           | **Goodix Capacitive Touchscreen (Goodix-TS 1-005d)** | - Identified in boot log<br>- Likely used for user input<br>- [Goodix Touchscreen Controllers](https://www.goodix.com/en/products/touchscreen-controllers)                                                                                                                                                                          |
| **Display Panel**         | **LCD Display with Resolution 480x800**              | - Display output for user interface<br>- Rotation capabilities                                                                                                                                                                                                                                                                      |
| **Camera**                | **UVC-Compliant HD Camera (UC01 HD Camera)**         | - USB-connected camera<br>- Used for monitoring or scanning<br>- [UVC Devices Information](https://www.kernel.org/doc/html/latest/userspace-api/media/uvcvideo.html)                                                                                                                                                                |
| **USB Ports**             | **Multiple USB 2.0 EHCI Controllers**                | - Enables connection of USB devices<br>- Managed by EHCI drivers                                                                                                                                                                                                                                                                    |
| **Ethernet Interface**    | **Ethernet Controller (sstar_emac)**                 | - Integrated Ethernet MAC in SoC<br>- Provides wired network connectivity                                                                                                                                                                                                                                                           |
| **Stepper Motor Drivers** | **TMC2209 and FQ6630 Stepper Motor Drivers**         | - Used for precise motor control<br>- Common in 3D printers for axis movement<br>- **TMC2209**: [Datasheet](https://www.trinamic.com/fileadmin/assets/Products/ICs_Documents/TMC2209_datasheet.pdf)<br>- **FQ6630**: Datasheet not readily available                                                                                |
| **Temperature Sensor**    | **Onboard Temperature Sensor**                       | - Monitors device temperature<br>- Reports around 30°C in logs                                                                                                                                                                                                                                                                      |
| **I2C Devices**           | **I2C Bus Devices**                                  | - Communication with peripherals<br>- Notable error with device at address `0x82`                                                                                                                                                                                                                                                   |
| **GPIO Interfaces**       | **General Purpose Input/Output Pins**                | - Used for hardware control<br>- Configured during boot (`gpio debug` messages)                                                                                                                                                                                                                                                     |
| **Storage Partitions**    | **Multiple MTD Partitions on SPI NAND Flash**        | - 128 MiB SPI NAND Flash<br>- Partitions include `KERNEL`, `UBI`, etc.                                                                                                                                                                                                                                                              |
| **MMC Interfaces**        | **MicroSD/MMC Card Interface**                       | - eMMC storage (`mmcblk0`)<br>- Supports additional storage options                                                                                                                                                                                                                                                                 |

# Boot Log Analysis (based on boot.log file by ChatGPT)

1. Boot Process Overview

    The device undergoes the following boot sequence:

    Initial Program Loader (IPL): Begins with IPL g75a3331, indicating the bootloader version.
    U-Boot Bootloader:
        Version: U-Boot 2015.01
        Build Date: July 03, 2024
        Build Info: Build: jenkins-PPL_100-PACKAGE-OS-CL103-811
    Linux Kernel:
        Version: 4.9.84
        Build Date: July 03, 2024
        Processor: ARM Cortex-A7 (ARMv7 Processor [410fc075] revision 5)
    Filesystem:
        Root filesystem mounted as UBIFS from UBI volume.

2. Hardware Details

   CPU: ARM Cortex-A7 (dual-core)
   Memory:
   RAM: 128 MB
   eMMC Storage: 7.28 GiB (mmcblk0)
   Flash Storage:
   Type: SPI NAND (SPINAND)
   Size: 128 MiB
   Partitions: 13 MTD partitions (e.g., IPL0, UBOOT0, KERNEL, UBI)
   Peripherals:
   Touchscreen: Goodix Capacitive TouchScreen (Goodix-TS 1-005d)
   Camera: UVC-compliant camera detected (UC01 HD Camera)
   USB Ports: Multiple USB EHCI controllers initialized
   Network Interfaces:
   Ethernet: sstar_emac driver
   Wi-Fi: Realtek 802.11ac NIC (rtl8821cu driver)
   Sensors:
   Temperature Sensor: Reports temperatures around 30°C

3. Software Components

   Operating System: Embedded Linux
   Bootloader: U-Boot
   Kernel Modules:
   Various modules are attempted to load (e.g., exfat.ko, uvcvideo)
   Services and Applications:
   Networking: udhcpc DHCP client, Wi-Fi supplicant
   RTSP Server: Streams video from the camera
   WebSocket Listener: Runs on ws://0.0.0.0:3030/websocket
   Custom Applications: Indications of custom applications like ai_camera, sdcp_v3, and others

4. Device Functionality

    Based on the log entries, the device appears to be a 3D printer with the following features:

    Motion Control:
        Axes: References to axis, stepper, endstop, and homing procedures
        Motor Drivers: tmc2209, fq6630 (common stepper motor drivers)
    Printing Parameters:
        Layer Information: CurrentLayer, TotalLayer
        Print Screen: PrintScreen value indicates progress or status
    FPGA Integration:
        FPGA Initialization: Logs related to fpga, suggesting use for real-time control
    User Interface:
        Touchscreen Input: Goodix touchscreen driver initialized
        Display Output: References to framebuffer and display settings

5. Network Connectivity

   Wi-Fi Connection:
   Connects to a Wi-Fi network with DHCP
   Obtains IP address and DNS information
   Server Connections:
   Communicates with mms.chitubox.com, indicating possible firmware updates or telemetry
   Attempts to start services like ws_client_register

6. Errors and Warnings

   Service Startup Failures:
   syslogd, klogd, and mdev fail to start due to missing start-stop-daemon
   Logs:
   /etc/init.d/S01syslogd: line 16: start-stop-daemon: not found
   Similar errors for S02klogd and S10mdev
   Module Loading Failures:
   Unable to insert certain kernel modules
   Logs:
   insmod: can't insert '/config/modules/4.9.84/exfat.ko': No such file or directory
   Similar errors for videodev.ko, v4l2-common.ko, etc.
   Filesystem Mounting Issues:
   Errors mounting partitions with NTFS and exFAT filesystems
   Logs:
   NTFS signature is missing. Failed to mount '/dev/mmcblk0p1': Invalid argument
   FAT-fs (mmcblk0p1): utf8 is not a recommended IO charset for FAT filesystems
   I2C Communication Errors:
   Unable to communicate with a device at address 0x82
   Logs:
   ERROR: Bus[0] in ms_i2c_xfer_write: Slave dev NAK, Addr: 0x82
   USB Device Issues:
   Errors related to USB device descriptors
   Logs:
   usb_get_configuration_no: failed to get descriptor - too long: 1992
   Other Warnings:
   WARNING: Caches not enabled during DRAM initialization
   hctosys: unable to open rtc device (rtc0)

7. Recommendations

   Service Failures:
   Ensure that start-stop-daemon is installed and properly located in the system PATH.
   Verify scripts in /etc/init.d/ reference the correct paths.
   Kernel Modules:
   Check that all necessary kernel modules are present in /config/modules/4.9.84/.
   Rebuild or install missing modules if necessary.
   Filesystem Mounting:
   Install necessary filesystem drivers for NTFS and exFAT if support for these filesystems is required.
   Ensure that the mount command is used with correct options matching the filesystem type.
   I2C Device at Address 0x82:
   Investigate the device connected at I2C address 0x82.
   Check for hardware connectivity issues or device malfunctions.
   USB Devices:
   Ensure that connected USB devices are compatible and functioning correctly.
   Update USB drivers if necessary.

8. Additional Observations

   Device Identity:
   References to ELEGOO and CHITUBOX suggest the device is an ELEGOO 3D printer using Chitu firmware.
   Logs:
   curl url : https://mms.chitubox.com/mainboardVersionUpdate/getInfo.do7?machineType=ELEGOO
   Security Considerations:
   The boot log ends with a login prompt: (none) login:
   Ensure that default passwords are changed to secure the device.
   Consider disabling unnecessary services if not required.

9. Conclusion

    The boot log indicates that the device is a network-connected 3D printer with various peripherals and services. There
    are some issues during boot, primarily related to missing executables and kernel modules. Addressing these issues will
    improve system stability and functionality.

