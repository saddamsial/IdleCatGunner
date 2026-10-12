02c88ee0  sub sp,sp,#0xd0
02c88ee4  stp x30,x21,[sp, #0xb0]
02c88ee8  stp x20,x19,[sp, #0xc0]
02c88eec  adrp x20,0x625c000
02c88ef0  adrp x21,0x5e5d000
02c88ef4  mov x19,x0
02c88ef8  ldrb w8,[x20, #0x394]
02c88efc  ldr x21,[x21, #0xd60]
02c88f00  tbnz w8,#0x0,0x02c88f3c
02c88f04  adrp x0,0x5e5e000
02c88f08  ldr x0,[x0, #0x528]
02c88f0c  bl 0x029f5a50
02c88f10  adrp x0,0x5e5d000
02c88f14  ldr x0,[x0, #0xd60]
02c88f18  bl 0x029f5a50
02c88f1c  adrp x0,0x5e5d000
02c88f20  ldr x0,[x0, #0xc20]
02c88f24  bl 0x029f5a50
02c88f28  adrp x0,0x5e63000
02c88f2c  ldr x0,[x0, #0xeb8]
02c88f30  bl 0x029f5a50
02c88f34  mov w8,#0x1
02c88f38  strb w8,[x20, #0x394]
02c88f3c  movi v0.2D,#0x0
02c88f40  ldr x8,[x21]
02c88f44  ldr x8,[x8, #0xb8]
02c88f48  stp q0,q0,[sp, #0x50]
02c88f4c  stp q0,q0,[sp, #0x70]
02c88f50  stp q0,q0,[sp, #0x90]
02c88f54  ldr x20,[x8]
02c88f58  cbz x20,0x02c890b8
02c88f5c  mov x0,x20
02c88f60  bl 0x02c883a0
02c88f64  ldr w8,[x20, #0x4c]
02c88f68  cmp w8,#0x1
02c88f6c  b.lt 0x02c88f84
02c88f70  mov x0,x19
02c88f74  ldp x20,x19,[sp, #0xc0]
02c88f78  ldp x30,x21,[sp, #0xb0]
02c88f7c  add sp,sp,#0xd0
02c88f80  b 0x02c8785c
02c88f84  adrp x20,0x5e5d000
02c88f88  ldr x20,[x20, #0xc20]
02c88f8c  ldr x0,[x20]
02c88f90  ldr w8,[x0, #0xe4]
02c88f94  cbnz w8,0x02c88fa0
02c88f98  bl 0x029f5bd0
02c88f9c  ldr x0,[x20]
02c88fa0  ldr x8,[x0, #0xb8]
02c88fa4  ldr x8,[x8, #0x10]
02c88fa8  cbz x8,0x02c890b8
02c88fac  ldr w8,[x8, #0x28]
02c88fb0  cmp w8,#0x1
02c88fb4  b.le 0x02c8905c
02c88fb8  ldr x8,[x21]
02c88fbc  ldr x8,[x8, #0xb8]
02c88fc0  ldr x8,[x8]
02c88fc4  cbz x8,0x02c890b8
02c88fc8  mov w9,#0x1
02c88fcc  strb w9,[x8, #0x48]
02c88fd0  add x8,sp,#0x70
02c88fd4  bl 0x02c88058
02c88fd8  add x8,sp,#0x30
02c88fdc  mov w0,#0x3
02c88fe0  mov x1,xzr
02c88fe4  bl 0x046544b8
02c88fe8  ldp q0,q1,[sp, #0x30]
02c88fec  add x8,sp,#0x10
02c88ff0  add x0,sp,#0x70
02c88ff4  add x1,sp,#0x50
02c88ff8  mov x2,xzr
02c88ffc  stp q0,q1,[sp, #0x50]
02c89000  bl 0x04658538
02c89004  ldp q0,q1,[sp, #0x10]
02c89008  ldr x0,[x19, #0x68]
02c8900c  stp q0,q1,[sp, #0x90]
02c89010  cbz x0,0x02c890b8
02c89014  mov w1,#0x1
02c89018  mov x2,xzr
02c8901c  bl 0x057dff3c
02c89020  ldr x19,[x19, #0x70]
02c89024  add x0,sp,#0x90
02c89028  mov x1,xzr
02c8902c  bl 0x0465bddc
02c89030  cbz x19,0x02c890b8
02c89034  ldr x8,[x19]
02c89038  mov x1,x0
02c8903c  mov x0,x19
02c89040  ldr x9,[x8, #0x558]
02c89044  ldr x2,[x8, #0x560]
02c89048  blr x9
02c8904c  ldp x20,x19,[sp, #0xc0]
02c89050  ldp x30,x21,[sp, #0xb0]
02c89054  add sp,sp,#0xd0
02c89058  ret
02c8905c  adrp x8,0x5e5e000
02c89060  ldr x8,[x8, #0x528]
02c89064  ldr x0,[x8]
02c89068  ldr w8,[x0, #0xe4]
02c8906c  cbnz w8,0x02c89074
02c89070  bl 0x029f5bd0
02c89074  adrp x8,0x5e63000
02c89078  mov w1,#0x1
02c8907c  mov w2,wzr
02c89080  ldr x8,[x8, #0xeb8]
02c89084  mov w3,#0x1
02c89088  mov w4,wzr
02c8908c  mov x5,xzr
02c89090  mov x6,xzr
02c89094  mov w7,#0x1
02c89098  ldr x0,[x8]
02c8909c  str xzr,[sp]
02c890a0  bl 0x02bccb00
02c890a4  ldp x20,x19,[sp, #0xc0]
02c890a8  mov x1,xzr
02c890ac  ldp x30,x21,[sp, #0xb0]
02c890b0  add sp,sp,#0xd0
02c890b4  b 0x02c1dd54
02c890b8  bl 0x029f5cfc
