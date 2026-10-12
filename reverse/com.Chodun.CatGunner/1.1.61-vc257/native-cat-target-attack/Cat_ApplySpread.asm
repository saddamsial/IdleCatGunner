02c41da8  str d10,[sp, #-0x20]!
02c41dac  stp d9,d8,[sp, #0x8]
02c41db0  str x30,[sp, #0x18]
02c41db4  adrp x8,0x116c000
02c41db8  fmov s9,s1
02c41dbc  fmov s8,s2
02c41dc0  ldr s1,[x8, #0x88]
02c41dc4  fmov s10,s0
02c41dc8  fcmp s3,s1
02c41dcc  b.mi 0x02c41e1c
02c41dd0  fneg s0,s3
02c41dd4  fmov s1,s3
02c41dd8  mov x0,xzr
02c41ddc  bl 0x057d55d4
02c41de0  adrp x8,0x116c000
02c41de4  movi d2,#0x0
02c41de8  mov x0,xzr
02c41dec  ldr s1,[x8, #0x26c]
02c41df0  fmul s1,s0,s1
02c41df4  movi d0,#0x0
02c41df8  bl 0x057cd67c
02c41dfc  fmov s4,s10
02c41e00  fmov s5,s9
02c41e04  mov x0,xzr
02c41e08  fmov s6,s8
02c41e0c  bl 0x057cdb04
02c41e10  fmov s10,s0
02c41e14  fmov s9,s1
02c41e18  fmov s8,s2
02c41e1c  fmov s1,s9
02c41e20  fmov s2,s8
02c41e24  ldr x30,[sp, #0x18]
02c41e28  ldp d9,d8,[sp, #0x8]
02c41e2c  fmov s0,s10
02c41e30  ldr d10,[sp], #0x20
02c41e34  ret
