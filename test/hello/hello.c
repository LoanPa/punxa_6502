#include <stdio.h> // For basic printf, if you implement putchar
#include <stdint.h> // For fixed-width integer types

#define UART_BASE = 0xE000

#define UART_DR 0   # Receive Data Register / Transmit Data Register
#define UART_SR 1   # Status Register
#define UART_MR 2   # Command Register
#define UART_CR 3   # Control Register

// You will likely need to implement putchar if you use printf
// This is a common requirement for embedded systems.
// For a 6502 system, this would write to a UART or display hardware.
int putchar(int c) 
{
    unsigned char* pUart = (unsigned char*) UART_BASE;
    
    pUart[0] = c;
    
    return c;
}

void main(void) 
{
    printf("Hello World 6502!\n");
}
