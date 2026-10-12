02c59af4  str x30,[sp, #-0x30]!
02c59af8  stp x22,x21,[sp, #0x10]
02c59afc  stp x20,x19,[sp, #0x20]
02c59b00  adrp x21,0x625c000
02c59b04  adrp x20,0x5e5e000
02c59b08  mov x19,x0
02c59b0c  ldrb w8,[x21, #0x1cc]
02c59b10  ldr x20,[x20, #0x70]
02c59b14  tbnz w8,#0x0,0x02c59b68
02c59b18  adrp x0,0x5e5d000
02c59b1c  ldr x0,[x0, #0x5b0]
02c59b20  bl 0x029f5a50
02c59b24  adrp x0,0x5e5d000
02c59b28  ldr x0,[x0, #0x338]
02c59b2c  bl 0x029f5a50
02c59b30  adrp x0,0x5e59000
02c59b34  ldr x0,[x0, #0x1c0]
02c59b38  bl 0x029f5a50
02c59b3c  adrp x0,0x5e5e000
02c59b40  ldr x0,[x0, #0x70]
02c59b44  bl 0x029f5a50
02c59b48  adrp x0,0x5e5d000
02c59b4c  ldr x0,[x0, #0x368]
02c59b50  bl 0x029f5a50
02c59b54  adrp x0,0x5e63000
02c59b58  ldr x0,[x0, #0x730]
02c59b5c  bl 0x029f5a50
02c59b60  mov w8,#0x1
02c59b64  strb w8,[x21, #0x1cc]
02c59b68  ldr x0,[x20]
02c59b6c  adrp x21,0x5e59000
02c59b70  ldr w8,[x0, #0xe4]
02c59b74  ldr x21,[x21, #0x1c0]
02c59b78  cbnz w8,0x02c59b80
02c59b7c  bl 0x029f5bd0
02c59b80  bl 0x02c549a0
02c59b84  str w0,[x19, #0x100]
02c59b88  mov x0,xzr
02c59b8c  bl 0x02c0faf8
02c59b90  ldr x0,[x21]
02c59b94  ldr x20,[x19, #0x110]
02c59b98  ldr w8,[x0, #0xe4]
02c59b9c  cbnz w8,0x02c59ba4
02c59ba0  bl 0x029f5bd0
02c59ba4  mov x0,x20
02c59ba8  mov x1,xzr
02c59bac  mov x2,xzr
02c59bb0  bl 0x057dfa70
02c59bb4  tbz w0,#0x0,0x02c59bcc
02c59bb8  ldr x0,[x19, #0x110]
02c59bbc  cbz x0,0x02c59d14
02c59bc0  mov w1,wzr
02c59bc4  mov x2,xzr
02c59bc8  bl 0x057dff3c
02c59bcc  adrp x20,0x5e5d000
02c59bd0  mov x0,x19
02c59bd4  ldr x20,[x20, #0x338]
02c59bd8  bl 0x02c574f8
02c59bdc  ldr x0,[x20]
02c59be0  ldr w8,[x0, #0xe4]
02c59be4  cbnz w8,0x02c59bf0
02c59be8  bl 0x029f5bd0
02c59bec  ldr x0,[x20]
02c59bf0  ldr x8,[x0, #0xb8]
02c59bf4  ldrb w8,[x8]
02c59bf8  cbz w8,0x02c59c9c
02c59bfc  adrp x22,0x5e5d000
02c59c00  ldr x22,[x22, #0x368]
02c59c04  ldr x0,[x21]
02c59c08  ldr x8,[x22]
02c59c0c  ldr w9,[x0, #0xe4]
02c59c10  ldr x8,[x8, #0xb8]
02c59c14  ldr x20,[x8]
02c59c18  cbnz w9,0x02c59c20
02c59c1c  bl 0x029f5bd0
02c59c20  mov x0,x20
02c59c24  mov x1,xzr
02c59c28  mov x2,xzr
02c59c2c  bl 0x057dfa70
02c59c30  tbz w0,#0x0,0x02c59c9c
02c59c34  ldr x8,[x22]
02c59c38  ldr x8,[x8, #0xb8]
02c59c3c  ldr x8,[x8]
02c59c40  cbz x8,0x02c59d14
02c59c44  ldr w8,[x8, #0x20]
02c59c48  cmp w8,#0x5
02c59c4c  b.ne 0x02c59c9c
02c59c50  adrp x22,0x5e5d000
02c59c54  ldr x22,[x22, #0x5b0]
02c59c58  ldr x0,[x21]
02c59c5c  ldr x8,[x22]
02c59c60  ldr w9,[x0, #0xe4]
02c59c64  ldr x8,[x8, #0xb8]
02c59c68  ldr x20,[x8, #0x8]
02c59c6c  cbnz w9,0x02c59c74
02c59c70  bl 0x029f5bd0
02c59c74  mov x0,x20
02c59c78  mov x1,xzr
02c59c7c  mov x2,xzr
02c59c80  bl 0x057dfa70
02c59c84  tbz w0,#0x0,0x02c59c9c
02c59c88  ldr x8,[x22]
02c59c8c  ldr x8,[x8, #0xb8]
02c59c90  ldr x0,[x8, #0x8]
02c59c94  cbz x0,0x02c59d14
02c59c98  bl 0x02c43744
02c59c9c  ldr x0,[x21]
02c59ca0  ldr x20,[x19, #0x30]
02c59ca4  ldr w8,[x0, #0xe4]
02c59ca8  cbnz w8,0x02c59cb0
02c59cac  bl 0x029f5bd0
02c59cb0  mov x0,x20
02c59cb4  mov x1,xzr
02c59cb8  mov x2,xzr
02c59cbc  bl 0x057dfa70
02c59cc0  tbz w0,#0x0,0x02c59d00
02c59cc4  ldr x0,[x19, #0x30]
02c59cc8  cbz x0,0x02c59d14
02c59ccc  mov x1,xzr
02c59cd0  bl 0x057dc1c8
02c59cd4  cbz x0,0x02c59d14
02c59cd8  mov x1,xzr
02c59cdc  bl 0x057e00b4
02c59ce0  tbz w0,#0x0,0x02c59d00
02c59ce4  adrp x8,0x5e63000
02c59ce8  mov x1,xzr
02c59cec  ldr x8,[x8, #0x730]
02c59cf0  ldr x0,[x8]
02c59cf4  bl 0x02c68dbc
02c59cf8  mov x1,xzr
02c59cfc  bl 0x02c1dd54
02c59d00  ldp x20,x19,[sp, #0x20]
02c59d04  mov w0,#0x1
02c59d08  ldp x22,x21,[sp, #0x10]
02c59d0c  ldr x30,[sp], #0x30
02c59d10  ret
02c59d14  bl 0x029f5cfc
