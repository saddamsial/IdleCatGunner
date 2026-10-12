02c4fb6c  str x30,[sp, #-0x20]!
02c4fb70  stp x20,x19,[sp, #0x10]
02c4fb74  adrp x20,0x625c000
02c4fb78  mov x19,x0
02c4fb7c  ldrb w8,[x20, #0x14b]
02c4fb80  tbnz w8,#0x0,0x02c4fb98
02c4fb84  adrp x0,0x5e5d000
02c4fb88  ldr x0,[x0, #0x338]
02c4fb8c  bl 0x029f5a50
02c4fb90  mov w8,#0x1
02c4fb94  strb w8,[x20, #0x14b]
02c4fb98  ldrb w8,[x19, #0x138]
02c4fb9c  cbz w8,0x02c4fbb0
02c4fba0  mov x0,x19
02c4fba4  ldp x20,x19,[sp, #0x10]
02c4fba8  ldr x30,[sp], #0x20
02c4fbac  b 0x02c4f99c
02c4fbb0  adrp x8,0x5e5d000
02c4fbb4  mov w9,#0x1
02c4fbb8  ldr x8,[x8, #0x338]
02c4fbbc  ldr w20,[x19, #0x13c]
02c4fbc0  strb w9,[x19, #0xba]
02c4fbc4  ldr x0,[x8]
02c4fbc8  ldr w8,[x0, #0xe4]
02c4fbcc  cbnz w8,0x02c4fbd4
02c4fbd0  bl 0x029f5bd0
02c4fbd4  mov w0,w20
02c4fbd8  mov x1,xzr
02c4fbdc  bl 0x02b7f098
02c4fbe0  mov x0,x19
02c4fbe4  ldp x20,x19,[sp, #0x10]
02c4fbe8  ldr x30,[sp], #0x20
02c4fbec  b 0x02c4e16c
