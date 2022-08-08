   .data 0x10000000  # zona de datos
z: 0x1237
   .text
   lw $t0, z($0)     # cargo el numero en un registro
   sll $t1, $t0, 5   # desplazo el numero 5 bits hacia la izquierda
# puesto que 32 = 2^5 y un desplazamiento a la izq. significa multiplicar por 2