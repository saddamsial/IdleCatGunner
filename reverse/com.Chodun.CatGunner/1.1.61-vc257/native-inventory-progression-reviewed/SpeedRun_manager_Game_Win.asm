02ca8ed4  str x30,[sp, #-0x30]!
02ca8ed8  stp x22,x21,[sp, #0x10]
02ca8edc  stp x20,x19,[sp, #0x20]
02ca8ee0  adrp x20,0x625c000
02ca8ee4  adrp x21,0x5e5d000
02ca8ee8  mov x19,x0
02ca8eec  ldrb w8,[x20, #0x4f5]
02ca8ef0  ldr x21,[x21, #0x338]
02ca8ef4  tbnz w8,#0x0,0x02ca8f24
02ca8ef8  adrp x0,0x5e5d000
02ca8efc  ldr x0,[x0, #0x338]
02ca8f00  bl 0x029f5a50
02ca8f04  adrp x0,0x5e5d000
02ca8f08  ldr x0,[x0, #0x920]
02ca8f0c  bl 0x029f5a50
02ca8f10  adrp x0,0x5e5d000
02ca8f14  ldr x0,[x0, #0xd68]
02ca8f18  bl 0x029f5a50
02ca8f1c  mov w8,#0x1
02ca8f20  strb w8,[x20, #0x4f5]
02ca8f24  ldr x0,[x21]
02ca8f28  ldr w8,[x0, #0xe4]
02ca8f2c  cbnz w8,0x02ca8f38
02ca8f30  bl 0x029f5bd0
02ca8f34  ldr x0,[x21]
02ca8f38  ldr x8,[x0, #0xb8]
02ca8f3c  ldrb w9,[x8]
02ca8f40  cbz w9,0x02ca8ff4
02ca8f44  ldr w9,[x0, #0xe4]
02ca8f48  cbnz w9,0x02ca8f58
02ca8f4c  bl 0x029f5bd0
02ca8f50  ldr x8,[x21]
02ca8f54  ldr x8,[x8, #0xb8]
02ca8f58  ldr x0,[x19, #0x80]
02ca8f5c  strb wzr,[x8]
02ca8f60  mov w8,#0x1
02ca8f64  strb w8,[x19, #0x55]
02ca8f68  cbz x0,0x02ca90e4
02ca8f6c  fmov s0,0x3f800000
02ca8f70  adrp x20,0x5e5d000
02ca8f74  adrp x22,0x5e5d000
02ca8f78  ldr x20,[x20, #0x920]
02ca8f7c  ldr x22,[x22, #0xd68]
02ca8f80  bl 0x02ca90e8
02ca8f84  mov x0,x19
02ca8f88  mov w1,#0x1
02ca8f8c  bl 0x02ca86cc
02ca8f90  ldr x0,[x20]
02ca8f94  ldr w8,[x19, #0x30]
02ca8f98  ldr w9,[x0, #0xe4]
02ca8f9c  add w8,w8,#0x1
02ca8fa0  str w8,[x19, #0x30]
02ca8fa4  cbnz w9,0x02ca8fac
02ca8fa8  bl 0x029f5bd0
02ca8fac  mov x0,xzr
02ca8fb0  bl 0x02c92704
02ca8fb4  mov w20,w0
02ca8fb8  ldr x0,[x22]
02ca8fbc  ldr w8,[x0, #0xe4]
02ca8fc0  tbz w20,#0x0,0x02ca9004
02ca8fc4  cbnz w8,0x02ca8fd0
02ca8fc8  bl 0x029f5bd0
02ca8fcc  ldr x0,[x22]
02ca8fd0  ldr x8,[x21]
02ca8fd4  ldr x9,[x0, #0xb8]
02ca8fd8  ldr w10,[x8, #0xe4]
02ca8fdc  ldr w21,[x9]
02ca8fe0  cbnz w10,0x02ca8fec
02ca8fe4  mov x0,x8
02ca8fe8  bl 0x029f5bd0
02ca8fec  lsl w21,w21,#0x2
02ca8ff0  b 0x02ca902c
02ca8ff4  ldp x20,x19,[sp, #0x20]
02ca8ff8  ldp x22,x21,[sp, #0x10]
02ca8ffc  ldr x30,[sp], #0x30
02ca9000  ret
02ca9004  cbnz w8,0x02ca9010
02ca9008  bl 0x029f5bd0
02ca900c  ldr x0,[x22]
02ca9010  ldr x8,[x21]
02ca9014  ldr x9,[x0, #0xb8]
02ca9018  ldr w10,[x8, #0xe4]
02ca901c  ldr w21,[x9]
02ca9020  cbnz w10,0x02ca902c
02ca9024  mov x0,x8
02ca9028  bl 0x029f5bd0
02ca902c  mov w0,w21
02ca9030  mov x1,xzr
02ca9034  bl 0x02b7ed10
02ca9038  ldr x0,[x19, #0xa0]
02ca903c  cbz x0,0x02ca90e4
02ca9040  eor w21,w20,#0x1
02ca9044  mov x2,xzr
02ca9048  and w1,w21,#0x1
02ca904c  bl 0x057dff3c
02ca9050  ldr x0,[x19, #0x90]
02ca9054  cbz x0,0x02ca90e4
02ca9058  and w1,w21,#0x1
02ca905c  mov x2,xzr
02ca9060  bl 0x057dff3c
02ca9064  ldr x0,[x19, #0x98]
02ca9068  cbz x0,0x02ca90e4
02ca906c  and w1,w20,#0x1
02ca9070  mov x2,xzr
02ca9074  bl 0x057dff3c
02ca9078  adrp x20,0x625b000
02ca907c  ldrb w8,[x20, #0xa57]
02ca9080  cbnz w8,0x02ca9098
02ca9084  adrp x0,0x5e5d000
02ca9088  ldr x0,[x0, #0xd70]
02ca908c  bl 0x029f5a50
02ca9090  mov w8,#0x1
02ca9094  strb w8,[x20, #0xa57]
02ca9098  adrp x8,0x5e5d000
02ca909c  ldr x8,[x8, #0xd70]
02ca90a0  ldr x8,[x8]
02ca90a4  ldr x8,[x8, #0xb8]
02ca90a8  ldr x0,[x8]
02ca90ac  cbz x0,0x02ca90e4
02ca90b0  fmov s0,0x3f800000
02ca90b4  mov w1,#0xb
02ca90b8  mov x2,xzr
02ca90bc  mov x3,xzr
02ca90c0  bl 0x02c1f10c
02ca90c4  ldr x0,[x19, #0x38]
02ca90c8  cbz x0,0x02ca90e4
02ca90cc  ldp x20,x19,[sp, #0x20]
02ca90d0  mov w1,#0x1
02ca90d4  ldp x22,x21,[sp, #0x10]
02ca90d8  mov x2,xzr
02ca90dc  ldr x30,[sp], #0x30
02ca90e0  b 0x057dff3c
02ca90e4  bl 0x029f5cfc
