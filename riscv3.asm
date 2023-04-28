.text
	li a7, 5
	ecall
	add a1, a0, zero
	
	li a7, 32
	li s2, 0
	li a0, 1
    
label_while:
    addi a2, a2, 1
    li a7, 32
    li a0, 1000
    ecall
    li a7, 1
    mv a0, a2
    ecall
    li a7, 11
    li a0, '\n'
    ecall
    blt a2, a1, label_while