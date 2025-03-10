CC = nasm
CMD = copy
TARGET = kernel.img
SRCS1 = boot.asm
SRCS2 = kernel.asm
BIN1 = boot.bin
BIN2 = kernel.bin

$(TARGET) : $(BIN1) $(BIN2)
		$(CMD) $(BIN1) + $(BIN2) /b $(TARGET) 

$(BIN1) : $(SRCS1)
		$(CC) -f bin -o $(BIN1) $(SRCS1)

$(BIN2) : $(SRCS2)
		$(CC) -f bin -o $(BIN2) $(SRCS2)

clean :
		rm $(BIN1)
		rm $(BIN2)
		rm $(TARGET)