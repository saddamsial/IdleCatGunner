02c46c20  stp x30,x21,[sp, #-0x20]!
02c46c24  stp x20,x19,[sp, #0x10]
02c46c28  adrp x21,0x625c000
02c46c2c  adrp x20,0x5e5d000
02c46c30  mov x19,x0
02c46c34  ldrb w8,[x21, #0xeb]
02c46c38  ldr x20,[x20, #0x338]
02c46c3c  tbnz w8,#0x0,0x02c46c54
02c46c40  adrp x0,0x5e5d000
02c46c44  ldr x0,[x0, #0x338]
02c46c48  bl 0x029f5a50
02c46c4c  mov w8,#0x1
02c46c50  strb w8,[x21, #0xeb]
02c46c54  ldr x0,[x20]
02c46c58  ldr w20,[x19, #0xd0]
02c46c5c  mov w9,#0x1
02c46c60  strb w9,[x19, #0x7e]
02c46c64  ldr w8,[x0, #0xe4]
02c46c68  cbnz w8,0x02c46c70
02c46c6c  bl 0x029f5bd0
02c46c70  lsl w0,w20,#0x1
02c46c74  mov x1,xzr
02c46c78  bl 0x02b7ed10
02c46c7c  mov x0,x19
02c46c80  ldp x20,x19,[sp, #0x10]
02c46c84  ldp x30,x21,[sp], #0x20
02c46c88  b 0x02c47788
