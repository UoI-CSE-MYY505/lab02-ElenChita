
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
    add s0, zero, zero
loop:
    beq a1, 0 done # if a1 =0 done
    lw t1, 0(a0) #take the address of the first element
    bne a2, t1, nextStep # if a2 != t1 nextSteptarget
    add s0, a0, zero #matching element's address in s0
nextStep:
    addi a0, a0, 4 #for next word
    addi a1, a1, -1
    j loop  # jump to loop
done:
    addi a7, zero, 10 
    ecall
