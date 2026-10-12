02c7078c  str d8,[sp, #-0x20]!
02c70790  stp x30,x19,[sp, #0x10]
02c70794  ldrb w8,[x0, #0x70]
02c70798  cbz w8,0x02c707c4
02c7079c  mov x19,x0
02c707a0  ldr s8,[x0, #0x74]
02c707a4  mov x0,xzr
02c707a8  bl 0x057ebb34
02c707ac  fadd s0,s8,s0
02c707b0  adrp x8,0x116c000
02c707b4  ldr s1,[x8, #0x60]
02c707b8  fcmp s0,s1
02c707bc  str s0,[x19, #0x74]
02c707c0  b.pl 0x02c707d0
02c707c4  ldp x30,x19,[sp, #0x10]
02c707c8  ldr d8,[sp], #0x20
02c707cc  ret
02c707d0  mov x0,x19
02c707d4  str wzr,[x19, #0x74]
02c707d8  ldp x30,x19,[sp, #0x10]
02c707dc  ldr d8,[sp], #0x20
02c707e0  b 0x02c707e4
