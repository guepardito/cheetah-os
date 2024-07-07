
# 🐆 CheetahOS

## Prerequisites

You will need the RISC-V toolchain, which you can obtain using the instructions on the [riscv-gnu-toolchain](https://github.com/riscv-collab/riscv-gnu-toolchain) page.

You will also need QEMU to emulate the OS, which can be found on the [official QEMU page](https://www.qemu.org/).

## Installation

Use **make** to generate **kernel.elf**:

```sh
make
```

## Running CheetahOS

Once you have compiled the kernel, you can use the following command to run CheetahOS:

```sh
qemu-system-riscv64 -machine virt -cpu rv64 -smp 4 -m 128M -nographic -serial mon:stdio -bios none -kernel kernel.elf
```
