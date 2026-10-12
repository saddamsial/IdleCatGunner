02b85a10  str x30,[sp, #-0x30]!
02b85a14  stp x22,x21,[sp, #0x10]
02b85a18  stp x20,x19,[sp, #0x20]
02b85a1c  mov w20,w3
02b85a20  mov x21,x2
02b85a24  mov w22,w1
02b85a28  mov x19,x0
02b85a2c  bl 0x02b83058
02b85a30  cbz x0,0x02b85acc
02b85a34  mov w1,w22
02b85a38  mov x2,x21
02b85a3c  mov w3,w20
02b85a40  bl 0x02b85c44
02b85a44  cbz x0,0x02b85acc
02b85a48  ldr d0,[x0, #0x10]
02b85a4c  ldr x8,[x19, #0x20]
02b85a50  str d0,[x19, #0x38]
02b85a54  cbz x8,0x02b85acc
02b85a58  ldr w9,[x8, #0x18]
02b85a5c  cbz w9,0x02b85ad0
02b85a60  ldr d0,[x0, #0x20]
02b85a64  str d0,[x8, #0x20]
02b85a68  ldr x8,[x19, #0x20]
02b85a6c  cbz x8,0x02b85acc
02b85a70  ldr w9,[x8, #0x18]
02b85a74  tst w9,#0xfffffffe
02b85a78  b.eq 0x02b85ad0
02b85a7c  ldr d0,[x0, #0x30]
02b85a80  str d0,[x8, #0x28]
02b85a84  ldr x8,[x19, #0x20]
02b85a88  cbz x8,0x02b85acc
02b85a8c  ldr w9,[x8, #0x18]
02b85a90  cmp w9,#0x2
02b85a94  b.ls 0x02b85ad0
02b85a98  ldr d0,[x0, #0x28]
02b85a9c  str d0,[x8, #0x30]
02b85aa0  ldr x8,[x19, #0x20]
02b85aa4  cbz x8,0x02b85acc
02b85aa8  ldr w9,[x8, #0x18]
02b85aac  tst w9,#0xfffffffc
02b85ab0  b.eq 0x02b85ad0
02b85ab4  ldr d0,[x0, #0x18]
02b85ab8  ldp x20,x19,[sp, #0x20]
02b85abc  ldp x22,x21,[sp, #0x10]
02b85ac0  str d0,[x8, #0x38]
02b85ac4  ldr x30,[sp], #0x30
02b85ac8  ret
02b85acc  bl 0x029f5cfc
02b85ad0  bl 0x029f5d04
