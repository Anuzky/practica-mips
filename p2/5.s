           .data
v:         .word 1,0,0,4,50,-23,0
total:     .space 4
           .text
main:      la $t1, v($0)
           li $t2, 7
           li $t0, 0
           li $t8, 0 # resultado
for:       bge $t0,$t2, endfor
           lw $t3, 0($t1)
           li $t9,0
           seq $t9, $t3,$0
           add $t8, $t8, $t9
           addi $t1, $t1, 4
           addi $t0, $t0, 1
           j for
endfor:    sw $t8, total($0)