      .data 0x10000000   # zona de datos
V:    .word 10,20        # inicializo V
suma: .space 4           # espacio para la suma
      .text              # zona de instrucciones
      lw $t0, V($0)      # cargo los enteros en registros
      lw $t1, V+4($0)
      add $t0, $t0, $t1  # sumo los enteros
      sw $t0, suma($0)   # guardo la suma en la memoria