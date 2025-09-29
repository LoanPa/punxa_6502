all: hello.bin

clean:
	rm -f hello.ihx

hello.ihx: hello.c
	sdcc -mmos6502 hello.c

hello.bin: hello.ihx
	sdobjcopy -I ihex -O binary hello.ihx hello.bin
