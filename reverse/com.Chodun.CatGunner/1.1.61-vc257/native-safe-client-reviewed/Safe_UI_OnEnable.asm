02c6cecc  stp x30,x23,[sp, #-0x30]!
02c6ced0  stp x22,x21,[sp, #0x10]
02c6ced4  stp x20,x19,[sp, #0x20]
02c6ced8  adrp x22,0x625c000
02c6cedc  adrp x23,0x5e59000
02c6cee0  adrp x20,0x5e63000
02c6cee4  adrp x21,0x5e5d000
02c6cee8  ldr x23,[x23, #0x288]
02c6ceec  ldrb w8,[x22, #0x29f]
02c6cef0  ldr x20,[x20, #0xb08]
02c6cef4  ldr x21,[x21, #0x338]
02c6cef8  mov x19,x0
02c6cefc  tbnz w8,#0x0,0x02c6cf2c
02c6cf00  adrp x0,0x5e59000
02c6cf04  ldr x0,[x0, #0x288]
02c6cf08  bl 0x029f5a50
02c6cf0c  adrp x0,0x5e5d000
02c6cf10  ldr x0,[x0, #0x338]
02c6cf14  bl 0x029f5a50
02c6cf18  adrp x0,0x5e63000
02c6cf1c  ldr x0,[x0, #0xb08]
02c6cf20  bl 0x029f5a50
02c6cf24  mov w8,#0x1
02c6cf28  strb w8,[x22, #0x29f]
02c6cf2c  ldr x0,[x23]
02c6cf30  bl 0x029f5cec
02c6cf34  ldr x2,[x20]
02c6cf38  mov x1,x19
02c6cf3c  mov x3,xzr
02c6cf40  mov x20,x0
02c6cf44  bl 0x047b3618
02c6cf48  ldr x0,[x21]
02c6cf4c  ldr w8,[x0, #0xe4]
02c6cf50  cbnz w8,0x02c6cf58
02c6cf54  bl 0x029f5bd0
02c6cf58  mov x0,x20
02c6cf5c  mov x1,xzr
02c6cf60  bl 0x02b7aeb4
02c6cf64  mov x0,x19
02c6cf68  ldp x20,x19,[sp, #0x20]
02c6cf6c  ldp x22,x21,[sp, #0x10]
02c6cf70  ldp x30,x23,[sp], #0x30
02c6cf74  b 0x02c6c5c4
