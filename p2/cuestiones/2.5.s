         .data
dato1:   .word 40
dato2:   .word 30
res:     .space 4
         .text
main:    lw $t0, dato1($0)
         lw $t1, dato2($0)
         and $t2, $t2,$0
if:      blez $t1, endif
then:    div $t0,$t1
         mflo $t2
endif:   add $t2, $t2,$t0
         add $t2, $t2,$t1
         sw $t2, res($0)