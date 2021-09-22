.data	

	backgroundColor:	.word 0x00000000		
	blueColor:		.word 0x00007bff
	yellowColor:		.word 0x00ffc800
	




.text


NewGame:

	jal ClearBoard

	DrawMenu:					
			
		# W			
		li $a0, 15
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 7
		jal DrawVerticalLine
		
		li $a0, 16
		li $a1, 8
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 17
		li $a1, 6
		lw $a2, yellowColor
		li $a3, 7
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 8
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 19
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 7
		jal DrawVerticalLine		
		
		# I		
		li $a0, 21
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 8
		jal DrawVerticalLine
		
		# Z
		li $a0, 23
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 27
		jal DrawHorizontalLine
		
		li $a0, 27
		li $a1, 3
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 26
		li $a1, 4
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 25
		li $a1, 5
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 24
		li $a1, 6
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 23
		li $a1, 7
		lw $a2, yellowColor
		jal DrawPoint
						
		li $a0, 23
		li $a1, 8
		lw $a2, yellowColor
		li $a3, 27
		jal DrawHorizontalLine
		
		# A
		li $a0, 29
		li $a1, 4
		lw $a2, yellowColor
		li $a3, 8
		jal DrawVerticalLine	
		
		li $a0, 30
		li $a1, 3
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 31
		li $a1, 2
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 32
		li $a1, 3
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 33
		li $a1, 4
		lw $a2, yellowColor
		li $a3, 8
		jal DrawVerticalLine
		
		li $a0, 29
		li $a1, 6
		lw $a2, yellowColor
		li $a3, 33
		jal DrawHorizontalLine
		
		# R
		li $a0, 35
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 8
		jal DrawVerticalLine
		
		li $a0, 39
		li $a1, 3
		lw $a2, yellowColor
		li $a3, 4
		jal DrawVerticalLine
		
		li $a0, 35
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 35
		li $a1, 5
		lw $a2, yellowColor
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 37
		li $a1, 6
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 38
		li $a1, 7
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 39
		li $a1, 8
		lw $a2, yellowColor
		jal DrawPoint
		
		# D
		li $a0, 41
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 8
		jal DrawVerticalLine
		
		li $a0, 45
		li $a1, 3
		lw $a2, yellowColor
		li $a3, 7
		jal DrawVerticalLine
		
		li $a0, 41
		li $a1, 2
		lw $a2, yellowColor
		li $a3, 44
		jal DrawHorizontalLine
		
		li $a0, 41
		li $a1, 8
		lw $a2, yellowColor
		li $a3, 44
		jal DrawHorizontalLine
		
		# O
		li $a0, 26
		li $a1, 12
		lw $a2, yellowColor
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 30
		li $a1, 12
		lw $a2, yellowColor
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 27
		li $a1, 11
		lw $a2, yellowColor
		li $a3, 29
		jal DrawHorizontalLine
		
		li $a0, 27
		li $a1, 17
		lw $a2, yellowColor
		li $a3, 29
		jal DrawHorizontalLine
		
		# F
		li $a0, 32
		li $a1, 11
		lw $a2, yellowColor
		li $a3, 17
		jal DrawVerticalLine
		
		li $a0, 32
		li $a1, 11
		lw $a2, yellowColor
		li $a3, 36
		jal DrawHorizontalLine
		
		li $a0, 32
		li $a1, 14
		lw $a2, yellowColor
		li $a3, 34
		jal DrawHorizontalLine
		
		# W
		li $a0, 23
		li $a1, 20
		lw $a2, yellowColor
		li $a3, 25
		jal DrawVerticalLine
		
		li $a0, 24
		li $a1, 26
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 25
		li $a1, 24
		lw $a2, yellowColor
		li $a3, 25
		jal DrawVerticalLine
		
		li $a0, 26
		li $a1, 26
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 27
		li $a1, 20
		lw $a2, yellowColor
		li $a3, 25
		jal DrawVerticalLine
		
		# O
		li $a0, 29
		li $a1, 21
		lw $a2, yellowColor
		li $a3, 25
		jal DrawVerticalLine
		
		li $a0, 33
		li $a1, 21
		lw $a2, yellowColor
		li $a3, 25
		jal DrawVerticalLine
		
		li $a0, 30
		li $a1, 20
		lw $a2, yellowColor
		li $a3, 32
		jal DrawHorizontalLine
		
		li $a0, 30
		li $a1, 26
		lw $a2, yellowColor
		li $a3, 32
		jal DrawHorizontalLine			
		
		# R
		li $a0, 35
		li $a1, 20
		lw $a2, yellowColor
		li $a3, 26
		jal DrawVerticalLine
		
		li $a0, 39
		li $a1, 21
		lw $a2, yellowColor
		li $a3, 22
		jal DrawVerticalLine
		
		li $a0, 35
		li $a1, 20
		lw $a2, yellowColor
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 35
		li $a1, 23
		lw $a2, yellowColor
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 37
		li $a1, 24
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 38
		li $a1, 25
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 39
		li $a1, 26
		lw $a2, yellowColor
		jal DrawPoint
		
		# Line	
		li $a0, 2
		li $a1, 31
		lw $a2, blueColor
		li $a3, 61
		jal DrawHorizontalLine
		
		li $a0, 1
		li $a1, 32
		lw $a2, blueColor
		li $a3, 62
		jal DrawHorizontalLine
		
		li $a0, 0
		li $a1, 33
		lw $a2, blueColor
		li $a3, 63
		jal DrawHorizontalLine
				
		li $a0, 1
		li $a1, 34
		lw $a2, blueColor
		li $a3, 62
		jal DrawHorizontalLine
		
		li $a0, 2
		li $a1, 35
		lw $a2, blueColor
		li $a3, 61
		jal DrawHorizontalLine
				
		# P
		li $a0, 11
		li $a1, 40
		lw $a2, yellowColor
		li $a3, 46
		jal DrawVerticalLine
		
		li $a0, 15
		li $a1, 41
		lw $a2, yellowColor
		li $a3, 42
		jal DrawVerticalLine
		
		li $a0, 11
		li $a1, 40
		lw $a2, yellowColor
		li $a3, 14
		jal DrawHorizontalLine
		
		li $a0, 11
		li $a1, 43
		lw $a2, yellowColor
		li $a3, 14
		jal DrawHorizontalLine
		
		# R
		li $a0, 17
		li $a1, 40
		lw $a2, yellowColor
		li $a3, 46
		jal DrawVerticalLine
		
		li $a0, 21
		li $a1, 41
		lw $a2, yellowColor
		li $a3, 42
		jal DrawVerticalLine
		
		li $a0, 17
		li $a1, 40
		lw $a2, yellowColor
		li $a3, 20
		jal DrawHorizontalLine
		
		li $a0, 17
		li $a1, 43
		lw $a2, yellowColor
		li $a3, 20
		jal DrawHorizontalLine
		
		li $a0, 19
		li $a1, 44
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 20
		li $a1, 45
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 21
		li $a1, 46
		lw $a2, yellowColor
		jal DrawPoint
		
		# E
		li $a0, 23
		li $a1, 40
		lw $a2, yellowColor
		li $a3, 27
		jal DrawHorizontalLine	
		
		li $a0, 23
		li $a1, 43
		lw $a2, yellowColor
		li $a3, 25
		jal DrawHorizontalLine	
		
		li $a0, 23
		li $a1, 46
		lw $a2, yellowColor
		li $a3, 27
		jal DrawHorizontalLine	
		
		li $a0, 23
		li $a1, 41
		lw $a2, yellowColor
		li $a3, 46
		jal DrawVerticalLine
		
		# S
		li $a0, 30
		li $a1, 40
		lw $a2, yellowColor
		li $a3, 32
		jal DrawHorizontalLine	
		
		li $a0, 30
		li $a1, 43
		lw $a2, yellowColor
		li $a3, 32
		jal DrawHorizontalLine	
		
		li $a0, 30
		li $a1, 46
		lw $a2, yellowColor
		li $a3, 32
		jal DrawHorizontalLine
		
		li $a0, 29
		li $a1, 41
		lw $a2, yellowColor
		li $a3, 42
		jal DrawVerticalLine
		
		li $a0, 33
		li $a1, 44
		lw $a2, yellowColor
		li $a3, 45
		jal DrawVerticalLine
		
		li $a0, 33
		li $a1, 41
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 29
		li $a1, 45
		lw $a2, yellowColor
		jal DrawPoint
		
		# S
		li $a0, 36
		li $a1, 40
		lw $a2, yellowColor
		li $a3, 38
		jal DrawHorizontalLine	
		
		li $a0, 36
		li $a1, 43
		lw $a2, yellowColor
		li $a3, 38
		jal DrawHorizontalLine	
		
		li $a0, 36
		li $a1, 46
		lw $a2, yellowColor
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 35
		li $a1, 41
		lw $a2, yellowColor
		li $a3, 42
		jal DrawVerticalLine
		
		li $a0, 39
		li $a1, 44
		lw $a2, yellowColor
		li $a3, 45
		jal DrawVerticalLine
		
		li $a0, 39
		li $a1, 41
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 35
		li $a1, 45
		lw $a2, yellowColor
		jal DrawPoint
		
		# 1
		li $a0, 47
		li $a1, 46
		lw $a2, yellowColor
		li $a3, 51
		jal DrawHorizontalLine
		
		li $a0, 49
		li $a1, 40
		lw $a2, yellowColor
		li $a3, 46
		jal DrawVerticalLine
		
		li $a0, 48
		li $a1, 41
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 47
		li $a1, 42
		lw $a2, yellowColor
		jal DrawPoint
		
		# T
		li $a0, 8
		li $a1, 49
		lw $a2, yellowColor
		li $a3, 12
		jal DrawHorizontalLine
		
		li $a0, 10
		li $a1, 49
		lw $a2, yellowColor
		li $a3, 55
		jal DrawVerticalLine
		
		# O
		li $a0, 14
		li $a1, 50
		lw $a2, yellowColor
		li $a3, 54
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 50
		lw $a2, yellowColor
		li $a3, 54
		jal DrawVerticalLine
		
		li $a0, 15
		li $a1, 49
		lw $a2, yellowColor
		li $a3, 17
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 55
		lw $a2, yellowColor
		li $a3, 17
		jal DrawHorizontalLine	
		
		# S
		li $a0, 27
		li $a1, 49
		lw $a2, yellowColor
		li $a3, 29
		jal DrawHorizontalLine	
		
		li $a0, 27
		li $a1, 52
		lw $a2, yellowColor
		li $a3, 29
		jal DrawHorizontalLine	
		
		li $a0, 27
		li $a1, 55
		lw $a2, yellowColor
		li $a3, 29
		jal DrawHorizontalLine
		
		li $a0, 26
		li $a1, 50
		lw $a2, yellowColor
		li $a3, 51
		jal DrawVerticalLine
		
		li $a0, 30
		li $a1, 53
		lw $a2, yellowColor
		li $a3, 54
		jal DrawVerticalLine
		
		li $a0, 30
		li $a1, 50
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 26
		li $a1, 54
		lw $a2, yellowColor
		jal DrawPoint
		
		# T
		li $a0, 32
		li $a1, 49
		lw $a2, yellowColor
		li $a3, 36
		jal DrawHorizontalLine
		
		li $a0, 34
		li $a1, 49
		lw $a2, yellowColor
		li $a3, 55
		jal DrawVerticalLine
		
		# A
		li $a0, 38
		li $a1, 51
		lw $a2, yellowColor
		li $a3, 55
		jal DrawVerticalLine	
		
		li $a0, 39
		li $a1, 50
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 40
		li $a1, 49
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 41
		li $a1, 50
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 42
		li $a1, 51
		lw $a2, yellowColor
		li $a3, 55
		jal DrawVerticalLine
		
		li $a0, 38
		li $a1, 53
		lw $a2, yellowColor
		li $a3, 42
		jal DrawHorizontalLine
		
		# R
		li $a0, 44
		li $a1, 49
		lw $a2, yellowColor
		li $a3, 55
		jal DrawVerticalLine
		
		li $a0, 48
		li $a1, 50
		lw $a2, yellowColor
		li $a3, 51
		jal DrawVerticalLine
		
		li $a0, 44
		li $a1, 49
		lw $a2, yellowColor
		li $a3, 47
		jal DrawHorizontalLine
		
		li $a0, 44
		li $a1, 52
		lw $a2, yellowColor
		li $a3, 47
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a1, 53
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 47
		li $a1, 54
		lw $a2, yellowColor
		jal DrawPoint
		
		li $a0, 48
		li $a1, 55
		lw $a2, yellowColor
		jal DrawPoint
		
		# T
		li $a0, 50
		li $a1, 49
		lw $a2, yellowColor
		li $a3, 54
		jal DrawHorizontalLine
		
		li $a0, 52
		li $a1, 49
		lw $a2, yellowColor
		li $a3, 55
		jal DrawVerticalLine
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
SelectMode:

	lw $t1, 0xFFFF0004		# check to see which key has been pressed
	beq $t1, 0x00000031, BeginGame # 1 pressed
#	beq $t1, 0x00000032, SetTwoPlayerMode # 2 pressed
		
	li $a0, 250	#
	li $v0, 32	# pause for 250 milisec
	syscall		#
		
	j SelectMode    # Jump back to the top of the wait loop
	
	
BeginGame:
	
	sw $zero, 0xFFFF0000
	
	jal ClearBoard		
		
		
		

DrawPalyer:

	PlayerUp:
	
		bne $a3, 0, PlayerDown
				
	PlayerDown:
	
		bne $a3, 1, PlayerLeft
		
	PlayerLeft:
	
		bne $a3, 2, PlayerDown
		
	PlayerRight:
	
		bne $a3, 3, PlayerDown
		
	jr $ra
	
	
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
				
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		

				
		
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
	li $t1, 16384 # The number of pixels in the display
		
	StartCLoop:
	
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
		
	EndCLoop:
	
		jr $ra	
		
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
