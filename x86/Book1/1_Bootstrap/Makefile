CC = nasm
TARGET = boot.img
SRCS = boot.asm
BIN = boot.bin

$(TARGET) : $(SRCS)
		$(CC) -f bin -o $(TARGET) $(SRCS)

clean :
		rm $(BIN)
		rm $(TARGET)