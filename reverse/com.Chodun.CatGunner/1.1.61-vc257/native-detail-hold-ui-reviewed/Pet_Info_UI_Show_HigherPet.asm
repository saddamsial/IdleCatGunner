02c7e658  stp x30,x21,[sp, #-0x20]!
02c7e65c  stp x20,x19,[sp, #0x10]
02c7e660  adrp x20,0x625c000
02c7e664  adrp x21,0x5e5d000
02c7e668  mov x19,x0
02c7e66c  ldrb w8,[x20, #0x33e]
02c7e670  ldr x21,[x21, #0x4d0]
02c7e674  tbnz w8,#0x0,0x02c7e68c
02c7e678  adrp x0,0x5e5d000
02c7e67c  ldr x0,[x0, #0x4d0]
02c7e680  bl 0x029f5a50
02c7e684  mov w8,#0x1
02c7e688  strb w8,[x20, #0x33e]
02c7e68c  ldr x0,[x21]
02c7e690  ldr w20,[x19, #0x60]
02c7e694  ldr w8,[x0, #0xe4]
02c7e698  cbnz w8,0x02c7e6a4
02c7e69c  bl 0x029f5bd0
02c7e6a0  ldr x0,[x21]
02c7e6a4  ldr x8,[x0, #0xb8]
02c7e6a8  ldr x8,[x8, #0x28]
02c7e6ac  cbz x8,0x02c7e6ec
02c7e6b0  ldr x8,[x8, #0x20]
02c7e6b4  cbz x8,0x02c7e6ec
02c7e6b8  ldr w8,[x8, #0x18]
02c7e6bc  sub w8,w8,#0x1
02c7e6c0  cmp w20,w8
02c7e6c4  b.ge 0x02c7e6e0
02c7e6c8  ldr w8,[x19, #0x60]
02c7e6cc  mov x0,x19
02c7e6d0  ldp x20,x19,[sp, #0x10]
02c7e6d4  add w1,w8,#0x1
02c7e6d8  ldp x30,x21,[sp], #0x20
02c7e6dc  b 0x02c7da80
02c7e6e0  ldp x20,x19,[sp, #0x10]
02c7e6e4  ldp x30,x21,[sp], #0x20
02c7e6e8  ret
02c7e6ec  bl 0x029f5cfc
