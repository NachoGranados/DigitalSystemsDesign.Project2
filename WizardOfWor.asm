.data	

	backgroundColor:	.word 0x00000000		
	wallColor:		.word 0x00007bff
	
	# agent identifies which element (player or enemy) the function is handing
	# 0 is the player
	# 1 is the enemy 1
	# 2 is the enemy 2
	# 3 is the enemy 3
	# 4 is the enemy 4
	# 5 is the enemy 5
	# 6 is the enemy 6
	agent:			.word 0x00000000
	
	# Player
	playerPosX:		.word 8
	playerPosY:		.word 2
	playerDir: 		.word 0x00000003
	playerState:		.word 0x00ffc800
	
	# Enemy 1
	enemy1PosX:		.word 0x00000000
	enemy1PosY:		.word 0x00000000
	enemy1Dir: 		.word 0x00000000
	enemy1State:		.word 0x00fc0303
	
	# Enemy 2
	enemy2PosX:		.word 0x00000000
	enemy2PosY:		.word 0x00000000
	enemy2Dir: 		.word 0x00000000
	enemy2State:		.word 0x00fc0303
	
	# Enemy 3
	enemy3PosX:		.word 0x00000000
	enemy3PosY:		.word 0x00000000
	enemy3Dir: 		.word 0x00000000
	enemy3State:		.word 0x00fc0303
	
	# Enemy 4
	enemy4PosX:		.word 0x00000000
	enemy4PosY:		.word 0x00000000
	enemy4Dir: 		.word 0x00000000
	enemy4State:		.word 0x00fc0303
	
	# Enemy 5
	enemy5PosX:		.word 0x00000000
	enemy5PosY:		.word 0x00000000
	enemy5Dir: 		.word 0x00000000
	enemy5State:		.word 0x00fc0303
	
	# Enemy 6
	enemy6PosX:		.word 0x00000000
	enemy6PosY:		.word 0x00000000
	enemy6Dir: 		.word 0x00000000
	enemy6State:		.word 0x00fc0303


.text


