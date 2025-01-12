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


´´´bash
make BR2_EXTERNAL=</path/to/40-buildroot> menuconfig
```

After that the project specific configuration files will be used without having to include the `BR2_EXTERNAL` variable in the make command.

### Build the project

ToDO: Add the steps to build the project

```bash
make
```

## 2. Customizing the BuildRoot, U-Boot and Kernel
 ToDo: Add the steps to customize the buildroot, u-boot and kernel