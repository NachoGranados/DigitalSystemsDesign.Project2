.data	

	backgroundColor:	.word 0x00000000		
	wallColor:		.word 0x00007bff
	worriorColor:		.word 0x00ffc800
	




.text


NewGame:

	jal ClearBoard

	Lines:
	
		# Player		
		lw $a2, worriorColor
		
		li $a0, 28
		li $a1, 2	
		jal DrawPoint
		
		li $a0, 29
		li $a1, 2	
		jal DrawPoint
		
		li $a0, 30
		li $a1, 2
		jal DrawPoint
						
		li $a0, 28
		li $a1, 3
		jal DrawPoint
		
		li $a0, 29
		li $a1, 3
		jal DrawPoint
		
		li $a0, 30
		li $a1, 3
		jal DrawPoint
				
		li $a0, 28
		li $a1, 4
		jal DrawPoint
		
		li $a0, 29
		li $a1, 4
		jal DrawPoint
		
		li $a0, 30
		li $a1, 4
		jal DrawPoint
						
	
		# MAP LINES
		
		lw $a2, wallColor
		
		
		# Horizontal lines
				
		# First level line
		li $a0, 6
		li $a1, 0		
		li $a3, 57
		jal DrawHorizontalLine
							
		
		# Second level lines
		li $a0, 28
		li $a1, 6		
		li $a3, 34
		jal DrawHorizontalLine
						
			
		# Third level lines		
		li $a0, 28
		li $a1, 12		
		li $a3, 34
		jal DrawHorizontalLine
				
		
		# Fourth level lines		
		li $a0, 28
		li $a1, 18		
		li $a3, 34
		jal DrawHorizontalLine
				
		
		# Fiveth level lines		
		li $a0, 28
		li $a1, 24		
		li $a3, 34
		jal DrawHorizontalLine
				
		
		# Sixth level lines		
		li $a0, 28
		li $a1, 30		
		li $a3, 34
		jal DrawHorizontalLine
		
		# Seventh level lines		
		li $a0, 6
		li $a1, 36		
		li $a3, 57
		jal DrawHorizontalLine
		
		# Vertical lines
		
		lw $a2, worriorColor
		
		li $a0, 6
		li $a1, 0		
		li $a3, 10
		jal DrawVerticalLine
		
		li $a0, 6
		li $a1, 18		
		li $a3, 36
		jal DrawVerticalLine
		
		
		
		
		
		
		
				
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		
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
# $a1 contains y position
# $a2 contains the color	
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
		
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
