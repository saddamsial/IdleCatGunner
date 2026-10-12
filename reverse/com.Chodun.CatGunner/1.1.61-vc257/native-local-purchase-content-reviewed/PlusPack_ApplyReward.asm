02c913e4  str x30,[sp, #-0x30]!
02c913e8  stp x22,x21,[sp, #0x10]
02c913ec  stp x20,x19,[sp, #0x20]
02c913f0  adrp x22,0x625c000
02c913f4  adrp x21,0x5e5e000
02c913f8  mov w20,w1
02c913fc  ldrb w8,[x22, #0x3f2]
02c91400  ldr x21,[x21, #0xb8]
02c91404  mov x19,x0
02c91408  tbnz w8,#0x0,0x02c9142c
02c9140c  adrp x0,0x5e5e000
02c91410  ldr x0,[x0, #0xb8]
02c91414  bl 0x029f5a50
02c91418  adrp x0,0x5e5d000
02c9141c  ldr x0,[x0, #0x3c0]
02c91420  bl 0x029f5a50
02c91424  mov w8,#0x1
02c91428  strb w8,[x22, #0x3f2]
02c9142c  ldr x0,[x21]
02c91430  adrp x22,0x5e5d000
02c91434  ldr w8,[x0, #0xe4]
02c91438  ldr x22,[x22, #0x3c0]
02c9143c  cbnz w8,0x02c91448
02c91440  bl 0x029f5bd0
02c91444  ldr x0,[x21]
02c91448  ldr x8,[x22]
02c9144c  ldr x9,[x0, #0xb8]
02c91450  ldr w10,[x8, #0xe4]
02c91454  ldr x22,[x9, #0x8]
02c91458  cbnz w10,0x02c91464
02c9145c  mov x0,x8
02c91460  bl 0x029f5bd0
02c91464  mov x0,xzr
02c91468  bl 0x02c1a570
02c9146c  cbz x22,0x02c914cc
02c91470  ldr w8,[x22, #0x18]
02c91474  cmp w8,w20
02c91478  b.ls 0x02c914d0
02c9147c  add x8,x22,w20, SXTW  #0x3
02c91480  str x0,[x8, #0x20]
02c91484  mov x0,xzr
02c91488  bl 0x02c0faf8
02c9148c  ldr x0,[x19, #0x20]
02c91490  cbz x0,0x02c914cc
02c91494  bl 0x02c91700
02c91498  ldr x8,[x21]
02c9149c  ldr x8,[x8, #0xb8]
02c914a0  ldr x8,[x8, #0x10]
02c914a4  cbz x8,0x02c914b8
02c914a8  ldr x9,[x8, #0x18]
02c914ac  ldr x0,[x8, #0x40]
02c914b0  ldr x1,[x8, #0x28]
02c914b4  blr x9
02c914b8  ldp x20,x19,[sp, #0x20]
02c914bc  mov w0,#0x1
02c914c0  ldp x22,x21,[sp, #0x10]
02c914c4  ldr x30,[sp], #0x30
02c914c8  ret
02c914cc  bl 0x029f5cfc
02c914d0  bl 0x029f5d04
