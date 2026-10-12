02ba6a18  str x30,[sp, #-0x20]!
02ba6a1c  stp x20,x19,[sp, #0x10]
02ba6a20  mov w20,w1
02ba6a24  mov x19,x0
02ba6a28  bl 0x02ba3f20
02ba6a2c  cmp w20,#0x1
02ba6a30  b.gt 0x02ba6a50
02ba6a34  cbz w20,0x02ba6a70
02ba6a38  cmp w20,#0x1
02ba6a3c  b.ne 0x02ba6a8c
02ba6a40  ldr w8,[x19, #0x54]
02ba6a44  add w8,w8,#0x1
02ba6a48  str w8,[x19, #0x54]
02ba6a4c  b 0x02ba6a8c
02ba6a50  cmp w20,#0x2
02ba6a54  b.eq 0x02ba6a80
02ba6a58  cmp w20,#0x3
02ba6a5c  b.ne 0x02ba6a8c
02ba6a60  ldr w8,[x19, #0x5c]
02ba6a64  add w8,w8,#0x1
02ba6a68  str w8,[x19, #0x5c]
02ba6a6c  b 0x02ba6a8c
02ba6a70  ldr w8,[x19, #0x50]
02ba6a74  add w8,w8,#0x1
02ba6a78  str w8,[x19, #0x50]
02ba6a7c  b 0x02ba6a8c
02ba6a80  ldr w8,[x19, #0x58]
02ba6a84  add w8,w8,#0x1
02ba6a88  str w8,[x19, #0x58]
02ba6a8c  ldr x0,[x19, #0x88]
02ba6a90  cbz x0,0x02ba6ac8
02ba6a94  mov x1,xzr
02ba6a98  bl 0x057dc1c8
02ba6a9c  cbz x0,0x02ba6ac8
02ba6aa0  mov x1,xzr
02ba6aa4  bl 0x057e00b4
02ba6aa8  tbz w0,#0x0,0x02ba6abc
02ba6aac  mov x0,x19
02ba6ab0  ldp x20,x19,[sp, #0x10]
02ba6ab4  ldr x30,[sp], #0x20
02ba6ab8  b 0x02ba56f4
02ba6abc  ldp x20,x19,[sp, #0x10]
02ba6ac0  ldr x30,[sp], #0x20
02ba6ac4  ret
02ba6ac8  bl 0x029f5cfc
