02c168b8  str x30,[sp, #-0x20]!
02c168bc  stp x20,x19,[sp, #0x10]
02c168c0  adrp x19,0x625b000
02c168c4  adrp x20,0x5e5d000
02c168c8  ldrb w8,[x19, #0xeee]
02c168cc  ldr x20,[x20, #0xf00]
02c168d0  tbnz w8,#0x0,0x02c168e8
02c168d4  adrp x0,0x5e5d000
02c168d8  ldr x0,[x0, #0xf00]
02c168dc  bl 0x029f5a50
02c168e0  mov w8,#0x1
02c168e4  strb w8,[x19, #0xeee]
02c168e8  ldr x8,[x20]
02c168ec  ldp x20,x19,[sp, #0x10]
02c168f0  ldr x8,[x8, #0xb8]
02c168f4  ldrb w0,[x8]
02c168f8  ldr x30,[sp], #0x20
02c168fc  ret
