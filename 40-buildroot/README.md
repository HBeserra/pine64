# Custom Configurations

The BuildRoot projects allows to store project specific files outside the buildroot tree, for more details see the [buildroot manual](https://buildroot.org/downloads/manual/manual.html#outside-br-custom) and [layout](https://buildroot.org/downloads/manual/manual.html#_example_layout)

## 1.Install BuildRoot and tools

### Setup BuildRoot and tools
Install the required tools for the buildroot project

```bash
sudo apt update
sudo apt install build-essential ncurses-base ncurses-bin dialog libncurses5-dev file  
```

### Download BuildRoot
Download the buildroot source code from the [buildroot website](https://buildroot.org/download.html)

```bash
wget https://buildroot.org/downloads/buildroot-2024.11.1.tar.gz 
tar -xvf buildroot-2024.11.1.tar.gz
rm buildroot-2024.11.1.tar.gz
cd buildroot-2024.11.1
```

### Configure the buildroot to use the project file

Load the project specific configuration files by including the `BR2_EXTERNAL` variable in the make command, 
the `pine64_plus_defconfig` is the custom configuration file for the pine64_plus board.

´´´bash
make BR2_EXTERNAL=../40-buildroot pine64_plus_defconfig
```

Now you can build the project using the `make` command. This will download the required packages, build the toolchain, kernel, u-boot and rootfs.

> Note: The build process may take a while depending on the system configuration.

You can use the make menuconfig to customize the buildroot configuration


```bash
make
```

After the build is complete, the output files will be available in the `buildroot-2024.11.1/output/images` directory.

This default configuration will allow you to start experimenting with the
buildroot environment for the Pine64. With the current configuration
it will bring-up the board, and allow access through the serial console.

### Flashing the image to the SD card

To flash the image to the SD card, insert the SD card into the computer and run the following command:

```bash
sudo dd if=output/images/sdcard.img of=/dev/sdX bs=4M
```

Replace `/dev/sdX` with the correct device name of the SD card.

Insert the micro SDcard in your Pine64 and power it up. The console
is on the serial line, 115200 8N1.

## 2. Customizing the BuildRoot, U-Boot and Kernel
  After the initial build, you can customize BuildRoot, U-Boot, and the kernel by modifying the configuration files in the `40-buildroot` directory. To apply the changes, run the `make` command again to rebuild the project with the new configurations. You can use the `make <package>-rebuild` command to rebuild a specific package. For example:

  ```bash
  make uboot-rebuild
  make linux-rebuild
  make
  ```

  If you change the defconfig file or add new files to the project, use the `make pine64_plus_defconfig` command to regenerate the configuration files.

  To clean the build directory and start from scratch, use the `make clean` command.
