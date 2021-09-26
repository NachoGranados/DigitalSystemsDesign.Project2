.data	

	backgroundColor:	.word 0x00000000		
	wallColor:		.word 0x00007bff
	pointColor:		.word 0x00ffffff
	
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
	enemy1PosX:		.word 52
	enemy1PosY:		.word 2
	enemy1Dir: 		.word 0x00000002
	enemy1State:		.word 0x00fc0303 # Red
	
	# Enemy 2
	enemy2PosX:		.word 52
	enemy2PosY:		.word 20
	enemy2Dir: 		.word 0x00000002
	enemy2State:		.word 0x00ff6f00 # Orange
	
	# Enemy 3
	enemy3PosX:		.word 18
	enemy3PosY:		.word 32
	enemy3Dir: 		.word 0x00000000
	enemy3State:		.word 0x0011ff00 # Green
	
	# Enemy 4
	enemy4PosX:		.word 30
	enemy4PosY:		.word 32
	enemy4Dir: 		.word 0x00000000
	enemy4State:		.word 0x0000e5ff # Light blue
	
	# Enemy 5
	enemy5PosX:		.word 42
	enemy5PosY:		.word 32
	enemy5Dir: 		.word 0x00000000
	enemy5State:		.word 0x007700ff # Purple
	
	# Enemy 6
	enemy6PosX:		.word 8
	enemy6PosY:		.word 20
	enemy6Dir: 		.word 0x00000003
	enemy6State:		.word 0x00ff00e6 # Pink

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
	
	# Draw player						
	lw $a0, playerPosX
	lw $a1, playerPosY
	lw $a2, playerState
	lw $a3, playerDir
	
	jal DrawAgent
	
	# Draw enemy1			
	lw $a0, enemy1PosX
	lw $a1, enemy1PosY
	lw $a2, enemy1State
	lw $a3, enemy1Dir
	
	jal DrawAgent
	
	# Draw enemy2			
	lw $a0, enemy2PosX
	lw $a1, enemy2PosY
	lw $a2, enemy2State
	lw $a3, enemy2Dir
	
	jal DrawAgent
	
	# Draw enemy3		
	lw $a0, enemy3PosX
	lw $a1, enemy3PosY
	lw $a2, enemy3State
	lw $a3, enemy3Dir
	
	jal DrawAgent
	
	# Draw enemy4			
	lw $a0, enemy4PosX
	lw $a1, enemy4PosY
	lw $a2, enemy4State
	lw $a3, enemy4Dir
	
	jal DrawAgent
	
	# Draw enemy5		
	lw $a0, enemy5PosX
	lw $a1, enemy5PosY
	lw $a2, enemy5State
	lw $a3, enemy5Dir
	
	jal DrawAgent
	
	# Draw enemy6
	lw $a0, enemy6PosX
	lw $a1, enemy6PosY
	lw $a2, enemy6State
	lw $a3, enemy6Dir
	
	jal DrawAgent
			
	
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
		
	
DrawAgentPoints:

	# First round
	li $a0, 14
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 16
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 18
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 20
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 22
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 24
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint

	# Second round
	li $a0, 26
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 28
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 30
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 32
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 34
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 36
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	# Third round
	li $a0, 38
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 40
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 42
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 44
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 46
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	li $a0, 48
	li $a1, 39
	lw $a2, pointColor
	jal DrawPoint
	
	
# Timers counter for enemies movement
li $s1, 0
li $s2, 70

										
# Wait and read buttons
Begin_standby:	

	li $t0, 0x00000002 # load 25 into the counter for a ~50 milisec standby
			
Standby:

	blez $t0, EndStandby
	li $a0, 1	#
	li $v0, 32	# pause for 1 milisec
	syscall		#
		
	addi $t0, $t0, -1 		# decrement counter
	addi $s1, $s1, 1                # increment enemies counter
	
	bne $s1, $s2, Continue
	
	li $s1, 0
	
	# Move enemy 1
	li $a0, 1
	lw $a1, enemy1Dir
		
	jal MoveAgent
	
	# Move enemy 2
	li $a0, 2
	lw $a1, enemy2Dir
		
	jal MoveAgent
	
	# Move enemy 3
	li $a0, 3
	lw $a1, enemy3Dir
		
	jal MoveAgent
	
	# Move enemy 4
	li $a0, 4
	lw $a1, enemy4Dir
		
	jal MoveAgent
	
	# Move enemy 5
	li $a0, 5
	lw $a1, enemy5Dir
		
	jal MoveAgent
	
	# Move enemy 6
	li $a0, 6
	lw $a1, enemy6Dir
		
	jal MoveAgent
		
	Continue:
		
		lw $t1, 0xFFFF0000		# check to see if a key has been pressed
		blez $t1, Standby
				
		jal KeyPressed			# see what was pushed
		sw $zero, 0xFFFF0000		# clear the button pushed bit
		j Standby
		
		
