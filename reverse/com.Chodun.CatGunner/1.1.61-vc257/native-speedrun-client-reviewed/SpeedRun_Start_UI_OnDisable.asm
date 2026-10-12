02cabc64  stp x30,x23,[sp, #-0x30]!
02cabc68  stp x22,x21,[sp, #0x10]
02cabc6c  stp x20,x19,[sp, #0x20]
02cabc70  adrp x22,0x625c000
02cabc74  adrp x23,0x5e59000
02cabc78  adrp x20,0x5e64000
02cabc7c  adrp x21,0x5e5e000
02cabc80  ldr x23,[x23, #0x288]
02cabc84  ldrb w8,[x22, #0x510]
02cabc88  ldr x20,[x20, #0xa68]
02cabc8c  ldr x21,[x21, #0xb8]
02cabc90  mov x19,x0
02cabc94  tbnz w8,#0x0,0x02cabcc4
02cabc98  adrp x0,0x5e59000
02cabc9c  ldr x0,[x0, #0x288]
02cabca0  bl 0x029f5a50
02cabca4  adrp x0,0x5e5e000
02cabca8  ldr x0,[x0, #0xb8]
02cabcac  bl 0x029f5a50
02cabcb0  adrp x0,0x5e64000
02cabcb4  ldr x0,[x0, #0xa68]
02cabcb8  bl 0x029f5a50
02cabcbc  mov w8,#0x1
02cabcc0  strb w8,[x22, #0x510]
02cabcc4  ldr x0,[x23]
02cabcc8  bl 0x029f5cec
02cabccc  ldr x2,[x20]
02cabcd0  mov x1,x19
02cabcd4  mov x3,xzr
02cabcd8  mov x20,x0
02cabcdc  bl 0x047b3618
02cabce0  ldr x0,[x21]
02cabce4  ldr w8,[x0, #0xe4]
02cabce8  cbnz w8,0x02cabcf0
02cabcec  bl 0x029f5bd0
02cabcf0  mov x0,x20
02cabcf4  ldp x20,x19,[sp, #0x20]
02cabcf8  ldp x22,x21,[sp, #0x10]
02cabcfc  mov x1,xzr
02cabd00  ldp x30,x23,[sp], #0x30
02cabd04  b 0x02c90ab8
