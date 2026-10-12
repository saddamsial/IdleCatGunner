02c30e08  str d8,[sp, #-0x30]!
02c30e0c  str x30,[sp, #0x8]
02c30e10  stp x22,x21,[sp, #0x10]
02c30e14  stp x20,x19,[sp, #0x20]
02c30e18  adrp x20,0x625c000
02c30e1c  mov x19,x0
02c30e20  ldrb w8,[x20, #0x38]
02c30e24  tbnz w8,#0x0,0x02c30e3c
02c30e28  adrp x0,0x5e5a000
02c30e2c  ldr x0,[x0, #0x710]
02c30e30  bl 0x029f5a50
02c30e34  mov w8,#0x1
02c30e38  strb w8,[x20, #0x38]
02c30e3c  ldr w21,[x19, #0x10]
02c30e40  ldr x20,[x19, #0x20]
02c30e44  cbz w21,0x02c30e88
02c30e48  cmp w21,#0x1
02c30e4c  b.ne 0x02c30f44
02c30e50  mov w8,#0xffffffff
02c30e54  str w8,[x19, #0x10]
02c30e58  cbz x20,0x02c30ee0
02c30e5c  ldr x0,[x20, #0x40]
02c30e60  strb wzr,[x20, #0x78]
02c30e64  cbz x0,0x02c30ee0
02c30e68  mov w1,#0x1
02c30e6c  mov x2,xzr
02c30e70  bl 0x057dff3c
02c30e74  str xzr,[x20, #0x80]!
02c30e78  mov x0,x20
02c30e7c  mov x1,xzr
02c30e80  bl 0x029f59f4
02c30e84  b 0x02c30f44
02c30e88  mov w8,#0xffffffff
02c30e8c  str w8,[x19, #0x10]
02c30e90  cbz x20,0x02c30ee0
02c30e94  ldr x8,[x20, #0x38]
02c30e98  mov w9,#0x1
02c30e9c  strb w9,[x20, #0x78]
02c30ea0  cbz x8,0x02c30ee0
02c30ea4  mov x22,xzr
02c30ea8  ldr w9,[x8, #0x18]
02c30eac  cmp w22,w9
02c30eb0  b.ge 0x02c30ee4
02c30eb4  cmp w22,w9
02c30eb8  b.cs 0x02c30f60
02c30ebc  add x8,x8,x22, LSL #0x3
02c30ec0  ldr x0,[x8, #0x20]
02c30ec4  cbz x0,0x02c30ee0
02c30ec8  mov w1,wzr
02c30ecc  mov x2,xzr
02c30ed0  bl 0x057dff3c
02c30ed4  ldr x8,[x20, #0x38]
02c30ed8  add x22,x22,#0x1
02c30edc  cbnz x8,0x02c30ea8
02c30ee0  bl 0x029f5cfc
02c30ee4  ldr x0,[x20, #0x20]
02c30ee8  cbz x0,0x02c30ee0
02c30eec  ldr x1,[x19, #0x28]
02c30ef0  bl 0x02c30f64
02c30ef4  ldr x0,[x20, #0x30]
02c30ef8  cbz x0,0x02c30ee0
02c30efc  mov w1,#0x1
02c30f00  mov x2,xzr
02c30f04  mov w22,#0x1
02c30f08  bl 0x057dff3c
02c30f0c  adrp x8,0x5e5a000
02c30f10  ldr x8,[x8, #0x710]
02c30f14  ldr s8,[x20, #0x58]
02c30f18  ldr x0,[x8]
02c30f1c  bl 0x029f5cec
02c30f20  fmov s0,s8
02c30f24  mov x1,xzr
02c30f28  mov x20,x0
02c30f2c  bl 0x057e84e0
02c30f30  str x20,[x19, #0x18]!
02c30f34  mov x0,x19
02c30f38  mov x1,x20
02c30f3c  bl 0x029f59f4
02c30f40  stur w22,[x19, #-0x8]
02c30f44  cmp w21,#0x0
02c30f48  ldp x20,x19,[sp, #0x20]
02c30f4c  ldp x22,x21,[sp, #0x10]
02c30f50  cset w0,eq
02c30f54  ldr x30,[sp, #0x8]
02c30f58  ldr d8,[sp], #0x30
02c30f5c  ret
02c30f60  bl 0x029f5d04
