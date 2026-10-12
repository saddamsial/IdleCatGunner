02c2ff28  stp x30,x21,[sp, #-0x20]!
02c2ff2c  stp x20,x19,[sp, #0x10]
02c2ff30  adrp x21,0x625c000
02c2ff34  adrp x20,0x5e5d000
02c2ff38  mov x19,x0
02c2ff3c  ldrb w8,[x21, #0x25]
02c2ff40  ldr x20,[x20, #0x4d8]
02c2ff44  tbnz w8,#0x0,0x02c2ff5c
02c2ff48  adrp x0,0x5e5d000
02c2ff4c  ldr x0,[x0, #0x4d8]
02c2ff50  bl 0x029f5a50
02c2ff54  mov w8,#0x1
02c2ff58  strb w8,[x21, #0x25]
02c2ff5c  ldr x0,[x20]
02c2ff60  ldr w8,[x0, #0xe4]
02c2ff64  cbnz w8,0x02c2ff70
02c2ff68  bl 0x029f5bd0
02c2ff6c  ldr x0,[x20]
02c2ff70  ldr x8,[x19, #0x28]
02c2ff74  cbz x8,0x02c2ff9c
02c2ff78  ldr x9,[x0, #0xb8]
02c2ff7c  ldr x0,[x9, #0x70]
02c2ff80  cbz x0,0x02c2ff9c
02c2ff84  ldr w2,[x19, #0x24]
02c2ff88  ldp x20,x19,[sp, #0x10]
02c2ff8c  ldr w1,[x8, #0x60]
02c2ff90  mov x3,xzr
02c2ff94  ldp x30,x21,[sp], #0x20
02c2ff98  b 0x02c32858
02c2ff9c  bl 0x029f5cfc
