			.data
dato1: 		.word 50
dato2: 		.word 20
res: 		.space 1
			.text
main: 		lw $t0,dato1($0) 	# cargar dato1 en t0
 			lw $t1,dato2($0) 	# cargar dato2 en t1
 			sge $t2,$t0,$t1		# poner a t2 en 1 si t0>=t1
fineval: 	sb $t2,res($0) 		# almacenar $t2 en res
