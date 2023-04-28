.text
	li a7, 5
	ecall
	add a1, a0, zero
	
	li a2, 0
	li a7, 11
    
label_while:
    addi a2, a2, 1

    
    li a3, 0
    sub a5, a1, a2
label_str1:   
    addi a3, a3, 1	     
    li a0, ' '
    ecall
    blt a3, a5, label_str1   
                
    
    
    li a3, 0
label_str2:   
    addi a3, a3, 1	     
    li a0, '*'
    ecall
    blt a3, a2, label_str2
    
    
    li a3, 0
label_str3:   
    addi a3, a3, 1	     
    li a0, '*'
    ecall
    blt a3, a2, label_str3 
                
    
    
    li a3, 0
    sub a5, a1, a2
label_str4:   
    addi a3, a3, 1	     
    li a0, ' '
    ecall
    blt a3, a5, label_str4
    
    
    li a0, '\n'
    ecall
    blt a2, a1, label_while