.option norvc

.section .text.init
.global _start

_start:
    la sp, _stack0
    call kernel_start
    
loop:
    j loop
