049c37c0  str d10,[sp, #-0x20]!
049c37c4  stp d9,d8,[sp, #0x8]
049c37c8  str x30,[sp, #0x18]
049c37cc  adrp x8,0x116c000
049c37d0  fmov s9,s1
049c37d4  fmov s8,s2
049c37d8  ldr s1,[x8, #0x26c]
049c37dc  fmov s10,s0
049c37e0  movi d0,#0x0
049c37e4  mov x0,xzr
049c37e8  fmul s2,s3,s1
049c37ec  movi d1,#0x0
049c37f0  bl 0x057cd67c
049c37f4  fmov s5,s9
049c37f8  fmov s6,s8
049c37fc  ldr x30,[sp, #0x18]
049c3800  ldp d9,d8,[sp, #0x8]
049c3804  fmov s4,s10
049c3808  mov x0,xzr
049c380c  ldr d10,[sp], #0x20
049c3810  b 0x057cdb04
