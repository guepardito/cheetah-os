#include <stdint.h>

__attribute__ ((aligned (16))) char _stack0[4096 * 4];

// boot.S calls this function on stack0
void kernel_start()
{
    volatile uint32_t *uart = (uint32_t *) 0x10000000; // uart memory pointer

    *uart = 'G'; // prints the char 4 times, need to fix it
}