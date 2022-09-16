              .data
string:       .asciiz "la casa es linda"
selected:     .ascii "a"
              .align 2
res:          .space 4
              .text
main:         la $t1, string($0)
              lb $t2, selected($0)
              li $t8, 0 # resultado
while:        lb $t3, 0($t1)
              beq $t3,$0, endwhile
              li $t9, 0
              seq $t9, $t3,$t2
              add $t8, $t8, $t9
              addi $t1, $t1, 1
              j while
endwhile:     sw $t8, res($0)