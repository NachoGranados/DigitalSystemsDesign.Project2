.data	

	backgroundColor:	.word 0x00000000		
	blueColor:		.word 0x00007bff
	yellowColor:		.word 0x00ffc800
	




.text


NewGame:

	jal ClearBoard

	Letters:					
			
		# W			
		li $a0, 14
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 7
		jal DrawVerticalLine
		
		li $a0, 15
		li $a1, 8
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 16
		li $a1, 6
		lw $a2, yellowColor
		li $a3, 7
		jal DrawVerticalLine
		
		li $a0, 17
		li $a1, 8
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 18
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 7
		jal DrawVerticalLine
		
		
		# I		
		li $a0, 20
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 8
		jal DrawVerticalLine
		
		# Z
		li $a0, 22
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 26
		jal DrawHorizontalLine
		
		li $a0, 26
		li $a1, 3
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 25
		li $a1, 4
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 24
		li $a1, 5
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 23
		li $a1, 6
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 22
		li $a1, 7
		lw $a2, yellowColor
		jal DrawPoint
						
		li $a0, 22
		li $a1, 8
		lw $a2, yellowColor
		li $a3, 26
		jal DrawHorizontalLine
		
		# A
		li $a0, 28
		li $a1, 4
		lw $a2, yellowColor
		li $a3, 8
		jal DrawVerticalLine	
		
		li $a0, 29
		li $a1, 3
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 30
		li $a1, 2
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 31
		li $a1, 3
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 32
		li $a1, 4
		lw $a2, yellowColor
		li $a3, 8
		jal DrawVerticalLine
		
		li $a0, 28
		li $a1, 6
		lw $a2, yellowColor
		li $a3, 32
		jal DrawHorizontalLine
		
		# R
		li $a0, 34
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 8
		jal DrawVerticalLine
		
		li $a0, 38
		li $a1, 3
		lw $a2, yellowColor
		li $a3, 4
		jal DrawVerticalLine
		
		li $a0, 34
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 37
		jal DrawHorizontalLine
		
		li $a0, 34
		li $a1, 5
		lw $a2, yellowColor
		li $a3, 37
		jal DrawHorizontalLine
		
		li $a0, 36
		li $a1, 6
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 37
		li $a1, 7
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 38
		li $a1, 8
		lw $a2, yellowColor
		jal DrawPoint
		
		# D
		li $a0, 40
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 8
		jal DrawVerticalLine
		
		li $a0, 44
		li $a1, 3
		lw $a2, yellowColor
		li $a3, 7
		jal DrawVerticalLine
		
		li $a0, 40
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 43
		jal DrawHorizontalLine
		
		li $a0, 40
		li $a1, 8
		lw $a2, yellowColor
		li $a3, 43
		jal DrawHorizontalLine
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
				
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		
# $a0 the x starting coordinate
# $a1 the y coordinate
# $a2 the color
# $a3 the x ending coordinate
DrawHorizontalLine:
		
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub $t9, $a3, $a0
		move $t1, $a0
		
	HorizontalLoop:
		
		add $a0, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, HorizontalLoop
		
		lw $ra, 0($sp)		# put return back
   		addi $sp, $sp, 4

		jr $ra
		
		
# $a0 the x coordinate
# $a1 the y starting coordinate
# $a2 the color
# $a3 the y ending coordinate
DrawVerticalLine:

		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub $t9, $a3, $a1
		move $t1, $a1
		
	VerticalLoop:
		
		add $a1, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, VerticalLoop
		
		lw $ra, 0($sp)		# put return back
   		addi $sp, $sp, 4
   		
		jr $ra
		
		
# $a0 contains x position
#$a1 contains y position
#$a2 contains the color	
DrawPoint:
		sll $t0, $a1, 6   # multiply y-coordinate by 64 (length of the field)
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)		# draw the color to the location
		
		jr $ra

		
# Makes the entire bitmap display the background color (black)
ClearBoard:
		lw $t0, backgroundColor
		li $t1, 8192 # The number of pixels in the display
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra	
		
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
