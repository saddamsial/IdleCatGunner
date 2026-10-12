02c58a38  str x30,[sp, #-0x30]!
02c58a3c  stp x22,x21,[sp, #0x10]
02c58a40  stp x20,x19,[sp, #0x20]
02c58a44  adrp x21,0x625c000
02c58a48  adrp x20,0x5e5d000
02c58a4c  mov x19,x0
02c58a50  ldrb w8,[x21, #0x1b1]
02c58a54  ldr x20,[x20, #0x338]
02c58a58  tbnz w8,#0x0,0x02c58a94
02c58a5c  adrp x0,0x5e5d000
02c58a60  ldr x0,[x0, #0x338]
02c58a64  bl 0x029f5a50
02c58a68  adrp x0,0x5e59000
02c58a6c  ldr x0,[x0, #0x1c0]
02c58a70  bl 0x029f5a50
02c58a74  adrp x0,0x5e5e000
02c58a78  ldr x0,[x0, #0x68]
02c58a7c  bl 0x029f5a50
02c58a80  adrp x0,0x5e5e000
02c58a84  ldr x0,[x0, #0x3e0]
02c58a88  bl 0x029f5a50
02c58a8c  mov w8,#0x1
02c58a90  strb w8,[x21, #0x1b1]
02c58a94  ldr x0,[x20]
02c58a98  adrp x22,0x5e5e000
02c58a9c  adrp x21,0x5e59000
02c58aa0  ldr x22,[x22, #0x68]
02c58aa4  ldr w8,[x0, #0xe4]
02c58aa8  ldr x21,[x21, #0x1c0]
02c58aac  cbnz w8,0x02c58ab8
02c58ab0  bl 0x029f5bd0
02c58ab4  ldr x0,[x20]
02c58ab8  ldr x9,[x22]
02c58abc  ldr x8,[x21]
02c58ac0  mov w12,#0x1
02c58ac4  ldr x10,[x0, #0xb8]
02c58ac8  ldr w11,[x19, #0x7c]
02c58acc  ldr x9,[x9, #0xb8]
02c58ad0  ldr w13,[x8, #0xe4]
02c58ad4  strb w12,[x10]
02c58ad8  add w10,w11,#0x1
02c58adc  ldr x20,[x9]
02c58ae0  str w10,[x19, #0x7c]
02c58ae4  cbnz w13,0x02c58af0
02c58ae8  mov x0,x8
02c58aec  bl 0x029f5bd0
02c58af0  mov x0,x20
02c58af4  mov x1,xzr
02c58af8  mov x2,xzr
02c58afc  bl 0x057dfa70
02c58b00  tbz w0,#0x0,0x02c58b18
02c58b04  ldr x8,[x22]
02c58b08  ldr x8,[x8, #0xb8]
02c58b0c  ldr x0,[x8]
02c58b10  cbz x0,0x02c58bcc
02c58b14  bl 0x02c53c8c
02c58b18  adrp x22,0x5e5e000
02c58b1c  ldr x22,[x22, #0x3e0]
02c58b20  ldr x0,[x22]
02c58b24  ldr w8,[x0, #0xe4]
02c58b28  cbnz w8,0x02c58b34
02c58b2c  bl 0x029f5bd0
02c58b30  ldr x0,[x22]
02c58b34  ldr x8,[x21]
02c58b38  ldr x9,[x0, #0xb8]
02c58b3c  ldr w10,[x8, #0xe4]
02c58b40  ldr x20,[x9]
02c58b44  cbnz w10,0x02c58b50
02c58b48  mov x0,x8
02c58b4c  bl 0x029f5bd0
02c58b50  mov x0,x20
02c58b54  mov x1,xzr
02c58b58  mov x2,xzr
02c58b5c  bl 0x057dfa70
02c58b60  tbz w0,#0x0,0x02c58b8c
02c58b64  ldr x0,[x22]
02c58b68  ldr w8,[x0, #0xe4]
02c58b6c  cbnz w8,0x02c58b78
02c58b70  bl 0x029f5bd0
02c58b74  ldr x0,[x22]
02c58b78  ldr x8,[x0, #0xb8]
02c58b7c  ldr x0,[x8]
02c58b80  cbz x0,0x02c58bcc
02c58b84  mov x1,xzr
02c58b88  bl 0x02ca1254
02c58b8c  mov x0,x19
02c58b90  bl 0x02c58bd0
02c58b94  mov x0,x19
02c58b98  bl 0x02c58c70
02c58b9c  mov x20,x19
02c58ba0  mov x1,x0
02c58ba4  str x0,[x20, #0xb8]!
02c58ba8  mov x0,x20
02c58bac  bl 0x029f59f4
02c58bb0  ldr x1,[x20]
02c58bb4  mov x0,x19
02c58bb8  mov x2,xzr
02c58bbc  ldp x20,x19,[sp, #0x20]
02c58bc0  ldp x22,x21,[sp, #0x10]
02c58bc4  ldr x30,[sp], #0x30
02c58bc8  b 0x057e2120
02c58bcc  bl 0x029f5cfc
