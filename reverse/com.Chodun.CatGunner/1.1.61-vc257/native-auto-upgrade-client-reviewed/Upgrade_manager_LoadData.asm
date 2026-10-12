02cb2c14  str x30,[sp, #-0x40]!
02cb2c18  stp x24,x23,[sp, #0x10]
02cb2c1c  stp x22,x21,[sp, #0x20]
02cb2c20  stp x20,x19,[sp, #0x30]
02cb2c24  adrp x21,0x625c000
02cb2c28  mov x20,x1
02cb2c2c  mov x19,x0
02cb2c30  ldrb w8,[x21, #0x558]
02cb2c34  tbnz w8,#0x0,0x02cb2c58
02cb2c38  adrp x0,0x5e5d000
02cb2c3c  ldr x0,[x0, #0x4e8]
02cb2c40  bl 0x029f5a50
02cb2c44  adrp x0,0x5e59000
02cb2c48  ldr x0,[x0, #0x50]
02cb2c4c  bl 0x029f5a50
02cb2c50  mov w8,#0x1
02cb2c54  strb w8,[x21, #0x558]
02cb2c58  adrp x21,0x5e59000
02cb2c5c  adrp x22,0x5e5d000
02cb2c60  mov x23,xzr
02cb2c64  ldr x21,[x21, #0x50]
02cb2c68  ldr x22,[x22, #0x4e8]
02cb2c6c  ldr x8,[x19, #0x20]
02cb2c70  cbz x8,0x02cb2d40
02cb2c74  ldr w9,[x8, #0x18]
02cb2c78  cmp x23,x9
02cb2c7c  b.cs 0x02cb2d44
02cb2c80  cbz x20,0x02cb2d40
02cb2c84  ldr x9,[x20, #0x108]
02cb2c88  cbz x9,0x02cb2d40
02cb2c8c  ldr w10,[x9, #0x18]
02cb2c90  cmp x23,x10
02cb2c94  b.cs 0x02cb2d44
02cb2c98  add x9,x9,x23, LSL #0x2
02cb2c9c  add x8,x8,x23, LSL #0x3
02cb2ca0  mov x1,xzr
02cb2ca4  ldr w0,[x9, #0x20]
02cb2ca8  ldr x24,[x8, #0x20]
02cb2cac  bl 0x02b1e5c8
02cb2cb0  cbz x24,0x02cb2d40
02cb2cb4  add x23,x23,#0x1
02cb2cb8  stp x0,x1,[x24, #0x18]
02cb2cbc  cmp x23,#0x3
02cb2cc0  b.ne 0x02cb2c6c
02cb2cc4  ldr x0,[x22]
02cb2cc8  ldr x8,[x20, #0x110]
02cb2ccc  ldr x9,[x21]
02cb2cd0  ldr w10,[x0, #0xe4]
02cb2cd4  cmp x8,#0x0
02cb2cd8  csel x21,x9,x8,eq
02cb2cdc  cbnz w10,0x02cb2ce8
02cb2ce0  bl 0x029f5bd0
02cb2ce4  ldr x0,[x22]
02cb2ce8  ldr x0,[x0, #0xb8]
02cb2cec  mov x1,x21
02cb2cf0  str x21,[x0, #0x8]!
02cb2cf4  bl 0x029f59f4
02cb2cf8  mov w8,#0x44160000
02cb2cfc  ldr s0,[x20, #0x118]
02cb2d00  movi d2,#0x0
02cb2d04  fmov s1,w8
02cb2d08  ldr x8,[x22]
02cb2d0c  ldr x0,[x19, #0x58]
02cb2d10  ldr x8,[x8, #0xb8]
02cb2d14  fcmp s0,s1
02cb2d18  fcsel s1,s1,s0,gt
02cb2d1c  fcmp s0,#0.0
02cb2d20  fcsel s0,s2,s1,mi
02cb2d24  str s0,[x8, #0x10]
02cb2d28  cbz x0,0x02cb2d40
02cb2d2c  ldp x20,x19,[sp, #0x30]
02cb2d30  ldp x22,x21,[sp, #0x20]
02cb2d34  ldp x24,x23,[sp, #0x10]
02cb2d38  ldr x30,[sp], #0x40
02cb2d3c  b 0x02cb2310
02cb2d40  bl 0x029f5cfc
02cb2d44  bl 0x029f5d04
