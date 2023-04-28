.data

frameBuffer: 	.space 	0x80000		#512 wide x 256 high pixels

.text


	la 	t0, frameBuffer	# load frame buffer addres
	li 	t1, 8192		# save 512*256 pixels
	li 	t2, 0x00d3d3d3		# load light gray color
	li  t3, 0x00888888 
	li a4, 8
l1:
	
	
	sw   	t2, 0(t0)
	rem a3, t1, a4
	bne a3, zero, l2
	sw   	t3, 0(t0)

l2:
	addi 	t0, t0, 4 	# advance to next pixel position in display
	addi 	t1, t1, -1	# decrement number of pixels
	bnez 	t1, l1		# repeat while number of pixels is not zero