02c6d2f8  stp x30,x21,[sp, #-0x20]!
02c6d2fc  stp x20,x19,[sp, #0x10]
02c6d300  adrp x21,0x625c000
02c6d304  adrp x20,0x5e5e000
02c6d308  mov x19,x0
02c6d30c  ldrb w8,[x21, #0x2a5]
02c6d310  ldr x20,[x20, #0x58]
02c6d314  tbnz w8,#0x0,0x02c6d32c
02c6d318  adrp x0,0x5e5e000
02c6d31c  ldr x0,[x0, #0x58]
02c6d320  bl 0x029f5a50
02c6d324  mov w8,#0x1
02c6d328  strb w8,[x21, #0x2a5]
02c6d32c  ldr x0,[x20]
02c6d330  ldr w8,[x0, #0xe4]
02c6d334  cbnz w8,0x02c6d340
02c6d338  bl 0x029f5bd0
02c6d33c  ldr x0,[x20]
02c6d340  ldr x8,[x0, #0xb8]
02c6d344  mov x1,x19
02c6d348  str x19,[x8]
02c6d34c  ldr x8,[x20]
02c6d350  ldr x0,[x8, #0xb8]
02c6d354  bl 0x029f59f4
02c6d358  bl 0x02c6d36c
02c6d35c  mov x0,x19
02c6d360  ldp x20,x19,[sp, #0x10]
02c6d364  ldp x30,x21,[sp], #0x20
02c6d368  b 0x02c6d6e4