NewGame:

	jal ClearBoard

	DrawMenu:					
			
		# W			
		li $a0, 15
		li $a1, 2
		lw $a2, playerState
		li $a3, 7
		jal DrawVerticalLine
		
		li $a0, 16
		li $a1, 8
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 17
		li $a1, 6
		lw $a2, playerState
		li $a3, 7
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 8
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 19
		li $a1, 2
		lw $a2, playerState
		li $a3, 7
		jal DrawVerticalLine		
		
		# I		
		li $a0, 21
		li $a1, 2
		lw $a2, playerState
		li $a3, 8
		jal DrawVerticalLine
		
		# Z
		li $a0, 23
		li $a1, 2
		lw $a2, playerState
		li $a3, 27
		jal DrawHorizontalLine
		
		li $a0, 27
		li $a1, 3
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 26
		li $a1, 4
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 25
		li $a1, 5
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 24
		li $a1, 6
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 23
		li $a1, 7
		lw $a2, playerState
		jal DrawPoint
						
		li $a0, 23
		li $a1, 8
		lw $a2, playerState
		li $a3, 27
		jal DrawHorizontalLine
		
		# A
		li $a0, 29
		li $a1, 4
		lw $a2, playerState
		li $a3, 8
		jal DrawVerticalLine	
		
		li $a0, 30
		li $a1, 3
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 31
		li $a1, 2
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 32
		li $a1, 3
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 33
		li $a1, 4
		lw $a2, playerState
		li $a3, 8
		jal DrawVerticalLine
		
		li $a0, 29
		li $a1, 6
		lw $a2, playerState
		li $a3, 33
		jal DrawHorizontalLine
		
		# R
		li $a0, 35
		li $a1, 2
		lw $a2, playerState
		li $a3, 8
		jal DrawVerticalLine
		
		li $a0, 39
		li $a1, 3
		lw $a2, playerState
		li $a3, 4
		jal DrawVerticalLine
		
		li $a0, 35
		li $a1, 2
		lw $a2, playerState
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 35
		li $a1, 5
		lw $a2, playerState
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 37
		li $a1, 6
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 38
		li $a1, 7
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 39
		li $a1, 8
		lw $a2, playerState
		jal DrawPoint
		
		# D
		li $a0, 41
		li $a1, 2
		lw $a2, playerState
		li $a3, 8
		jal DrawVerticalLine
		
		li $a0, 45
		li $a1, 3
		lw $a2, playerState
		li $a3, 7
		jal DrawVerticalLine
		
		li $a0, 41
		li $a1, 2
		lw $a2, playerState
		li $a3, 44
		jal DrawHorizontalLine
		
		li $a0, 41
		li $a1, 8
		lw $a2, playerState
		li $a3, 44
		jal DrawHorizontalLine
		
		# O
		li $a0, 26
		li $a1, 12
		lw $a2, playerState
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 30
		li $a1, 12
		lw $a2, playerState
		li $a3, 16
		jal DrawVerticalLine
		
		li $a0, 27
		li $a1, 11
		lw $a2, playerState
		li $a3, 29
		jal DrawHorizontalLine
		
		li $a0, 27
		li $a1, 17
		lw $a2, playerState
		li $a3, 29
		jal DrawHorizontalLine
		
		# F
		li $a0, 32
		li $a1, 11
		lw $a2, playerState
		li $a3, 17
		jal DrawVerticalLine
		
		li $a0, 32
		li $a1, 11
		lw $a2, playerState
		li $a3, 36
		jal DrawHorizontalLine
		
		li $a0, 32
		li $a1, 14
		lw $a2, playerState
		li $a3, 34
		jal DrawHorizontalLine
		
		# W
		li $a0, 23
		li $a1, 20
		lw $a2, playerState
		li $a3, 25
		jal DrawVerticalLine
		
		li $a0, 24
		li $a1, 26
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 25
		li $a1, 24
		lw $a2, playerState
		li $a3, 25
		jal DrawVerticalLine
		
		li $a0, 26
		li $a1, 26
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 27
		li $a1, 20
		lw $a2, playerState
		li $a3, 25
		jal DrawVerticalLine
		
		# O
		li $a0, 29
		li $a1, 21
		lw $a2, playerState
		li $a3, 25
		jal DrawVerticalLine
		
		li $a0, 33
		li $a1, 21
		lw $a2, playerState
		li $a3, 25
		jal DrawVerticalLine
		
		li $a0, 30
		li $a1, 20
		lw $a2, playerState
		li $a3, 32
		jal DrawHorizontalLine
		
		li $a0, 30
		li $a1, 26
		lw $a2, playerState
		li $a3, 32
		jal DrawHorizontalLine			
		
		# R
		li $a0, 35
		li $a1, 20
		lw $a2, playerState
		li $a3, 26
		jal DrawVerticalLine
		
		li $a0, 39
		li $a1, 21
		lw $a2, playerState
		li $a3, 22
		jal DrawVerticalLine
		
		li $a0, 35
		li $a1, 20
		lw $a2, playerState
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 35
		li $a1, 23
		lw $a2, playerState
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 37
		li $a1, 24
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 38
		li $a1, 25
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 39
		li $a1, 26
		lw $a2, playerState
		jal DrawPoint
		
		# Line	
		li $a0, 2
		li $a1, 31
		lw $a2, wallColor
		li $a3, 61
		jal DrawHorizontalLine
		
		li $a0, 1
		li $a1, 32
		lw $a2, wallColor
		li $a3, 62
		jal DrawHorizontalLine
		
		li $a0, 0
		li $a1, 33
		lw $a2, wallColor
		li $a3, 63
		jal DrawHorizontalLine
				
		li $a0, 1
		li $a1, 34
		lw $a2, wallColor
		li $a3, 62
		jal DrawHorizontalLine
		
		li $a0, 2
		li $a1, 35
		lw $a2, wallColor
		li $a3, 61
		jal DrawHorizontalLine
				
		# P
		li $a0, 11
		li $a1, 40
		lw $a2, playerState
		li $a3, 46
		jal DrawVerticalLine
		
		li $a0, 15
		li $a1, 41
		lw $a2, playerState
		li $a3, 42
		jal DrawVerticalLine
		
		li $a0, 11
		li $a1, 40
		lw $a2, playerState
		li $a3, 14
		jal DrawHorizontalLine
		
		li $a0, 11
		li $a1, 43
		lw $a2, playerState
		li $a3, 14
		jal DrawHorizontalLine
		
		# R
		li $a0, 17
		li $a1, 40
		lw $a2, playerState
		li $a3, 46
		jal DrawVerticalLine
		
		li $a0, 21
		li $a1, 41
		lw $a2, playerState
		li $a3, 42
		jal DrawVerticalLine
		
		li $a0, 17
		li $a1, 40
		lw $a2, playerState
		li $a3, 20
		jal DrawHorizontalLine
		
		li $a0, 17
		li $a1, 43
		lw $a2, playerState
		li $a3, 20
		jal DrawHorizontalLine
		
		li $a0, 19
		li $a1, 44
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 20
		li $a1, 45
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 21
		li $a1, 46
		lw $a2, playerState
		jal DrawPoint
		
		# E
		li $a0, 23
		li $a1, 40
		lw $a2, playerState
		li $a3, 27
		jal DrawHorizontalLine	
		
		li $a0, 23
		li $a1, 43
		lw $a2, playerState
		li $a3, 25
		jal DrawHorizontalLine	
		
		li $a0, 23
		li $a1, 46
		lw $a2, playerState
		li $a3, 27
		jal DrawHorizontalLine	
		
		li $a0, 23
		li $a1, 41
		lw $a2, playerState
		li $a3, 46
		jal DrawVerticalLine
		
		# S
		li $a0, 30
		li $a1, 40
		lw $a2, playerState
		li $a3, 32
		jal DrawHorizontalLine	
		
		li $a0, 30
		li $a1, 43
		lw $a2, playerState
		li $a3, 32
		jal DrawHorizontalLine	
		
		li $a0, 30
		li $a1, 46
		lw $a2, playerState
		li $a3, 32
		jal DrawHorizontalLine
		
		li $a0, 29
		li $a1, 41
		lw $a2, playerState
		li $a3, 42
		jal DrawVerticalLine
		
		li $a0, 33
		li $a1, 44
		lw $a2, playerState
		li $a3, 45
		jal DrawVerticalLine
		
		li $a0, 33
		li $a1, 41
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 29
		li $a1, 45
		lw $a2, playerState
		jal DrawPoint
		
		# S
		li $a0, 36
		li $a1, 40
		lw $a2, playerState
		li $a3, 38
		jal DrawHorizontalLine	
		
		li $a0, 36
		li $a1, 43
		lw $a2, playerState
		li $a3, 38
		jal DrawHorizontalLine	
		
		li $a0, 36
		li $a1, 46
		lw $a2, playerState
		li $a3, 38
		jal DrawHorizontalLine
		
		li $a0, 35
		li $a1, 41
		lw $a2, playerState
		li $a3, 42
		jal DrawVerticalLine
		
		li $a0, 39
		li $a1, 44
		lw $a2, playerState
		li $a3, 45
		jal DrawVerticalLine
		
		li $a0, 39
		li $a1, 41
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 35
		li $a1, 45
		lw $a2, playerState
		jal DrawPoint
		
		# 1
		li $a0, 47
		li $a1, 46
		lw $a2, playerState
		li $a3, 51
		jal DrawHorizontalLine
		
		li $a0, 49
		li $a1, 40
		lw $a2, playerState
		li $a3, 46
		jal DrawVerticalLine
		
		li $a0, 48
		li $a1, 41
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 47
		li $a1, 42
		lw $a2, playerState
		jal DrawPoint
		
		# T
		li $a0, 8
		li $a1, 49
		lw $a2, playerState
		li $a3, 12
		jal DrawHorizontalLine
		
		li $a0, 10
		li $a1, 49
		lw $a2, playerState
		li $a3, 55
		jal DrawVerticalLine
		
		# O
		li $a0, 14
		li $a1, 50
		lw $a2, playerState
		li $a3, 54
		jal DrawVerticalLine
		
		li $a0, 18
		li $a1, 50
		lw $a2, playerState
		li $a3, 54
		jal DrawVerticalLine
		
		li $a0, 15
		li $a1, 49
		lw $a2, playerState
		li $a3, 17
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 55
		lw $a2, playerState
		li $a3, 17
		jal DrawHorizontalLine	
		
		# S
		li $a0, 27
		li $a1, 49
		lw $a2, playerState
		li $a3, 29
		jal DrawHorizontalLine	
		
		li $a0, 27
		li $a1, 52
		lw $a2, playerState
		li $a3, 29
		jal DrawHorizontalLine	
		
		li $a0, 27
		li $a1, 55
		lw $a2, playerState
		li $a3, 29
		jal DrawHorizontalLine
		
		li $a0, 26
		li $a1, 50
		lw $a2, playerState
		li $a3, 51
		jal DrawVerticalLine
		
		li $a0, 30
		li $a1, 53
		lw $a2, playerState
		li $a3, 54
		jal DrawVerticalLine
		
		li $a0, 30
		li $a1, 50
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 26
		li $a1, 54
		lw $a2, playerState
		jal DrawPoint
		
		# T
		li $a0, 32
		li $a1, 49
		lw $a2, playerState
		li $a3, 36
		jal DrawHorizontalLine
		
		li $a0, 34
		li $a1, 49
		lw $a2, playerState
		li $a3, 55
		jal DrawVerticalLine
		
		# A
		li $a0, 38
		li $a1, 51
		lw $a2, playerState
		li $a3, 55
		jal DrawVerticalLine	
		
		li $a0, 39
		li $a1, 50
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 40
		li $a1, 49
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 41
		li $a1, 50
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 42
		li $a1, 51
		lw $a2, playerState
		li $a3, 55
		jal DrawVerticalLine
		
		li $a0, 38
		li $a1, 53
		lw $a2, playerState
		li $a3, 42
		jal DrawHorizontalLine
		
		# R
		li $a0, 44
		li $a1, 49
		lw $a2, playerState
		li $a3, 55
		jal DrawVerticalLine
		
		li $a0, 48
		li $a1, 50
		lw $a2, playerState
		li $a3, 51
		jal DrawVerticalLine
		
		li $a0, 44
		li $a1, 49
		lw $a2, playerState
		li $a3, 47
		jal DrawHorizontalLine
		
		li $a0, 44
		li $a1, 52
		lw $a2, playerState
		li $a3, 47
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a1, 53
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 47
		li $a1, 54
		lw $a2, playerState
		jal DrawPoint
		
		li $a0, 48
		li $a1, 55
		lw $a2, playerState
		jal DrawPoint
		
		# T
		li $a0, 50
		li $a1, 49
		lw $a2, playerState
		li $a3, 54
		jal DrawHorizontalLine
		
		li $a0, 52
		li $a1, 49
		lw $a2, playerState
		li $a3, 55
		jal DrawVerticalLine
		
		
