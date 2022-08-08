   .data 0x10000000           # zona de datos
y: 0xff0f1235
   .text                      # zona de instrucciones
   lw $t0, y($0)
   andi $t0, $t0, 0xddffffff  # convierto en 0 los bits 3 y 7
# ya que 0xddffffff en binario es 11011101111111111111111111111111
   ori $t0, $t0, 0x800000     # convierto en 1 el bit 9
# ya que 0x800000 en binario es 00000000100000000000000000000000
   sw $t0, y($0)              # guardo el resultado en memoria