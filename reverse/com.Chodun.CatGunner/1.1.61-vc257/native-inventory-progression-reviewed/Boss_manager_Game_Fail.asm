02c469c0  stp x30,x21,[sp, #-0x20]!
02c469c4  stp x20,x19,[sp, #0x10]
02c469c8  adrp x21,0x625c000
02c469cc  adrp x20,0x5e5d000
02c469d0  mov x19,x0
02c469d4  ldrb w8,[x21, #0xe3]
02c469d8  ldr x20,[x20, #0x338]
02c469dc  tbnz w8,#0x0,0x02c469f4
02c469e0  adrp x0,0x5e5d000
02c469e4  ldr x0,[x0, #0x338]
02c469e8  bl 0x029f5a50
02c469ec  mov w8,#0x1
02c469f0  strb w8,[x21, #0xe3]
02c469f4  ldr x0,[x20]
02c469f8  ldr w8,[x0, #0xe4]
02c469fc  cbnz w8,0x02c46a08
02c46a00  bl 0x029f5bd0
02c46a04  ldr x0,[x20]
02c46a08  ldr x8,[x0, #0xb8]
02c46a0c  ldrb w9,[x8]
02c46a10  cbz w9,0x02c46aa0
02c46a14  ldr w9,[x0, #0xe4]
02c46a18  cbnz w9,0x02c46a28
02c46a1c  bl 0x029f5bd0
02c46a20  ldr x8,[x20]
02c46a24  ldr x8,[x8, #0xb8]
02c46a28  mov x0,x19
02c46a2c  mov w1,#0x3
02c46a30  strb wzr,[x8]
02c46a34  bl 0x02c45dc4
02c46a38  ldr x0,[x19, #0x30]
02c46a3c  cbz x0,0x02c46aac
02c46a40  mov w1,#0x1
02c46a44  mov x2,xzr
02c46a48  mov w19,#0x1
02c46a4c  bl 0x057dff3c
02c46a50  adrp x20,0x625b000
02c46a54  ldrb w8,[x20, #0xa57]
02c46a58  cbnz w8,0x02c46a6c
02c46a5c  adrp x0,0x5e5d000
02c46a60  ldr x0,[x0, #0xd70]
02c46a64  bl 0x029f5a50
02c46a68  strb w19,[x20, #0xa57]
02c46a6c  adrp x8,0x5e5d000
02c46a70  ldr x8,[x8, #0xd70]
02c46a74  ldr x8,[x8]
02c46a78  ldr x8,[x8, #0xb8]
02c46a7c  ldr x0,[x8]
02c46a80  cbz x0,0x02c46aac
02c46a84  ldp x20,x19,[sp, #0x10]
02c46a88  fmov s0,0x3f800000
02c46a8c  mov w1,#0xc
02c46a90  mov x2,xzr
02c46a94  mov x3,xzr
02c46a98  ldp x30,x21,[sp], #0x20
02c46a9c  b 0x02c1f10c
02c46aa0  ldp x20,x19,[sp, #0x10]
02c46aa4  ldp x30,x21,[sp], #0x20
02c46aa8  ret
02c46aac  bl 0x029f5cfc