SelectMode:

	lw $t1, 0xFFFF0004 # check to see which key has been pressed
	beq $t1, 0x00000031, BeginGame # 1 pressed
			
	li $a0, 75	#
	li $v0, 32	# pause for 75 milisec
	syscall		#
		
	j SelectMode    # Jump back to the top of the wait loop
	
	
BeginGame:
	
	sw $zero, 0xFFFF0000
	
	jal ClearBoard
	
	# $s0 stores player x position
	# $s1 stores player y position
	# $s2 stores player color
	# $s3 stores player direction
	li $s0, 8
	li $s1, 2
	lw $s2, playerState
	li $s3, 3
					
	lw $a0, playerPosX
	lw $a1, playerPosY
	lw $a2, playerState
	lw $a3, playerDir
	
	jal DrawPlayer
			
	
DrawMap:

	# Horizantal lines
	
	# First level		
	li $a0, 6
	li $a1, 0
	lw $a2, wallColor
	li $a3, 56
	jal DrawHorizontalLine
	
	# Second level
	li $a0, 19
	li $a1, 6
	lw $a2, wallColor
	li $a3, 23
	jal DrawHorizontalLine
	
	li $a0, 29
	li $a1, 6
	lw $a2, wallColor
	li $a3, 33
	jal DrawHorizontalLine
	
	li $a0, 39
	li $a1, 6
	lw $a2, wallColor
	li $a3, 43
	jal DrawHorizontalLine
	
	# Third level
	li $a0, 0
	li $a1, 12
	lw $a2, wallColor
	li $a3, 6
	jal DrawHorizontalLine
	
	li $a0, 24
	li $a1, 12
	lw $a2, wallColor
	li $a3, 28
	jal DrawHorizontalLine
	
	li $a0, 34
	li $a1, 12
	lw $a2, wallColor
	li $a3, 38
	jal DrawHorizontalLine
	
	li $a0, 56
	li $a1, 12
	lw $a2, wallColor
	li $a3, 63
	jal DrawHorizontalLine
	
	# Fourth level
	li $a0, 0
	li $a1, 18
	lw $a2, wallColor
	li $a3, 12
	jal DrawHorizontalLine
	
	li $a0, 19
	li $a1, 18
	lw $a2, wallColor
	li $a3, 23
	jal DrawHorizontalLine
	
	li $a0, 29
	li $a1, 18
	lw $a2, wallColor
	li $a3, 33
	jal DrawHorizontalLine
		
	li $a0, 39
	li $a1, 18
	lw $a2, wallColor
	li $a3, 43
	jal DrawHorizontalLine
	
	li $a0, 50
	li $a1, 18
	lw $a2, wallColor
	li $a3, 63
	jal DrawHorizontalLine
	
	# Fiveth level
	li $a0, 18
	li $a1, 24
	lw $a2, wallColor
	li $a3, 28
	jal DrawHorizontalLine
	
	li $a0, 34
	li $a1, 24
	lw $a2, wallColor
	li $a3, 44
	jal DrawHorizontalLine
		
	# Sixth level
	li $a0, 12
	li $a1, 30
	lw $a2, wallColor
	li $a3, 16
	jal DrawHorizontalLine
	
	li $a0, 46
	li $a1, 30
	lw $a2, wallColor
	li $a3, 49
	jal DrawHorizontalLine
		
	# Seventh level
	li $a0, 6
	li $a1, 36
	lw $a2, wallColor
	li $a3, 56
	jal DrawHorizontalLine
	
	# Vertical lines
	
	# First level
	li $a0, 6
	li $a1, 0
	lw $a2, wallColor
	li $a3, 12
	jal DrawVerticalLine
		
	li $a0, 56
	li $a1, 0
	lw $a2, wallColor
	li $a3, 12
	jal DrawVerticalLine
	
	# Second level
	li $a0, 12
	li $a1, 6
	lw $a2, wallColor
	li $a3, 12
	jal DrawVerticalLine
		
	li $a0, 18
	li $a1, 6
	lw $a2, wallColor
	li $a3, 18
	jal DrawVerticalLine
	
	li $a0, 44
	li $a1, 6
	lw $a2, wallColor
	li $a3, 18
	jal DrawVerticalLine
	
	li $a0, 50
	li $a1, 6
	lw $a2, wallColor
	li $a3, 12
	jal DrawVerticalLine
	
	# Third level
	li $a0, 6
	li $a1, 18
	lw $a2, wallColor
	li $a3, 36
	jal DrawVerticalLine
		
	li $a0, 56
	li $a1, 18
	lw $a2, wallColor
	li $a3, 36
	jal DrawVerticalLine
								
	# Fourth level	
	li $a0, 12
	li $a1, 24
	lw $a2, wallColor
	li $a3, 30
	jal DrawVerticalLine
		
	li $a0, 28
	li $a1, 24
	lw $a2, wallColor
	li $a3, 30
	jal DrawVerticalLine
	
	li $a0, 34
	li $a1, 24
	lw $a2, wallColor
	li $a3, 30
	jal DrawVerticalLine
	
	li $a0, 50
	li $a1, 24
	lw $a2, wallColor
	li $a3, 30
	jal DrawVerticalLine
	
	# Fiveth level	
	li $a0, 22
	li $a1, 30
	lw $a2, wallColor
	li $a3, 36
	jal DrawVerticalLine	
	
	li $a0, 40
	li $a1, 30
	lw $a2, wallColor
	li $a3, 36
	jal DrawVerticalLine
	
	
