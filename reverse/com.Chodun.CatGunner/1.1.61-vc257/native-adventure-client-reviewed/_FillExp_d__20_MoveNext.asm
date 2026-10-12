02c36ba0  str x30,[sp, #-0x30]!
02c36ba4  stp x22,x21,[sp, #0x10]
02c36ba8  stp x20,x19,[sp, #0x20]
02c36bac  ldr w8,[x0, #0x10]
02c36bb0  ldr x20,[x0, #0x28]
02c36bb4  mov x19,x0
02c36bb8  cmp w8,#0x1
02c36bbc  b.eq 0x02c36c14
02c36bc0  cbnz w8,0x02c36d68
02c36bc4  ldr w10,[x19, #0x20]
02c36bc8  mov w8,#0xffffffff
02c36bcc  mov w9,#0xf
02c36bd0  str w8,[x19, #0x10]
02c36bd4  stp w9,w10,[x19, #0x38]
02c36bd8  cbz x20,0x02c36d7c
02c36bdc  ldp w1,w2,[x19, #0x30]
02c36be0  mov x0,x20
02c36be4  bl 0x02c362b0
02c36be8  ldp w1,w22,[x19, #0x30]
02c36bec  ldr x21,[x20, #0x48]
02c36bf0  bl 0x02c3621c
02c36bf4  cbz x21,0x02c36d7c
02c36bf8  scvtf s0,w22
02c36bfc  scvtf s1,w0
02c36c00  mov x0,x21
02c36c04  mov x1,xzr
02c36c08  fdiv s0,s0,s1
02c36c0c  bl 0x02c28290
02c36c10  b 0x02c36c80
02c36c14  ldp w10,w9,[x19, #0x44]
02c36c18  ldp w11,w12,[x19, #0x3c]
02c36c1c  mov w8,#0xffffffff
02c36c20  str w8,[x19, #0x10]
02c36c24  sub w8,w11,w10
02c36c28  cmp w9,w12
02c36c2c  str w9,[x19, #0x34]
02c36c30  str w8,[x19, #0x3c]
02c36c34  b.lt 0x02c36c80
02c36c38  ldr w8,[x19, #0x30]
02c36c3c  add w8,w8,#0x1
02c36c40  stp w8,wzr,[x19, #0x30]
02c36c44  cbz x20,0x02c36d7c
02c36c48  bl 0x02c3671c
02c36c4c  ldr w8,[x19, #0x30]
02c36c50  ldr w9,[x19, #0x38]
02c36c54  ldr x0,[x20, #0x48]
02c36c58  cmp w8,w9
02c36c5c  b.ge 0x02c36d48
02c36c60  cbz x0,0x02c36d7c
02c36c64  movi d0,#0x0
02c36c68  mov x1,xzr
02c36c6c  bl 0x02c28290
02c36c70  ldr w1,[x19, #0x30]
02c36c74  mov x0,x20
02c36c78  mov w2,wzr
02c36c7c  bl 0x02c362b0
02c36c80  ldp w8,w9,[x19, #0x38]
02c36c84  ldr w1,[x19, #0x30]
02c36c88  cmp w9,#0x1
02c36c8c  b.lt 0x02c36d08
02c36c90  cmp w1,w8
02c36c94  b.ge 0x02c36d08
02c36c98  cbz x20,0x02c36d7c
02c36c9c  bl 0x02c3621c
02c36ca0  ldp w1,w2,[x19, #0x30]
02c36ca4  ldr w8,[x19, #0x3c]
02c36ca8  scvtf s1,w0
02c36cac  sub w9,w0,w2
02c36cb0  scvtf s0,w2
02c36cb4  cmp w8,w9
02c36cb8  csel w8,w8,w9,lt
02c36cbc  add w3,w8,w2
02c36cc0  stp w0,w8,[x19, #0x40]
02c36cc4  mov x0,x20
02c36cc8  scvtf s2,w3
02c36ccc  fdiv s0,s0,s1
02c36cd0  str w3,[x19, #0x48]
02c36cd4  fdiv s1,s2,s1
02c36cd8  bl 0x02c36650
02c36cdc  mov x1,x0
02c36ce0  mov x0,x20
02c36ce4  mov x2,xzr
02c36ce8  bl 0x057e2120
02c36cec  mov x1,x0
02c36cf0  str x0,[x19, #0x18]!
02c36cf4  mov x0,x19
02c36cf8  bl 0x029f59f4
02c36cfc  mov w0,#0x1
02c36d00  stur w0,[x19, #-0x8]
02c36d04  b 0x02c36d6c
02c36d08  cmp w1,w8
02c36d0c  b.ge 0x02c36d68
02c36d10  cbz x20,0x02c36d7c
02c36d14  ldr x21,[x20, #0x48]
02c36d18  ldr w22,[x19, #0x34]
02c36d1c  bl 0x02c3621c
02c36d20  cbz x21,0x02c36d7c
02c36d24  scvtf s0,w22
02c36d28  scvtf s1,w0
02c36d2c  mov x0,x21
02c36d30  mov x1,xzr
02c36d34  fdiv s0,s0,s1
02c36d38  bl 0x02c28290
02c36d3c  ldp w1,w2,[x19, #0x30]
02c36d40  mov x0,x20
02c36d44  b 0x02c36d64
02c36d48  cbz x0,0x02c36d7c
02c36d4c  fmov s0,0x3f800000
02c36d50  mov x1,xzr
02c36d54  bl 0x02c28290
02c36d58  ldr w1,[x19, #0x30]
02c36d5c  mov x0,x20
02c36d60  mov w2,wzr
02c36d64  bl 0x02c362b0
02c36d68  mov w0,wzr
02c36d6c  ldp x20,x19,[sp, #0x20]
02c36d70  ldp x22,x21,[sp, #0x10]
02c36d74  ldr x30,[sp], #0x30
02c36d78  ret
02c36d7c  bl 0x029f5cfc
