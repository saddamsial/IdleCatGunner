02c5fe7c  str x30,[sp, #-0x40]!
02c5fe80  stp x24,x23,[sp, #0x10]
02c5fe84  stp x22,x21,[sp, #0x20]
02c5fe88  stp x20,x19,[sp, #0x30]
02c5fe8c  adrp x23,0x5e63000
02c5fe90  adrp x24,0x625c000
02c5fe94  adrp x22,0x5e5b000
02c5fe98  adrp x20,0x5e63000
02c5fe9c  adrp x21,0x5e59000
02c5fea0  ldr x23,[x23, #0x850]
02c5fea4  ldr x22,[x22, #0xe98]
02c5fea8  ldrb w8,[x24, #0x215]
02c5feac  ldr x20,[x20, #0x858]
02c5feb0  ldr x21,[x21, #0x1c0]
02c5feb4  mov x19,x0
02c5feb8  tbnz w8,#0x0,0x02c5ff00
02c5febc  adrp x0,0x5e63000
02c5fec0  ldr x0,[x0, #0x858]
02c5fec4  bl 0x029f5a50
02c5fec8  adrp x0,0x5e5b000
02c5fecc  ldr x0,[x0, #0xe98]
02c5fed0  bl 0x029f5a50
02c5fed4  adrp x0,0x5e63000
02c5fed8  ldr x0,[x0, #0x850]
02c5fedc  bl 0x029f5a50
02c5fee0  adrp x0,0x5e63000
02c5fee4  ldr x0,[x0, #0x860]
02c5fee8  bl 0x029f5a50
02c5feec  adrp x0,0x5e59000
02c5fef0  ldr x0,[x0, #0x1c0]
02c5fef4  bl 0x029f5a50
02c5fef8  mov w8,#0x1
02c5fefc  strb w8,[x24, #0x215]
02c5ff00  ldr x8,[x23]
02c5ff04  mov x1,x19
02c5ff08  ldr x8,[x8, #0xb8]
02c5ff0c  str x19,[x8]
02c5ff10  ldr x8,[x23]
02c5ff14  ldr x0,[x8, #0xb8]
02c5ff18  bl 0x029f59f4
02c5ff1c  ldr x1,[x22]
02c5ff20  mov x0,x19
02c5ff24  bl 0x02fe5f2c
02c5ff28  mov x1,x0
02c5ff2c  mov x0,x19
02c5ff30  str x1,[x0, #0x50]!
02c5ff34  bl 0x029f59f4
02c5ff38  ldr x1,[x20]
02c5ff3c  mov x0,x19
02c5ff40  bl 0x02fe5f2c
02c5ff44  mov x20,x19
02c5ff48  mov x1,x0
02c5ff4c  str x0,[x20, #0x58]!
02c5ff50  mov x0,x20
02c5ff54  bl 0x029f59f4
02c5ff58  ldr x0,[x21]
02c5ff5c  ldr x21,[x20]
02c5ff60  ldr w8,[x0, #0xe4]
02c5ff64  cbnz w8,0x02c5ff6c
02c5ff68  bl 0x029f5bd0
02c5ff6c  mov x0,x21
02c5ff70  mov x1,xzr
02c5ff74  mov x2,xzr
02c5ff78  bl 0x057e14b4
02c5ff7c  tbz w0,#0x0,0x02c5ffb0
02c5ff80  mov x0,x19
02c5ff84  mov x1,xzr
02c5ff88  bl 0x057dc1c8
02c5ff8c  cbz x0,0x02c5ffc8
02c5ff90  adrp x8,0x5e63000
02c5ff94  ldr x8,[x8, #0x860]
02c5ff98  ldr x1,[x8]
02c5ff9c  bl 0x030a0224
02c5ffa0  mov x1,x0
02c5ffa4  str x0,[x20]
02c5ffa8  mov x0,x20
02c5ffac  bl 0x029f59f4
02c5ffb0  mov x0,x19
02c5ffb4  ldp x20,x19,[sp, #0x30]
02c5ffb8  ldp x22,x21,[sp, #0x20]
02c5ffbc  ldp x24,x23,[sp, #0x10]
02c5ffc0  ldr x30,[sp], #0x40
02c5ffc4  b 0x02c5ffcc
02c5ffc8  bl 0x029f5cfc