DrawRadar:

	# Horizontal lines

	# First level
	li $a0, 18
	li $a1, 42
	lw $a2, wallColor
	li $a3, 44
	jal DrawHorizontalLine
	
	# Second level
	li $a0, 18
	li $a1, 58
	lw $a2, wallColor
	li $a3, 44
	jal DrawHorizontalLine
	
	# Vertical lines
	li $a0, 18
	li $a1, 42
	lw $a2, wallColor
	li $a3, 58
	jal DrawVerticalLine
	
	li $a0, 44
	li $a1, 42
	lw $a2, wallColor
	li $a3, 58
	jal DrawVerticalLine
	
	
# Wait and read buttons
Begin_standby:	

	li $t0, 0x00000002 # load 25 into the counter for a ~50 milisec standby

		
Standby:

	blez $t0, EndStandby
	li $a0, 1	#
	li $v0, 32	# pause for 10 milisec
	syscall		#
		
	addi $t0, $t0, -1 		# decrement counter
		
	lw $t1, 0xFFFF0000		# check to see if a key has been pressed
	blez $t1, Standby
				
	jal KeyPressed			# see what was pushed
	sw $zero, 0xFFFF0000		# clear the button pushed bit
	j Standby
		
		
EndStandby:	
	
	j Begin_standby
	
		
