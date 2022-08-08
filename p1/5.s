   .data                                   #zona de datos
a: .ascii "Esto es un problema"
   .align 2
b: .byte 69,115,116,111,32,101,115,32,117,
110,32,112,114,111,98,108,101,109,97       # cod. ascii decimal
   .align 2
c: .word 0x6f747345,0x20736520,            # hexadecimal
0x70206e75,0x6c626f72,0x00616d65 