EndStandby:

	# jal MoveAgent con el parametro de cada enemigo
	#li $a0, 1
	#lw $a1, enemy1Dir
	
	#jal MoveAgent
	
	#bne $s1, $s2, RestartStandby
	
	#li $s1, 0
	
	#li $a0, 1
	#lw $a1, enemy1Dir
	
	#jal MoveAgent	
	
	#RestartStandby:
	
	j Begin_standby
	
		
# KeyPressed changes the player direction registers depending on the key pressed
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
				
				
# MoveAgent will change the direction of the player an then try to move in the given direction		
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
		
		beq $a1, $t1, AdvanceBlockPlayer
		
		lw $a0, playerPosX
		lw $a1, playerPosY
		
		jal EraseAgent
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
				
		move $a3, $a1
				
		sw $a3, playerDir # store in memory the new direction						
		lw $a0, playerPosX
		lw $a1, playerPosY
		lw $a2, playerState
		
		jal DrawAgent # draw the player in the new direction
		
		AdvanceBlockPlayer:
		
			j MoveAgentDone
		
	MoveAgentEnemy1:
	
		bne $a0, 1, MoveAgentEnemy2
		
		lw $t1, enemy1Dir
		
		beq $a1, $t1, AdvanceBlockEnemy1
		
		lw $a0, enemy1PosX
		lw $a1, enemy1PosY
		
		jal EraseAgent
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
				
		move $a3, $a1
				
		sw $a3, enemy1Dir # store in memory the new direction						
		lw $a0, enemy1PosX
		lw $a1, enemy1PosY
		lw $a2, enemy1State
		
		jal DrawAgent # draw the player in the new direction
		
		AdvanceBlockEnemy1:
		
			j MoveAgentDone
		
		
		
		# if collision up
		
		# if collision down
		
		# if collision left
		
		# if collision right
		
		
		
				
	MoveAgentEnemy2:
	
		bne $a0, 2, MoveAgentEnemy3
		
		lw $t1, enemy2Dir
		
		beq $a1, $t1, AdvanceBlockEnemy2
		
		lw $a0, enemy2PosX
		lw $a1, enemy2PosY
		
		jal EraseAgent
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
				
		move $a3, $a1
				
		sw $a3, enemy2Dir # store in memory the new direction						
		lw $a0, enemy2PosX
		lw $a1, enemy2PosY
		lw $a2, enemy2State
		
		jal DrawAgent # draw the player in the new direction
		
		AdvanceBlockEnemy2:
		
			j MoveAgentDone
		
	MoveAgentEnemy3:
	
		bne $a0, 3, MoveAgentEnemy4
		
		lw $t1, enemy3Dir
		
		beq $a1, $t1, AdvanceBlockEnemy3
		
		lw $a0, enemy3PosX
		lw $a1, enemy3PosY
		
		jal EraseAgent
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
				
		move $a3, $a1
				
		sw $a3, enemy3Dir # store in memory the new direction						
		lw $a0, enemy3PosX
		lw $a1, enemy3PosY
		lw $a2, enemy3State
		
		jal DrawAgent # draw the player in the new direction
		
		AdvanceBlockEnemy3:
		
			j MoveAgentDone
		
	MoveAgentEnemy4:
	
		bne $a0, 4, MoveAgentEnemy5
		
		lw $t1, enemy4Dir
		
		beq $a1, $t1, AdvanceBlockEnemy4
		
		lw $a0, enemy4PosX
		lw $a1, enemy4PosY
		
		jal EraseAgent
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
				
		move $a3, $a1
				
		sw $a3, enemy4Dir # store in memory the new direction						
		lw $a0, enemy4PosX
		lw $a1, enemy4PosY
		lw $a2, enemy4State
		
		jal DrawAgent # draw the player in the new direction
		
		AdvanceBlockEnemy4:
		
			j MoveAgentDone
		
	MoveAgentEnemy5:
	
		bne $a0, 5, MoveAgentEnemy6
		
		lw $t1, enemy5Dir
		
		beq $a1, $t1, AdvanceBlockEnemy5
		
		lw $a0, enemy5PosX
		lw $a1, enemy5PosY
		
		jal EraseAgent
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
				
		move $a3, $a1
				
		sw $a3, enemy5Dir # store in memory the new direction						
		lw $a0, enemy5PosX
		lw $a1, enemy5PosY
		lw $a2, enemy5State
		
		jal DrawAgent # draw the player in the new direction
		
		AdvanceBlockEnemy5:
		
			j MoveAgentDone
		
	MoveAgentEnemy6:
	
		bne $a0, 6, MoveAgentDone
		
		lw $t1, enemy6Dir
		
		beq $a1, $t1, AdvanceBlockEnemy6
		
		lw $a0, enemy6PosX
		lw $a1, enemy6PosY
		
		jal EraseAgent
		
		lw $a0, 4($sp)
		lw $a1, 8($sp)
				
		move $a3, $a1
				
		sw $a3, enemy6Dir # store in memory the new direction						
		lw $a0, enemy6PosX
		lw $a1, enemy6PosY
		lw $a2, enemy6State
		
		jal DrawAgent # draw the player in the new direction
		
		AdvanceBlockEnemy6:
		
			# Do nothing
		
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
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision						
			#beq $v0, 0, DrawPositionUp			
			
			lw $t1, playerPosY
			addi $t1, $t1, -1
			sw $t1, playerPosY
			
			
			lw $a0, playerPosX
			lw $a1, playerPosY
			lw $a2, playerState
			lw $a3, playerDir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		PlayerMoveDown:
		
			bne $t0, 1, PlayerMoveLeft
			
			lw $a0, playerPosX
			lw $a1, playerPosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionDown
			
			lw $t1, playerPosY
			addi $t1, $t1, 1
			sw $t1, playerPosY
								
			lw $a0, playerPosX
			lw $a1, playerPosY
			lw $a2, playerState
			lw $a3, playerDir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		PlayerMoveLeft:
		
			bne $t0, 2, PlayerMoveRight
			
			lw $a0, playerPosX
			lw $a1, playerPosY
			
			jal EraseAgent
				
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionLeft
			
			lw $t1, playerPosX
			addi $t1, $t1, -1
			sw $t1, playerPosX
						
			lw $a0, playerPosX
			lw $a1, playerPosY
			lw $a2, playerState
			lw $a3, playerDir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		PlayerMoveRight:
		
			bne $t0, 3, TryMoveAgentDone
		
			lw $a0, playerPosX
			lw $a1, playerPosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionRight
			
			lw $t1, playerPosX
			addi $t1, $t1, 1
			sw $t1, playerPosX
						
			lw $a0, playerPosX
			lw $a1, playerPosY
			lw $a2, playerState
			lw $a3, playerDir
			
			jal DrawAgent
			
			j TryMoveAgentDone
		
	TryMoveAgentEnemy1:
	
		bne $a0, 1, TryMoveAgentEnemy2
		
		lw $t0, enemy1Dir
		
		Enemy1MoveUp:
		
			bne $t0, 0, Enemy1MoveDown
			
			lw $a0, enemy1PosX
			lw $a1, enemy1PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision						
			#beq $v0, 0, DrawPositionUp			
			
			lw $t1, enemy1PosY
			addi $t1, $t1, -1
			sw $t1, enemy1PosY
			
			
			lw $a0, enemy1PosX
			lw $a1, enemy1PosY
			lw $a2, enemy1State
			lw $a3, enemy1Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy1MoveDown:
		
			bne $t0, 1, Enemy1MoveLeft
			
			lw $a0, enemy1PosX
			lw $a1, enemy1PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionDown
			
			lw $t1, enemy1PosY
			addi $t1, $t1, 1
			sw $t1, enemy1PosY
								
			lw $a0, enemy1PosX
			lw $a1, enemy1PosY
			lw $a2, enemy1State
			lw $a3, enemy1Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy1MoveLeft:
		
			bne $t0, 2, Enemy1MoveRight
			
			lw $a0, enemy1PosX
			lw $a1, enemy1PosY
			
			jal EraseAgent
				
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionLeft
			
			lw $t1, enemy1PosX
			addi $t1, $t1, -1
			sw $t1, enemy1PosX
						
			lw $a0, enemy1PosX
			lw $a1, enemy1PosY
			lw $a2, enemy1State
			lw $a3, enemy1Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy1MoveRight:
		
			bne $t0, 3, TryMoveAgentDone
		
			lw $a0, enemy1PosX
			lw $a1, enemy1PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionRight
			
			lw $t1, enemy1PosX
			addi $t1, $t1, 1
			sw $t1, enemy1PosX
						
			lw $a0, enemy1PosX
			lw $a1, enemy1PosY
			lw $a2, enemy1State
			lw $a3, enemy1Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
				
	TryMoveAgentEnemy2:
	
		bne $a0, 2, TryMoveAgentEnemy3
		
		lw $t0, enemy2Dir
		
		Enemy2MoveUp:
		
			bne $t0, 0, Enemy2MoveDown
			
			lw $a0, enemy2PosX
			lw $a1, enemy2PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision						
			#beq $v0, 0, DrawPositionUp			
			
			lw $t1, enemy2PosY
			addi $t1, $t1, -1
			sw $t1, enemy2PosY
			
			
			lw $a0, enemy2PosX
			lw $a1, enemy2PosY
			lw $a2, enemy2State
			lw $a3, enemy2Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy2MoveDown:
		
			bne $t0, 1, Enemy2MoveLeft
			
			lw $a0, enemy2PosX
			lw $a1, enemy2PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionDown
			
			lw $t1, enemy2PosY
			addi $t1, $t1, 1
			sw $t1, enemy2PosY
								
			lw $a0, enemy2PosX
			lw $a1, enemy2PosY
			lw $a2, enemy2State
			lw $a3, enemy2Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy2MoveLeft:
		
			bne $t0, 2, Enemy2MoveRight
			
			lw $a0, enemy2PosX
			lw $a1, enemy2PosY
			
			jal EraseAgent
				
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionLeft
			
			lw $t1, enemy2PosX
			addi $t1, $t1, -1
			sw $t1, enemy2PosX
						
			lw $a0, enemy2PosX
			lw $a1, enemy2PosY
			lw $a2, enemy2State
			lw $a3, enemy2Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy2MoveRight:
		
			bne $t0, 3, TryMoveAgentDone
		
			lw $a0, enemy2PosX
			lw $a1, enemy2PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionRight
			
			lw $t1, enemy2PosX
			addi $t1, $t1, 1
			sw $t1, enemy2PosX
						
			lw $a0, enemy2PosX
			lw $a1, enemy2PosY
			lw $a2, enemy2State
			lw $a3, enemy2Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
		
	TryMoveAgentEnemy3:
	
		bne $a0, 3, TryMoveAgentEnemy4
		
		lw $t0, enemy3Dir
		
		Enemy3MoveUp:
		
			bne $t0, 0, Enemy1MoveDown
			
			lw $a0, enemy3PosX
			lw $a1, enemy3PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision						
			#beq $v0, 0, DrawPositionUp			
			
			lw $t1, enemy3PosY
			addi $t1, $t1, -1
			sw $t1, enemy3PosY			
			
			lw $a0, enemy3PosX
			lw $a1, enemy3PosY
			lw $a2, enemy3State
			lw $a3, enemy3Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy3MoveDown:
		
			bne $t0, 1, Enemy3MoveLeft
			
			lw $a0, enemy3PosX
			lw $a1, enemy3PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionDown
			
			lw $t1, enemy3PosY
			addi $t1, $t1, 1
			sw $t1, enemy3PosY
								
			lw $a0, enemy3PosX
			lw $a1, enemy3PosY
			lw $a2, enemy3State
			lw $a3, enemy3Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy3MoveLeft:
		
			bne $t0, 2, Enemy3MoveRight
			
			lw $a0, enemy3PosX
			lw $a1, enemy3PosY
			
			jal EraseAgent
				
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionLeft
			
			lw $t1, enemy3PosX
			addi $t1, $t1, -1
			sw $t1, enemy3PosX
						
			lw $a0, enemy3PosX
			lw $a1, enemy3PosY
			lw $a2, enemy3State
			lw $a3, enemy3Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy3MoveRight:
		
			bne $t0, 3, TryMoveAgentDone
		
			lw $a0, enemy3PosX
			lw $a1, enemy3PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionRight
			
			lw $t1, enemy3PosX
			addi $t1, $t1, 1
			sw $t1, enemy3PosX
						
			lw $a0, enemy3PosX
			lw $a1, enemy3PosY
			lw $a2, enemy3State
			lw $a3, enemy3Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
		
	TryMoveAgentEnemy4:
	
		bne $a0, 4, TryMoveAgentEnemy5
		
		lw $t0, enemy4Dir
		
		Enemy4MoveUp:
		
			bne $t0, 0, Enemy4MoveDown
			
			lw $a0, enemy4PosX
			lw $a1, enemy4PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision						
			#beq $v0, 0, DrawPositionUp			
			
			lw $t1, enemy4PosY
			addi $t1, $t1, -1
			sw $t1, enemy4PosY			
			
			lw $a0, enemy4PosX
			lw $a1, enemy4PosY
			lw $a2, enemy4State
			lw $a3, enemy4Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy4MoveDown:
		
			bne $t0, 1, Enemy4MoveLeft
			
			lw $a0, enemy4PosX
			lw $a1, enemy4PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionDown
			
			lw $t1, enemy4PosY
			addi $t1, $t1, 1
			sw $t1, enemy4PosY
								
			lw $a0, enemy4PosX
			lw $a1, enemy4PosY
			lw $a2, enemy4State
			lw $a3, enemy4Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy4MoveLeft:
		
			bne $t0, 2, Enemy4MoveRight
			
			lw $a0, enemy4PosX
			lw $a1, enemy4PosY
			
			jal EraseAgent
				
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionLeft
			
			lw $t1, enemy4PosX
			addi $t1, $t1, -1
			sw $t1, enemy4PosX
						
			lw $a0, enemy4PosX
			lw $a1, enemy4PosY
			lw $a2, enemy4State
			lw $a3, enemy4Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy4MoveRight:
		
			bne $t0, 3, TryMoveAgentDone
		
			lw $a0, enemy4PosX
			lw $a1, enemy4PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionRight
			
			lw $t1, enemy4PosX
			addi $t1, $t1, 1
			sw $t1, enemy4PosX
						
			lw $a0, enemy4PosX
			lw $a1, enemy4PosY
			lw $a2, enemy4State
			lw $a3, enemy4Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
		
	TryMoveAgentEnemy5:
	
		bne $a0, 5, TryMoveAgentEnemy6
		
		lw $t0, enemy5Dir
		
		Enemy5MoveUp:
		
			bne $t0, 0, Enemy5MoveDown
			
			lw $a0, enemy5PosX
			lw $a1, enemy5PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision						
			#beq $v0, 0, DrawPositionUp			
			
			lw $t1, enemy5PosY
			addi $t1, $t1, -1
			sw $t1, enemy5PosY
						
			lw $a0, enemy5PosX
			lw $a1, enemy5PosY
			lw $a2, enemy5State
			lw $a3, enemy5Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy5MoveDown:
		
			bne $t0, 1, Enemy5MoveLeft
			
			lw $a0, enemy5PosX
			lw $a1, enemy5PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionDown
			
			lw $t1, enemy5PosY
			addi $t1, $t1, 1
			sw $t1, enemy5PosY
								
			lw $a0, enemy5PosX
			lw $a1, enemy5PosY
			lw $a2, enemy5State
			lw $a3, enemy5Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy5MoveLeft:
		
			bne $t0, 2, Enemy5MoveRight
			
			lw $a0, enemy5PosX
			lw $a1, enemy5PosY
			
			jal EraseAgent
				
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionLeft
			
			lw $t1, enemy5PosX
			addi $t1, $t1, -1
			sw $t1, enemy5PosX
						
			lw $a0, enemy5PosX
			lw $a1, enemy5PosY
			lw $a2, enemy5State
			lw $a3, enemy5Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy5MoveRight:
		
			bne $t0, 3, TryMoveAgentDone
		
			lw $a0, enemy5PosX
			lw $a1, enemy5PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionRight
			
			lw $t1, enemy5PosX
			addi $t1, $t1, 1
			sw $t1, enemy5PosX
						
			lw $a0, enemy5PosX
			lw $a1, enemy5PosY
			lw $a2, enemy5State
			lw $a3, enemy5Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
		
	TryMoveAgentEnemy6:
	
		bne $a0, 6, TryMoveAgentDone
		
		lw $t0, enemy6Dir
		
		Enemy6MoveUp:
		
			bne $t0, 0, Enemy6MoveDown
			
			lw $a0, enemy6PosX
			lw $a1, enemy6PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision						
			#beq $v0, 0, DrawPositionUp			
			
			lw $t1, enemy6PosY
			addi $t1, $t1, -1
			sw $t1, enemy6PosY			
			
			lw $a0, enemy6PosX
			lw $a1, enemy6PosY
			lw $a2, enemy6State
			lw $a3, enemy6Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy6MoveDown:
		
			bne $t0, 1, Enemy6MoveLeft
			
			lw $a0, enemy6PosX
			lw $a1, enemy6PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionDown
			
			lw $t1, enemy6PosY
			addi $t1, $t1, 1
			sw $t1, enemy6PosY
								
			lw $a0, enemy6PosX
			lw $a1, enemy6PosY
			lw $a2, enemy6State
			lw $a3, enemy6Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy6MoveLeft:
		
			bne $t0, 2, Enemy6MoveRight
			
			lw $a0, enemy6PosX
			lw $a1, enemy6PosY
			
			jal EraseAgent
				
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionLeft
			
			lw $t1, enemy6PosX
			addi $t1, $t1, -1
			sw $t1, enemy6PosX
						
			lw $a0, enemy6PosX
			lw $a1, enemy6PosY
			lw $a2, enemy6State
			lw $a3, enemy6Dir
			
			jal DrawAgent
			
			j TryMoveAgentDone
			
		Enemy6MoveRight:
		
			bne $t0, 3, TryMoveAgentDone
		
			lw $a0, enemy6PosX
			lw $a1, enemy6PosY
			
			jal EraseAgent
			
			#Make the test to see if there is collision
			#li $a0, 0 # The player
			#li $a1, 0 # Recursion
			#jal CheckCollision			
			#beq $v0, 0, DrawPositionRight
			
			lw $t1, enemy6PosX
			addi $t1, $t1, 1
			sw $t1, enemy6PosX
						
			lw $a0, enemy6PosX
			lw $a1, enemy6PosY
			lw $a2, enemy6State
			lw $a3, enemy6Dir
			
			jal DrawAgent
				
	TryMoveAgentDone:
	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		jr $ra
		
		
