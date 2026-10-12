02c88ae4  sub sp,sp,#0xc0
02c88ae8  stp x30,x27,[sp, #0x70]
02c88aec  stp x26,x25,[sp, #0x80]
02c88af0  stp x24,x23,[sp, #0x90]
02c88af4  stp x22,x21,[sp, #0xa0]
02c88af8  stp x20,x19,[sp, #0xb0]
02c88afc  adrp x21,0x625c000
02c88b00  adrp x20,0x5e5d000
02c88b04  mov x19,x0
02c88b08  ldrb w8,[x21, #0x397]
02c88b0c  ldr x20,[x20, #0xd60]
02c88b10  tbnz w8,#0x0,0x02c88b64
02c88b14  adrp x0,0x5e5d000
02c88b18  ldr x0,[x0, #0x338]
02c88b1c  bl 0x029f5a50
02c88b20  adrp x0,0x5e58000
02c88b24  ldr x0,[x0, #0xbe8]
02c88b28  bl 0x029f5a50
02c88b2c  adrp x0,0x5e5d000
02c88b30  ldr x0,[x0, #0xd60]
02c88b34  bl 0x029f5a50
02c88b38  adrp x0,0x5e61000
02c88b3c  ldr x0,[x0, #0xf18]
02c88b40  bl 0x029f5a50
02c88b44  adrp x0,0x5e63000
02c88b48  ldr x0,[x0, #0x80]
02c88b4c  bl 0x029f5a50
02c88b50  adrp x0,0x5e63000
02c88b54  ldr x0,[x0, #0x810]
02c88b58  bl 0x029f5a50
02c88b5c  mov w8,#0x1
02c88b60  strb w8,[x21, #0x397]
02c88b64  movi v0.2D,#0x0
02c88b68  ldr x8,[x20]
02c88b6c  ldr x8,[x8, #0xb8]
02c88b70  stp q0,q0,[sp, #0x30]
02c88b74  stp q0,q0,[sp, #0x50]
02c88b78  ldr x8,[x8]
02c88b7c  cbz x8,0x02c88d74
02c88b80  ldr x8,[x8, #0x20]
02c88b84  cbz x8,0x02c88d74
02c88b88  ldrsw x9,[x19, #0x20]
02c88b8c  ldr w10,[x8, #0x18]
02c88b90  cmp w9,w10
02c88b94  b.cs 0x02c88d78
02c88b98  add x8,x8,x9, LSL #0x3
02c88b9c  ldr x22,[x8, #0x20]
02c88ba0  cbz x22,0x02c88d74
02c88ba4  adrp x26,0x5e63000
02c88ba8  mov x25,x22
02c88bac  mov x2,xzr
02c88bb0  ldr x26,[x26, #0x810]
02c88bb4  ldr x0,[x25, #0x18]!
02c88bb8  ldr x1,[x22, #0x20]
02c88bbc  bl 0x02b1e644
02c88bc0  ldr w24,[x22, #0x28]
02c88bc4  mov w21,w0
02c88bc8  add x8,sp,#0x10
02c88bcc  mov x0,x22
02c88bd0  bl 0x02c887b8
02c88bd4  ldp q0,q1,[sp, #0x10]
02c88bd8  cmp w21,w24
02c88bdc  stp q0,q1,[sp, #0x50]
02c88be0  b.ge 0x02c88c1c
02c88be4  adrp x20,0x5e5d000
02c88be8  ldr x20,[x20, #0x338]
02c88bec  ldr x0,[x20]
02c88bf0  ldr w8,[x0, #0xe4]
02c88bf4  cbnz w8,0x02c88c00
02c88bf8  bl 0x029f5bd0
02c88bfc  ldr x0,[x20]
02c88c00  ldr x8,[x0, #0xb8]
02c88c04  add x1,sp,#0x50
02c88c08  mov x2,xzr
02c88c0c  add x0,x8,#0x70
02c88c10  bl 0x04654530
02c88c14  mov w20,w0
02c88c18  b 0x02c88c20
02c88c1c  mov w20,wzr
02c88c20  ldr x23,[x19, #0x28]
02c88c24  add x8,sp,#0x10
02c88c28  mov x0,x22
02c88c2c  bl 0x02c8742c
02c88c30  ldp q0,q1,[sp, #0x10]
02c88c34  add x0,sp,#0x30
02c88c38  mov x1,xzr
02c88c3c  stp q0,q1,[sp, #0x30]
02c88c40  bl 0x0465bddc
02c88c44  ldr x8,[x26]
02c88c48  mov x1,x0
02c88c4c  mov x2,xzr
02c88c50  mov x0,x8
02c88c54  bl 0x046b6c0c
02c88c58  cbz x23,0x02c88d74
02c88c5c  adrp x26,0x5e58000
02c88c60  adrp x27,0x5e61000
02c88c64  mov x1,x0
02c88c68  ldr x26,[x26, #0xbe8]
02c88c6c  ldr x8,[x23]
02c88c70  ldr x27,[x27, #0xf18]
02c88c74  mov x0,x23
02c88c78  ldr x9,[x8, #0x558]
02c88c7c  ldr x2,[x8, #0x560]
02c88c80  blr x9
02c88c84  ldr q0,[x25]
02c88c88  ldr x0,[x26]
02c88c8c  mov x1,sp
02c88c90  ldr x22,[x19, #0x30]
02c88c94  str q0,[sp]
02c88c98  bl 0x029f5bd8
02c88c9c  ldr x8,[x27]
02c88ca0  mov x1,x0
02c88ca4  mov x2,xzr
02c88ca8  mov x0,x8
02c88cac  bl 0x046b6c0c
02c88cb0  cbz x22,0x02c88d74
02c88cb4  ldr x8,[x22]
02c88cb8  mov x1,x0
02c88cbc  mov x0,x22
02c88cc0  ldr x9,[x8, #0x558]
02c88cc4  ldr x2,[x8, #0x560]
02c88cc8  blr x9
02c88ccc  ldr x22,[x19, #0x38]
02c88cd0  cmp w21,w24
02c88cd4  b.ge 0x02c88cec
02c88cd8  add x0,sp,#0x50
02c88cdc  mov x1,xzr
02c88ce0  bl 0x0465bddc
02c88ce4  mov x1,x0
02c88ce8  b 0x02c88cf8
02c88cec  adrp x8,0x5e63000
02c88cf0  ldr x8,[x8, #0x80]
02c88cf4  ldr x1,[x8]
02c88cf8  cbz x22,0x02c88d74
02c88cfc  ldr x8,[x22]
02c88d00  mov x0,x22
02c88d04  ldr x9,[x8, #0x558]
02c88d08  ldr x2,[x8, #0x560]
02c88d0c  blr x9
02c88d10  fmov s3,0x3f800000
02c88d14  fmov s2,0x3f800000
02c88d18  ldr x0,[x19, #0x38]
02c88d1c  fmov s1,0x3f800000
02c88d20  fmov s0,0x3f800000
02c88d24  tbnz w20,#0x0,0x02c88d30
02c88d28  ldp s0,s1,[x19, #0x40]
02c88d2c  ldp s2,s3,[x19, #0x48]
02c88d30  cbz x0,0x02c88d74
02c88d34  ldr x8,[x0]
02c88d38  ldr x9,[x8, #0x2a8]
02c88d3c  ldr x1,[x8, #0x2b0]
02c88d40  blr x9
02c88d44  ldr x0,[x19, #0x50]
02c88d48  cbz x0,0x02c88d74
02c88d4c  and w1,w20,#0x1
02c88d50  mov x2,xzr
02c88d54  bl 0x05abf7f8
02c88d58  ldp x20,x19,[sp, #0xb0]
02c88d5c  ldp x22,x21,[sp, #0xa0]
02c88d60  ldp x24,x23,[sp, #0x90]
02c88d64  ldp x26,x25,[sp, #0x80]
02c88d68  ldp x30,x27,[sp, #0x70]
02c88d6c  add sp,sp,#0xc0
02c88d70  ret
02c88d74  bl 0x029f5cfc
02c88d78  bl 0x029f5d04
