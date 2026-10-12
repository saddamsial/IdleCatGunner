02c432dc  stp x30,x19,[sp, #-0x10]!
02c432e0  adrp x19,0x625c000
02c432e4  ldrb w8,[x19, #0xbf]
02c432e8  cbnz w8,0x02c43300
02c432ec  adrp x0,0x5fb0000
02c432f0  add x0,x0,#0xc88
02c432f4  bl 0x029f5a50
02c432f8  mov w8,#0x1
02c432fc  strb w8,[x19, #0xbf]
02c43300  adrp x8,0x5fb0000
02c43304  add x8,x8,#0xc88
02c43308  ldr x8,[x8]
02c4330c  ldr x8,[x8, #0xb8]
02c43310  ldp s0,s1,[x8, #0x54]
02c43314  ldr s2,[x8, #0x5c]
02c43318  ldp x30,x19,[sp], #0x10
02c4331c  ret
