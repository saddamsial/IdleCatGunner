02c07084  sub sp,sp,#0x90
02c07088  str x30,[sp, #0x60]
02c0708c  stp x22,x21,[sp, #0x70]
02c07090  stp x20,x19,[sp, #0x80]
02c07094  adrp x20,0x625b000
02c07098  mov x19,x0
02c0709c  ldrb w8,[x20, #0xe7e]
02c070a0  tbnz w8,#0x0,0x02c070dc
02c070a4  adrp x0,0x5e5d000
02c070a8  ldr x0,[x0, #0x338]
02c070ac  bl 0x029f5a50
02c070b0  adrp x0,0x5e5d000
02c070b4  ldr x0,[x0, #0x790]
02c070b8  bl 0x029f5a50
02c070bc  adrp x0,0x5e5d000
02c070c0  ldr x0,[x0, #0xc20]
02c070c4  bl 0x029f5a50
02c070c8  adrp x0,0x5e5d000
02c070cc  ldr x0,[x0, #0x4e8]
02c070d0  bl 0x029f5a50
02c070d4  mov w8,#0x1
02c070d8  strb w8,[x20, #0xe7e]
02c070dc  cbz x19,0x02c07234
02c070e0  adrp x22,0x5e5d000
02c070e4  adrp x20,0x5e5d000
02c070e8  ldr x22,[x22, #0x338]
02c070ec  ldur q0,[x19, #0x38]
02c070f0  ldur q1,[x19, #0x48]
02c070f4  ldr x0,[x22]
02c070f8  ldr w8,[x0, #0xe4]
02c070fc  ldr x20,[x20, #0x4e8]
02c07100  stp q0,q1,[sp, #0x40]
02c07104  cbnz w8,0x02c07110
02c07108  bl 0x029f5bd0
02c0710c  ldr x0,[x22]
02c07110  ldp q0,q1,[sp, #0x40]
02c07114  adrp x21,0x5e5d000
02c07118  ldr x8,[x0, #0xb8]
02c0711c  mov x1,xzr
02c07120  stp q0,q1,[x8, #0x30]
02c07124  ldr x21,[x21, #0x790]
02c07128  ldr x8,[x0, #0xb8]
02c0712c  add x0,x8,#0x30
02c07130  bl 0x029f59f4
02c07134  ldr x8,[x22]
02c07138  ldur q0,[x19, #0x58]
02c0713c  mov x1,xzr
02c07140  ldur q1,[x19, #0x68]
02c07144  ldr x9,[x8, #0xb8]
02c07148  stp q0,q1,[x9, #0x50]
02c0714c  ldr x8,[x8, #0xb8]
02c07150  add x0,x8,#0x50
02c07154  bl 0x029f59f4
02c07158  mov x0,xzr
02c0715c  bl 0x02b7dcfc
02c07160  add x8,sp,#0x20
02c07164  mov w0,wzr
02c07168  mov x1,xzr
02c0716c  bl 0x046544b8
02c07170  ldp q0,q1,[sp, #0x20]
02c07174  mov x0,sp
02c07178  mov x1,xzr
02c0717c  stp q0,q1,[sp]
02c07180  bl 0x02b7e718
02c07184  ldr x0,[x20]
02c07188  ldr w8,[x0, #0xe4]
02c0718c  cbnz w8,0x02c07198
02c07190  bl 0x029f5bd0
02c07194  ldr x0,[x20]
02c07198  ldr x8,[x0, #0xb8]
02c0719c  ldr x0,[x21]
02c071a0  mov w1,#0x3
02c071a4  ldr x20,[x8]
02c071a8  bl 0x029f5b40
02c071ac  cbz x0,0x02c0724c
02c071b0  ldr w8,[x0, #0x18]
02c071b4  mov x1,x0
02c071b8  cbz w8,0x02c07248
02c071bc  ldr w9,[x19, #0x78]
02c071c0  cmp w8,#0x1
02c071c4  str w9,[x1, #0x20]
02c071c8  b.eq 0x02c07248
02c071cc  ldr w9,[x19, #0x7c]
02c071d0  cmp w8,#0x2
02c071d4  str w9,[x1, #0x24]
02c071d8  b.ls 0x02c07248
02c071dc  ldr w8,[x19, #0x80]
02c071e0  str w8,[x1, #0x28]
02c071e4  cbz x20,0x02c0724c
02c071e8  adrp x21,0x5e5d000
02c071ec  mov x0,x20
02c071f0  mov x2,xzr
02c071f4  ldr x21,[x21, #0xc20]
02c071f8  bl 0x02cb245c
02c071fc  ldr x0,[x21]
02c07200  ldr w8,[x0, #0xe4]
02c07204  cbnz w8,0x02c07210
02c07208  bl 0x029f5bd0
02c0720c  ldr x0,[x21]
02c07210  ldr x8,[x0, #0xb8]
02c07214  ldr x0,[x8, #0x10]
02c07218  cbz x0,0x02c0724c
02c0721c  ldr d0,[x19, #0x90]
02c07220  mov x1,xzr
02c07224  str d0,[x0, #0x28]
02c07228  ldr w8,[x19, #0x98]
02c0722c  str w8,[x0, #0x30]
02c07230  bl 0x02cac9cc
02c07234  ldp x20,x19,[sp, #0x80]
02c07238  ldr x30,[sp, #0x60]
02c0723c  ldp x22,x21,[sp, #0x70]
02c07240  add sp,sp,#0x90
02c07244  ret
02c07248  bl 0x029f5d04
02c0724c  bl 0x029f5cfc