# KeyPressed chenges the player direction registers depending on the key pressed
KeyPressed:

	addi $sp, $sp, -4
	sw $ra, 0($sp)

	lw $a0, 0xFFFF0004
	
	Move_Up:
	
		bne $a0, 119, Move_Down # W
		
		li $a0, 0
		li $a1, 0
		jal MoveAgent
				
		j Key_Done
		
	Move_Down:
	
		bne $a0, 115, Move_Left # S
		
		li $a0, 0
		li $a1, 1
		jal MoveAgent
				
		j Key_Done
	
	Move_Left:
	
		bne $a0, 97, Move_Right # A
		
		li $a0, 0
		li $a1, 2
		jal MoveAgent
				
		j Key_Done

	Move_Right:
	
		bne $a0, 100, Key_None # D
		
		li $a0, 0
		li $a1, 3
		jal MoveAgent
				
		j Key_Done	
		
	Key_None:
	
		# Do nothing
		
	Key_Done:
			
		lw $ra, 0($sp)
		addi $sp, $sp, -4
	
		jr $ra
				
				
# MovePlayer will chenge the direction of the player an then try to move in the given direction		
# $a0 is the agent
# $a1 is the new direction
MoveAgent:

	addi $sp, $sp, -12
	sw $ra , 0($sp)
	sw $a0 , 4($sp)
	sw $a1 , 8($sp)

	MoveAgentPlayer:
	
		bne $a0, 0, MoveAgentEnemy1
		
		lw $t1, playerDir
		
		beq $a1, $t1, AdvanceBlock
		
		lw $a0, playerPosX
		lw $a1, playerPosY
		
		jal ErasePlayer
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
				
		move $a3, $a1
				
		sw $a3, playerDir # store in memory the new direction						
		lw $a0, playerPosX
		lw $a1, playerPosY
		lw $a2, playerState
		
		jal DrawPlayer # draw the player in the new direction
		
		AdvanceBlock: # if it is possible, move the player in the direction
		
			j MoveAgentDone
		
	MoveAgentEnemy1:
	
		bne $a0, 1, MoveAgentEnemy2
		
	MoveAgentEnemy2:
	
		bne $a0, 2, MoveAgentEnemy3
		
	MoveAgentEnemy3:
	
		bne $a0, 3, MoveAgentEnemy4
		
	MoveAgentEnemy4:
	
		bne $a0, 4, MoveAgentEnemy5
		
	MoveAgentEnemy5:
	
		bne $a0, 5, MoveAgentEnemy6
		
	MoveAgentEnemy6:
	
		bne $a0, 6, MoveAgentDone
		
	MoveAgentDone:
	
		lw $ra, 0($sp)
		addi $sp, $sp, 12
	
			
