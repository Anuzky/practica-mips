			.data 0x10010002			# zona de datos
bytes:		.byte 0x10,0x20,0x30,0x40	# inicializo 4 bytes
			.align 2					# alineo a dir. multiplo de 4
			.space 8
palabra:	.space 4					# espacio para una palabra
			.text						# zona de instrucciones
			lb $s0, bytes($0)			# cargo los bytes en registros
			lb $s1, bytes+1($0)
			lb $s2, bytes+2($0)
			lb $s3, bytes+3($0)
			sb $s0, palabra($0)			# guardo los bytes en el espacio para palabra
			sb $s1, palabra+1($0)
			sb $s2, palabra+2($0)
			sb $s3, palabra+3($0)