02ca7f64  sub sp,sp,#0x60
02ca7f68  stp x30,x25,[sp, #0x20]
02ca7f6c  stp x24,x23,[sp, #0x30]
02ca7f70  stp x22,x21,[sp, #0x40]
02ca7f74  stp x20,x19,[sp, #0x50]
02ca7f78  adrp x21,0x625c000
02ca7f7c  adrp x24,0x5e5d000
02ca7f80  mov w20,w1
02ca7f84  ldrb w8,[x21, #0x4e7]
02ca7f88  ldr x24,[x24, #0x4e0]
02ca7f8c  mov x19,x0
02ca7f90  tbnz w8,#0x0,0x02ca7fcc
02ca7f94  adrp x0,0x5e5d000
02ca7f98  ldr x0,[x0, #0x338]
02ca7f9c  bl 0x029f5a50
02ca7fa0  adrp x0,0x5e5d000
02ca7fa4  ldr x0,[x0, #0x4e0]
02ca7fa8  bl 0x029f5a50
02ca7fac  adrp x0,0x5e63000
02ca7fb0  ldr x0,[x0, #0x398]
02ca7fb4  bl 0x029f5a50
02ca7fb8  adrp x0,0x5e63000
02ca7fbc  ldr x0,[x0, #0x810]
02ca7fc0  bl 0x029f5a50
02ca7fc4  mov w8,#0x1
02ca7fc8  strb w8,[x21, #0x4e7]
02ca7fcc  ldr x8,[x24]
02ca7fd0  str xzr,[sp, #0x18]
02ca7fd4  str w20,[x19, #0x20]
02ca7fd8  ldr x8,[x8, #0xb8]
02ca7fdc  ldr x9,[x8, #0x10]
02ca7fe0  cbz x9,0x02ca8388
02ca7fe4  ldr x8,[x9, #0x20]
02ca7fe8  cbz x8,0x02ca8388
02ca7fec  ldr w10,[x8, #0x18]
02ca7ff0  cmp w10,w20
02ca7ff4  b.ls 0x02ca838c
02ca7ff8  ldr x9,[x9, #0x50]
02ca7ffc  cbz x9,0x02ca8388
02ca8000  ldr w10,[x9, #0x18]
02ca8004  cmp w10,w20
02ca8008  b.ls 0x02ca838c
02ca800c  ldr x0,[x19, #0x30]
02ca8010  cbz x0,0x02ca8388
02ca8014  sxtw x10,w20
02ca8018  ldr x21,[x19, #0x38]
02ca801c  ldr x23,[x19, #0x28]
02ca8020  mov x2,xzr
02ca8024  add x9,x9,x10, LSL #0x3
02ca8028  add x8,x8,x10, LSL #0x3
02ca802c  ldr x22,[x9, #0x20]
02ca8030  ldr x25,[x8, #0x20]
02ca8034  mov x1,x22
02ca8038  bl 0x058d34cc
02ca803c  cbz x23,0x02ca8388
02ca8040  mov x0,x23
02ca8044  mov x1,x22
02ca8048  mov x2,xzr
02ca804c  bl 0x058d34cc
02ca8050  cbz x21,0x02ca8388
02ca8054  mov x0,x21
02ca8058  mov x1,x22
02ca805c  mov x2,xzr
02ca8060  bl 0x058d34cc
02ca8064  ldr x0,[x19, #0x48]
02ca8068  cbz x0,0x02ca8388
02ca806c  cmp w20,#0x0
02ca8070  mov x2,xzr
02ca8074  cset w1,ne
02ca8078  bl 0x057dff3c
02ca807c  ldr x8,[x24]
02ca8080  ldr x8,[x8, #0xb8]
02ca8084  ldr x8,[x8, #0x10]
02ca8088  cbz x8,0x02ca8388
02ca808c  ldr x8,[x8, #0x20]
02ca8090  cbz x8,0x02ca8388
02ca8094  ldr x0,[x19, #0x40]
02ca8098  cbz x0,0x02ca8388
02ca809c  ldr w8,[x8, #0x18]
02ca80a0  mov x2,xzr
02ca80a4  sub w8,w8,#0x1
02ca80a8  cmp w8,w20
02ca80ac  cset w1,gt
02ca80b0  bl 0x057dff3c
02ca80b4  ldr x21,[x19, #0x50]
02ca80b8  add w8,w20,#0x1
02ca80bc  add x0,sp,#0x18
02ca80c0  mov x1,xzr
02ca80c4  str w8,[sp, #0x18]
02ca80c8  bl 0x0484e6a4
02ca80cc  cbz x21,0x02ca8388
02ca80d0  ldr x8,[x21]
02ca80d4  mov x1,x0
02ca80d8  mov x0,x21
02ca80dc  ldr x9,[x8, #0x558]
02ca80e0  ldr x2,[x8, #0x560]
02ca80e4  blr x9
02ca80e8  cbz x25,0x02ca8388
02ca80ec  adrp x23,0x5e58000
02ca80f0  adrp x22,0x5e63000
02ca80f4  add x1,sp,#0x14
02ca80f8  ldr x23,[x23, #0xa10]
02ca80fc  ldr x22,[x22, #0x810]
02ca8100  ldr w8,[x25, #0x10]
02ca8104  ldr x21,[x19, #0x58]
02ca8108  ldr x0,[x23, #0x48]
02ca810c  str w8,[sp, #0x14]
02ca8110  bl 0x029f5bd8
02ca8114  ldr x8,[x22]
02ca8118  mov x1,x0
02ca811c  mov x2,xzr
02ca8120  mov x0,x8
02ca8124  bl 0x046b6c0c
02ca8128  cbz x21,0x02ca8388
02ca812c  ldr x8,[x21]
02ca8130  mov x1,x0
02ca8134  mov x0,x21
02ca8138  ldr x9,[x8, #0x558]
02ca813c  ldr x2,[x8, #0x560]
02ca8140  blr x9
02ca8144  ldr w8,[x25, #0x14]
02ca8148  ldr x0,[x23, #0x48]
02ca814c  add x1,sp,#0x10
02ca8150  ldr x21,[x19, #0x60]
02ca8154  str w8,[sp, #0x10]
02ca8158  bl 0x029f5bd8
02ca815c  ldr x8,[x22]
02ca8160  mov x1,x0
02ca8164  mov x2,xzr
02ca8168  mov x0,x8
02ca816c  bl 0x046b6c0c
02ca8170  cbz x21,0x02ca8388
02ca8174  ldr x8,[x21]
02ca8178  mov x1,x0
02ca817c  mov x0,x21
02ca8180  ldr x9,[x8, #0x558]
02ca8184  ldr x2,[x8, #0x560]
02ca8188  blr x9
02ca818c  ldr w8,[x25, #0x18]
02ca8190  ldr x0,[x23, #0x48]
02ca8194  add x1,sp,#0xc
02ca8198  ldr x21,[x19, #0x68]
02ca819c  str w8,[sp, #0xc]
02ca81a0  bl 0x029f5bd8
02ca81a4  ldr x8,[x22]
02ca81a8  mov x1,x0
02ca81ac  mov x2,xzr
02ca81b0  mov x0,x8
02ca81b4  bl 0x046b6c0c
02ca81b8  cbz x21,0x02ca8388
02ca81bc  ldr x8,[x21]
02ca81c0  mov x1,x0
02ca81c4  mov x0,x21
02ca81c8  ldr x9,[x8, #0x558]
02ca81cc  ldr x2,[x8, #0x560]
02ca81d0  blr x9
02ca81d4  ldr x8,[x24]
02ca81d8  ldr x8,[x8, #0xb8]
02ca81dc  ldr x0,[x8, #0x10]
02ca81e0  cbz x0,0x02ca8388
02ca81e4  mov w1,w20
02ca81e8  bl 0x02ca7ac4
02ca81ec  ldr x8,[x24]
02ca81f0  ldr x8,[x8, #0xb8]
02ca81f4  ldr x8,[x8, #0x10]
02ca81f8  cbz x8,0x02ca8388
02ca81fc  adrp x22,0x5e5d000
02ca8200  mov w23,w0
02ca8204  mov x0,x8
02ca8208  ldr x22,[x22, #0x338]
02ca820c  ldr w24,[x8, #0x30]
02ca8210  mov w1,w20
02ca8214  bl 0x02ca7a94
02ca8218  ldr x8,[x22]
02ca821c  mov w21,w0
02ca8220  str w0,[sp, #0x1c]
02ca8224  ldr w9,[x8, #0xe4]
02ca8228  cbnz w9,0x02ca8238
02ca822c  mov x0,x8
02ca8230  bl 0x029f5bd0
02ca8234  ldr x8,[x22]
02ca8238  ldr x8,[x8, #0xb8]
02ca823c  mov x2,xzr
02ca8240  ldp x0,x1,[x8, #0x90]
02ca8244  bl 0x02b1e644
02ca8248  ldr x8,[x19, #0x38]
02ca824c  cbz x8,0x02ca8388
02ca8250  mov w22,w0
02ca8254  mov x0,x8
02ca8258  mov x1,xzr
02ca825c  bl 0x057dc1c8
02ca8260  cbz x0,0x02ca8388
02ca8264  eor w25,w23,#0x1
02ca8268  mov x2,xzr
02ca826c  and w1,w25,#0x1
02ca8270  bl 0x057dff3c
02ca8274  ldr x0,[x19, #0x70]
02ca8278  cbz x0,0x02ca8388
02ca827c  and w1,w25,#0x1
02ca8280  mov x2,xzr
02ca8284  bl 0x057dff3c
02ca8288  ldr x0,[x19, #0x78]
02ca828c  cbz x0,0x02ca8388
02ca8290  cmp w24,w20
02ca8294  mov x2,xzr
02ca8298  cset w8,ne
02ca829c  and w1,w23,w8
02ca82a0  bl 0x057dff3c
02ca82a4  ldr x0,[x19, #0x80]
02ca82a8  cbz x0,0x02ca8388
02ca82ac  adrp x23,0x5e63000
02ca82b0  cmp w24,w20
02ca82b4  mov x2,xzr
02ca82b8  ldr x23,[x23, #0x398]
02ca82bc  cset w1,eq
02ca82c0  bl 0x057dff3c
02ca82c4  ldr x20,[x19, #0x88]
02ca82c8  add x0,sp,#0x1c
02ca82cc  mov x1,xzr
02ca82d0  bl 0x0484e6a4
02ca82d4  ldr x8,[x23]
02ca82d8  mov x1,x0
02ca82dc  mov x2,xzr
02ca82e0  mov x0,x8
02ca82e4  bl 0x046b6c0c
02ca82e8  cbz x20,0x02ca8388
02ca82ec  ldr x8,[x20]
02ca82f0  mov x1,x0
02ca82f4  mov x0,x20
02ca82f8  ldr x9,[x8, #0x558]
02ca82fc  ldr x2,[x8, #0x560]
02ca8300  blr x9
02ca8304  ldr x0,[x19, #0x90]
02ca8308  cbz x0,0x02ca8388
02ca830c  cmp w22,w21
02ca8310  mov x2,xzr
02ca8314  cset w1,ge
02ca8318  bl 0x05abf7f8
02ca831c  fmov s3,0x3f800000
02ca8320  fmov s2,0x3f800000
02ca8324  ldr x0,[x19, #0x88]
02ca8328  fmov s1,0x3f800000
02ca832c  fmov s0,0x3f800000
02ca8330  cmp w22,w21
02ca8334  b.ge 0x02ca8340
02ca8338  ldp s0,s1,[x19, #0x98]
02ca833c  ldp s2,s3,[x19, #0xa0]
02ca8340  cbz x0,0x02ca8388
02ca8344  ldr x8,[x0]
02ca8348  ldr x9,[x8, #0x2a8]
02ca834c  ldr x1,[x8, #0x2b0]
02ca8350  blr x9
02ca8354  mov x0,x19
02ca8358  mov x1,xzr
02ca835c  bl 0x057dc1c8
02ca8360  cbz x0,0x02ca8388
02ca8364  mov w1,#0x1
02ca8368  mov x2,xzr
02ca836c  bl 0x057dff3c
02ca8370  ldp x20,x19,[sp, #0x50]
02ca8374  ldp x22,x21,[sp, #0x40]
02ca8378  ldp x24,x23,[sp, #0x30]
02ca837c  ldp x30,x25,[sp, #0x20]
02ca8380  add sp,sp,#0x60
02ca8384  ret
02ca8388  bl 0x029f5cfc
02ca838c  bl 0x029f5d04
