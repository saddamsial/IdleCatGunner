02cb0ecc  sub sp,sp,#0x50
02cb0ed0  str x30,[sp, #0x20]
02cb0ed4  stp x22,x21,[sp, #0x30]
02cb0ed8  stp x20,x19,[sp, #0x40]
02cb0edc  adrp x21,0x625c000
02cb0ee0  adrp x22,0x5e5d000
02cb0ee4  mov w20,w1
02cb0ee8  ldrb w8,[x21, #0x548]
02cb0eec  ldr x22,[x22, #0x4e8]
02cb0ef0  mov x19,x0
02cb0ef4  tbnz w8,#0x0,0x02cb0f24
02cb0ef8  adrp x0,0x5e5d000
02cb0efc  ldr x0,[x0, #0x4e8]
02cb0f00  bl 0x029f5a50
02cb0f04  adrp x0,0x5e61000
02cb0f08  ldr x0,[x0, #0xf18]
02cb0f0c  bl 0x029f5a50
02cb0f10  adrp x0,0x5e63000
02cb0f14  ldr x0,[x0, #0x80]
02cb0f18  bl 0x029f5a50
02cb0f1c  mov w8,#0x1
02cb0f20  strb w8,[x21, #0x548]
02cb0f24  ldr x0,[x22]
02cb0f28  ldr w21,[x19, #0x20]
02cb0f2c  str w20,[x19, #0xbc]
02cb0f30  ldr w8,[x0, #0xe4]
02cb0f34  cbnz w8,0x02cb0f3c
02cb0f38  bl 0x029f5bd0
02cb0f3c  mov w0,w21
02cb0f40  bl 0x02cb1400
02cb0f44  ldr x8,[x22]
02cb0f48  and w9,w0,#0x1
02cb0f4c  strb w9,[x19, #0xb8]
02cb0f50  ldr x8,[x8, #0xb8]
02cb0f54  ldr x8,[x8]
02cb0f58  cbz x8,0x02cb10ac
02cb0f5c  ldr w1,[x19, #0x20]
02cb0f60  ldr x21,[x19, #0x48]
02cb0f64  bl 0x02cb1464
02cb0f68  cbz x21,0x02cb10ac
02cb0f6c  ldr x8,[x21]
02cb0f70  mov x1,x0
02cb0f74  mov x0,x21
02cb0f78  ldr x9,[x8, #0x558]
02cb0f7c  ldr x2,[x8, #0x560]
02cb0f80  blr x9
02cb0f84  ldr x0,[x19, #0x38]
02cb0f88  cbz x0,0x02cb10ac
02cb0f8c  adrp x8,0x5e61000
02cb0f90  scvtf s0,w20
02cb0f94  mov x2,xzr
02cb0f98  ldr x8,[x8, #0xf18]
02cb0f9c  ldr x1,[x8]
02cb0fa0  bl 0x055e2440
02cb0fa4  ldrb w8,[x19, #0xb8]
02cb0fa8  cbz w8,0x02cb1024
02cb0fac  ldr x0,[x19, #0x40]
02cb0fb0  cbz x0,0x02cb10ac
02cb0fb4  adrp x8,0x5e63000
02cb0fb8  ldr x8,[x8, #0x80]
02cb0fbc  ldr x9,[x0]
02cb0fc0  ldr x1,[x8]
02cb0fc4  ldr x8,[x9, #0x558]
02cb0fc8  ldr x2,[x9, #0x560]
02cb0fcc  blr x8
02cb0fd0  ldr x0,[x19, #0x40]
02cb0fd4  cbz x0,0x02cb10ac
02cb0fd8  ldr x8,[x0]
02cb0fdc  fmov s0,0x3f800000
02cb0fe0  fmov s1,0x3f800000
02cb0fe4  fmov s2,0x3f800000
02cb0fe8  fmov s3,0x3f800000
02cb0fec  ldr x9,[x8, #0x2a8]
02cb0ff0  ldr x1,[x8, #0x2b0]
02cb0ff4  blr x9
02cb0ff8  ldr x0,[x19, #0x30]
02cb0ffc  cbz x0,0x02cb10ac
02cb1000  mov w1,wzr
02cb1004  mov x2,xzr
02cb1008  bl 0x057dff3c
02cb100c  ldr x0,[x19, #0x28]
02cb1010  cbz x0,0x02cb10ac
02cb1014  movi d0,#0x0
02cb1018  mov x1,xzr
02cb101c  bl 0x02c28290
02cb1020  b 0x02cb1088
02cb1024  ldr x0,[x22]
02cb1028  ldr w20,[x19, #0x20]
02cb102c  ldr w8,[x0, #0xe4]
02cb1030  cbnz w8,0x02cb1038
02cb1034  bl 0x029f5bd0
02cb1038  mov x8,sp
02cb103c  mov w0,w20
02cb1040  bl 0x02cb0710
02cb1044  ldp q0,q1,[sp]
02cb1048  add x0,x19,#0x98
02cb104c  mov x1,xzr
02cb1050  stur q0,[x19, #0x98]
02cb1054  stur q1,[x19, #0xa8]
02cb1058  bl 0x029f59f4
02cb105c  ldr x20,[x19, #0x40]
02cb1060  add x0,x19,#0x98
02cb1064  mov x1,xzr
02cb1068  bl 0x0465bddc
02cb106c  cbz x20,0x02cb10ac
02cb1070  ldr x8,[x20]
02cb1074  mov x1,x0
02cb1078  mov x0,x20
02cb107c  ldr x9,[x8, #0x558]
02cb1080  ldr x2,[x8, #0x560]
02cb1084  blr x9
02cb1088  mov w8,#0xffffffff
02cb108c  mov w9,#0xbf800000
02cb1090  ldr x30,[sp, #0x20]
02cb1094  str w8,[x19, #0xc0]
02cb1098  ldp x22,x21,[sp, #0x30]
02cb109c  str w9,[x19, #0xc8]
02cb10a0  ldp x20,x19,[sp, #0x40]
02cb10a4  add sp,sp,#0x50
02cb10a8  ret
02cb10ac  bl 0x029f5cfc
