02c17bb4  str x30,[sp, #-0x50]!
02c17bb8  stp x26,x25,[sp, #0x10]
02c17bbc  stp x24,x23,[sp, #0x20]
02c17bc0  stp x22,x21,[sp, #0x30]
02c17bc4  stp x20,x19,[sp, #0x40]
02c17bc8  adrp x20,0x625b000
02c17bcc  mov x19,x0
02c17bd0  ldrb w8,[x20, #0xf02]
02c17bd4  tbnz w8,#0x0,0x02c17bf8
02c17bd8  adrp x0,0x5e62000
02c17bdc  ldr x0,[x0, #0x770]
02c17be0  bl 0x029f5a50
02c17be4  adrp x0,0x5e59000
02c17be8  ldr x0,[x0, #0x1c0]
02c17bec  bl 0x029f5a50
02c17bf0  mov w8,#0x1
02c17bf4  strb w8,[x20, #0xf02]
02c17bf8  ldr x8,[x19, #0x8]
02c17bfc  cbz x8,0x02c17d7c
02c17c00  ldr w21,[x8, #0x18]
02c17c04  cmp w21,#0x1
02c17c08  b.lt 0x02c17cf8
02c17c0c  mov w20,wzr
02c17c10  ldr x8,[x19, #0x8]
02c17c14  cbz x8,0x02c17d7c
02c17c18  ldr w9,[x19, #0x10]
02c17c1c  add w9,w20,w9
02c17c20  sdiv w10,w9,w21
02c17c24  msub w22,w10,w21,w9
02c17c28  ldr w9,[x8, #0x18]
02c17c2c  cmp w22,w9
02c17c30  b.cs 0x02c17d80
02c17c34  sxtw x23,w22
02c17c38  add x8,x8,x23, LSL #0x3
02c17c3c  ldr x0,[x8, #0x20]
02c17c40  cbz x0,0x02c17d7c
02c17c44  mov x1,xzr
02c17c48  bl 0x057e00b4
02c17c4c  tbz w0,#0x0,0x02c17d38
02c17c50  add w20,w20,#0x1
02c17c54  cmp w21,w20
02c17c58  b.ne 0x02c17c10
02c17c5c  cmp w21,#0x1
02c17c60  b.lt 0x02c17cf8
02c17c64  adrp x24,0x5e62000
02c17c68  adrp x25,0x5e59000
02c17c6c  mov w26,wzr
02c17c70  ldr x24,[x24, #0x770]
02c17c74  ldr x25,[x25, #0x1c0]
02c17c78  ldr x8,[x19, #0x8]
02c17c7c  cbz x8,0x02c17d7c
02c17c80  ldr w9,[x19, #0x10]
02c17c84  add w9,w26,w9
02c17c88  sdiv w10,w9,w21
02c17c8c  msub w22,w10,w21,w9
02c17c90  ldr w9,[x8, #0x18]
02c17c94  cmp w22,w9
02c17c98  b.cs 0x02c17d80
02c17c9c  sxtw x23,w22
02c17ca0  add x8,x8,x23, LSL #0x3
02c17ca4  ldr x0,[x8, #0x20]
02c17ca8  cbz x0,0x02c17d7c
02c17cac  ldr x1,[x24]
02c17cb0  bl 0x030a02b4
02c17cb4  ldr x8,[x25]
02c17cb8  mov x20,x0
02c17cbc  ldr w9,[x8, #0xe4]
02c17cc0  cbnz w9,0x02c17ccc
02c17cc4  mov x0,x8
02c17cc8  bl 0x029f5bd0
02c17ccc  mov x0,x20
02c17cd0  mov x1,xzr
02c17cd4  mov x2,xzr
02c17cd8  bl 0x057dfa70
02c17cdc  tbz w0,#0x0,0x02c17cec
02c17ce0  cbz x20,0x02c17d7c
02c17ce4  ldrb w8,[x20, #0x68]
02c17ce8  cbnz w8,0x02c17d00
02c17cec  add w26,w26,#0x1
02c17cf0  cmp w21,w26
02c17cf4  b.ne 0x02c17c78
02c17cf8  mov x0,xzr
02c17cfc  b 0x02c17d64
02c17d00  mov x0,x20
02c17d04  mov x1,xzr
02c17d08  bl 0x057e16c8
02c17d0c  ldr x8,[x19, #0x8]
02c17d10  cbz x8,0x02c17d7c
02c17d14  ldr w9,[x8, #0x18]
02c17d18  cmp w22,w9
02c17d1c  b.cs 0x02c17d80
02c17d20  add x8,x8,x23, LSL #0x3
02c17d24  ldr x0,[x8, #0x20]
02c17d28  cbz x0,0x02c17d7c
02c17d2c  mov w1,wzr
02c17d30  mov x2,xzr
02c17d34  bl 0x057dff3c
02c17d38  add w8,w22,#0x1
02c17d3c  sdiv w9,w8,w21
02c17d40  msub w9,w9,w21,w8
02c17d44  ldr x8,[x19, #0x8]
02c17d48  str w9,[x19, #0x10]
02c17d4c  cbz x8,0x02c17d7c
02c17d50  ldr w9,[x8, #0x18]
02c17d54  cmp w22,w9
02c17d58  b.cs 0x02c17d80
02c17d5c  add x8,x8,x23, LSL #0x3
02c17d60  ldr x0,[x8, #0x20]!
02c17d64  ldp x20,x19,[sp, #0x40]
02c17d68  ldp x22,x21,[sp, #0x30]
02c17d6c  ldp x24,x23,[sp, #0x20]
02c17d70  ldp x26,x25,[sp, #0x10]
02c17d74  ldr x30,[sp], #0x50
02c17d78  ret
02c17d7c  bl 0x029f5cfc
02c17d80  bl 0x029f5d04
