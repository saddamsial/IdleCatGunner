02c5f360  stp x30,x21,[sp, #-0x20]!
02c5f364  stp x20,x19,[sp, #0x10]
02c5f368  adrp x21,0x625c000
02c5f36c  mov w20,w1
02c5f370  mov x19,x0
02c5f374  ldrb w8,[x21, #0x20d]
02c5f378  tbnz w8,#0x0,0x02c5f39c
02c5f37c  adrp x0,0x5e63000
02c5f380  ldr x0,[x0, #0x840]
02c5f384  bl 0x029f5a50
02c5f388  adrp x0,0x5e62000
02c5f38c  ldr x0,[x0, #0xfe8]
02c5f390  bl 0x029f5a50
02c5f394  mov w8,#0x1
02c5f398  strb w8,[x21, #0x20d]
02c5f39c  tbnz w20,#0x1f,0x02c5f3f4
02c5f3a0  ldr x0,[x19, #0x90]
02c5f3a4  cbz x0,0x02c5f400
02c5f3a8  ldr w8,[x0, #0x18]
02c5f3ac  cmp w8,w20
02c5f3b0  b.le 0x02c5f3f4
02c5f3b4  adrp x8,0x5e63000
02c5f3b8  mov w1,w20
02c5f3bc  ldr x8,[x8, #0x840]
02c5f3c0  ldr x2,[x8]
02c5f3c4  bl 0x044f9164
02c5f3c8  ldr x8,[x19, #0xa8]
02c5f3cc  cbz x8,0x02c5f3e0
02c5f3d0  ldr x9,[x8, #0x18]
02c5f3d4  ldr x0,[x8, #0x40]
02c5f3d8  ldr x1,[x8, #0x28]
02c5f3dc  blr x9
02c5f3e0  mov x0,x19
02c5f3e4  bl 0x02c5d820
02c5f3e8  ldp x20,x19,[sp, #0x10]
02c5f3ec  ldp x30,x21,[sp], #0x20
02c5f3f0  b 0x02c5e13c
02c5f3f4  ldp x20,x19,[sp, #0x10]
02c5f3f8  ldp x30,x21,[sp], #0x20
02c5f3fc  ret
02c5f400  bl 0x029f5cfc
