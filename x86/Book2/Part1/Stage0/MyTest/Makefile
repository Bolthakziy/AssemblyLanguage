AS = nasm
LK = ld
TARGET = test.out
OBJS = test.o
SRCS = test.asm

$(TARGET) : $(OBJS)
	$(LK) $(OBJS) -o $(TARGET)

$(OBJS) : $(SRCS)
	$(AS) -f elf64 $(SRCS) -o $(OBJS)

clean:
	rm $(OBJS)
	rm $(TARGET)
