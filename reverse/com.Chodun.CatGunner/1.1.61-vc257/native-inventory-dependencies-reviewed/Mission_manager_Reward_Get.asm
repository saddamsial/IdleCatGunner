02ba5e74  sub sp,sp,#0x40
02ba5e78  stp x30,x23,[sp, #0x10]
02ba5e7c  stp x22,x21,[sp, #0x20]
02ba5e80  stp x20,x19,[sp, #0x30]
02ba5e84  adrp x22,0x625b000
02ba5e88  mov w20,w2
02ba5e8c  mov w21,w1
02ba5e90  ldrb w8,[x22, #0xa4d]
02ba5e94  mov x19,x0
02ba5e98  tbnz w8,#0x0,0x02ba5ef8
02ba5e9c  adrp x0,0x5e5d000
02ba5ea0  ldr x0,[x0, #0x910]
02ba5ea4  bl 0x029f5a50
02ba5ea8  adrp x0,0x5e5d000
02ba5eac  ldr x0,[x0, #0xd40]
02ba5eb0  bl 0x029f5a50
02ba5eb4  adrp x0,0x5e5e000
02ba5eb8  ldr x0,[x0, #0x528]
02ba5ebc  bl 0x029f5a50
02ba5ec0  adrp x0,0x5e5d000
02ba5ec4  ldr x0,[x0, #0xd50]
02ba5ec8  bl 0x029f5a50
02ba5ecc  adrp x0,0x5e5d000
02ba5ed0  ldr x0,[x0, #0x920]
02ba5ed4  bl 0x029f5a50
02ba5ed8  adrp x0,0x5e5e000
02ba5edc  ldr x0,[x0, #0x798]
02ba5ee0  bl 0x029f5a50
02ba5ee4  adrp x0,0x5e5e000
02ba5ee8  ldr x0,[x0, #0x7a0]
02ba5eec  bl 0x029f5a50
02ba5ef0  mov w8,#0x1
02ba5ef4  strb w8,[x22, #0xa4d]
02ba5ef8  cbz w21,0x02ba5f5c
02ba5efc  cmp w21,#0x1
02ba5f00  b.ne 0x02ba5f2c
02ba5f04  adrp x22,0x5e5d000
02ba5f08  ldr x22,[x22, #0xd50]
02ba5f0c  ldr x0,[x22]
02ba5f10  ldr w8,[x0, #0xe4]
02ba5f14  cbnz w8,0x02ba5f20
02ba5f18  bl 0x029f5bd0
02ba5f1c  ldr x0,[x22]
02ba5f20  ldr x8,[x0, #0xb8]
02ba5f24  ldrb w8,[x8]
02ba5f28  cbz w8,0x02ba6178
02ba5f2c  ldr x8,[x19, #0x30]
02ba5f30  cbz x8,0x02ba6294
02ba5f34  ldr w9,[x8, #0x18]
02ba5f38  cmp w9,w20
02ba5f3c  b.ls 0x02ba6298
02ba5f40  ldr x9,[x19, #0x40]
02ba5f44  cbz x9,0x02ba6294
02ba5f48  ldr w10,[x9, #0x18]
02ba5f4c  cmp w10,w20
02ba5f50  b.ls 0x02ba6298
02ba5f54  sxtw x10,w20
02ba5f58  b 0x02ba5f8c
02ba5f5c  ldr x8,[x19, #0x28]
02ba5f60  cbz x8,0x02ba6294
02ba5f64  ldr w9,[x8, #0x18]
02ba5f68  cmp w9,w20
02ba5f6c  b.ls 0x02ba6298
02ba5f70  ldr x9,[x19, #0x38]
02ba5f74  cbz x9,0x02ba6294
02ba5f78  ldr w10,[x9, #0x18]
02ba5f7c  cmp w10,w20
02ba5f80  b.ls 0x02ba6298
02ba5f84  mov w10,w20
02ba5f88  sxtw x10,w10
02ba5f8c  add x8,x8,w20, SXTW  #0x3
02ba5f90  ldr x22,[x8, #0x20]
02ba5f94  add x8,x9,x10
02ba5f98  ldrb w23,[x8, #0x20]!
02ba5f9c  ldr w8,[x19, #0x48]
02ba5fa0  cbnz w23,0x02ba6088
02ba5fa4  cmp w8,w20
02ba5fa8  b.le 0x02ba6088
02ba5fac  mov x0,x19
02ba5fb0  mov w2,w20
02ba5fb4  bl 0x02ba629c
02ba5fb8  tbz w0,#0x0,0x02ba6084
02ba5fbc  adrp x8,0x5e5e000
02ba5fc0  ldr x8,[x8, #0x528]
02ba5fc4  ldr x0,[x8]
02ba5fc8  ldr w8,[x0, #0xe4]
02ba5fcc  cbnz w8,0x02ba5fd4
02ba5fd0  bl 0x029f5bd0
02ba5fd4  adrp x8,0x5e5e000
02ba5fd8  mov w2,wzr
02ba5fdc  mov w4,wzr
02ba5fe0  ldr x8,[x8, #0x798]
02ba5fe4  mov x5,xzr
02ba5fe8  mov x6,xzr
02ba5fec  mov w1,#0x1
02ba5ff0  mov w3,#0x1
02ba5ff4  mov w7,#0x1
02ba5ff8  ldr x0,[x8]
02ba5ffc  str xzr,[sp]
02ba6000  mov w20,#0x1
02ba6004  bl 0x02bccb00
02ba6008  mov x1,xzr
02ba600c  bl 0x02c1dd54
02ba6010  adrp x21,0x625b000
02ba6014  ldrb w8,[x21, #0xa57]
02ba6018  cbnz w8,0x02ba602c
02ba601c  adrp x0,0x5e5d000
02ba6020  ldr x0,[x0, #0xd70]
02ba6024  bl 0x029f5a50
02ba6028  strb w20,[x21, #0xa57]
02ba602c  adrp x8,0x5e5d000
02ba6030  ldr x8,[x8, #0xd70]
02ba6034  ldr x8,[x8]
02ba6038  ldr x8,[x8, #0xb8]
02ba603c  ldr x0,[x8]
02ba6040  cbz x0,0x02ba6294
02ba6044  fmov s0,0x3f800000
02ba6048  mov w1,#0x5
02ba604c  mov x2,xzr
02ba6050  mov x3,xzr
02ba6054  bl 0x02c1f10c
02ba6058  mov x0,x19
02ba605c  bl 0x02ba638c
02ba6060  cmn w0,#0x1
02ba6064  b.eq 0x02ba619c
02ba6068  mov w1,w0
02ba606c  mov x0,x19
02ba6070  ldp x20,x19,[sp, #0x30]
02ba6074  ldp x22,x21,[sp, #0x20]
02ba6078  ldp x30,x23,[sp, #0x10]
02ba607c  add sp,sp,#0x40
02ba6080  b 0x02ba5d90
02ba6084  ldr w8,[x19, #0x48]
02ba6088  cbnz w23,0x02ba611c
02ba608c  cmp w8,w20
02ba6090  b.le 0x02ba611c
02ba6094  adrp x8,0x5e5d000
02ba6098  ldr x8,[x8, #0xd50]
02ba609c  ldr x0,[x8]
02ba60a0  ldr w8,[x0, #0xe4]
02ba60a4  cbnz w8,0x02ba60ac
02ba60a8  bl 0x029f5bd0
02ba60ac  cmp w20,#0x3
02ba60b0  b.lt 0x02ba60fc
02ba60b4  mov w8,#0xaaab
02ba60b8  movk w8,#0xaaaa, LSL #16
02ba60bc  umull x8,w20,w8
02ba60c0  lsr x8,x8,#0x21
02ba60c4  add w8,w8,w8, LSL #0x1
02ba60c8  sub w8,w20,w8
02ba60cc  orr w8,w8,w21
02ba60d0  cbnz w8,0x02ba60fc
02ba60d4  adrp x23,0x5e5d000
02ba60d8  ldr x23,[x23, #0x920]
02ba60dc  ldr x0,[x23]
02ba60e0  ldr w8,[x0, #0xe4]
02ba60e4  cbnz w8,0x02ba60f0
02ba60e8  bl 0x029f5bd0
02ba60ec  ldr x0,[x23]
02ba60f0  ldr x8,[x0, #0xb8]
02ba60f4  ldrb w8,[x8, #0x9]
02ba60f8  cbz w8,0x02ba61b0
02ba60fc  mov x0,x19
02ba6100  mov w1,w21
02ba6104  mov w2,w20
02ba6108  ldp x20,x19,[sp, #0x30]
02ba610c  ldp x22,x21,[sp, #0x20]
02ba6110  ldp x30,x23,[sp, #0x10]
02ba6114  add sp,sp,#0x40
02ba6118  b 0x02ba6494
02ba611c  adrp x19,0x625b000
02ba6120  ldrb w8,[x19, #0xa57]
02ba6124  cbnz w8,0x02ba613c
02ba6128  adrp x0,0x5e5d000
02ba612c  ldr x0,[x0, #0xd70]
02ba6130  bl 0x029f5a50
02ba6134  mov w8,#0x1
02ba6138  strb w8,[x19, #0xa57]
02ba613c  adrp x8,0x5e5d000
02ba6140  ldr x8,[x8, #0xd70]
02ba6144  ldr x8,[x8]
02ba6148  ldr x8,[x8, #0xb8]
02ba614c  ldr x0,[x8]
02ba6150  cbz x0,0x02ba6294
02ba6154  ldp x20,x19,[sp, #0x30]
02ba6158  fmov s0,0x3f800000
02ba615c  ldp x22,x21,[sp, #0x20]
02ba6160  mov w1,#0x5
02ba6164  ldp x30,x23,[sp, #0x10]
02ba6168  mov x2,xzr
02ba616c  mov x3,xzr
02ba6170  add sp,sp,#0x40
02ba6174  b 0x02c1f10c
02ba6178  ldr x0,[x19, #0xa8]
02ba617c  cbz x0,0x02ba6294
02ba6180  ldp x20,x19,[sp, #0x30]
02ba6184  mov w1,#0x1
02ba6188  ldp x22,x21,[sp, #0x20]
02ba618c  mov x2,xzr
02ba6190  ldp x30,x23,[sp, #0x10]
02ba6194  add sp,sp,#0x40
02ba6198  b 0x057dff3c
02ba619c  ldp x20,x19,[sp, #0x30]
02ba61a0  ldp x22,x21,[sp, #0x20]
02ba61a4  ldp x30,x23,[sp, #0x10]
02ba61a8  add sp,sp,#0x40
02ba61ac  ret
02ba61b0  cbz x22,0x02ba6294
02ba61b4  ldr w8,[x22, #0x14]
02ba61b8  cmp w8,#0x1
02ba61bc  b.ne 0x02ba61e8
02ba61c0  adrp x8,0x5e5d000
02ba61c4  ldr x8,[x8, #0xd40]
02ba61c8  ldr x8,[x8]
02ba61cc  ldr x8,[x8, #0xb8]
02ba61d0  ldr x0,[x8]
02ba61d4  cbz x0,0x02ba6294
02ba61d8  mov x1,xzr
02ba61dc  bl 0x02c67de0
02ba61e0  cmn w0,#0x1
02ba61e4  b.eq 0x02ba6220
02ba61e8  adrp x8,0x5e5d000
02ba61ec  ldr x8,[x8, #0x910]
02ba61f0  str w20,[x19, #0xf0]
02ba61f4  ldr x8,[x8]
02ba61f8  ldr x8,[x8, #0xb8]
02ba61fc  ldr x0,[x8]
02ba6200  cbz x0,0x02ba6294
02ba6204  ldp x20,x19,[sp, #0x30]
02ba6208  mov w1,#0x6
02ba620c  ldp x22,x21,[sp, #0x20]
02ba6210  mov x2,xzr
02ba6214  ldp x30,x23,[sp, #0x10]
02ba6218  add sp,sp,#0x40
02ba621c  b 0x02b89ab0
02ba6220  adrp x8,0x5e5e000
02ba6224  ldr x8,[x8, #0x528]
02ba6228  ldr x0,[x8]
02ba622c  ldr w8,[x0, #0xe4]
02ba6230  cbnz w8,0x02ba6238
02ba6234  bl 0x029f5bd0
02ba6238  adrp x8,0x5e5e000
02ba623c  mov w2,wzr
02ba6240  mov w4,wzr
02ba6244  ldr x8,[x8, #0x7a0]
02ba6248  mov x5,xzr
02ba624c  mov x6,xzr
02ba6250  mov w1,#0x1
02ba6254  mov w3,#0x1
02ba6258  mov w7,#0x1
02ba625c  ldr x0,[x8]
02ba6260  str xzr,[sp]
02ba6264  mov w19,#0x1
02ba6268  bl 0x02bccb00
02ba626c  mov x1,xzr
02ba6270  bl 0x02c1dd54
02ba6274  adrp x20,0x625b000
02ba6278  ldrb w8,[x20, #0xa57]
02ba627c  cbnz w8,0x02ba613c
02ba6280  adrp x0,0x5e5d000
02ba6284  ldr x0,[x0, #0xd70]
02ba6288  bl 0x029f5a50
02ba628c  strb w19,[x20, #0xa57]
02ba6290  b 0x02ba613c
02ba6294  bl 0x029f5cfc
02ba6298  bl 0x029f5d04
