02b9ee50  stp x30,x23,[sp, #-0x30]!
02b9ee54  stp x22,x21,[sp, #0x10]
02b9ee58  stp x20,x19,[sp, #0x20]
02b9ee5c  adrp x23,0x625b000
02b9ee60  adrp x21,0x5e59000
02b9ee64  adrp x20,0x5e5e000
02b9ee68  adrp x22,0x5e5d000
02b9ee6c  ldr x21,[x21, #0x288]
02b9ee70  ldrb w8,[x23, #0x9f4]
02b9ee74  ldr x20,[x20, #0x500]
02b9ee78  ldr x22,[x22, #0x3c0]
02b9ee7c  mov x19,x0
02b9ee80  tbnz w8,#0x0,0x02b9eebc
02b9ee84  adrp x0,0x5e59000
02b9ee88  ldr x0,[x0, #0x288]
02b9ee8c  bl 0x029f5a50
02b9ee90  adrp x0,0x5e5e000
02b9ee94  ldr x0,[x0, #0x508]
02b9ee98  bl 0x029f5a50
02b9ee9c  adrp x0,0x5e5e000
02b9eea0  ldr x0,[x0, #0x500]
02b9eea4  bl 0x029f5a50
02b9eea8  adrp x0,0x5e5d000
02b9eeac  ldr x0,[x0, #0x3c0]
02b9eeb0  bl 0x029f5a50
02b9eeb4  mov w8,#0x1
02b9eeb8  strb w8,[x23, #0x9f4]
02b9eebc  adrp x23,0x5e5e000
02b9eec0  ldr x23,[x23, #0x508]
02b9eec4  ldr x0,[x21]
02b9eec8  bl 0x029f5cec
02b9eecc  ldr x2,[x20]
02b9eed0  mov x1,x19
02b9eed4  mov x3,xzr
02b9eed8  mov x20,x0
02b9eedc  bl 0x047b3618
02b9eee0  ldr x0,[x22]
02b9eee4  ldr w8,[x0, #0xe4]
02b9eee8  cbnz w8,0x02b9eef0
02b9eeec  bl 0x029f5bd0
02b9eef0  mov x0,x20
02b9eef4  mov x1,xzr
02b9eef8  bl 0x02c23070
02b9eefc  ldr x0,[x21]
02b9ef00  bl 0x029f5cec
02b9ef04  ldr x2,[x23]
02b9ef08  mov x1,x19
02b9ef0c  mov x3,xzr
02b9ef10  mov x20,x0
02b9ef14  bl 0x047b3618
02b9ef18  mov x0,x20
02b9ef1c  ldp x20,x19,[sp, #0x20]
02b9ef20  ldp x22,x21,[sp, #0x10]
02b9ef24  mov x1,xzr
02b9ef28  ldp x30,x23,[sp], #0x30
02b9ef2c  b 0x02c235c8
