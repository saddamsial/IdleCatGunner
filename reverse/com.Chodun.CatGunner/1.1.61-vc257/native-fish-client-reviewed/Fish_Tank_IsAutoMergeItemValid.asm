02c63e78  str x30,[sp, #-0x30]!
02c63e7c  stp x22,x21,[sp, #0x10]
02c63e80  stp x20,x19,[sp, #0x20]
02c63e84  adrp x21,0x625c000
02c63e88  adrp x22,0x5e59000
02c63e8c  mov w19,w2
02c63e90  ldrb w8,[x21, #0x23d]
02c63e94  ldr x22,[x22, #0x1c0]
02c63e98  mov x20,x1
02c63e9c  tbnz w8,#0x0,0x02c63ed8
02c63ea0  adrp x0,0x5e5d000
02c63ea4  ldr x0,[x0, #0xd38]
02c63ea8  bl 0x029f5a50
02c63eac  adrp x0,0x5e62000
02c63eb0  ldr x0,[x0, #0xfe8]
02c63eb4  bl 0x029f5a50
02c63eb8  adrp x0,0x5e63000
02c63ebc  ldr x0,[x0, #0x128]
02c63ec0  bl 0x029f5a50
02c63ec4  adrp x0,0x5e59000
02c63ec8  ldr x0,[x0, #0x1c0]
02c63ecc  bl 0x029f5a50
02c63ed0  mov w8,#0x1
02c63ed4  strb w8,[x21, #0x23d]
02c63ed8  ldr x0,[x22]
02c63edc  ldr w8,[x0, #0xe4]
02c63ee0  cbnz w8,0x02c63ee8
02c63ee4  bl 0x029f5bd0
02c63ee8  mov x0,x20
02c63eec  mov x1,xzr
02c63ef0  mov x2,xzr
02c63ef4  bl 0x057e14b4
02c63ef8  tbnz w0,#0x0,0x02c63f2c
02c63efc  cbz x20,0x02c63f90
02c63f00  ldrb w8,[x20, #0x48]
02c63f04  cbz w8,0x02c63f2c
02c63f08  ldrb w8,[x20, #0x86]
02c63f0c  cbz w8,0x02c63f2c
02c63f10  ldr w8,[x20, #0x40]
02c63f14  cmp w8,w19
02c63f18  b.ne 0x02c63f2c
02c63f1c  ldrb w8,[x20, #0x84]
02c63f20  cbnz w8,0x02c63f2c
02c63f24  ldrb w8,[x20, #0x49]
02c63f28  cbz w8,0x02c63f40
02c63f2c  mov w0,wzr
02c63f30  ldp x20,x19,[sp, #0x20]
02c63f34  ldp x22,x21,[sp, #0x10]
02c63f38  ldr x30,[sp], #0x30
02c63f3c  ret
02c63f40  adrp x8,0x5e5d000
02c63f44  ldr x8,[x8, #0xd38]
02c63f48  ldr x8,[x8]
02c63f4c  ldr x8,[x8, #0xb8]
02c63f50  ldr x8,[x8]
02c63f54  cbz x8,0x02c63f90
02c63f58  ldr w1,[x20, #0x44]
02c63f5c  tbnz w1,#0x1f,0x02c63f2c
02c63f60  ldr x0,[x8, #0x90]
02c63f64  cbz x0,0x02c63f90
02c63f68  ldr w8,[x0, #0x18]
02c63f6c  cmp w1,w8
02c63f70  b.ge 0x02c63f2c
02c63f74  adrp x8,0x5e63000
02c63f78  ldr x8,[x8, #0x128]
02c63f7c  ldr x2,[x8]
02c63f80  bl 0x044f7718
02c63f84  cmp w0,w19
02c63f88  cset w0,eq
02c63f8c  b 0x02c63f30
02c63f90  bl 0x029f5cfc
