02c4bf0c  str x30,[sp, #-0x40]!
02c4bf10  stp x24,x23,[sp, #0x10]
02c4bf14  stp x22,x21,[sp, #0x20]
02c4bf18  stp x20,x19,[sp, #0x30]
02c4bf1c  adrp x20,0x625c000
02c4bf20  adrp x22,0x5e59000
02c4bf24  adrp x21,0x5e63000
02c4bf28  adrp x24,0x5e5e000
02c4bf2c  ldr x22,[x22, #0x288]
02c4bf30  ldrb w8,[x20, #0x126]
02c4bf34  ldr x21,[x21, #0x468]
02c4bf38  ldr x24,[x24, #0xb8]
02c4bf3c  mov x19,x0
02c4bf40  tbnz w8,#0x0,0x02c4bf7c
02c4bf44  adrp x0,0x5e59000
02c4bf48  ldr x0,[x0, #0x288]
02c4bf4c  bl 0x029f5a50
02c4bf50  adrp x0,0x5e63000
02c4bf54  ldr x0,[x0, #0x468]
02c4bf58  bl 0x029f5a50
02c4bf5c  adrp x0,0x5e5e000
02c4bf60  ldr x0,[x0, #0xb8]
02c4bf64  bl 0x029f5a50
02c4bf68  adrp x0,0x5e5d000
02c4bf6c  ldr x0,[x0, #0x920]
02c4bf70  bl 0x029f5a50
02c4bf74  mov w8,#0x1
02c4bf78  strb w8,[x20, #0x126]
02c4bf7c  adrp x23,0x5e5d000
02c4bf80  ldr x23,[x23, #0x920]
02c4bf84  ldr x0,[x22]
02c4bf88  bl 0x029f5cec
02c4bf8c  ldr x2,[x21]
02c4bf90  mov x1,x19
02c4bf94  mov x3,xzr
02c4bf98  mov x20,x0
02c4bf9c  bl 0x047b3618
02c4bfa0  ldr x0,[x24]
02c4bfa4  ldr w8,[x0, #0xe4]
02c4bfa8  cbnz w8,0x02c4bfb0
02c4bfac  bl 0x029f5bd0
02c4bfb0  mov x0,x20
02c4bfb4  mov x1,xzr
02c4bfb8  bl 0x02c909dc
02c4bfbc  ldr x0,[x22]
02c4bfc0  bl 0x029f5cec
02c4bfc4  ldr x2,[x21]
02c4bfc8  mov x1,x19
02c4bfcc  mov x3,xzr
02c4bfd0  mov x20,x0
02c4bfd4  bl 0x047b3618
02c4bfd8  ldr x0,[x23]
02c4bfdc  ldr w8,[x0, #0xe4]
02c4bfe0  cbnz w8,0x02c4bfe8
02c4bfe4  bl 0x029f5bd0
02c4bfe8  mov x0,x20
02c4bfec  ldp x20,x19,[sp, #0x30]
02c4bff0  ldp x22,x21,[sp, #0x20]
02c4bff4  mov x1,xzr
02c4bff8  ldp x24,x23,[sp, #0x10]
02c4bffc  ldr x30,[sp], #0x40
02c4c000  b 0x02c8d8b0
