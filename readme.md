# Pine A64+ Custom Linux From Scratch

Pine A64+ is a arm64 SBC with a allWinner SOC, this repo aims to provide a comprehensive guide on building a custom Linux system for this board.

## The Problem

The Pine A64+ is a old but stil powerfull board, the support for the processor and the board is , I'm using this repo to document my learning process in embedded linux.


## Getting Started

To get started, you'll need the following:

- Pine A64+ board
- Power supply
- MicroSD card (at least 8GB)
- Serial console cable (optional but recommended)
- A host computer running Linux
- 7" LCD Display (optional but recommended, I will try to add suppot to this device)

## Objectives

- Install the Toolchain
- Compile the Kernel
- Build the File System
- Build the Bootloader
- Boot the board (whitout changes)
- Add a dummy device to the device tree
- Add simple device (GPIO or LEDs)
- Add the 7" LCD display

## The Problem

The Pine A64+ is a old but stil powerfull board, the suport for the processor and the board is low, I'm using this repo to document my learning process in embedded linux.

# Terms 

`Device Tree Source (DTS)` is a description of the hardware components in a system and their configuration. It is used by the Linux kernel to manage and interface with the hardware.

`System on Chip (SoC)` is an integrated circuit that consolidates all components of a computer or other electronic system into a single chip. It typically includes a CPU, memory, input/output ports, and secondary storage – all on a single substrate.

