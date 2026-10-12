02c319d8  stp x30,x21,[sp, #-0x20]!
02c319dc  stp x20,x19,[sp, #0x10]
02c319e0  adrp x21,0x625c000
02c319e4  adrp x20,0x5e5d000
02c319e8  mov x19,x0
02c319ec  ldrb w8,[x21, #0x3a]
02c319f0  ldr x20,[x20, #0x4d8]
02c319f4  tbnz w8,#0x0,0x02c31a0c
02c319f8  adrp x0,0x5e5d000
02c319fc  ldr x0,[x0, #0x4d8]
02c31a00  bl 0x029f5a50
02c31a04  mov w8,#0x1
02c31a08  strb w8,[x21, #0x3a]
02c31a0c  ldr x0,[x20]
02c31a10  ldr w8,[x0, #0xe4]
02c31a14  cbnz w8,0x02c31a20
02c31a18  bl 0x029f5bd0
02c31a1c  ldr x0,[x20]
02c31a20  ldr x8,[x0, #0xb8]
02c31a24  ldr x0,[x8, #0x70]
02c31a28  cbz x0,0x02c31a48
02c31a2c  ldr x1,[x19, #0x20]
02c31a30  bl 0x02c31a4c
02c31a34  ldr x1,[x19, #0x20]
02c31a38  mov x0,x19
02c31a3c  ldp x20,x19,[sp, #0x10]
02c31a40  ldp x30,x21,[sp], #0x20
02c31a44  b 0x02c310cc
02c31a48  bl 0x029f5cfc
