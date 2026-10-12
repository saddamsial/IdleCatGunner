02c2ef68  sub sp,sp,#0x30
02c2ef6c  stp x30,x21,[sp, #0x10]
02c2ef70  stp x20,x19,[sp, #0x20]
02c2ef74  adrp x21,0x625c000
02c2ef78  adrp x20,0x5e5d000
02c2ef7c  mov x19,x0
02c2ef80  ldrb w8,[x21, #0x17]
02c2ef84  ldr x20,[x20, #0x3c0]
02c2ef88  tbnz w8,#0x0,0x02c2efc4
02c2ef8c  adrp x0,0x5e59000
02c2ef90  ldr x0,[x0, #0x760]
02c2ef94  bl 0x029f5a50
02c2ef98  adrp x0,0x5e59000
02c2ef9c  ldr x0,[x0, #0x7d0]
02c2efa0  bl 0x029f5a50
02c2efa4  adrp x0,0x5e5d000
02c2efa8  ldr x0,[x0, #0x3c0]
02c2efac  bl 0x029f5a50
02c2efb0  adrp x0,0x5e5d000
02c2efb4  ldr x0,[x0, #0x3e0]
02c2efb8  bl 0x029f5a50
02c2efbc  mov w8,#0x1
02c2efc0  strb w8,[x21, #0x17]
02c2efc4  ldr x0,[x20]
02c2efc8  adrp x21,0x5e59000
02c2efcc  ldr w8,[x0, #0xe4]
02c2efd0  ldr x21,[x21, #0x760]
02c2efd4  str xzr,[sp, #0x8]
02c2efd8  cbnz w8,0x02c2efe0
02c2efdc  bl 0x029f5bd0
02c2efe0  adrp x20,0x5e59000
02c2efe4  ldr x20,[x20, #0x7d0]
02c2efe8  bl 0x02c25b48
02c2efec  ldr x8,[x21]
02c2eff0  str x0,[sp, #0x8]
02c2eff4  ldr w9,[x8, #0xe4]
02c2eff8  cbnz w9,0x02c2f004
02c2effc  mov x0,x8
02c2f000  bl 0x029f5bd0
02c2f004  adrp x21,0x5e5d000
02c2f008  mov x0,xzr
02c2f00c  ldr x21,[x21, #0x3e0]
02c2f010  bl 0x047e36ac
02c2f014  ldr x8,[x20]
02c2f018  mov x20,x0
02c2f01c  ldr w9,[x8, #0xe4]
02c2f020  cbnz w9,0x02c2f02c
02c2f024  mov x0,x8
02c2f028  bl 0x029f5bd0
02c2f02c  ldr x1,[x21]
02c2f030  add x0,sp,#0x8
02c2f034  mov x2,x20
02c2f038  mov x3,xzr
02c2f03c  bl 0x04832440
02c2f040  mov x20,x19
02c2f044  mov x21,x0
02c2f048  mov x2,xzr
02c2f04c  ldr x8,[x20, #0x80]!
02c2f050  mov x1,x21
02c2f054  mov x0,x8
02c2f058  bl 0x046b2ddc
02c2f05c  tbnz w0,#0x0,0x02c2f074
02c2f060  mov x0,x20
02c2f064  mov x1,x21
02c2f068  str x21,[x19, #0x80]
02c2f06c  bl 0x029f59f4
02c2f070  str wzr,[x19, #0x78]
02c2f074  ldp x20,x19,[sp, #0x20]
02c2f078  ldp x30,x21,[sp, #0x10]
02c2f07c  add sp,sp,#0x30
02c2f080  ret
