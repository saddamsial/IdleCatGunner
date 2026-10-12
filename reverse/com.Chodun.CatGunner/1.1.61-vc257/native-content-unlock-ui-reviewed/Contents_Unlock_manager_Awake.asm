02b9df6c  stp x30,x21,[sp, #-0x20]!
02b9df70  stp x20,x19,[sp, #0x10]
02b9df74  adrp x21,0x625b000
02b9df78  adrp x20,0x5e5e000
02b9df7c  mov x19,x0
02b9df80  ldrb w8,[x21, #0x9e1]
02b9df84  ldr x20,[x20, #0x4d0]
02b9df88  tbnz w8,#0x0,0x02b9dfa0
02b9df8c  adrp x0,0x5e5e000
02b9df90  ldr x0,[x0, #0x4d0]
02b9df94  bl 0x029f5a50
02b9df98  mov w8,#0x1
02b9df9c  strb w8,[x21, #0x9e1]
02b9dfa0  ldr x0,[x20]
02b9dfa4  ldr w8,[x0, #0xe4]
02b9dfa8  cbnz w8,0x02b9dfb4
02b9dfac  bl 0x029f5bd0
02b9dfb0  ldr x0,[x20]
02b9dfb4  ldr x8,[x0, #0xb8]
02b9dfb8  mov x1,x19
02b9dfbc  str x19,[x8]
02b9dfc0  ldr x8,[x20]
02b9dfc4  ldp x20,x19,[sp, #0x10]
02b9dfc8  ldr x0,[x8, #0xb8]
02b9dfcc  ldp x30,x21,[sp], #0x20
02b9dfd0  b 0x029f59f4
