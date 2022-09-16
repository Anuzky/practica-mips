             .data
tira1:       .asciiz "hola"
             .align 2
tira2:       .asciiz "adios"
             .align 2
n:           .space 4
             .text
main:        la $t1, tira1
             la $t2, tira2
             and $t0, $t0,$0
mientras:    lb $t3, 0($t1)
             lb $t4, 0($t2)
             beqz $t3, finmientras
             beqz $t4, finmientras
             addi $t0, $t0,1
             addi $t1, $t1,1
             addi $t2, $t2,1
             j mientras
finmientras: sw $t0, n($0)