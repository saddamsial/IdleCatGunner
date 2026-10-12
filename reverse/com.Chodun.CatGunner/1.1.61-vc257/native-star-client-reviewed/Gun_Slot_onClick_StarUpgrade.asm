02c77a50  stp x30,x21,[sp, #-0x20]!
02c77a54  stp x20,x19,[sp, #0x10]
02c77a58  adrp x20,0x625c000
02c77a5c  adrp x21,0x5e5e000
02c77a60  mov x19,x0
02c77a64  ldrb w8,[x20, #0x2fc]
02c77a68  ldr x21,[x21, #0x58]
02c77a6c  tbnz w8,#0x0,0x02c77a90
02c77a70  adrp x0,0x5e59000
02c77a74  ldr x0,[x0, #0x1c0]
02c77a78  bl 0x029f5a50
02c77a7c  adrp x0,0x5e5e000
02c77a80  ldr x0,[x0, #0x58]
02c77a84  bl 0x029f5a50
02c77a88  mov w8,#0x1
02c77a8c  strb w8,[x20, #0x2fc]
02c77a90  ldr x0,[x21]
02c77a94  adrp x20,0x5e59000
02c77a98  ldr w8,[x0, #0xe4]
02c77a9c  ldr x20,[x20, #0x1c0]
02c77aa0  cbnz w8,0x02c77aac
02c77aa4  bl 0x029f5bd0
02c77aa8  ldr x0,[x21]
02c77aac  ldr x8,[x20]
02c77ab0  ldr x9,[x0, #0xb8]
02c77ab4  ldr w10,[x8, #0xe4]
02c77ab8  ldr x20,[x9]
02c77abc  cbnz w10,0x02c77ac8
02c77ac0  mov x0,x8
02c77ac4  bl 0x029f5bd0
02c77ac8  mov x0,x20
02c77acc  mov x1,xzr
02c77ad0  mov x2,xzr
02c77ad4  bl 0x057e14b4
02c77ad8  tbnz w0,#0x0,0x02c77b84
02c77adc  ldr x0,[x21]
02c77ae0  ldr w8,[x0, #0xe4]
02c77ae4  cbnz w8,0x02c77af0
02c77ae8  bl 0x029f5bd0
02c77aec  ldr x0,[x21]
02c77af0  ldr x8,[x0, #0xb8]
02c77af4  ldr x8,[x8]
02c77af8  cbz x8,0x02c77b90
02c77afc  bl 0x02c6d80c
02c77b00  tbz w0,#0x0,0x02c77b84
02c77b04  adrp x20,0x625b000
02c77b08  ldrb w8,[x20, #0xa57]
02c77b0c  cbnz w8,0x02c77b24
02c77b10  adrp x0,0x5e5d000
02c77b14  ldr x0,[x0, #0xd70]
02c77b18  bl 0x029f5a50
02c77b1c  mov w8,#0x1
02c77b20  strb w8,[x20, #0xa57]
02c77b24  adrp x8,0x5e5d000
02c77b28  ldr x8,[x8, #0xd70]
02c77b2c  ldr x8,[x8]
02c77b30  ldr x8,[x8, #0xb8]
02c77b34  ldr x0,[x8]
02c77b38  cbz x0,0x02c77b90
02c77b3c  fmov s0,0x3f800000
02c77b40  mov w1,#0x1
02c77b44  mov x2,xzr
02c77b48  mov x3,xzr
02c77b4c  bl 0x02c1f10c
02c77b50  ldr x0,[x21]
02c77b54  ldr w8,[x0, #0xe4]
02c77b58  cbnz w8,0x02c77b64
02c77b5c  bl 0x029f5bd0
02c77b60  ldr x0,[x21]
02c77b64  ldr x8,[x0, #0xb8]
02c77b68  ldr x0,[x8]
02c77b6c  cbz x0,0x02c77b90
02c77b70  ldr w1,[x19, #0x20]
02c77b74  ldp x20,x19,[sp, #0x10]
02c77b78  mov w2,wzr
02c77b7c  ldp x30,x21,[sp], #0x20
02c77b80  b 0x02c6e578
02c77b84  ldp x20,x19,[sp, #0x10]
02c77b88  ldp x30,x21,[sp], #0x20
02c77b8c  ret
02c77b90  bl 0x029f5cfc
