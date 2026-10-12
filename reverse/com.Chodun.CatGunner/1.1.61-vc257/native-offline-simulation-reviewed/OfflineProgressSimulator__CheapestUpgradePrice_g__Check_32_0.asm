02c09ea0  sub sp,sp,#0x40
02c09ea4  stp x30,x21,[sp, #0x20]
02c09ea8  stp x20,x19,[sp, #0x30]
02c09eac  adrp x21,0x625b000
02c09eb0  mov x19,x1
02c09eb4  mov w20,w0
02c09eb8  ldrb w8,[x21, #0xe90]
02c09ebc  tbnz w8,#0x0,0x02c09ed4
02c09ec0  adrp x0,0x5e62000
02c09ec4  ldr x0,[x0, #0x40]
02c09ec8  bl 0x029f5a50
02c09ecc  mov w8,#0x1
02c09ed0  strb w8,[x21, #0xe90]
02c09ed4  movi v0.2D,#0x0
02c09ed8  mov w8,#0x270f
02c09edc  cmp w20,w8
02c09ee0  stp q0,q0,[sp]
02c09ee4  b.gt 0x02c09f48
02c09ee8  adrp x8,0x5e62000
02c09eec  ldr x8,[x8, #0x40]
02c09ef0  ldr x0,[x8]
02c09ef4  ldr w8,[x0, #0xe4]
02c09ef8  cbnz w8,0x02c09f00
02c09efc  bl 0x029f5bd0
02c09f00  mov x8,sp
02c09f04  mov w0,w20
02c09f08  bl 0x02c09dd8
02c09f0c  ldrb w8,[x19]
02c09f10  cbz w8,0x02c09f28
02c09f14  mov x0,sp
02c09f18  add x1,x19,#0x8
02c09f1c  mov x2,xzr
02c09f20  bl 0x046595c4
02c09f24  tbz w0,#0x0,0x02c09f48
02c09f28  ldp q0,q1,[sp]
02c09f2c  add x0,x19,#0x8
02c09f30  mov x1,xzr
02c09f34  stur q0,[x19, #0x8]
02c09f38  stur q1,[x19, #0x18]
02c09f3c  bl 0x029f59f4
02c09f40  mov w8,#0x1
02c09f44  strb w8,[x19]
02c09f48  ldp x20,x19,[sp, #0x30]
02c09f4c  ldp x30,x21,[sp, #0x20]
02c09f50  add sp,sp,#0x40
02c09f54  ret
