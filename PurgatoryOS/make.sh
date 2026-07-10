nasm -f bin PurgatoryOS/bootloader/boot.asm -o PurgatoryOS/binaries/boot.bin
nasm -f bin PurgatoryOS/bootloader/kernel.asm -o PurgatoryOS/binaries/kernel.bin

cat PurgatoryOS/binaries/boot.bin PurgatoryOS/binaries/kernel.bin > PurgatoryOS_1.0.img