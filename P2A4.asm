# Title:  					Filename:
# Author:  				Date:
# Description:
# Input:
# Output:
################# Data segment #####################
.data
    num:    .word   -1, -2, -3
    total:  .word   0
    N:      .word   3
################# Code segment #####################
.text
.globl  main
main: 
    la      $t0,    num
    lw      $t2,    N  
    ori     $t3,    $0, 0

loop:
    add  $t5, $t5, $t0
    lw  $t5, 0($t5)
    add   $t1, $t1, $t5 

    addi    $t3, $t3, 1
    sll     $t5, $t3, 2
    bne     $t3, $t2, loop
    sw      $t1, total
    li      $v0, 10
    syscall