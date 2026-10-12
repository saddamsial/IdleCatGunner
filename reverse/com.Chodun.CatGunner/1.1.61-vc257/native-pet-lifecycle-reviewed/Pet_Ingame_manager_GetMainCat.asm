02c7ac48  str x30,[sp, #-0x20]!
02c7ac4c  stp x20,x19,[sp, #0x10]
02c7ac50  adrp x19,0x625c000
02c7ac54  adrp x20,0x5e5d000
02c7ac58  ldrb w8,[x19, #0x31d]
02c7ac5c  ldr x20,[x20, #0x5b0]
02c7ac60  tbnz w8,#0x0,0x02c7ac78
02c7ac64  adrp x0,0x5e5d000
02c7ac68  ldr x0,[x0, #0x5b0]
02c7ac6c  bl 0x029f5a50
02c7ac70  mov w8,#0x1
02c7ac74  strb w8,[x19, #0x31d]
02c7ac78  ldr x8,[x20]
02c7ac7c  ldr x8,[x8, #0xb8]
02c7ac80  ldr x8,[x8, #0x8]
02c7ac84  cbz x8,0x02c7aca4
02c7ac88  ldr x8,[x8, #0x20]
02c7ac8c  cbz x8,0x02c7aca4
02c7ac90  ldr x9,[x8, #0x18]
02c7ac94  cbz x9,0x02c7aca4
02c7ac98  cbz w9,0x02c7acb4
02c7ac9c  ldr x0,[x8, #0x20]
02c7aca0  b 0x02c7aca8
02c7aca4  mov x0,xzr
02c7aca8  ldp x20,x19,[sp, #0x10]
02c7acac  ldr x30,[sp], #0x20
02c7acb0  ret
02c7acb4  bl 0x029f5d04
