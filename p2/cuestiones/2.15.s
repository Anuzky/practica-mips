          .data
dato1:    .word 30
dato2:    .word 40
res:      .space 4
          .text
main:     lw $t0, dato1($0)
          lw $t1, dato2($0)
if:       blt $t0,$t1, else
then:     sub $t2, $t0,$t1
	      j endif
else:     sub $t2, $t1,$t0
endif:    sw $t2, res($0)