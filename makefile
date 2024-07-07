AS = riscv64-unknown-elf-as
CC = riscv64-unknown-elf-gcc
LD = riscv64-unknown-elf-ld

BOOT_SRC = boot.S
KERNEL_SRC = kernel.c
LINKER_SCRIPT = linker.ld

BOOT_OBJ = boot.o
KERNEL_OBJ = kernel.o
OUTPUT = kernel.elf

all: $(OUTPUT)

$(BOOT_OBJ): $(BOOT_SRC)
	$(AS) $< -o $@

$(KERNEL_OBJ): $(KERNEL_SRC)
	$(CC) -c $< -o $@

$(OUTPUT): $(BOOT_OBJ) $(KERNEL_OBJ)
	$(LD) -T $(LINKER_SCRIPT) $^ -o $@

clean:
	rm -f $(BOOT_OBJ) $(KERNEL_OBJ) $(OUTPUT)
