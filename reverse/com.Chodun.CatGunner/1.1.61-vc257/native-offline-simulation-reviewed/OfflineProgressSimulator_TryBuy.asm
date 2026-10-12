02c09d04  sub sp,sp,#0x60
02c09d08  stp x30,x21,[sp, #0x40]
02c09d0c  stp x20,x19,[sp, #0x50]
02c09d10  adrp x21,0x625b000
02c09d14  mov x20,x1
02c09d18  mov x19,x0
02c09d1c  ldrb w8,[x21, #0xe84]
02c09d20  tbnz w8,#0x0,0x02c09d38
02c09d24  adrp x0,0x5e62000
02c09d28  ldr x0,[x0, #0x40]
02c09d2c  bl 0x029f5a50
02c09d30  mov w8,#0x1
02c09d34  strb w8,[x21, #0xe84]
02c09d38  movi v0.2D,#0x0
02c09d3c  ldr w21,[x19]
02c09d40  mov w8,#0x270f
02c09d44  cmp w21,w8
02c09d48  stp q0,q0,[sp, #0x20]
02c09d4c  b.gt 0x02c09d88
02c09d50  adrp x8,0x5e62000
02c09d54  ldr x8,[x8, #0x40]
02c09d58  ldr x0,[x8]
02c09d5c  ldr w8,[x0, #0xe4]
02c09d60  cbnz w8,0x02c09d68
02c09d64  bl 0x029f5bd0
02c09d68  add x8,sp,#0x20
02c09d6c  mov w0,w21
02c09d70  bl 0x02c09dd8
02c09d74  add x1,sp,#0x20
02c09d78  mov x0,x20
02c09d7c  mov x2,xzr
02c09d80  bl 0x046595c4
02c09d84  tbz w0,#0x0,0x02c09d90
02c09d88  mov w0,wzr
02c09d8c  b 0x02c09dc8
02c09d90  mov x8,sp
02c09d94  add x1,sp,#0x20
02c09d98  mov x0,x20
02c09d9c  mov x2,xzr
02c09da0  bl 0x04658270
02c09da4  ldp q0,q1,[sp]
02c09da8  mov x0,x20
02c09dac  mov x1,xzr
02c09db0  stp q0,q1,[x20]
02c09db4  bl 0x029f59f4
02c09db8  ldr w8,[x19]
02c09dbc  mov w0,#0x1
02c09dc0  add w8,w8,#0x1
02c09dc4  str w8,[x19]
02c09dc8  ldp x20,x19,[sp, #0x50]
02c09dcc  ldp x30,x21,[sp, #0x40]
02c09dd0  add sp,sp,#0x60
02c09dd4  ret
