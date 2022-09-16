         .data
v1:      .word 6,7,8,9,10,-1,34,23
v2:      .space 32
         .text
main:    la $t1, v1   # t1 apunta a v1
         la $t2, v2   # t2 apunta a v2
         li $t0, 0
         li $t7, 7
for:     bgt $t0,$t7, endfor
         lw $t3, 0($t1)
         addi $t3, $t3, 1
         sw $t3, 0($t2)
         addi $t1, $t1, 4
         addi $t2, $t2, 4
         addi $t0, $t0, 1
         j for
endfor: