02b9ed38  str x30,[sp, #-0x40]!
02b9ed3c  stp x24,x23,[sp, #0x10]
02b9ed40  stp x22,x21,[sp, #0x20]
02b9ed44  stp x20,x19,[sp, #0x30]
02b9ed48  adrp x23,0x5e5e000
02b9ed4c  adrp x24,0x625b000
02b9ed50  adrp x21,0x5e59000
02b9ed54  adrp x20,0x5e5e000
02b9ed58  adrp x22,0x5e5d000
02b9ed5c  ldr x23,[x23, #0x4f8]
02b9ed60  ldr x21,[x21, #0x288]
02b9ed64  ldrb w8,[x24, #0x9f3]
02b9ed68  ldr x20,[x20, #0x500]
02b9ed6c  ldr x22,[x22, #0x3c0]
02b9ed70  mov x19,x0
02b9ed74  tbnz w8,#0x0,0x02b9edbc
02b9ed78  adrp x0,0x5e59000
02b9ed7c  ldr x0,[x0, #0x288]
02b9ed80  bl 0x029f5a50
02b9ed84  adrp x0,0x5e5e000
02b9ed88  ldr x0,[x0, #0x508]
02b9ed8c  bl 0x029f5a50
02b9ed90  adrp x0,0x5e5e000
02b9ed94  ldr x0,[x0, #0x500]
02b9ed98  bl 0x029f5a50
02b9ed9c  adrp x0,0x5e5e000
02b9eda0  ldr x0,[x0, #0x4f8]
02b9eda4  bl 0x029f5a50
02b9eda8  adrp x0,0x5e5d000
02b9edac  ldr x0,[x0, #0x3c0]
02b9edb0  bl 0x029f5a50
02b9edb4  mov w8,#0x1
02b9edb8  strb w8,[x24, #0x9f3]
02b9edbc  ldr x8,[x23]
02b9edc0  mov x1,x19
02b9edc4  ldr x8,[x8, #0xb8]
02b9edc8  str x19,[x8]
02b9edcc  ldr x8,[x23]
02b9edd0  adrp x23,0x5e5e000
02b9edd4  ldr x23,[x23, #0x508]
02b9edd8  ldr x0,[x8, #0xb8]
02b9eddc  bl 0x029f59f4
02b9ede0  ldr x0,[x21]
02b9ede4  bl 0x029f5cec
02b9ede8  ldr x2,[x20]
02b9edec  mov x1,x19
02b9edf0  mov x3,xzr
02b9edf4  mov x20,x0
02b9edf8  bl 0x047b3618
02b9edfc  ldr x0,[x22]
02b9ee00  ldr w8,[x0, #0xe4]
02b9ee04  cbnz w8,0x02b9ee0c
02b9ee08  bl 0x029f5bd0
02b9ee0c  mov x0,x20
02b9ee10  mov x1,xzr
02b9ee14  bl 0x02c22f94
02b9ee18  ldr x0,[x21]
02b9ee1c  bl 0x029f5cec
02b9ee20  ldr x2,[x23]
02b9ee24  mov x1,x19
02b9ee28  mov x3,xzr
02b9ee2c  mov x20,x0
02b9ee30  bl 0x047b3618
02b9ee34  mov x0,x20
02b9ee38  ldp x20,x19,[sp, #0x30]
02b9ee3c  ldp x22,x21,[sp, #0x20]
02b9ee40  mov x1,xzr
02b9ee44  ldp x24,x23,[sp, #0x10]
02b9ee48  ldr x30,[sp], #0x40
02b9ee4c  b 0x02c234ec
