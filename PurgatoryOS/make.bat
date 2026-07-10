nasm -f bin PurgatoryOS/bootloader/boot.asm -o PurgatoryOS/binaries/boot.bin
nasm -f bin PurgatoryOS/bootloader/kernel.asm -o PurgatoryOS/binaries/kernel.bin

copy /b PurgatoryOS/binaries/boot.bin + PurgatoryOS/binaries/kernel.bin PurgatoryOS_1.0.img
timeout /t 1>nul
qemu-system-i386 -drive format=raw,file=PurgatoryOS_1.0.img -serial stdio