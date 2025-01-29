kernel.img : boot.bin kernel.bin
		copy boot.bin + kernel.bin /b kernel.img

boot.bin : boot.asm
		nasm -f bin -o boot.bin boot.asm

kernel.bin : kernel.asm
		nasm -f bin -o kernel.bin kernel.asm

clean :
		rm boot.bin 
		rm kernel.bin
		rm kernel.img