all: test.bin

test.ihx: test.c
	sdcc -mmos6502 --opt-code-size --no-peep --nooverlay --noinduction --noloopreverse --nolabelopt --noinvariant --no-xinit-opt test.c

test.bin: test.ihx
	sdobjcopy -I ihex -O binary test.ihx test.bin
