02c8cfd8  sub sp,sp,#0x60
02c8cfdc  stp x30,x25,[sp, #0x20]
02c8cfe0  stp x24,x23,[sp, #0x30]
02c8cfe4  stp x22,x21,[sp, #0x40]
02c8cfe8  stp x20,x19,[sp, #0x50]
02c8cfec  adrp x20,0x625c000
02c8cff0  adrp x22,0x5e5d000
02c8cff4  mov x19,x0
02c8cff8  ldrb w8,[x20, #0x3c1]
02c8cffc  ldr x22,[x22, #0x920]
02c8d000  tbnz w8,#0x0,0x02c8d054
02c8d004  adrp x0,0x5e62000
02c8d008  ldr x0,[x0, #0x668]
02c8d00c  bl 0x029f5a50
02c8d010  adrp x0,0x5e5e000
02c8d014  ldr x0,[x0, #0x528]
02c8d018  bl 0x029f5a50
02c8d01c  adrp x0,0x5e5d000
02c8d020  ldr x0,[x0, #0x920]
02c8d024  bl 0x029f5a50
02c8d028  adrp x0,0x5e5d000
02c8d02c  ldr x0,[x0, #0x528]
02c8d030  bl 0x029f5a50
02c8d034  adrp x0,0x5e63000
02c8d038  ldr x0,[x0, #0xf50]
02c8d03c  bl 0x029f5a50
02c8d040  adrp x0,0x5e63000
02c8d044  ldr x0,[x0, #0xf58]
02c8d048  bl 0x029f5a50
02c8d04c  mov w8,#0x1
02c8d050  strb w8,[x20, #0x3c1]
02c8d054  ldr x0,[x22]
02c8d058  str wzr,[sp, #0x1c]
02c8d05c  ldr w8,[x0, #0xe4]
02c8d060  cbnz w8,0x02c8d068
02c8d064  bl 0x029f5bd0
02c8d068  adrp x23,0x625b000
02c8d06c  ldrb w8,[x23, #0x960]
02c8d070  cbnz w8,0x02c8d088
02c8d074  adrp x0,0x5e5d000
02c8d078  ldr x0,[x0, #0x920]
02c8d07c  bl 0x029f5a50
02c8d080  mov w8,#0x1
02c8d084  strb w8,[x23, #0x960]
02c8d088  ldr x0,[x22]
02c8d08c  ldr w8,[x0, #0xe4]
02c8d090  cbnz w8,0x02c8d09c
02c8d094  bl 0x029f5bd0
02c8d098  ldr x0,[x22]
02c8d09c  ldr x8,[x0, #0xb8]
02c8d0a0  ldr x8,[x8]
02c8d0a4  cbz x8,0x02c8d3c8
02c8d0a8  bl 0x02c8c8f4
02c8d0ac  ldr x8,[x19, #0x20]
02c8d0b0  and w9,w0,#0x1
02c8d0b4  strb w9,[x19, #0x58]
02c8d0b8  cbz x8,0x02c8d3c8
02c8d0bc  mov w9,#0x1
02c8d0c0  mov x2,xzr
02c8d0c4  bic w1,w9,w0
02c8d0c8  mov x0,x8
02c8d0cc  bl 0x057dff3c
02c8d0d0  ldr x0,[x19, #0x28]
02c8d0d4  cbz x0,0x02c8d3c8
02c8d0d8  adrp x21,0x5e62000
02c8d0dc  mov x2,xzr
02c8d0e0  ldr x21,[x21, #0x668]
02c8d0e4  ldrb w1,[x19, #0x58]
02c8d0e8  bl 0x057dff3c
02c8d0ec  ldr x8,[x21]
02c8d0f0  ldr x8,[x8, #0xb8]
02c8d0f4  ldr x8,[x8]
02c8d0f8  cbz x8,0x02c8d3c8
02c8d0fc  adrp x24,0x5e58000
02c8d100  add x1,sp,#0x18
02c8d104  ldr x24,[x24, #0xa10]
02c8d108  ldr w8,[x8, #0x20]
02c8d10c  ldr x20,[x19, #0x48]
02c8d110  ldr x0,[x24, #0x48]
02c8d114  str w8,[sp, #0x18]
02c8d118  bl 0x029f5bd8
02c8d11c  ldr x8,[x21]
02c8d120  ldr x8,[x8, #0xb8]
02c8d124  ldr x8,[x8]
02c8d128  cbz x8,0x02c8d3c8
02c8d12c  adrp x25,0x5e63000
02c8d130  mov x21,x0
02c8d134  ldr w8,[x8, #0x24]
02c8d138  ldr x25,[x25, #0xf50]
02c8d13c  ldr x0,[x24, #0x48]
02c8d140  add x1,sp,#0x14
02c8d144  str w8,[sp, #0x14]
02c8d148  bl 0x029f5bd8
02c8d14c  ldr x8,[x25]
02c8d150  mov x2,x0
02c8d154  mov x1,x21
02c8d158  mov x3,xzr
02c8d15c  mov x0,x8
02c8d160  bl 0x046c1d14
02c8d164  cbz x20,0x02c8d3c8
02c8d168  ldr x8,[x20]
02c8d16c  mov x1,x0
02c8d170  mov x0,x20
02c8d174  ldr x9,[x8, #0x558]
02c8d178  ldr x2,[x8, #0x560]
02c8d17c  blr x9
02c8d180  ldr x0,[x19, #0x60]
02c8d184  cbz x0,0x02c8d3c8
02c8d188  ldrb w1,[x19, #0x58]
02c8d18c  mov x2,xzr
02c8d190  bl 0x057dff3c
02c8d194  ldr x0,[x19, #0x68]
02c8d198  cbz x0,0x02c8d3c8
02c8d19c  ldrb w8,[x19, #0x58]
02c8d1a0  adrp x21,0x5e5e000
02c8d1a4  adrp x20,0x5e63000
02c8d1a8  ldr x21,[x21, #0x528]
02c8d1ac  ldr x20,[x20, #0xf58]
02c8d1b0  mov x2,xzr
02c8d1b4  cmp w8,#0x0
02c8d1b8  cset w1,eq
02c8d1bc  bl 0x057dff3c
02c8d1c0  ldr x0,[x21]
02c8d1c4  ldr w8,[x0, #0xe4]
02c8d1c8  cbnz w8,0x02c8d1d0
02c8d1cc  bl 0x029f5bd0
02c8d1d0  ldr x0,[x20]
02c8d1d4  mov w1,#0x1
02c8d1d8  mov w2,wzr
02c8d1dc  mov w3,#0x1
02c8d1e0  mov w4,wzr
02c8d1e4  mov x5,xzr
02c8d1e8  mov x6,xzr
02c8d1ec  mov w7,#0x1
02c8d1f0  str xzr,[sp]
02c8d1f4  bl 0x02bccb00
02c8d1f8  mov x1,xzr
02c8d1fc  mov x21,x0
02c8d200  bl 0x046c0604
02c8d204  mov w8,w0
02c8d208  ldr x0,[x22]
02c8d20c  ldr x20,[x19, #0x50]
02c8d210  ldr w9,[x0, #0xe4]
02c8d214  tbz w8,#0x0,0x02c8d294
02c8d218  cbnz w9,0x02c8d220
02c8d21c  bl 0x029f5bd0
02c8d220  ldrb w8,[x23, #0x960]
02c8d224  cbnz w8,0x02c8d23c
02c8d228  adrp x0,0x5e5d000
02c8d22c  ldr x0,[x0, #0x920]
02c8d230  bl 0x029f5a50
02c8d234  mov w8,#0x1
02c8d238  strb w8,[x23, #0x960]
02c8d23c  ldr x0,[x22]
02c8d240  ldr w8,[x0, #0xe4]
02c8d244  cbnz w8,0x02c8d250
02c8d248  bl 0x029f5bd0
02c8d24c  ldr x0,[x22]
02c8d250  ldr x8,[x0, #0xb8]
02c8d254  ldr x8,[x8]
02c8d258  cbz x8,0x02c8d3c8
02c8d25c  bl 0x02c8d3cc
02c8d260  str w0,[sp, #0x1c]
02c8d264  add x0,sp,#0x1c
02c8d268  mov x1,xzr
02c8d26c  bl 0x0484e6a4
02c8d270  adrp x8,0x5e5d000
02c8d274  mov x1,x0
02c8d278  mov x2,xzr
02c8d27c  ldr x8,[x8, #0x528]
02c8d280  ldr x8,[x8]
02c8d284  mov x0,x8
02c8d288  bl 0x046b2d44
02c8d28c  cbnz x20,0x02c8d304
02c8d290  b 0x02c8d3c8
02c8d294  cbnz w9,0x02c8d29c
02c8d298  bl 0x029f5bd0
02c8d29c  ldrb w8,[x23, #0x960]
02c8d2a0  cbnz w8,0x02c8d2b8
02c8d2a4  adrp x0,0x5e5d000
02c8d2a8  ldr x0,[x0, #0x920]
02c8d2ac  bl 0x029f5a50
02c8d2b0  mov w8,#0x1
02c8d2b4  strb w8,[x23, #0x960]
02c8d2b8  ldr x0,[x22]
02c8d2bc  ldr w8,[x0, #0xe4]
02c8d2c0  cbnz w8,0x02c8d2cc
02c8d2c4  bl 0x029f5bd0
02c8d2c8  ldr x0,[x22]
02c8d2cc  ldr x8,[x0, #0xb8]
02c8d2d0  ldr x8,[x8]
02c8d2d4  cbz x8,0x02c8d3c8
02c8d2d8  bl 0x02c8d3cc
02c8d2dc  ldr x8,[x24, #0x48]
02c8d2e0  str w0,[sp, #0x18]
02c8d2e4  add x1,sp,#0x18
02c8d2e8  mov x0,x8
02c8d2ec  bl 0x029f5bd8
02c8d2f0  mov x1,x0
02c8d2f4  mov x0,x21
02c8d2f8  mov x2,xzr
02c8d2fc  bl 0x046b6c0c
02c8d300  cbz x20,0x02c8d3c8
02c8d304  ldr x8,[x20]
02c8d308  mov x1,x0
02c8d30c  mov x0,x20
02c8d310  ldr x9,[x8, #0x558]
02c8d314  ldr x2,[x8, #0x560]
02c8d318  blr x9
02c8d31c  ldr x0,[x22]
02c8d320  ldr w8,[x0, #0xe4]
02c8d324  cbnz w8,0x02c8d330
02c8d328  bl 0x029f5bd0
02c8d32c  ldr x0,[x22]
02c8d330  ldr x8,[x0, #0xb8]
02c8d334  ldrb w9,[x8, #0x9]
02c8d338  cbz w9,0x02c8d368
02c8d33c  ldr w9,[x0, #0xe4]
02c8d340  cbnz w9,0x02c8d350
02c8d344  bl 0x029f5bd0
02c8d348  ldr x8,[x22]
02c8d34c  ldr x8,[x8, #0xb8]
02c8d350  ldrb w8,[x8, #0x8]
02c8d354  ldr x0,[x19, #0x30]
02c8d358  cbz w8,0x02c8d38c
02c8d35c  cbz x0,0x02c8d3c8
02c8d360  mov w1,#0x1
02c8d364  b 0x02c8d394
02c8d368  ldr x0,[x19, #0x30]
02c8d36c  cbz x0,0x02c8d3c8
02c8d370  mov w1,#0x1
02c8d374  mov x2,xzr
02c8d378  bl 0x057dff3c
02c8d37c  ldr x0,[x19, #0x38]
02c8d380  cbz x0,0x02c8d3c8
02c8d384  mov w1,wzr
02c8d388  b 0x02c8d3a8
02c8d38c  cbz x0,0x02c8d3c8
02c8d390  mov w1,wzr
02c8d394  mov x2,xzr
02c8d398  bl 0x057dff3c
02c8d39c  ldr x0,[x19, #0x38]
02c8d3a0  cbz x0,0x02c8d3c8
02c8d3a4  mov w1,#0x1
02c8d3a8  mov x2,xzr
02c8d3ac  bl 0x057dff3c
02c8d3b0  ldp x20,x19,[sp, #0x50]
02c8d3b4  ldp x22,x21,[sp, #0x40]
02c8d3b8  ldp x24,x23,[sp, #0x30]
02c8d3bc  ldp x30,x25,[sp, #0x20]
02c8d3c0  add sp,sp,#0x60
02c8d3c4  ret
02c8d3c8  bl 0x029f5cfc
