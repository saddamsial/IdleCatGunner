02c6ea04  stp x30,x23,[sp, #-0x30]!
02c6ea08  stp x22,x21,[sp, #0x10]
02c6ea0c  stp x20,x19,[sp, #0x20]
02c6ea10  adrp x22,0x625c000
02c6ea14  adrp x23,0x5e59000
02c6ea18  adrp x20,0x5e63000
02c6ea1c  adrp x21,0x5e5d000
02c6ea20  ldr x23,[x23, #0x288]
02c6ea24  ldrb w8,[x22, #0x2b5]
02c6ea28  ldr x20,[x20, #0xb48]
02c6ea2c  ldr x21,[x21, #0x338]
02c6ea30  mov x19,x0
02c6ea34  tbnz w8,#0x0,0x02c6ea64
02c6ea38  adrp x0,0x5e59000
02c6ea3c  ldr x0,[x0, #0x288]
02c6ea40  bl 0x029f5a50
02c6ea44  adrp x0,0x5e5d000
02c6ea48  ldr x0,[x0, #0x338]
02c6ea4c  bl 0x029f5a50
02c6ea50  adrp x0,0x5e63000
02c6ea54  ldr x0,[x0, #0xb48]
02c6ea58  bl 0x029f5a50
02c6ea5c  mov w8,#0x1
02c6ea60  strb w8,[x22, #0x2b5]
02c6ea64  ldr x0,[x23]
02c6ea68  bl 0x029f5cec
02c6ea6c  ldr x2,[x20]
02c6ea70  mov x1,x19
02c6ea74  mov x3,xzr
02c6ea78  mov x20,x0
02c6ea7c  bl 0x047b3618
02c6ea80  ldr x0,[x21]
02c6ea84  ldr w8,[x0, #0xe4]
02c6ea88  cbnz w8,0x02c6ea90
02c6ea8c  bl 0x029f5bd0
02c6ea90  mov x0,x20
02c6ea94  ldp x20,x19,[sp, #0x20]
02c6ea98  ldp x22,x21,[sp, #0x10]
02c6ea9c  mov x1,xzr
02c6eaa0  ldp x30,x23,[sp], #0x30
02c6eaa4  b 0x02b7b4b8
