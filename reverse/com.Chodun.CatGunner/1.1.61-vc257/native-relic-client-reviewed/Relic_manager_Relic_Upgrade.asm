02c31a4c  stp x30,x21,[sp, #-0x20]!
02c31a50  stp x20,x19,[sp, #0x10]
02c31a54  adrp x21,0x625c000
02c31a58  mov x20,x1
02c31a5c  mov x19,x0
02c31a60  ldrb w8,[x21, #0x41]
02c31a64  tbnz w8,#0x0,0x02c31a7c
02c31a68  adrp x0,0x5e5d000
02c31a6c  ldr x0,[x0, #0x4d8]
02c31a70  bl 0x029f5a50
02c31a74  mov w8,#0x1
02c31a78  strb w8,[x21, #0x41]
02c31a7c  cbz x20,0x02c31b98
02c31a80  adrp x8,0x5e5d000
02c31a84  ldr x8,[x8, #0x4d8]
02c31a88  ldr w21,[x20, #0x18]
02c31a8c  ldr x0,[x8]
02c31a90  mov w8,w21
02c31a94  ldr w9,[x0, #0xe4]
02c31a98  cbnz w9,0x02c31aa4
02c31a9c  bl 0x029f5bd0
02c31aa0  ldr w8,[x20, #0x18]
02c31aa4  lsl w9,w21,#0x1
02c31aa8  mov w10,#0x32
02c31aac  ldr w11,[x20, #0x10]
02c31ab0  mov w12,#0x2
02c31ab4  add w9,w9,#0x2
02c31ab8  cmp w9,#0x32
02c31abc  csel w9,w9,w10,lt
02c31ac0  cmp w9,#0x2
02c31ac4  csel w9,w9,w12,gt
02c31ac8  cmp w11,#0x9
02c31acc  mov w11,#0x12c
02c31ad0  csel w10,w11,w10,cc
02c31ad4  cmp w8,w10
02c31ad8  b.ge 0x02c31ae8
02c31adc  ldr w10,[x20, #0x1c]
02c31ae0  subs w9,w10,w9
02c31ae4  b.ge 0x02c31b2c
02c31ae8  adrp x20,0x625b000
02c31aec  ldrb w8,[x20, #0xa57]
02c31af0  cbnz w8,0x02c31b08
02c31af4  adrp x0,0x5e5d000
02c31af8  ldr x0,[x0, #0xd70]
02c31afc  bl 0x029f5a50
02c31b00  mov w8,#0x1
02c31b04  strb w8,[x20, #0xa57]
02c31b08  adrp x8,0x5e5d000
02c31b0c  ldr x8,[x8, #0xd70]
02c31b10  ldr x8,[x8]
02c31b14  ldr x8,[x8, #0xb8]
02c31b18  ldr x0,[x8]
02c31b1c  cbz x0,0x02c31b98
02c31b20  fmov s0,0x3f800000
02c31b24  mov w1,#0x5
02c31b28  b 0x02c31b7c
02c31b2c  add w8,w8,#0x1
02c31b30  mov x0,x19
02c31b34  stp w8,w9,[x20, #0x18]
02c31b38  bl 0x02c31f8c
02c31b3c  adrp x20,0x625b000
02c31b40  ldrb w8,[x20, #0xa57]
02c31b44  cbnz w8,0x02c31b5c
02c31b48  adrp x0,0x5e5d000
02c31b4c  ldr x0,[x0, #0xd70]
02c31b50  bl 0x029f5a50
02c31b54  mov w8,#0x1
02c31b58  strb w8,[x20, #0xa57]
02c31b5c  adrp x8,0x5e5d000
02c31b60  ldr x8,[x8, #0xd70]
02c31b64  ldr x8,[x8]
02c31b68  ldr x8,[x8, #0xb8]
02c31b6c  ldr x0,[x8]
02c31b70  cbz x0,0x02c31b98
02c31b74  fmov s0,0x3f800000
02c31b78  mov w1,#0x4
02c31b7c  mov x2,xzr
02c31b80  mov x3,xzr
02c31b84  bl 0x02c1f10c
02c31b88  mov x0,x19
02c31b8c  ldp x20,x19,[sp, #0x10]
02c31b90  ldp x30,x21,[sp], #0x20
02c31b94  b 0x02c327d8
02c31b98  bl 0x029f5cfc
