# Title:  					Filename:
# Author:  				Date:
# Description:
# Input:
# Output:
################# Data segment #####################
.data
    total:      .word       0
    num1:       .word       100
    num2:       .word       200
    ival:       .word       10
    jval:       .word       10
################# Code segment #####################
.text
.globl main
main:
    lw $t1, num1
    lw $t2, num2
    lw $t3, ival
    lw $t4, jval

    # if ( i >= j ) # ( i < j )
    #       T            F
    slt $t5, $t3, $t4
    bne  $t5, $0, false
    add $t0, $t1, $t2
    j   exit
false:
    sub $t0, $t1, $t2
exit: 
    sw  $t0, total