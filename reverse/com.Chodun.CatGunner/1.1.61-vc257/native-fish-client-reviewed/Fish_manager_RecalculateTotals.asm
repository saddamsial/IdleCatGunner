02c5f404  sub sp,sp,#0x60
02c5f408  str x30,[sp, #0x30]
02c5f40c  stp x22,x21,[sp, #0x40]
02c5f410  stp x20,x19,[sp, #0x50]
02c5f414  adrp x20,0x625c000
02c5f418  mov x19,x0
02c5f41c  ldrb w8,[x20, #0x20e]
02c5f420  tbnz w8,#0x0,0x02c5f45c
02c5f424  adrp x0,0x5e62000
02c5f428  ldr x0,[x0, #0xff8]
02c5f42c  bl 0x029f5a50
02c5f430  adrp x0,0x5e63000
02c5f434  ldr x0,[x0]
02c5f438  bl 0x029f5a50
02c5f43c  adrp x0,0x5e63000
02c5f440  ldr x0,[x0, #0x8]
02c5f444  bl 0x029f5a50
02c5f448  adrp x0,0x5e63000
02c5f44c  ldr x0,[x0, #0x10]
02c5f450  bl 0x029f5a50
02c5f454  mov w8,#0x1
02c5f458  strb w8,[x20, #0x20e]
02c5f45c  ldr x8,[x19, #0x20]
02c5f460  stp xzr,xzr,[sp, #0x18]
02c5f464  str xzr,[sp, #0x28]
02c5f468  str xzr,[x19, #0x80]
02c5f46c  str wzr,[x19, #0x7c]
02c5f470  cbz x8,0x02c5f50c
02c5f474  ldr x0,[x19, #0x90]
02c5f478  cbz x0,0x02c5f530
02c5f47c  adrp x8,0x5e63000
02c5f480  adrp x20,0x5e63000
02c5f484  adrp x21,0x5e62000
02c5f488  ldr x8,[x8, #0x10]
02c5f48c  ldr x20,[x20]
02c5f490  ldr x21,[x21, #0xff8]
02c5f494  add x22,sp,#0x18
02c5f498  ldr x1,[x8]
02c5f49c  add x8,sp,#0x18
02c5f4a0  bl 0x044f84d0
02c5f4a4  stp xzr,x22,[sp, #0x8]
02c5f4a8  ldr x1,[x20]
02c5f4ac  add x0,sp,#0x18
02c5f4b0  bl 0x03f9a744
02c5f4b4  tbz w0,#0x0,0x02c5f500
02c5f4b8  ldr x8,[x19, #0x20]
02c5f4bc  cbz x8,0x02c5f528
02c5f4c0  ldrsw x9,[sp, #0x28]
02c5f4c4  ldr w10,[x8, #0x18]
02c5f4c8  cmp w9,w10
02c5f4cc  b.cs 0x02c5f524
02c5f4d0  add x8,x8,x9, LSL #0x3
02c5f4d4  ldr x8,[x8, #0x20]
02c5f4d8  cbz x8,0x02c5f52c
02c5f4dc  ldur d0,[x19, #0x7c]
02c5f4e0  ldr d1,[x8, #0x18]
02c5f4e4  ldr w9,[x19, #0x84]
02c5f4e8  add v0.2S,v1.2S,v0.2S
02c5f4ec  stur d0,[x19, #0x7c]
02c5f4f0  ldr w8,[x8, #0x20]
02c5f4f4  add w8,w8,w9
02c5f4f8  str w8,[x19, #0x84]
02c5f4fc  b 0x02c5f4a8
02c5f500  ldr x1,[x21]
02c5f504  add x0,sp,#0x18
02c5f508  bl 0x03f9a740
02c5f50c  strb wzr,[x19, #0x88]
02c5f510  ldp x20,x19,[sp, #0x50]
02c5f514  ldp x22,x21,[sp, #0x40]
02c5f518  ldr x30,[sp, #0x30]
02c5f51c  add sp,sp,#0x60
02c5f520  ret
02c5f524  bl 0x029f5d04
02c5f528  bl 0x029f5cfc
02c5f52c  bl 0x029f5cfc
02c5f530  bl 0x029f5cfc
