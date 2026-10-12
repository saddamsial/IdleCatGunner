02c908b0  str x30,[sp, #-0x20]!
02c908b4  stp x20,x19,[sp, #0x10]
02c908b8  adrp x19,0x625c000
02c908bc  adrp x20,0x5e5e000
02c908c0  ldrb w8,[x19, #0x3e6]
02c908c4  ldr x20,[x20, #0xb8]
02c908c8  tbnz w8,#0x0,0x02c908e0
02c908cc  adrp x0,0x5e5e000
02c908d0  ldr x0,[x0, #0xb8]
02c908d4  bl 0x029f5a50
02c908d8  mov w8,#0x1
02c908dc  strb w8,[x19, #0x3e6]
02c908e0  ldr x0,[x20]
02c908e4  ldr w8,[x0, #0xe4]
02c908e8  cbnz w8,0x02c908f0
02c908ec  bl 0x029f5bd0
02c908f0  mov w0,#0x1
02c908f4  bl 0x02c9077c
02c908f8  fmov s0,0x3f800000
02c908fc  fmov s1,0x40000000
02c90900  tst w0,#0x1
02c90904  ldp x20,x19,[sp, #0x10]
02c90908  fcsel s0,s1,s0,ne
02c9090c  ldr x30,[sp], #0x20
02c90910  ret
