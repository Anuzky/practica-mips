   .data 0x10000000            # zona de datos
x: 0xabcd12bd
   .text                       # zona de instrucciones
   lw $t0, x($0)               # cargo el numero a un registro
   andi $t1, $t0, 0xdd7fffff   # dejo los bits 3, 7 y 9 en 0
# ya que 0xdd7fffff en binario es 11011101011111111111111111111111
   sw $t1, x($0)               # guardo el resultado en memoria