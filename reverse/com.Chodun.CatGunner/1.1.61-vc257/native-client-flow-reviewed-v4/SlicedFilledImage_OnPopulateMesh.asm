02c28a4c  str x30,[sp, #-0x30]!
02c28a50  stp x22,x21,[sp, #0x10]
02c28a54  stp x20,x19,[sp, #0x20]
02c28a58  adrp x22,0x625b000
02c28a5c  adrp x21,0x5e59000
02c28a60  mov x19,x1
02c28a64  ldrb w8,[x22, #0xfcf]
02c28a68  ldr x21,[x21, #0x1c0]
02c28a6c  mov x20,x0
02c28a70  tbnz w8,#0x0,0x02c28a88
02c28a74  adrp x0,0x5e59000
02c28a78  ldr x0,[x0, #0x1c0]
02c28a7c  bl 0x029f5a50
02c28a80  mov w8,#0x1
02c28a84  strb w8,[x22, #0xfcf]
02c28a88  mov x0,x20
02c28a8c  bl 0x02c284d0
02c28a90  ldr x8,[x21]
02c28a94  mov x21,x0
02c28a98  ldr w9,[x8, #0xe4]
02c28a9c  cbnz w9,0x02c28aa8
02c28aa0  mov x0,x8
02c28aa4  bl 0x029f5bd0
02c28aa8  mov x0,x21
02c28aac  mov x1,xzr
02c28ab0  mov x2,xzr
02c28ab4  bl 0x057e14b4
02c28ab8  tbz w0,#0x0,0x02c28ad8
02c28abc  mov x0,x20
02c28ac0  mov x1,x19
02c28ac4  mov x2,xzr
02c28ac8  ldp x20,x19,[sp, #0x20]
02c28acc  ldp x22,x21,[sp, #0x10]
02c28ad0  ldr x30,[sp], #0x30
02c28ad4  b 0x058dd88c
02c28ad8  mov x0,x20
02c28adc  mov x1,x19
02c28ae0  ldp x20,x19,[sp, #0x20]
02c28ae4  ldp x22,x21,[sp, #0x10]
02c28ae8  ldr x30,[sp], #0x30
02c28aec  b 0x02c28af0