# $a0 x position
# $a1 y position
# $a2 contains the color
# #a3 direction	
DrawAgent:

	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	sw $a1, 8($sp)

	AgentUp:
	
		bne $a3, 0, AgentDown
		
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
				
		j EndDrawAgent
						
	AgentDown:
	
		bne $a3, 1, AgentLeft
						
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
				
		j EndDrawAgent
		
	AgentLeft:
	
		bne $a3, 2, AgentRight
				
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
				
		j EndDrawAgent
		
	AgentRight:
	
		bne $a3, 3, EndDrawAgent
						
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
				
	EndDrawAgent:
	
		lw $ra, 0($sp)	
		addi $sp, $sp, 12
		
		jr $ra

																																																		
# $a0 x position
# $a1 y position
EraseAgent:

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
	
		
# Check Collison Function
# Must be recursive
# $a0 agent
CheckCollision:

	addi $sp, $sp, -12
	sw $ra, 0($sp)
	sw $ra, 4($sp)
	sw $a1, 8($sp)
	
	beq $a0, $a1, CheckCol
	
	addi $a1, $a1, 1
	
	jal CheckCollision
	
	CheckCol:
	
		PlayerCol:
		
			bne $a0, 0, Enemy1Col
			lw $a0, playerPosX
			lw $a1, playerPosY
			li $a2, 4
			lw $a3, playerDir
			
			jal CollisionDirection
			
			j CheckCollisionDone
			
	Enemy1Col:
	
		bne $a0, 0, Enemy2Col
			
	Enemy2Col:	
	
		bne $a0, 2, Enemy3Col
			
	Enemy3Col:
	
		bne $a0, 3, Enemy4Col
			
	Enemy4Col:
	
		bne $a0, 4, CheckCollisionDone
		
	CheckCollisionDone:
	
		lw $ra, 0($sp)
		addi $sp, $sp, 12
		
		jr $ra

