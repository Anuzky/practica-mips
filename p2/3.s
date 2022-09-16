      .data
V:    .word 1,-4,-5,2
res:  .space 1
      .text
main: lw $t1, V($0)
      lw $t2, V+4($0)
      lw $t3, V+8($0)
      lw $t4, V+12($0)
      slt $t5, $t1,$0
      slt $t6, $t2,$0
      slt $t7, $t3,$0
      slt $t8, $t4,$0
      and $t0, $t5,$t6
      and $t0, $t0,$t7
      and $t0, $t0,$t8
      sb $t0, res($0)