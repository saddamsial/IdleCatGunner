02ca93c0  str x30,[sp, #-0x20]!
02ca93c4  stp x20,x19,[sp, #0x10]
02ca93c8  adrp x20,0x625c000
02ca93cc  mov x19,x0
02ca93d0  ldrb w8,[x20, #0x4f9]
02ca93d4  tbnz w8,#0x0,0x02ca93f8
02ca93d8  adrp x0,0x5e5d000
02ca93dc  ldr x0,[x0, #0x338]
02ca93e0  bl 0x029f5a50
02ca93e4  adrp x0,0x5e5d000
02ca93e8  ldr x0,[x0, #0xd68]
02ca93ec  bl 0x029f5a50
02ca93f0  mov w8,#0x1
02ca93f4  strb w8,[x20, #0x4f9]
02ca93f8  ldrb w8,[x19, #0xc8]
02ca93fc  cbz w8,0x02ca9410
02ca9400  mov x0,x19
02ca9404  ldp x20,x19,[sp, #0x10]
02ca9408  ldr x30,[sp], #0x20
02ca940c  b 0x02ca9474
02ca9410  adrp x20,0x5e5d000
02ca9414  mov w9,#0x1
02ca9418  ldr x20,[x20, #0xd68]
02ca941c  strb w9,[x19, #0x56]
02ca9420  ldr x0,[x20]
02ca9424  ldr w8,[x0, #0xe4]
02ca9428  cbnz w8,0x02ca9434
02ca942c  bl 0x029f5bd0
02ca9430  ldr x0,[x20]
02ca9434  adrp x8,0x5e5d000
02ca9438  ldr x8,[x8, #0x338]
02ca943c  ldr x9,[x0, #0xb8]
02ca9440  ldr x8,[x8]
02ca9444  ldr w20,[x9]
02ca9448  ldr w10,[x8, #0xe4]
02ca944c  cbnz w10,0x02ca9458
02ca9450  mov x0,x8
02ca9454  bl 0x029f5bd0
02ca9458  add w0,w20,w20, LSL #0x1
02ca945c  mov x1,xzr
02ca9460  bl 0x02b7ed10
02ca9464  mov x0,x19
02ca9468  ldp x20,x19,[sp, #0x10]
02ca946c  ldr x30,[sp], #0x20
02ca9470  b 0x02ca8d78
