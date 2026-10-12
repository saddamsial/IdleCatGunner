049badc4  stp d9,d8,[sp, #-0x20]!
049badc8  str x30,[sp, #0x10]
049badcc  adrp x8,0x116c000
049badd0  fmov s8,s1
049badd4  fmov s9,s0
049badd8  ldr s6,[x8, #0x26c]
049baddc  mov x0,xzr
049bade0  fmul s5,s2,s6
049bade4  fmul s1,s3,s6
049bade8  fmul s2,s4,s6
049badec  fmov s0,s5
049badf0  bl 0x057cd67c
049badf4  ldr x30,[sp, #0x10]
049badf8  movi d6,#0x0
049badfc  fmov s4,s9
049bae00  fmov s5,s8
049bae04  mov x0,xzr
049bae08  ldp d9,d8,[sp], #0x20
049bae0c  b 0x057cdb04
