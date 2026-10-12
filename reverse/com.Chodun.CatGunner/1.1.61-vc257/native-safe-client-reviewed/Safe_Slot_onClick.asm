02c6cc38  str x30,[sp, #-0x20]!
02c6cc3c  stp x20,x19,[sp, #0x10]
02c6cc40  adrp x20,0x625c000
02c6cc44  mov x19,x0
02c6cc48  ldrb w8,[x20, #0x29c]
02c6cc4c  tbnz w8,#0x0,0x02c6cc64
02c6cc50  adrp x0,0x5e63000
02c6cc54  ldr x0,[x0, #0xb00]
02c6cc58  bl 0x029f5a50
02c6cc5c  mov w8,#0x1
02c6cc60  strb w8,[x20, #0x29c]
02c6cc64  ldr w8,[x19, #0x78]
02c6cc68  cbz w8,0x02c6cc9c
02c6cc6c  cmp w8,#0x1
02c6cc70  b.eq 0x02c6cc8c
02c6cc74  cmp w8,#0x3
02c6cc78  b.ne 0x02c6cd08
02c6cc7c  mov x0,x19
02c6cc80  ldp x20,x19,[sp, #0x10]
02c6cc84  ldr x30,[sp], #0x20
02c6cc88  b 0x02c6cd18
02c6cc8c  mov x0,x19
02c6cc90  ldp x20,x19,[sp, #0x10]
02c6cc94  ldr x30,[sp], #0x20
02c6cc98  b 0x02c6cdf0
02c6cc9c  adrp x8,0x5e63000
02c6cca0  ldr x8,[x8, #0xb00]
02c6cca4  ldr x0,[x8]
02c6cca8  bl 0x02c68dbc
02c6ccac  mov x1,xzr
02c6ccb0  bl 0x02c1dd54
02c6ccb4  adrp x19,0x625b000
02c6ccb8  ldrb w8,[x19, #0xa57]
02c6ccbc  cbnz w8,0x02c6ccd4
02c6ccc0  adrp x0,0x5e5d000
02c6ccc4  ldr x0,[x0, #0xd70]
02c6ccc8  bl 0x029f5a50
02c6cccc  mov w8,#0x1
02c6ccd0  strb w8,[x19, #0xa57]
02c6ccd4  adrp x8,0x5e5d000
02c6ccd8  ldr x8,[x8, #0xd70]
02c6ccdc  ldr x8,[x8]
02c6cce0  ldr x8,[x8, #0xb8]
02c6cce4  ldr x0,[x8]
02c6cce8  cbz x0,0x02c6cd14
02c6ccec  ldp x20,x19,[sp, #0x10]
02c6ccf0  fmov s0,0x3f800000
02c6ccf4  mov w1,#0x5
02c6ccf8  mov x2,xzr
02c6ccfc  mov x3,xzr
02c6cd00  ldr x30,[sp], #0x20
02c6cd04  b 0x02c1f10c
02c6cd08  ldp x20,x19,[sp, #0x10]
02c6cd0c  ldr x30,[sp], #0x20
02c6cd10  ret
02c6cd14  bl 0x029f5cfc
