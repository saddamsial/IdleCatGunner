02c2e384  stp x30,x23,[sp, #-0x30]!
02c2e388  stp x22,x21,[sp, #0x10]
02c2e38c  stp x20,x19,[sp, #0x20]
02c2e390  adrp x22,0x625c000
02c2e394  mov w19,w2
02c2e398  mov w20,w1
02c2e39c  ldrb w8,[x22, #0x9]
02c2e3a0  mov x21,x0
02c2e3a4  tbnz w8,#0x0,0x02c2e3c8
02c2e3a8  adrp x0,0x5e5d000
02c2e3ac  ldr x0,[x0, #0x540]
02c2e3b0  bl 0x029f5a50
02c2e3b4  adrp x0,0x5e5d000
02c2e3b8  ldr x0,[x0, #0x4d0]
02c2e3bc  bl 0x029f5a50
02c2e3c0  mov w8,#0x1
02c2e3c4  strb w8,[x22, #0x9]
02c2e3c8  mov x0,x21
02c2e3cc  mov w1,w20
02c2e3d0  mov w2,w19
02c2e3d4  bl 0x02c2db00
02c2e3d8  tbz w0,#0x0,0x02c2e49c
02c2e3dc  adrp x23,0x5e5d000
02c2e3e0  mov x0,x21
02c2e3e4  mov w1,w20
02c2e3e8  ldr x23,[x23, #0x4d0]
02c2e3ec  mov w2,w19
02c2e3f0  bl 0x02c2dbec
02c2e3f4  ldr x8,[x23]
02c2e3f8  mov x22,x0
02c2e3fc  ldr w9,[x8, #0xe4]
02c2e400  cbnz w9,0x02c2e410
02c2e404  mov x0,x8
02c2e408  bl 0x029f5bd0
02c2e40c  ldr x8,[x23]
02c2e410  ldr x8,[x8, #0xb8]
02c2e414  ldr x0,[x8, #0x28]
02c2e418  cbz x0,0x02c2e4ac
02c2e41c  mov w8,#0x64
02c2e420  mov x2,xzr
02c2e424  madd w1,w20,w8,w19
02c2e428  bl 0x02c7ce70
02c2e42c  cbz x22,0x02c2e4ac
02c2e430  ldr x8,[x23]
02c2e434  strb wzr,[x22, #0x10]
02c2e438  ldr x8,[x8, #0xb8]
02c2e43c  ldr x0,[x8, #0x28]
02c2e440  cbz x0,0x02c2e4ac
02c2e444  mov x1,xzr
02c2e448  bl 0x02c7ceec
02c2e44c  ldr x0,[x21, #0x40]
02c2e450  cbz x0,0x02c2e4ac
02c2e454  mov w1,w20
02c2e458  mov x2,xzr
02c2e45c  bl 0x02c33e70
02c2e460  ldr x0,[x21, #0x40]
02c2e464  cbz x0,0x02c2e4ac
02c2e468  mov x1,xzr
02c2e46c  bl 0x02c353e8
02c2e470  adrp x8,0x5e5d000
02c2e474  ldr x8,[x8, #0x540]
02c2e478  ldr x0,[x8]
02c2e47c  ldr w8,[x0, #0xe4]
02c2e480  cbnz w8,0x02c2e488
02c2e484  bl 0x029f5bd0
02c2e488  mov w0,w20
02c2e48c  mov w1,w19
02c2e490  mov w2,#0x2
02c2e494  mov x3,xzr
02c2e498  bl 0x02b99d2c
02c2e49c  ldp x20,x19,[sp, #0x20]
02c2e4a0  ldp x22,x21,[sp, #0x10]
02c2e4a4  ldp x30,x23,[sp], #0x30
02c2e4a8  ret
02c2e4ac  bl 0x029f5cfc