#Auxiliar function to detect if there is a collision
# $a0 agent 
# $a1 ydir
# $a2 type
# $a3 dir
CollisionDirection:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $s0, 0
	
	CollUp:
	
		bne $a3, 0, CollDown
		addi $a1, $a1, -2
		
		Pixel0UP:
		
			jal LoadColor
			
			beq $v0, 0, Pixel1UP
			
			li $v0, 1
			
			j CollDone
			
		Pixel1UP:
		
			addi $a0, $a0, 1
			
			jal LoadColor
			
			beq $v0, 0, Pixel2UP
			
			li $v0, 1
			
			j CollDone
			
		Pixel2UP:
		
			addi $a0, $a0, 1
			
			jal LoadColor
			
			beq $v0, 0, Pixel3UP
			
			li $v0, 1
			
			j CollDone
			
		Pixel3UP: 
		
			addi $a0, $a0, 1
			
			jal LoadColor
			
			beq $v0, 0, NoCollUp
			
			li $v0, 1
			
			j CollDone
			
		NoCollUp:
		
			li $v0, 0
			
			j CollDone				
		
	CollDown:
	
		bne $a3, 1, CollLeft
		addi $a1, $a1, 0
		
		Pixel0Down:
		
			jal LoadColor
			
			beq $v0, 0, Pixel1Down
			
			li $v0, 1
			
			j CollDone
			
		Pixel1Down:
		
			addi $a0, $a0, 1
			
			jal LoadColor
			
			beq $v0, 0, Pixel2Down
			
			li $v0, 1
			
			j CollDone
			
		Pixel2Down:
		
			addi $a0, $a0, 1
			
			jal LoadColor
			
			beq $v0, 0, Pixel3Down
			
			li $v0, 1
			
			j CollDone
			
		Pixel3Down: 
		
			addi $a0, $a0, 1
			
			jal LoadColor
			
			beq $v0, 0, NoCollDown
			
			li $v0, 1
			
			j CollDone
			
		NoCollDown:
		
			li $v0, 0
			
			j CollDone					 
		
	CollLeft:
	
		bne $a3, 2, CollRight
		addi $a0, $a0, -5
		
		Pixel0Left:
		
			jal LoadColor
			
			beq $v0, 0, Pixel1Left
			
			li $v0, 1
			
			j CollDone
			
		Pixel1Left:
		
			addi $a1, $a1, 1
			
			jal LoadColor
			
			beq $v0, 0, Pixel2Left
			
			li $v0, 1
			
			j CollDone
			
		Pixel2Left:
		
			addi $a1, $a1, 1
			
			jal LoadColor
			
			beq $v0, 0, Pixel3Left
			
			li $v0, 1
			
			j CollDone
			
		Pixel3Left: 
		
			addi $a1, $a1, 1
			
			jal LoadColor
			
			beq $v0, 0, NoCollLeft
			
			li $v0, 1
			
			j CollDone
			
		NoCollLeft:
		
			li $v0, 0
			
	CollRight:
	
		bne $a3, 3, CollDone
				
		addi $a0, $a0, -1
		
		Pixel0Right:
		
			jal LoadColor
			
			beq $v0, 0, Pixel1Right
			
			li $v0, 1
			
			j CollDone
			
		Pixel1Right:
		
			addi $a1, $a1, 1
			
			jal LoadColor
			
			beq $v0, 0, Pixel2Right
			
			li $v0, 1
			
			j CollDone
			
		Pixel2Right:
		
			addi $a1, $a1, 1
			
			jal LoadColor
			
			beq $v0, 0, Pixel3Right
			
			li $v0, 1
			
			j CollDone
			
		Pixel3Right: 
		
			addi $a1, $a1, 1
			
			jal LoadColor
			
			beq $v0, 0, NoCollRight
			
			li $v0, 1
			
			j CollDone
			
		NoCollRight:
		
			li $v0, 0
			
			j CollDone
		
	CollDone:
	
		lw $ra, 0($sp)
		addi $sp, $sp, 4
	
		jr $ra


# $a0 x
# $a1 y	
LoadColor:	

	sll $t0, $a1, 6
	addu $v0, $a0, $t0
	sll $v0, $v0, 2
	addu $v0, $v0, $gp
	lw $v0, 0($v0)
	
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
		
