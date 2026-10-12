02c4be44  stp x30,x23,[sp, #-0x30]!
02c4be48  stp x22,x21,[sp, #0x10]
02c4be4c  stp x20,x19,[sp, #0x20]
02c4be50  adrp x20,0x625c000
02c4be54  adrp x23,0x5e5d000
02c4be58  adrp x22,0x5e59000
02c4be5c  adrp x21,0x5e63000
02c4be60  ldr x23,[x23, #0x910]
02c4be64  ldrb w8,[x20, #0x125]
02c4be68  ldr x22,[x22, #0x288]
02c4be6c  ldr x21,[x21, #0x458]
02c4be70  mov x19,x0
02c4be74  tbnz w8,#0x0,0x02c4beb0
02c4be78  adrp x0,0x5e59000
02c4be7c  ldr x0,[x0, #0x288]
02c4be80  bl 0x029f5a50
02c4be84  adrp x0,0x5e5d000
02c4be88  ldr x0,[x0, #0x910]
02c4be8c  bl 0x029f5a50
02c4be90  adrp x0,0x5e63000
02c4be94  ldr x0,[x0, #0x458]
02c4be98  bl 0x029f5a50
02c4be9c  adrp x0,0x5e63000
02c4bea0  ldr x0,[x0, #0x460]
02c4bea4  bl 0x029f5a50
02c4bea8  mov w8,#0x1
02c4beac  strb w8,[x20, #0x125]
02c4beb0  ldr x8,[x23]
02c4beb4  ldr x0,[x22]
02c4beb8  ldr x8,[x8, #0xb8]
02c4bebc  ldr x20,[x8]
02c4bec0  bl 0x029f5cec
02c4bec4  ldr x2,[x21]
02c4bec8  mov x1,x19
02c4becc  mov x3,xzr
02c4bed0  mov x21,x0
02c4bed4  bl 0x047b3618
02c4bed8  cbz x20,0x02c4bf08
02c4bedc  adrp x8,0x5e63000
02c4bee0  mov x0,x20
02c4bee4  mov x3,x21
02c4bee8  ldr x8,[x8, #0x460]
02c4beec  ldp x20,x19,[sp, #0x20]
02c4bef0  ldp x22,x21,[sp, #0x10]
02c4bef4  mov w1,#0xe
02c4bef8  ldr x2,[x8]
02c4befc  mov x4,xzr
02c4bf00  ldp x30,x23,[sp], #0x30
02c4bf04  b 0x02b89b0c
02c4bf08  bl 0x029f5cfc
