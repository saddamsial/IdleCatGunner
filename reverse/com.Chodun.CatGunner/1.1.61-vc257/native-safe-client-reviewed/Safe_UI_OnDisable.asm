02c6cf78  stp x30,x23,[sp, #-0x30]!
02c6cf7c  stp x22,x21,[sp, #0x10]
02c6cf80  stp x20,x19,[sp, #0x20]
02c6cf84  adrp x22,0x625c000
02c6cf88  adrp x23,0x5e59000
02c6cf8c  adrp x20,0x5e63000
02c6cf90  adrp x21,0x5e5d000
02c6cf94  ldr x23,[x23, #0x288]
02c6cf98  ldrb w8,[x22, #0x2a0]
02c6cf9c  ldr x20,[x20, #0xb08]
02c6cfa0  ldr x21,[x21, #0x338]
02c6cfa4  mov x19,x0
02c6cfa8  tbnz w8,#0x0,0x02c6cfd8
02c6cfac  adrp x0,0x5e59000
02c6cfb0  ldr x0,[x0, #0x288]
02c6cfb4  bl 0x029f5a50
02c6cfb8  adrp x0,0x5e5d000
02c6cfbc  ldr x0,[x0, #0x338]
02c6cfc0  bl 0x029f5a50
02c6cfc4  adrp x0,0x5e63000
02c6cfc8  ldr x0,[x0, #0xb08]
02c6cfcc  bl 0x029f5a50
02c6cfd0  mov w8,#0x1
02c6cfd4  strb w8,[x22, #0x2a0]
02c6cfd8  ldr x0,[x23]
02c6cfdc  bl 0x029f5cec
02c6cfe0  ldr x2,[x20]
02c6cfe4  mov x1,x19
02c6cfe8  mov x3,xzr
02c6cfec  mov x20,x0
02c6cff0  bl 0x047b3618
02c6cff4  ldr x0,[x21]
02c6cff8  ldr w8,[x0, #0xe4]
02c6cffc  cbnz w8,0x02c6d004
02c6d000  bl 0x029f5bd0
02c6d004  mov x0,x20
02c6d008  ldp x20,x19,[sp, #0x20]
02c6d00c  ldp x22,x21,[sp, #0x10]
02c6d010  mov x1,xzr
02c6d014  ldp x30,x23,[sp], #0x30
02c6d018  b 0x02b7af90
