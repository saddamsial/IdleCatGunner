02c30af4  str d8,[sp, #-0x30]!
02c30af8  str x30,[sp, #0x8]
02c30afc  stp x22,x21,[sp, #0x10]
02c30b00  stp x20,x19,[sp, #0x20]
02c30b04  adrp x20,0x625c000
02c30b08  mov x19,x0
02c30b0c  ldrb w8,[x20, #0x37]
02c30b10  tbnz w8,#0x0,0x02c30b28
02c30b14  adrp x0,0x5e5a000
02c30b18  ldr x0,[x0, #0x710]
02c30b1c  bl 0x029f5a50
02c30b20  mov w8,#0x1
02c30b24  strb w8,[x20, #0x37]
02c30b28  ldr w8,[x19, #0x10]
02c30b2c  ldr x20,[x19, #0x20]
02c30b30  cmp w8,#0x2
02c30b34  b.eq 0x02c30bf0
02c30b38  cmp w8,#0x1
02c30b3c  b.eq 0x02c30bdc
02c30b40  cbnz w8,0x02c30cbc
02c30b44  mov w8,#0xffffffff
02c30b48  str w8,[x19, #0x10]
02c30b4c  cbz x20,0x02c30d8c
02c30b50  ldr x0,[x20, #0x30]
02c30b54  mov w8,#0x1
02c30b58  strb w8,[x20, #0x78]
02c30b5c  cbz x0,0x02c30d8c
02c30b60  mov w1,wzr
02c30b64  mov x2,xzr
02c30b68  bl 0x057dff3c
02c30b6c  adrp x22,0x5e5a000
02c30b70  ldr x22,[x22, #0x710]
02c30b74  ldr s8,[x20, #0x5c]
02c30b78  ldr x0,[x22]
02c30b7c  bl 0x029f5cec
02c30b80  fmov s0,s8
02c30b84  mov x1,xzr
02c30b88  mov x21,x0
02c30b8c  bl 0x057e84e0
02c30b90  mov x0,x19
02c30b94  mov x1,x21
02c30b98  str x21,[x0, #0x28]!
02c30b9c  bl 0x029f59f4
02c30ba0  ldr x0,[x22]
02c30ba4  ldr s8,[x20, #0x60]
02c30ba8  bl 0x029f5cec
02c30bac  fmov s0,s8
02c30bb0  mov x1,xzr
02c30bb4  mov x21,x0
02c30bb8  bl 0x057e84e0
02c30bbc  mov x22,x19
02c30bc0  mov x1,x21
02c30bc4  str x21,[x22, #0x30]!
02c30bc8  mov x0,x22
02c30bcc  bl 0x029f59f4
02c30bd0  mov w1,wzr
02c30bd4  str wzr,[x22, #0x8]
02c30bd8  b 0x02c30c7c
02c30bdc  mov w8,#0xffffffff
02c30be0  str w8,[x19, #0x10]
02c30be4  cbz x20,0x02c30d8c
02c30be8  ldr w1,[x19, #0x38]
02c30bec  b 0x02c30c14
02c30bf0  mov w9,#0xffffffff
02c30bf4  str w9,[x19, #0x10]
02c30bf8  ldp w9,w8,[x19, #0x3c]
02c30bfc  add w8,w8,#0x1
02c30c00  str w8,[x19, #0x40]
02c30c04  b 0x02c30c64
02c30c08  cmp w1,#0x1
02c30c0c  str w1,[x20, #0x70]
02c30c10  b.ge 0x02c30d60
02c30c14  mov x0,x20
02c30c18  mov w2,wzr
02c30c1c  mov x3,xzr
02c30c20  bl 0x02c30760
02c30c24  ldr w22,[x19, #0x38]
02c30c28  mov x0,x20
02c30c2c  mov x1,xzr
02c30c30  bl 0x02c30434
02c30c34  mov w21,w0
02c30c38  mov x0,x20
02c30c3c  mov x1,xzr
02c30c40  bl 0x02c30434
02c30c44  ldr x9,[x20, #0x68]
02c30c48  cbz x9,0x02c30d8c
02c30c4c  ldr w9,[x9, #0x18]
02c30c50  mov w8,wzr
02c30c54  msub w9,w21,w22,w9
02c30c58  cmp w0,w9
02c30c5c  csel w9,w0,w9,lt
02c30c60  stp w9,wzr,[x19, #0x3c]
02c30c64  cmp w8,w9
02c30c68  b.lt 0x02c30cc4
02c30c6c  ldr w8,[x19, #0x38]
02c30c70  add w1,w8,#0x1
02c30c74  str w1,[x19, #0x38]
02c30c78  cbz x20,0x02c30d8c
02c30c7c  ldr w8,[x20, #0x74]
02c30c80  cmp w1,w8
02c30c84  b.lt 0x02c30c08
02c30c88  ldr x0,[x20, #0x40]
02c30c8c  strb wzr,[x20, #0x78]
02c30c90  cbz x0,0x02c30d8c
02c30c94  mov w1,#0x1
02c30c98  mov x2,xzr
02c30c9c  bl 0x057dff3c
02c30ca0  mov x0,x20
02c30ca4  mov x1,xzr
02c30ca8  bl 0x02c30850
02c30cac  str xzr,[x20, #0x80]!
02c30cb0  mov x0,x20
02c30cb4  mov x1,xzr
02c30cb8  bl 0x029f59f4
02c30cbc  mov w0,wzr
02c30cc0  b 0x02c30d78
02c30cc4  cbz x20,0x02c30d8c
02c30cc8  ldr x9,[x20, #0x38]
02c30ccc  cbz x9,0x02c30d8c
02c30cd0  ldr w10,[x9, #0x18]
02c30cd4  cmp w8,w10
02c30cd8  b.cs 0x02c30d90
02c30cdc  add x8,x9,w8, SXTW  #0x3
02c30ce0  ldr x0,[x8, #0x20]
02c30ce4  cbz x0,0x02c30d8c
02c30ce8  mov w1,#0x1
02c30cec  mov x2,xzr
02c30cf0  mov w20,#0x1
02c30cf4  bl 0x057dff3c
02c30cf8  adrp x21,0x625b000
02c30cfc  ldrb w8,[x21, #0xa57]
02c30d00  cbnz w8,0x02c30d14
02c30d04  adrp x0,0x5e5d000
02c30d08  ldr x0,[x0, #0xd70]
02c30d0c  bl 0x029f5a50
02c30d10  strb w20,[x21, #0xa57]
02c30d14  adrp x8,0x5e5d000
02c30d18  ldr x8,[x8, #0xd70]
02c30d1c  ldr x8,[x8]
02c30d20  ldr x8,[x8, #0xb8]
02c30d24  ldr x0,[x8]
02c30d28  cbz x0,0x02c30d8c
02c30d2c  fmov s0,0x3f800000
02c30d30  mov w1,#0xe
02c30d34  mov x2,xzr
02c30d38  mov x3,xzr
02c30d3c  bl 0x02c1f10c
02c30d40  ldr x1,[x19, #0x28]
02c30d44  str x1,[x19, #0x18]!
02c30d48  mov x0,x19
02c30d4c  bl 0x029f59f4
02c30d50  mov w8,#0x2
02c30d54  mov w0,#0x1
02c30d58  stur w8,[x19, #-0x8]
02c30d5c  b 0x02c30d78
02c30d60  ldr x1,[x19, #0x30]
02c30d64  str x1,[x19, #0x18]!
02c30d68  mov x0,x19
02c30d6c  bl 0x029f59f4
02c30d70  mov w0,#0x1
02c30d74  stur w0,[x19, #-0x8]
02c30d78  ldp x20,x19,[sp, #0x20]
02c30d7c  ldr x30,[sp, #0x8]
02c30d80  ldp x22,x21,[sp, #0x10]
02c30d84  ldr d8,[sp], #0x30
02c30d88  ret
02c30d8c  bl 0x029f5cfc
02c30d90  bl 0x029f5d04
