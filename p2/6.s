          .data
V:        .word 1,54,25,0,-32,2
rango1:   .word -20
rango2:   .word 20
res:      .space 4
          .text
main:     la $t0, V($0)
          lw $t1, rango1($0)
          lw $t2, rango2($0)
          li $t3, 6 # nro elementos
          li $t4, 0 # contador a 6
          li $t7, 0 # resultado
for:      bge $t4,$t3, endfor
          lw $t5, 0($t0)
          sge $t8, $t5,$t1
          sle $t9, $t5,$t2
          and $t8, $t8,$t9
          add $t7, $t7, $t8
          addi $t4, $t4, 1
          addi $t0, $t0,4
          j for
endfor:   sw $t7, res($0)