# Title:  					Filename:
# Author:  				Date:
# Description:
# Input:
# Output:
################# Data segment #####################
.data
    total:  .word 0
    num1:   .word 100
    num2:   .word 200
    ival:   .word 10
    jval:   .word 10
################# Code segment #####################
.text
.globl main
main:
    lw  $t1, num1   # loads num1 into $t1
    lw  $t2, num2   # loads num2 into $t2
    lw  $t3, ival   # loads ival into $t3
    lw  $t4, jval   # loads jval into $t4

    #if (i < j)
    slt $t5, $t3, $t4 # sets $t5 to 1 if ival < jval 
    beq $t3, $0, false  # branch to label false if ival == 0
    add $t0, $t1, $t2   # adds $t2 and $t1 and sets it to $t0
    j exit 
false:
    sub $t0, $t1, $t2   # if ival is 0, subtract num2 from num1 and store in $t0
exit:
    sw  $t0, total stores total in $t0 