       .data 0x10000000    # zona de datos
num1:  .word 18
num2:  .word -1215
cinco: .word 5
       .text               # zona de instrucciones
       lw $t0, num1($s0)   # cargo los numeros a los registros
       lw $t2, cinco($0)
       lw $t1, num2($0)
       div $t0, $t2        # divido el primer numero por 5
       mflo $t0            # guardo el cociente en un registro
       sw $t0, 0x10010000  # guardo el resultado en memoria
       div $t1, $t2        # divido el segundo numero por 5
       mflo $t1            # guardo el cociente en un registro
       sw $t1, 0x10010004  # guardo el resultado en memoria