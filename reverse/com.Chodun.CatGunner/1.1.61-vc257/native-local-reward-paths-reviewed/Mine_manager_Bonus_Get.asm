02c49fb0  str x30,[sp, #-0x20]!
02c49fb4  stp x20,x19,[sp, #0x10]
02c49fb8  adrp x20,0x625c000
02c49fbc  mov x19,x0
02c49fc0  ldrb w8,[x20, #0x112]
02c49fc4  tbnz w8,#0x0,0x02c49fdc
02c49fc8  adrp x0,0x5e5d000
02c49fcc  ldr x0,[x0, #0x338]
02c49fd0  bl 0x029f5a50
02c49fd4  mov w8,#0x1
02c49fd8  strb w8,[x20, #0x112]
02c49fdc  ldrb w8,[x19, #0x108]
02c49fe0  cbz w8,0x02c49ff4
02c49fe4  mov x0,x19
02c49fe8  ldp x20,x19,[sp, #0x10]
02c49fec  ldr x30,[sp], #0x20
02c49ff0  b 0x02c4a034
02c49ff4  adrp x8,0x5e5d000
02c49ff8  mov w9,#0x1
02c49ffc  ldr x8,[x8, #0x338]
02c4a000  ldr w20,[x19, #0xd0]
02c4a004  strb w9,[x19, #0x6a]
02c4a008  ldr x0,[x8]
02c4a00c  ldr w8,[x0, #0xe4]
02c4a010  cbnz w8,0x02c4a018
02c4a014  bl 0x029f5bd0
02c4a018  add w0,w20,w20, LSL #0x1
02c4a01c  mov x1,xzr
02c4a020  bl 0x02b7ed10
02c4a024  mov x0,x19
02c4a028  ldp x20,x19,[sp, #0x10]
02c4a02c  ldr x30,[sp], #0x20
02c4a030  b 0x02c49a98
