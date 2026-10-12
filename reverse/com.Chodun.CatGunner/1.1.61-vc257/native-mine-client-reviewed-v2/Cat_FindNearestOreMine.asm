02c3eb48  str x30,[sp, #-0x30]!
02c3eb4c  stp x22,x21,[sp, #0x10]
02c3eb50  stp x20,x19,[sp, #0x20]
02c3eb54  adrp x20,0x625c000
02c3eb58  adrp x21,0x5e5d000
02c3eb5c  adrp x22,0x5e59000
02c3eb60  ldrb w8,[x20, #0x95]
02c3eb64  ldr x21,[x21, #0xd48]
02c3eb68  ldr x22,[x22, #0x1c0]
02c3eb6c  mov x19,x0
02c3eb70  tbnz w8,#0x0,0x02c3eb94
02c3eb74  adrp x0,0x5e5d000
02c3eb78  ldr x0,[x0, #0xd48]
02c3eb7c  bl 0x029f5a50
02c3eb80  adrp x0,0x5e59000
02c3eb84  ldr x0,[x0, #0x1c0]
02c3eb88  bl 0x029f5a50
02c3eb8c  mov w8,#0x1
02c3eb90  strb w8,[x20, #0x95]
02c3eb94  ldr x8,[x21]
02c3eb98  ldr x0,[x22]
02c3eb9c  ldr x8,[x8, #0xb8]
02c3eba0  ldr w9,[x0, #0xe4]
02c3eba4  ldr x20,[x8]
02c3eba8  cbnz w9,0x02c3ebb0
02c3ebac  bl 0x029f5bd0
02c3ebb0  mov x0,x20
02c3ebb4  mov x1,xzr
02c3ebb8  mov x2,xzr
02c3ebbc  bl 0x057e14b4
02c3ebc0  mov x21,xzr
02c3ebc4  tbnz w0,#0x0,0x02c3ec40
02c3ebc8  ldr s0,[x19, #0x194]
02c3ebcc  mov x0,x19
02c3ebd0  bl 0x02c3f530
02c3ebd4  ldr x8,[x22]
02c3ebd8  mov x21,x0
02c3ebdc  ldr w9,[x8, #0xe4]
02c3ebe0  cbnz w9,0x02c3ebec
02c3ebe4  mov x0,x8
02c3ebe8  bl 0x029f5bd0
02c3ebec  mov x0,x21
02c3ebf0  mov x1,xzr
02c3ebf4  mov x2,xzr
02c3ebf8  bl 0x057dfa70
02c3ebfc  tbnz w0,#0x0,0x02c3ec40
02c3ec00  ldr s0,[x19, #0x194]
02c3ec04  ldr s1,[x19, #0x198]
02c3ec08  mov x0,x19
02c3ec0c  fmul s0,s0,s1
02c3ec10  bl 0x02c3f530
02c3ec14  ldr x8,[x22]
02c3ec18  mov x21,x0
02c3ec1c  ldr w9,[x8, #0xe4]
02c3ec20  cbnz w9,0x02c3ec2c
02c3ec24  mov x0,x8
02c3ec28  bl 0x029f5bd0
02c3ec2c  mov x0,x21
02c3ec30  mov x1,xzr
02c3ec34  mov x2,xzr
02c3ec38  bl 0x057dfa70
02c3ec3c  tbz w0,#0x0,0x02c3ec54
02c3ec40  mov x0,x21
02c3ec44  ldp x20,x19,[sp, #0x20]
02c3ec48  ldp x22,x21,[sp, #0x10]
02c3ec4c  ldr x30,[sp], #0x30
02c3ec50  ret
02c3ec54  mov x0,x19
02c3ec58  mov x1,x20
02c3ec5c  ldp x20,x19,[sp, #0x20]
02c3ec60  ldp x22,x21,[sp, #0x10]
02c3ec64  ldr x30,[sp], #0x30
02c3ec68  b 0x02c3f6fc
