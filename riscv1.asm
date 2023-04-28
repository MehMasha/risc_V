.data
    buffer: .asciz "The quick brown fox jumps over the lazy dog."
.text
    # li a7, 4
    # la a0, buffer
    # ecall
    li a7, 5
    ecall
    add a1, a0, zero
    ecall
    add a2, a0, zero
    
    li a7, 1
    
    blt a1, a2, label_if
    mv a2, a1
    mv a1, a0
    
    
label_if: 
    
    li a3, 0
    li a4, 10
    
label_while:
    add a0, a1, a2
    li a7, 1
    ecall
    mv a1, a2
    mv a2, a0
    addi a3, a3, 1
    li a7, 11
    li a0, '\n'
    ecall
    blt a3, a4, label_while
    
    
    