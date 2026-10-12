02c35e28  stp x30,x23,[sp, #-0x30]!
02c35e2c  stp x22,x21,[sp, #0x10]
02c35e30  stp x20,x19,[sp, #0x20]
02c35e34  adrp x23,0x625c000
02c35e38  adrp x22,0x5e5d000
02c35e3c  lsr x21,x1,#0x20
02c35e40  ldrb w8,[x23, #0x68]
02c35e44  ldr x22,[x22, #0x4d0]
02c35e48  mov x20,x1
02c35e4c  mov x19,x0
02c35e50  tbnz w8,#0x0,0x02c35e74
02c35e54  adrp x0,0x5e59000
02c35e58  ldr x0,[x0, #0x1c0]
02c35e5c  bl 0x029f5a50
02c35e60  adrp x0,0x5e5d000
02c35e64  ldr x0,[x0, #0x4d0]
02c35e68  bl 0x029f5a50
02c35e6c  mov w8,#0x1
02c35e70  strb w8,[x23, #0x68]
02c35e74  ldr x0,[x22]
02c35e78  stp w20,w21,[x19, #0x40]
02c35e7c  ldr w8,[x0, #0xe4]
02c35e80  cbnz w8,0x02c35e8c
02c35e84  bl 0x029f5bd0
02c35e88  ldr x0,[x22]
02c35e8c  ldr x8,[x0, #0xb8]
02c35e90  cmp w20,#0x1
02c35e94  ldr x0,[x8, #0x28]
02c35e98  b.ne 0x02c35ecc
02c35e9c  cbz x0,0x02c36078
02c35ea0  ldr x8,[x0, #0x30]
02c35ea4  cbz x8,0x02c35efc
02c35ea8  ldr w9,[x8, #0x18]
02c35eac  cmp w21,w9
02c35eb0  b.ge 0x02c35efc
02c35eb4  asr x10,x20,#0x20
02c35eb8  cmp w10,w9
02c35ebc  b.cs 0x02c3607c
02c35ec0  add x8,x8,x10, LSL #0x2
02c35ec4  ldr w22,[x8, #0x20]
02c35ec8  b 0x02c35f00
02c35ecc  cbz x0,0x02c36078
02c35ed0  ldr x8,[x0, #0x38]
02c35ed4  cbz x8,0x02c35f10
02c35ed8  ldr w9,[x8, #0x18]
02c35edc  cmp w21,w9
02c35ee0  b.ge 0x02c35f10
02c35ee4  asr x10,x20,#0x20
02c35ee8  cmp w10,w9
02c35eec  b.cs 0x02c3607c
02c35ef0  add x8,x8,x10, LSL #0x2
02c35ef4  ldr w22,[x8, #0x20]
02c35ef8  b 0x02c35f14
02c35efc  mov w22,#0xffffffff
02c35f00  mov w1,w21
02c35f04  mov x2,xzr
02c35f08  bl 0x02c7cd4c
02c35f0c  b 0x02c35f20
02c35f10  mov w22,#0xffffffff
02c35f14  mov w1,w21
02c35f18  mov x2,xzr
02c35f1c  bl 0x02c7cce0
02c35f20  cmn w22,#0x1
02c35f24  mov w21,w0
02c35f28  cset w8,ne
02c35f2c  strb w8,[x19, #0x48]
02c35f30  b.eq 0x02c36020
02c35f34  ldr x0,[x19, #0x30]
02c35f38  cbz x0,0x02c36078
02c35f3c  mov x1,xzr
02c35f40  bl 0x057dc1c8
02c35f44  cbz x0,0x02c36078
02c35f48  mov w1,#0x1
02c35f4c  mov x2,xzr
02c35f50  bl 0x057dff3c
02c35f54  ldr x0,[x19, #0x30]
02c35f58  cbz x0,0x02c36078
02c35f5c  adrp x23,0x5e59000
02c35f60  mov w1,w22
02c35f64  mov x2,xzr
02c35f68  ldr x23,[x23, #0x1c0]
02c35f6c  bl 0x02c821e8
02c35f70  ldr x0,[x23]
02c35f74  ldr x22,[x19, #0x38]
02c35f78  ldr w8,[x0, #0xe4]
02c35f7c  cbnz w8,0x02c35f84
02c35f80  bl 0x029f5bd0
02c35f84  mov x0,x22
02c35f88  mov x1,xzr
02c35f8c  mov x2,xzr
02c35f90  bl 0x057dfa70
02c35f94  tbz w0,#0x0,0x02c35fe8
02c35f98  ldr x8,[x19, #0x38]
02c35f9c  cbz x8,0x02c36078
02c35fa0  ldr x0,[x23]
02c35fa4  ldr x22,[x8, #0x28]
02c35fa8  ldr w9,[x0, #0xe4]
02c35fac  cbnz w9,0x02c35fb4
02c35fb0  bl 0x029f5bd0
02c35fb4  mov x0,x22
02c35fb8  mov x1,xzr
02c35fbc  mov x2,xzr
02c35fc0  bl 0x057dfa70
02c35fc4  tbz w0,#0x0,0x02c35fe8
02c35fc8  ldr x8,[x19, #0x38]
02c35fcc  cbz x8,0x02c36078
02c35fd0  ldr x0,[x8, #0x28]
02c35fd4  cbz x0,0x02c36078
02c35fd8  mov x1,x20
02c35fdc  bl 0x02c340f8
02c35fe0  eor w8,w0,#0x1
02c35fe4  b 0x02c35fec
02c35fe8  mov w8,#0x1
02c35fec  and w8,w21,w8
02c35ff0  ldr x0,[x19, #0x20]
02c35ff4  and w1,w8,#0x1
02c35ff8  strb w1,[x19, #0x49]
02c35ffc  cbz x0,0x02c36078
02c36000  mov x2,xzr
02c36004  bl 0x057dff3c
02c36008  ldr x0,[x19, #0x28]
02c3600c  cbz x0,0x02c36078
02c36010  ldrb w8,[x19, #0x49]
02c36014  cmp w8,#0x0
02c36018  cset w1,eq
02c3601c  b 0x02c36064
02c36020  ldr x0,[x19, #0x20]
02c36024  strb wzr,[x19, #0x49]
02c36028  cbz x0,0x02c36078
02c3602c  mov w1,wzr
02c36030  mov x2,xzr
02c36034  bl 0x057dff3c
02c36038  ldr x0,[x19, #0x28]
02c3603c  cbz x0,0x02c36078
02c36040  mov w1,wzr
02c36044  mov x2,xzr
02c36048  bl 0x057dff3c
02c3604c  ldr x0,[x19, #0x30]
02c36050  cbz x0,0x02c36078
02c36054  mov x1,xzr
02c36058  bl 0x057dc1c8
02c3605c  cbz x0,0x02c36078
02c36060  mov w1,wzr
02c36064  ldp x20,x19,[sp, #0x20]
02c36068  mov x2,xzr
02c3606c  ldp x22,x21,[sp, #0x10]
02c36070  ldp x30,x23,[sp], #0x30
02c36074  b 0x057dff3c
02c36078  bl 0x029f5cfc
02c3607c  bl 0x029f5d04