# If it is possible, the agent agent will try to move forward with a given direction
# $a0 agent
TryMoveAgent:

	addi, $sp, $sp, -4
	sw $ra, 0($sp)
	
	TryMoveAgentPlayer:
	
		bne $a0, 0, TryMoveAgentEnemy1
		
		lw $t0, playerDir
		
		PlayerMoveUp:
		
			bne $t0, 0, PlayerMoveDown
			
			lw $a0, playerPosX
			lw $a1, playerPosY
			jal ErasePlayer
			
			lw $t1, playerPosY
			addi $t1, $t1, -1
			sw $t1, playerPosY
						
			lw $a0, playerPosX
			lw $a1, playerPosY
			lw $a2, playerState
			lw $a3, playerDir
			
			jal DrawPlayer
			
			j TryMoveAgentDone
			
		PlayerMoveDown:
		
			bne $t0, 1, PlayerMoveLeft
			
			lw $a0, playerPosX
			lw $a1, playerPosY
			jal ErasePlayer
			
			lw $t1, playerPosY
			addi $t1, $t1, 1
			sw $t1, playerPosY
						
			lw $a0, playerPosX
			lw $a1, playerPosY
			lw $a2, playerState
			lw $a3, playerDir
			
			jal DrawPlayer
			
			j TryMoveAgentDone
			
		PlayerMoveLeft:
		
			bne $t0, 2, PlayerMoveRight
			
			lw $a0, playerPosX
			lw $a1, playerPosY
			jal ErasePlayer
			
			lw $t1, playerPosX
			addi $t1, $t1, -1
			sw $t1, playerPosX
						
			lw $a0, playerPosX
			lw $a1, playerPosY
			lw $a2, playerState
			lw $a3, playerDir
			
			jal DrawPlayer
			
			j TryMoveAgentDone
			
		PlayerMoveRight:
		
			bne $t0, 3, TryMoveAgentDone
			
			lw $a0, playerPosX
			lw $a1, playerPosY
			jal ErasePlayer
			
			lw $t1, playerPosX
			addi $t1, $t1, 1
			sw $t1, playerPosX
						
			lw $a0, playerPosX
			lw $a1, playerPosY
			lw $a2, playerState
			lw $a3, playerDir
			
			jal DrawPlayer
			
			j TryMoveAgentDone
		
	TryMoveAgentEnemy1:
	
		bne $a0, 1, TryMoveAgentEnemy2
		
	TryMoveAgentEnemy2:
	
		bne $a0, 2, TryMoveAgentEnemy3
		
	TryMoveAgentEnemy3:
	
		bne $a0, 3, TryMoveAgentEnemy4
		
	TryMoveAgentEnemy4:
	
		bne $a0, 4, TryMoveAgentEnemy5
		
	TryMoveAgentEnemy5:
	
		bne $a0, 5, TryMoveAgentEnemy6
		
	TryMoveAgentEnemy6:
	
		bne $a0, 6, TryMoveAgentDone
	
	TryMoveAgentDone:
	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		
