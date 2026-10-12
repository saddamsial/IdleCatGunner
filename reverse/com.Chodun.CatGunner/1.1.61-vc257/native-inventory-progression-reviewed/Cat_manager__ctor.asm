02c44a0c  stp x30,x21,[sp, #-0x20]!
02c44a10  stp x20,x19,[sp, #0x10]
02c44a14  adrp x21,0x625c000
02c44a18  adrp x20,0x5e5c000
02c44a1c  mov x19,x0
02c44a20  ldrb w8,[x21, #0xcc]
02c44a24  ldr x20,[x20, #0x9e8]
02c44a28  tbnz w8,#0x0,0x02c44a40
02c44a2c  adrp x0,0x5e5c000
02c44a30  ldr x0,[x0, #0x9e8]
02c44a34  bl 0x029f5a50
02c44a38  mov w8,#0x1
02c44a3c  strb w8,[x21, #0xcc]
02c44a40  adrp x8,0x116c000
02c44a44  adrp x9,0x1170000
02c44a48  ldr x0,[x20]
02c44a4c  ldr q0,[x8, #0x2a0]
02c44a50  ldr d1,[x9, #0xac0]
02c44a54  mov w1,#0x2
02c44a58  str q0,[x19, #0x30]
02c44a5c  str d1,[x19, #0x40]
02c44a60  bl 0x029f5b40
02c44a64  cbz x0,0x02c44ac4
02c44a68  ldr w9,[x0, #0x18]
02c44a6c  mov x1,x0
02c44a70  cbz w9,0x02c44ac0
02c44a74  adrp x8,0x116f000
02c44a78  cmp w9,#0x1
02c44a7c  ldr d0,[x8, #0x9e0]
02c44a80  mov w8,#0xc0c00000
02c44a84  str w8,[x1, #0x28]
02c44a88  str d0,[x1, #0x20]
02c44a8c  b.eq 0x02c44ac0
02c44a90  adrp x9,0x1170000
02c44a94  mov x0,x19
02c44a98  str w8,[x1, #0x34]
02c44a9c  ldr d0,[x9]
02c44aa0  stur d0,[x1, #0x2c]
02c44aa4  str x1,[x0, #0x48]!
02c44aa8  bl 0x029f59f4
02c44aac  mov x0,x19
02c44ab0  ldp x20,x19,[sp, #0x10]
02c44ab4  mov x1,xzr
02c44ab8  ldp x30,x21,[sp], #0x20
02c44abc  b 0x057e2ee0
02c44ac0  bl 0x029f5d04
02c44ac4  bl 0x029f5cfc
