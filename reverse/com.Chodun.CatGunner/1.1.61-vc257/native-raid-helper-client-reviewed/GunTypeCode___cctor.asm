02c676c4  str x30,[sp, #-0x30]!
02c676c8  stp x22,x21,[sp, #0x10]
02c676cc  stp x20,x19,[sp, #0x20]
02c676d0  adrp x21,0x625c000
02c676d4  adrp x22,0x5e63000
02c676d8  adrp x19,0x5e63000
02c676dc  adrp x20,0x5e63000
02c676e0  ldr x22,[x22, #0xa48]
02c676e4  ldrb w8,[x21, #0x25d]
02c676e8  ldr x19,[x19, #0xa50]
02c676ec  ldr x20,[x20, #0x2d0]
02c676f0  tbnz w8,#0x0,0x02c67720
02c676f4  adrp x0,0x5e63000
02c676f8  ldr x0,[x0, #0x2d0]
02c676fc  bl 0x029f5a50
02c67700  adrp x0,0x5e63000
02c67704  ldr x0,[x0, #0xa48]
02c67708  bl 0x029f5a50
02c6770c  adrp x0,0x5e63000
02c67710  ldr x0,[x0, #0xa50]
02c67714  bl 0x029f5a50
02c67718  mov w8,#0x1
02c6771c  strb w8,[x21, #0x25d]
02c67720  ldr x0,[x22]
02c67724  mov w1,#0x7
02c67728  bl 0x029f5b40
02c6772c  ldr x1,[x19]
02c67730  mov x2,xzr
02c67734  mov x19,x0
02c67738  bl 0x047779e0
02c6773c  ldr x8,[x20]
02c67740  mov x1,x19
02c67744  ldp x22,x21,[sp, #0x10]
02c67748  ldr x8,[x8, #0xb8]
02c6774c  str x19,[x8]
02c67750  ldr x8,[x20]
02c67754  ldp x20,x19,[sp, #0x20]
02c67758  ldr x0,[x8, #0xb8]
02c6775c  ldr x30,[sp], #0x30
02c67760  b 0x029f59f4
