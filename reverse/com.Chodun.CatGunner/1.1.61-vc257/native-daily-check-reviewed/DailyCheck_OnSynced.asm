02b9ef30  stp x30,x21,[sp, #-0x20]!
02b9ef34  stp x20,x19,[sp, #0x10]
02b9ef38  adrp x21,0x625b000
02b9ef3c  adrp x20,0x5e5d000
02b9ef40  mov x19,x0
02b9ef44  ldrb w8,[x21, #0x9f5]
02b9ef48  ldr x20,[x20, #0x3c0]
02b9ef4c  tbnz w8,#0x0,0x02b9ef64
02b9ef50  adrp x0,0x5e5d000
02b9ef54  ldr x0,[x0, #0x3c0]
02b9ef58  bl 0x029f5a50
02b9ef5c  mov w8,#0x1
02b9ef60  strb w8,[x21, #0x9f5]
02b9ef64  ldr x0,[x20]
02b9ef68  ldr x20,[x19, #0x28]
02b9ef6c  ldr w8,[x0, #0xe4]
02b9ef70  cbnz w8,0x02b9ef78
02b9ef74  bl 0x029f5bd0
02b9ef78  mov x0,x20
02b9ef7c  mov x1,xzr
02b9ef80  bl 0x02c25ed8
02b9ef84  ldr x8,[x19, #0x78]
02b9ef88  str x0,[x19, #0x28]
02b9ef8c  mov x1,xzr
02b9ef90  mov x0,x8
02b9ef94  bl 0x02c25ed8
02b9ef98  mov x8,x0
02b9ef9c  mov x0,x19
02b9efa0  str x8,[x19, #0x78]
02b9efa4  ldp x20,x19,[sp, #0x10]
02b9efa8  ldp x30,x21,[sp], #0x20
02b9efac  b 0x02b9efb0
