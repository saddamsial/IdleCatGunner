02c2f3e0  str x30,[sp, #-0x30]!
02c2f3e4  stp x22,x21,[sp, #0x10]
02c2f3e8  stp x20,x19,[sp, #0x20]
02c2f3ec  adrp x22,0x625c000
02c2f3f0  adrp x21,0x5e5d000
02c2f3f4  adrp x20,0x5e63000
02c2f3f8  ldrb w8,[x22, #0x1c]
02c2f3fc  ldr x21,[x21, #0x790]
02c2f400  ldr x20,[x20, #0x18]
02c2f404  mov x19,x0
02c2f408  tbnz w8,#0x0,0x02c2f438
02c2f40c  adrp x0,0x5e5d000
02c2f410  ldr x0,[x0, #0x790]
02c2f414  bl 0x029f5a50
02c2f418  adrp x0,0x5e63000
02c2f41c  ldr x0,[x0, #0x18]
02c2f420  bl 0x029f5a50
02c2f424  adrp x0,0x5e59000
02c2f428  ldr x0,[x0, #0x50]
02c2f42c  bl 0x029f5a50
02c2f430  mov w8,#0x1
02c2f434  strb w8,[x22, #0x1c]
02c2f438  ldr x0,[x21]
02c2f43c  mov w1,#0x4
02c2f440  bl 0x029f5b40
02c2f444  mov x1,x0
02c2f448  mov x0,x19
02c2f44c  str x1,[x0, #0x28]!
02c2f450  bl 0x029f59f4
02c2f454  ldr x0,[x21]
02c2f458  mov w1,#0x5
02c2f45c  bl 0x029f5b40
02c2f460  ldr x1,[x20]
02c2f464  mov x2,xzr
02c2f468  mov x20,x0
02c2f46c  bl 0x047779e0
02c2f470  mov x0,x19
02c2f474  mov x1,x20
02c2f478  str x20,[x0, #0x68]!
02c2f47c  bl 0x029f59f4
02c2f480  ldr x0,[x21]
02c2f484  mov w1,#0x3
02c2f488  bl 0x029f5b40
02c2f48c  cbz x0,0x02c2f500
02c2f490  ldr w8,[x0, #0x18]
02c2f494  mov x1,x0
02c2f498  cmp w8,#0x1
02c2f49c  b.ls 0x02c2f4fc
02c2f4a0  mov w9,#0x2
02c2f4a4  cmp w8,#0x2
02c2f4a8  str w9,[x1, #0x24]
02c2f4ac  b.eq 0x02c2f4fc
02c2f4b0  adrp x20,0x5e59000
02c2f4b4  mov w8,#0x7
02c2f4b8  mov x0,x19
02c2f4bc  ldr x20,[x20, #0x50]
02c2f4c0  str w8,[x1, #0x28]
02c2f4c4  str x1,[x0, #0x70]!
02c2f4c8  bl 0x029f59f4
02c2f4cc  ldr x1,[x20]
02c2f4d0  mov x0,x19
02c2f4d4  str x1,[x0, #0x80]!
02c2f4d8  bl 0x029f59f4
02c2f4dc  mov w8,#0xffffffff
02c2f4e0  mov x0,x19
02c2f4e4  mov x1,xzr
02c2f4e8  str w8,[x19, #0x88]
02c2f4ec  ldp x20,x19,[sp, #0x20]
02c2f4f0  ldp x22,x21,[sp, #0x10]
02c2f4f4  ldr x30,[sp], #0x30
02c2f4f8  b 0x057e2ee0
02c2f4fc  bl 0x029f5d04
02c2f500  bl 0x029f5cfc
