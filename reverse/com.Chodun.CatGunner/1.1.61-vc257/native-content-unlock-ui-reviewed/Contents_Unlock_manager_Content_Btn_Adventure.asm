02b9ea54  str x30,[sp, #-0x20]!
02b9ea58  stp x20,x19,[sp, #0x10]
02b9ea5c  adrp x19,0x625b000
02b9ea60  adrp x20,0x5e5e000
02b9ea64  ldrb w8,[x19, #0x9f0]
02b9ea68  ldr x20,[x20, #0x4d0]
02b9ea6c  tbnz w8,#0x0,0x02b9ea90
02b9ea70  adrp x0,0x5e5d000
02b9ea74  ldr x0,[x0, #0xd28]
02b9ea78  bl 0x029f5a50
02b9ea7c  adrp x0,0x5e5e000
02b9ea80  ldr x0,[x0, #0x4d0]
02b9ea84  bl 0x029f5a50
02b9ea88  mov w8,#0x1
02b9ea8c  strb w8,[x19, #0x9f0]
02b9ea90  ldr x0,[x20]
02b9ea94  ldr w8,[x0, #0xe4]
02b9ea98  cbnz w8,0x02b9eaa0
02b9ea9c  bl 0x029f5bd0
02b9eaa0  mov w0,#0x6
02b9eaa4  bl 0x02b9e588
02b9eaa8  tbz w0,#0x0,0x02b9eafc
02b9eaac  adrp x19,0x5e5d000
02b9eab0  ldr x19,[x19, #0xd28]
02b9eab4  ldr x0,[x19]
02b9eab8  ldr w8,[x0, #0xe4]
02b9eabc  cbnz w8,0x02b9eac8
02b9eac0  bl 0x029f5bd0
02b9eac4  ldr x0,[x19]
02b9eac8  ldr x8,[x0, #0xb8]
02b9eacc  ldr x8,[x8, #0x10]
02b9ead0  cbz x8,0x02b9eb08
02b9ead4  ldr x0,[x8, #0x40]
02b9ead8  cbz x0,0x02b9eb08
02b9eadc  mov x1,xzr
02b9eae0  bl 0x057dc1c8
02b9eae4  cbz x0,0x02b9eb08
02b9eae8  ldp x20,x19,[sp, #0x10]
02b9eaec  mov w1,#0x1
02b9eaf0  mov x2,xzr
02b9eaf4  ldr x30,[sp], #0x20
02b9eaf8  b 0x057dff3c
02b9eafc  ldp x20,x19,[sp, #0x10]
02b9eb00  ldr x30,[sp], #0x20
02b9eb04  ret
02b9eb08  bl 0x029f5cfc
