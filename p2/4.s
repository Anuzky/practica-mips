.data
dato1: .word 2
dato2: .word 10
dato3: .word 50
dato4: .word 70
dato5: .word 34
res: .space 4
.text
lw $t2, dato2($0)
lw $t4, dato4($0)
lw $t5, dato5($0)
li $t9, 0    # resultado
lw $t0, dato1($0) # poner $t0 al primer valor del intervalo
for: beq $t5,$t0, found
     bgt $t0, $t2, endfor
     addi $t0, $t0,1
     j for
endfor:
lw $t0, dato3($0) # poner $t0 al primer valor del intervalo
for2: beq $t5,$t0, found
      bgt $t0, $t4, end
      addi $t0, $t0,1
      j for2
endfor2:
found: li $t9,1
end: sw $t9, res($0)