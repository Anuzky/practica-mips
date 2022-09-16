         .data
dato1:   .word 30
dato2:   .word 40
dato3:   .word -1
res:     .space 4
         .text
main:    lw $t1, dato1($0)
         lw $t2, dato2($0)
         lw $t3, dato3($0)
if:      blt $t3,$t1,else
         bgt $t3,$t2,else
then:    addi $t4, $0,1
         j endif
else:    and $t4, $t4,$0
endif:   sw $t4, res($0)