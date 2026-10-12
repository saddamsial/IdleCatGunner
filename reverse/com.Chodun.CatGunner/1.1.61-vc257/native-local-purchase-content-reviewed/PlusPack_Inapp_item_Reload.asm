02c91a64  stp x30,x21,[sp, #-0x20]!
02c91a68  stp x20,x19,[sp, #0x10]
02c91a6c  adrp x21,0x625c000
02c91a70  adrp x20,0x5e5e000
02c91a74  mov x19,x0
02c91a78  ldrb w8,[x21, #0x3f9]
02c91a7c  ldr x20,[x20, #0xb8]
02c91a80  tbnz w8,#0x0,0x02c91aa4
02c91a84  adrp x0,0x5e59000
02c91a88  ldr x0,[x0, #0x1c0]
02c91a8c  bl 0x029f5a50
02c91a90  adrp x0,0x5e5e000
02c91a94  ldr x0,[x0, #0xb8]
02c91a98  bl 0x029f5a50
02c91a9c  mov w8,#0x1
02c91aa0  strb w8,[x21, #0x3f9]
02c91aa4  ldr x0,[x20]
02c91aa8  adrp x21,0x5e59000
02c91aac  ldr w8,[x0, #0xe4]
02c91ab0  ldr x21,[x21, #0x1c0]
02c91ab4  ldr w20,[x19, #0x20]
02c91ab8  cbnz w8,0x02c91ac0
02c91abc  bl 0x029f5bd0
02c91ac0  mov w0,w20
02c91ac4  bl 0x02c9077c
02c91ac8  mov w8,w0
02c91acc  ldr x0,[x21]
02c91ad0  ldr x20,[x19, #0x28]
02c91ad4  and w8,w8,#0x1
02c91ad8  ldr w9,[x0, #0xe4]
02c91adc  strb w8,[x19, #0x40]
02c91ae0  cbnz w9,0x02c91ae8
02c91ae4  bl 0x029f5bd0
02c91ae8  mov x0,x20
02c91aec  mov x1,xzr
02c91af0  mov x2,xzr
02c91af4  bl 0x057dfa70
02c91af8  tbz w0,#0x0,0x02c91b10
02c91afc  ldr x0,[x19, #0x28]
02c91b00  cbz x0,0x02c91b64
02c91b04  ldrb w1,[x19, #0x40]
02c91b08  mov x2,xzr
02c91b0c  bl 0x057dff3c
02c91b10  ldr x0,[x21]
02c91b14  ldr x20,[x19, #0x30]
02c91b18  ldr w8,[x0, #0xe4]
02c91b1c  cbnz w8,0x02c91b24
02c91b20  bl 0x029f5bd0
02c91b24  mov x0,x20
02c91b28  mov x1,xzr
02c91b2c  mov x2,xzr
02c91b30  bl 0x057dfa70
02c91b34  tbz w0,#0x0,0x02c91b54
02c91b38  ldr x0,[x19, #0x30]
02c91b3c  cbz x0,0x02c91b64
02c91b40  ldrb w8,[x19, #0x40]
02c91b44  mov x2,xzr
02c91b48  cmp w8,#0x0
02c91b4c  cset w1,eq
02c91b50  bl 0x057dff3c
02c91b54  mov x0,x19
02c91b58  ldp x20,x19,[sp, #0x10]
02c91b5c  ldp x30,x21,[sp], #0x20
02c91b60  b 0x02c91b68
02c91b64  bl 0x029f5cfc