# $a0 x position
# $a1 y position
# $a2 contains the color
# #a3 direction	
DrawPlayer:

	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	sw $a1, 8($sp)

	PlayerUp:
	
		bne $a3, 0, PlayerDown
		
		addi $a0, $a0, 1		
		add $a3, $a0, 0
		jal DrawHorizontalLine	
		
		lw $a0, 4($sp) # Recover x value
		lw $a1, 8($sp) # Recover y value
		addi $a1, $a1, 1
		addi $a3, $a0, 2
		jal DrawHorizontalLine
				
		lw $a0, 4($sp) # Recover x value
		lw $a1, 8($sp) # Recover y value
		addi $a1, $a1, 2
		addi $a3, $a0, 2
		jal DrawHorizontalLine
				
		j EndDrawPlayer
						
	PlayerDown:
	
		bne $a3, 1, PlayerLeft
						
		addi $a0, $a0, 1
		addi $a1, $a1, 2	
		add $a3, $a0, 0
		jal DrawHorizontalLine	
		
		lw $a0, 4($sp) # Recover x value
		lw $a1, 8($sp) # Recover y value
		addi $a1, $a1, 0
		addi $a3, $a0, 2
		jal DrawHorizontalLine
				
		lw $a0, 4($sp) # Recover x value
		lw $a1, 8($sp) # Recover y value
		addi $a1, $a1, 1
		addi $a3, $a0, 2
		jal DrawHorizontalLine
				
		j EndDrawPlayer
		
	PlayerLeft:
	
		bne $a3, 2, PlayerRight
				
		addi $a0, $a0, 1		
		add $a3, $a0, 1
		jal DrawHorizontalLine	
		
		lw $a0, 4($sp) # Recover x value
		lw $a1, 8($sp) # Recover y value
		addi $a1, $a1, 1
		addi $a3, $a0, 2
		jal DrawHorizontalLine
				
		lw $a0, 4($sp) # Recover x value
		lw $a1, 8($sp) # Recover y value
		addi $a0, $a0, 1
		addi $a1, $a1, 2
		addi $a3, $a0, 1
		jal DrawHorizontalLine
				
		j EndDrawPlayer
		
	PlayerRight:
	
		bne $a3, 3, EndDrawPlayer
						
		add $a3, $a0, 1
		jal DrawHorizontalLine	
		
		lw $a0, 4($sp) # Recover x value
		lw $a1, 8($sp) # Recover y value
		addi $a1, $a1, 1
		addi $a3, $a0, 2
		jal DrawHorizontalLine
				
		lw $a0, 4($sp) # Recover x value
		lw $a1, 8($sp) # Recover y value
		addi $a1, $a1, 2
		addi $a3, $a0, 1
		jal DrawHorizontalLine
				
	EndDrawPlayer:
	
		lw $ra, 0($sp)	
		addi $sp, $sp, 12
		
		jr $ra

																																																		
# $a0 x position
# $a1 y position
ErasePlayer:

	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	sw $a1, 8($sp)
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	li $a2, 0
	addi $a3, $a0, 2	
	jal DrawHorizontalLine	
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	addi $a1, $a1, 1
	li $a2, 0
	addi $a3, $a0, 2	
	jal DrawHorizontalLine	
	
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	addi $a1, $a1, 2
	li $a2, 0
	addi $a3, $a0, 2	
	jal DrawHorizontalLine	
		
	lw $ra, 0($sp)	
	addi $sp, $sp, 12
		
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
	li $t1, 16384 # The number of pixels in the display
		
	StartCLoop:
	
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
		
	EndCLoop:
	
		jr $ra	
		
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
