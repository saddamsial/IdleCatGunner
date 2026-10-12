02c4ffe4  str x30,[sp, #-0x40]!
02c4ffe8  stp x24,x23,[sp, #0x10]
02c4ffec  stp x22,x21,[sp, #0x20]
02c4fff0  stp x20,x19,[sp, #0x30]
02c4fff4  adrp x20,0x5e5d000
02c4fff8  adrp x23,0x5e5d000
02c4fffc  adrp x24,0x625c000
02c50000  adrp x19,0x5e63000
02c50004  adrp x22,0x5e5d000
02c50008  adrp x21,0x5e63000
02c5000c  ldr x20,[x20, #0xd58]
02c50010  ldr x23,[x23, #0x790]
02c50014  ldr x19,[x19, #0x548]
02c50018  ldrb w8,[x24, #0x150]
02c5001c  ldr x22,[x22, #0x5e8]
02c50020  ldr x21,[x21, #0x550]
02c50024  tbnz w8,#0x0,0x02c5006c
02c50028  adrp x0,0x5e5d000
02c5002c  ldr x0,[x0, #0x790]
02c50030  bl 0x029f5a50
02c50034  adrp x0,0x5e5d000
02c50038  ldr x0,[x0, #0xd58]
02c5003c  bl 0x029f5a50
02c50040  adrp x0,0x5e5d000
02c50044  ldr x0,[x0, #0x5e8]
02c50048  bl 0x029f5a50
02c5004c  adrp x0,0x5e63000
02c50050  ldr x0,[x0, #0x550]
02c50054  bl 0x029f5a50
02c50058  adrp x0,0x5e63000
02c5005c  ldr x0,[x0, #0x548]
02c50060  bl 0x029f5a50
02c50064  mov w8,#0x1
02c50068  strb w8,[x24, #0x150]
02c5006c  ldr x8,[x20]
02c50070  ldr x0,[x23]
02c50074  mov w9,#0x1e
02c50078  mov w1,#0x5
02c5007c  ldr x8,[x8, #0xb8]
02c50080  str w9,[x8]
02c50084  bl 0x029f5b40
02c50088  ldr x1,[x19]
02c5008c  mov x2,xzr
02c50090  mov x19,x0
02c50094  bl 0x047779e0
02c50098  ldr x8,[x20]
02c5009c  mov x1,x19
02c500a0  ldr x0,[x8, #0xb8]
02c500a4  str x19,[x0, #0x10]!
02c500a8  bl 0x029f59f4
02c500ac  ldr x0,[x22]
02c500b0  mov w1,#0x5
02c500b4  bl 0x029f5b40
02c500b8  ldr x1,[x21]
02c500bc  mov x2,xzr
02c500c0  mov x19,x0
02c500c4  bl 0x047779e0
02c500c8  ldr x8,[x20]
02c500cc  mov x1,x19
02c500d0  ldp x22,x21,[sp, #0x20]
02c500d4  ldr x0,[x8, #0xb8]
02c500d8  ldp x24,x23,[sp, #0x10]
02c500dc  str x19,[x0, #0x18]!
02c500e0  ldp x20,x19,[sp, #0x30]
02c500e4  ldr x30,[sp], #0x40
02c500e8  b 0x029f59f4
