      .data
V:    .word 2,-4,-6
res:  .space 3
      .text
main: lw $t1, V($0)
      lw $t2, V+4($0)
      lw $t3, V+8($0)
      sge $t0, $t1,$0
      sb $t0, res($0)
      sge $t0, $t2,$0
      sb $t0, res+1($0)
      sge $t0, $t3,$0
      sb $t0, res+2($0)