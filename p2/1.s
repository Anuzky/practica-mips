     .data
V:   .byte 0,1,1,1,0
res: .space 3
     .text
main: lb $t1, V($0)     # cargar vector en registros
      lb $t2, V+1($0)
      lb $t3, V+2($0)
      lb $t4, V+3($0)
      lb $t5, V+4($0)
      and $t0, $t1,$t5  # V[1] & V[5]
      sb $t0, res($0)
      or $t0, $t2,$t4   # V[2] | V[4]
      sb $t0, res+1($0)
      or $t0, $t1,$t2   # V[1] | V[2]
      and $t0, $t0,$t3  # (V[1] | V[2]) & V[3]
      sb $t0, res+2($0)