

# 🐆CheetahOS

## Prerrequisites
You will need risc-v toolchain which you can obtain using the instructions on [riscv-gnu-toolchain](https://github.com/riscv-collab/riscv-gnu-toolchain).

You will also need qemu to emulate the OS where can be found at [qemu official page](https://www.qemu.org/)

## Instalation

Use **make** to generate **kernel.elf**

```
make
```

## Running CheetahOS

Once you compiled the kernel, you may use the following command to run CheetahOS

```
qemu-system-riscv64 -machine virt -cpu rv64 -smp 4 -m 128M -nographic -serial mon:stdio -bios none -kernel kernel.elf
```
