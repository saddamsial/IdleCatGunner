02c4eef8  sub sp,sp,#0x80
02c4eefc  stp x30,x21,[sp, #0x60]
02c4ef00  stp x20,x19,[sp, #0x70]
02c4ef04  adrp x21,0x625c000
02c4ef08  adrp x20,0x5e5e000
02c4ef0c  mov x19,x0
02c4ef10  ldrb w8,[x21, #0x144]
02c4ef14  ldr x20,[x20, #0xb8]
02c4ef18  tbnz w8,#0x0,0x02c4ef3c
02c4ef1c  adrp x0,0x5e5d000
02c4ef20  ldr x0,[x0, #0x338]
02c4ef24  bl 0x029f5a50
02c4ef28  adrp x0,0x5e5e000
02c4ef2c  ldr x0,[x0, #0xb8]
02c4ef30  bl 0x029f5a50
02c4ef34  mov w8,#0x1
02c4ef38  strb w8,[x21, #0x144]
02c4ef3c  movi v0.2D,#0x0
02c4ef40  ldr x0,[x20]
02c4ef44  ldr w8,[x0, #0xe4]
02c4ef48  stp q0,q0,[sp, #0x20]
02c4ef4c  stp q0,q0,[sp, #0x40]
02c4ef50  cbnz w8,0x02c4ef58
02c4ef54  bl 0x029f5bd0
02c4ef58  mov w0,#0x2
02c4ef5c  mov x1,xzr
02c4ef60  bl 0x02c9077c
02c4ef64  tbz w0,#0x0,0x02c4efb8
02c4ef68  adrp x8,0x5e5d000
02c4ef6c  ldr x8,[x8, #0x338]
02c4ef70  ldr x0,[x8]
02c4ef74  ldr w8,[x0, #0xe4]
02c4ef78  cbnz w8,0x02c4ef80
02c4ef7c  bl 0x029f5bd0
02c4ef80  mov x8,sp
02c4ef84  mov x0,xzr
02c4ef88  bl 0x02b80ff8
02c4ef8c  ldp q0,q1,[sp]
02c4ef90  add x8,sp,#0x20
02c4ef94  ldp w1,w2,[x19, #0x20]
02c4ef98  mov x0,x19
02c4ef9c  stp q0,q1,[sp, #0x40]
02c4efa0  bl 0x02c4ec08
02c4efa4  add x0,sp,#0x40
02c4efa8  add x1,sp,#0x20
02c4efac  mov x2,xzr
02c4efb0  bl 0x04654530
02c4efb4  b 0x02c4efbc
02c4efb8  mov w0,wzr
02c4efbc  ldp x20,x19,[sp, #0x70]
02c4efc0  and w0,w0,#0x1
02c4efc4  ldp x30,x21,[sp, #0x60]
02c4efc8  add sp,sp,#0x80
02c4efcc  ret
