         .data                  # zona de datos
palabra: .word 0x10203040       # inicializo la palabra
         .text                  # zona de instrucciones
         lh $s0, palabra($0)    # cargo las medias palabras en registros
         lh $s1, palabra+2($0)
         sh $s1, palabra($0)    # guardo las medias palabras invertidas en la memoria
         sh $s0, palabra+2($0)