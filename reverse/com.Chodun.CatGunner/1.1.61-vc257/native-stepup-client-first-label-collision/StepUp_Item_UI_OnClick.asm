02ca4980  sub sp,sp,#0x30
02ca4984  stp x30,x21,[sp, #0x10]
02ca4988  stp x20,x19,[sp, #0x20]
02ca498c  adrp x20,0x625c000
02ca4990  adrp x21,0x5e5e000
02ca4994  mov x19,x0
02ca4998  ldrb w8,[x20, #0x4b0]
02ca499c  ldr x21,[x21, #0x4b8]
02ca49a0  tbnz w8,#0x0,0x02ca49f4
02ca49a4  adrp x0,0x5e5d000
02ca49a8  ldr x0,[x0, #0xd40]
02ca49ac  bl 0x029f5a50
02ca49b0  adrp x0,0x5e5e000
02ca49b4  ldr x0,[x0, #0x528]
02ca49b8  bl 0x029f5a50
02ca49bc  adrp x0,0x5e59000
02ca49c0  ldr x0,[x0, #0x1c0]
02ca49c4  bl 0x029f5a50
02ca49c8  adrp x0,0x5e5d000
02ca49cc  ldr x0,[x0, #0x920]
02ca49d0  bl 0x029f5a50
02ca49d4  adrp x0,0x5e5e000
02ca49d8  ldr x0,[x0, #0x4b8]
02ca49dc  bl 0x029f5a50
02ca49e0  adrp x0,0x5e5e000
02ca49e4  ldr x0,[x0, #0x7a0]
02ca49e8  bl 0x029f5a50
02ca49ec  mov w8,#0x1
02ca49f0  strb w8,[x20, #0x4b0]
02ca49f4  ldr x0,[x21]
02ca49f8  adrp x20,0x5e59000
02ca49fc  ldr w8,[x0, #0xe4]
02ca4a00  ldr x20,[x20, #0x1c0]
02ca4a04  cbnz w8,0x02ca4a10
02ca4a08  bl 0x029f5bd0
02ca4a0c  ldr x0,[x21]
02ca4a10  ldr x8,[x20]
02ca4a14  ldr x9,[x0, #0xb8]
02ca4a18  ldr w10,[x8, #0xe4]
02ca4a1c  ldr x20,[x9]
02ca4a20  cbnz w10,0x02ca4a2c
02ca4a24  mov x0,x8
02ca4a28  bl 0x029f5bd0
02ca4a2c  mov x0,x20
02ca4a30  mov x1,xzr
02ca4a34  mov x2,xzr
02ca4a38  bl 0x057e14b4
02ca4a3c  tbz w0,#0x0,0x02ca4a50
02ca4a40  ldp x20,x19,[sp, #0x20]
02ca4a44  ldp x30,x21,[sp, #0x10]
02ca4a48  add sp,sp,#0x30
02ca4a4c  ret
02ca4a50  ldr x0,[x21]
02ca4a54  ldr w8,[x0, #0xe4]
02ca4a58  cbnz w8,0x02ca4a64
02ca4a5c  bl 0x029f5bd0
02ca4a60  ldr x0,[x21]
02ca4a64  ldr x8,[x0, #0xb8]
02ca4a68  ldr x0,[x8]
02ca4a6c  cbz x0,0x02ca4be0
02ca4a70  ldr w1,[x19, #0x20]
02ca4a74  bl 0x02ca2a94
02ca4a78  tbz w0,#0x0,0x02ca4b14
02ca4a7c  adrp x8,0x5e5d000
02ca4a80  ldr x8,[x8, #0xd40]
02ca4a84  ldr x8,[x8]
02ca4a88  ldr x8,[x8, #0xb8]
02ca4a8c  ldr x0,[x8]
02ca4a90  cbz x0,0x02ca4be0
02ca4a94  mov x1,xzr
02ca4a98  bl 0x02c6a234
02ca4a9c  tbz w0,#0x0,0x02ca4b38
02ca4aa0  adrp x20,0x5e5d000
02ca4aa4  ldr x20,[x20, #0x920]
02ca4aa8  ldr x0,[x20]
02ca4aac  ldr w8,[x0, #0xe4]
02ca4ab0  cbnz w8,0x02ca4ab8
02ca4ab4  bl 0x029f5bd0
02ca4ab8  adrp x21,0x625b000
02ca4abc  ldrb w8,[x21, #0x960]
02ca4ac0  cbnz w8,0x02ca4ad8
02ca4ac4  adrp x0,0x5e5d000
02ca4ac8  ldr x0,[x0, #0x920]
02ca4acc  bl 0x029f5a50
02ca4ad0  mov w8,#0x1
02ca4ad4  strb w8,[x21, #0x960]
02ca4ad8  ldr x0,[x20]
02ca4adc  ldr w8,[x0, #0xe4]
02ca4ae0  cbnz w8,0x02ca4aec
02ca4ae4  bl 0x029f5bd0
02ca4ae8  ldr x0,[x20]
02ca4aec  ldr x8,[x0, #0xb8]
02ca4af0  ldr x0,[x8]
02ca4af4  cbz x0,0x02ca4be0
02ca4af8  ldr w1,[x19, #0x20]
02ca4afc  ldp x20,x19,[sp, #0x20]
02ca4b00  ldp x30,x21,[sp, #0x10]
02ca4b04  mov x2,xzr
02ca4b08  mov x3,xzr
02ca4b0c  add sp,sp,#0x30
02ca4b10  b 0x02c92cf4
02ca4b14  adrp x19,0x625b000
02ca4b18  ldrb w8,[x19, #0xa57]
02ca4b1c  cbnz w8,0x02ca4ba8
02ca4b20  adrp x0,0x5e5d000
02ca4b24  ldr x0,[x0, #0xd70]
02ca4b28  bl 0x029f5a50
02ca4b2c  mov w8,#0x1
02ca4b30  strb w8,[x19, #0xa57]
02ca4b34  b 0x02ca4ba8
02ca4b38  adrp x8,0x5e5e000
02ca4b3c  ldr x8,[x8, #0x528]
02ca4b40  ldr x0,[x8]
02ca4b44  ldr w8,[x0, #0xe4]
02ca4b48  cbnz w8,0x02ca4b50
02ca4b4c  bl 0x029f5bd0
02ca4b50  adrp x8,0x5e5e000
02ca4b54  mov w2,wzr
02ca4b58  mov w4,wzr
02ca4b5c  ldr x8,[x8, #0x7a0]
02ca4b60  mov x5,xzr
02ca4b64  mov x6,xzr
02ca4b68  mov w1,#0x1
02ca4b6c  mov w3,#0x1
02ca4b70  mov w7,#0x1
02ca4b74  ldr x0,[x8]
02ca4b78  str xzr,[sp]
02ca4b7c  mov w19,#0x1
02ca4b80  bl 0x02bccb00
02ca4b84  mov x1,xzr
02ca4b88  bl 0x02c1dd54
02ca4b8c  adrp x20,0x625b000
02ca4b90  ldrb w8,[x20, #0xa57]
02ca4b94  cbnz w8,0x02ca4ba8
02ca4b98  adrp x0,0x5e5d000
02ca4b9c  ldr x0,[x0, #0xd70]
02ca4ba0  bl 0x029f5a50
02ca4ba4  strb w19,[x20, #0xa57]
02ca4ba8  adrp x8,0x5e5d000
02ca4bac  ldr x8,[x8, #0xd70]
02ca4bb0  ldr x8,[x8]
02ca4bb4  ldr x8,[x8, #0xb8]
02ca4bb8  ldr x0,[x8]
02ca4bbc  cbz x0,0x02ca4be0
02ca4bc0  ldp x20,x19,[sp, #0x20]
02ca4bc4  fmov s0,0x3f800000
02ca4bc8  ldp x30,x21,[sp, #0x10]
02ca4bcc  mov w1,#0x5
02ca4bd0  mov x2,xzr
02ca4bd4  mov x3,xzr
02ca4bd8  add sp,sp,#0x30
02ca4bdc  b 0x02c1f10c
02ca4be0  bl 0x029f5cfc
