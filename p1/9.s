           .data                    # zona de datos
palabra:   .word 0x10203040         # inicializo la palabra
invertida: .space 4                 # espacio para la palabra invertida
           .text                    # zona de instrucciones
           lb $s0, palabra($0)      # cargo los bytes de la palabra en registros
           lb $s1, palabra+1($0)
           lb $s2, palabra+2($0)
           lb $s3, palabra+3($0)
           sb $s3, invertida($0)    # guardo la palabra con los bytes invertidos en la memoria
           sb $s2, invertida+1($0)
           sb $s1, invertida+2($0)
           sb $s0, invertida+3($0)