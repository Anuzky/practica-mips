		.data 0x10000000		# zona de datos
V: 		.word 10,20,25,500,3	# inicializo el vector
		.text					# zona de instrucciones
		lw $s0, V($0)			# cargo el vector en los registros
		lw $s1, V+4($0)
		lw $s2, V+8($0)
		lw $s3, V+12($0)
		lw $s4, V+16($0)
		sw $s0, 0x10010000($0)	# guardo el vector en la direccion pedida
		sw $s1, 0x10010004($0)
		sw $s2, 0x10010008($0)
		sw $s3, 0x1001000c($0)
		sw $s4, 0x10010010($0)
		