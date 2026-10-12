02c47b04  str x30,[sp, #-0x20]!
02c47b08  stp x20,x19,[sp, #0x10]
02c47b0c  adrp x20,0x625c000
02c47b10  mov x19,x0
02c47b14  ldrb w8,[x20, #0xf0]
02c47b18  tbnz w8,#0x0,0x02c47b60
02c47b1c  adrp x0,0x5e5d000
02c47b20  ldr x0,[x0, #0x910]
02c47b24  bl 0x029f5a50
02c47b28  adrp x0,0x5e59000
02c47b2c  ldr x0,[x0, #0x1c0]
02c47b30  bl 0x029f5a50
02c47b34  adrp x0,0x5e5d000
02c47b38  ldr x0,[x0, #0xc20]
02c47b3c  bl 0x029f5a50
02c47b40  adrp x0,0x5e5d000
02c47b44  ldr x0,[x0, #0x368]
02c47b48  bl 0x029f5a50
02c47b4c  adrp x0,0x5e5a000
02c47b50  ldr x0,[x0, #0x710]
02c47b54  bl 0x029f5a50
02c47b58  mov w8,#0x1
02c47b5c  strb w8,[x20, #0xf0]
02c47b60  ldr w8,[x19, #0x10]
02c47b64  cmp w8,#0x2
02c47b68  b.eq 0x02c47c58
02c47b6c  cmp w8,#0x1
02c47b70  b.eq 0x02c47bdc
02c47b74  cbnz w8,0x02c47cf8
02c47b78  adrp x8,0x5e5d000
02c47b7c  ldr x8,[x8, #0x368]
02c47b80  ldr x8,[x8]
02c47b84  ldr x8,[x8, #0xb8]
02c47b88  ldr x0,[x8]
02c47b8c  mov w8,#0xffffffff
02c47b90  str w8,[x19, #0x10]
02c47b94  cbz x0,0x02c47d08
02c47b98  mov x1,xzr
02c47b9c  bl 0x02c2a604
02c47ba0  adrp x8,0x5e5a000
02c47ba4  ldr x8,[x8, #0x710]
02c47ba8  ldr x0,[x8]
02c47bac  bl 0x029f5cec
02c47bb0  fmov s0,0x3fc00000
02c47bb4  mov x1,xzr
02c47bb8  mov x20,x0
02c47bbc  bl 0x057e84e0
02c47bc0  str x20,[x19, #0x18]!
02c47bc4  mov x0,x19
02c47bc8  mov x1,x20
02c47bcc  bl 0x029f59f4
02c47bd0  mov w0,#0x1
02c47bd4  stur w0,[x19, #-0x8]
02c47bd8  b 0x02c47cfc
02c47bdc  adrp x20,0x5e5d000
02c47be0  mov w9,#0xffffffff
02c47be4  ldr x20,[x20, #0xc20]
02c47be8  str w9,[x19, #0x10]
02c47bec  ldr x0,[x20]
02c47bf0  ldr w8,[x0, #0xe4]
02c47bf4  cbnz w8,0x02c47c00
02c47bf8  bl 0x029f5bd0
02c47bfc  ldr x0,[x20]
02c47c00  ldr x8,[x0, #0xb8]
02c47c04  ldr x0,[x8, #0x10]
02c47c08  cbz x0,0x02c47d08
02c47c0c  mov x1,xzr
02c47c10  bl 0x02caac18
02c47c14  adrp x8,0x5e5a000
02c47c18  ldr x8,[x8, #0x710]
02c47c1c  ldr x0,[x8]
02c47c20  bl 0x029f5cec
02c47c24  adrp x8,0x116c000
02c47c28  mov x1,xzr
02c47c2c  mov x20,x0
02c47c30  ldr s0,[x8, #0x60]
02c47c34  bl 0x057e84e0
02c47c38  str x20,[x19, #0x18]!
02c47c3c  mov x0,x19
02c47c40  mov x1,x20
02c47c44  bl 0x029f59f4
02c47c48  mov w8,#0x2
02c47c4c  mov w0,#0x1
02c47c50  stur w8,[x19, #-0x8]
02c47c54  b 0x02c47cfc
02c47c58  adrp x8,0x5e5d000
02c47c5c  ldr x8,[x8, #0x368]
02c47c60  ldr x20,[x19, #0x20]
02c47c64  ldr x8,[x8]
02c47c68  ldr x8,[x8, #0xb8]
02c47c6c  ldr x0,[x8]
02c47c70  mov w8,#0xffffffff
02c47c74  str w8,[x19, #0x10]
02c47c78  cbz x0,0x02c47d08
02c47c7c  mov x1,xzr
02c47c80  bl 0x02c2a620
02c47c84  cbz x20,0x02c47d08
02c47c88  ldrb w8,[x20, #0x7d]
02c47c8c  cbz w8,0x02c47cf8
02c47c90  ldrb w8,[x20, #0x7e]
02c47c94  cbnz w8,0x02c47cf8
02c47c98  adrp x20,0x5e5d000
02c47c9c  adrp x8,0x5e59000
02c47ca0  ldr x20,[x20, #0x910]
02c47ca4  ldr x8,[x8, #0x1c0]
02c47ca8  ldr x9,[x20]
02c47cac  ldr x0,[x8]
02c47cb0  ldr x8,[x9, #0xb8]
02c47cb4  ldr w9,[x0, #0xe4]
02c47cb8  ldr x19,[x8]
02c47cbc  cbnz w9,0x02c47cc4
02c47cc0  bl 0x029f5bd0
02c47cc4  mov x0,x19
02c47cc8  mov x1,xzr
02c47ccc  mov x2,xzr
02c47cd0  bl 0x057dfa70
02c47cd4  tbz w0,#0x0,0x02c47cf8
02c47cd8  ldr x8,[x20]
02c47cdc  ldr x8,[x8, #0xb8]
02c47ce0  ldr x0,[x8]
02c47ce4  cbz x0,0x02c47d08
02c47ce8  mov w1,#0x3
02c47cec  mov x2,xzr
02c47cf0  mov x3,xzr
02c47cf4  bl 0x02b8ddb4
02c47cf8  mov w0,wzr
02c47cfc  ldp x20,x19,[sp, #0x10]
02c47d00  ldr x30,[sp], #0x20
02c47d04  ret
02c47d08  bl 0x029f5cfc
