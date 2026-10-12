02cb19e0  stp x30,x21,[sp, #-0x20]!
02cb19e4  stp x20,x19,[sp, #0x10]
02cb19e8  adrp x20,0x625c000
02cb19ec  mov x19,x0
02cb19f0  ldrb w8,[x20, #0x54d]
02cb19f4  tbnz w8,#0x0,0x02cb1a0c
02cb19f8  adrp x0,0x5e5d000
02cb19fc  ldr x0,[x0, #0x4e8]
02cb1a00  bl 0x029f5a50
02cb1a04  mov w8,#0x1
02cb1a08  strb w8,[x20, #0x54d]
02cb1a0c  ldr w8,[x19, #0x10]
02cb1a10  ldr x20,[x19, #0x20]
02cb1a14  sub w9,w8,#0x1
02cb1a18  cmp w9,#0x2
02cb1a1c  b.cs 0x02cb1a80
02cb1a20  adrp x21,0x5e5d000
02cb1a24  mov w9,#0xffffffff
02cb1a28  ldr x21,[x21, #0x4e8]
02cb1a2c  str w9,[x19, #0x10]
02cb1a30  ldr x0,[x21]
02cb1a34  ldr w8,[x0, #0xe4]
02cb1a38  cbnz w8,0x02cb1a44
02cb1a3c  bl 0x029f5bd0
02cb1a40  ldr x0,[x21]
02cb1a44  cbz x20,0x02cb1acc
02cb1a48  ldr x8,[x0, #0xb8]
02cb1a4c  ldr x0,[x8]
02cb1a50  cbz x0,0x02cb1acc
02cb1a54  ldr w1,[x20, #0x20]
02cb1a58  bl 0x02cb15b4
02cb1a5c  tbz w0,#0x0,0x02cb1aac
02cb1a60  ldr x1,[x20, #0xe0]
02cb1a64  str x1,[x19, #0x18]!
02cb1a68  mov x0,x19
02cb1a6c  bl 0x029f59f4
02cb1a70  mov w8,#0x2
02cb1a74  mov w0,#0x1
02cb1a78  stur w8,[x19, #-0x8]
02cb1a7c  b 0x02cb1ac0
02cb1a80  cbnz w8,0x02cb1abc
02cb1a84  mov w8,#0xffffffff
02cb1a88  str w8,[x19, #0x10]
02cb1a8c  cbz x20,0x02cb1acc
02cb1a90  ldr x1,[x20, #0xd8]
02cb1a94  str x1,[x19, #0x18]!
02cb1a98  mov x0,x19
02cb1a9c  bl 0x029f59f4
02cb1aa0  mov w0,#0x1
02cb1aa4  stur w0,[x19, #-0x8]
02cb1aa8  b 0x02cb1ac0
02cb1aac  str xzr,[x20, #0xd0]!
02cb1ab0  mov x0,x20
02cb1ab4  mov x1,xzr
02cb1ab8  bl 0x029f59f4
02cb1abc  mov w0,wzr
02cb1ac0  ldp x20,x19,[sp, #0x10]
02cb1ac4  ldp x30,x21,[sp], #0x20
02cb1ac8  ret
02cb1acc  bl 0x029f5cfc
