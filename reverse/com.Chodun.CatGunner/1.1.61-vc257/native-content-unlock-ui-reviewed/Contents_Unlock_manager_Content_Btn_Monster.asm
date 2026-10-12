02b9e9ac  str x30,[sp, #-0x20]!
02b9e9b0  stp x20,x19,[sp, #0x10]
02b9e9b4  adrp x19,0x625b000
02b9e9b8  adrp x20,0x5e5e000
02b9e9bc  ldrb w8,[x19, #0x9ef]
02b9e9c0  ldr x20,[x20, #0x4d0]
02b9e9c4  tbnz w8,#0x0,0x02b9e9e8
02b9e9c8  adrp x0,0x5e5e000
02b9e9cc  ldr x0,[x0, #0x4d0]
02b9e9d0  bl 0x029f5a50
02b9e9d4  adrp x0,0x5e5d000
02b9e9d8  ldr x0,[x0, #0xd58]
02b9e9dc  bl 0x029f5a50
02b9e9e0  mov w8,#0x1
02b9e9e4  strb w8,[x19, #0x9ef]
02b9e9e8  ldr x0,[x20]
02b9e9ec  ldr w8,[x0, #0xe4]
02b9e9f0  cbnz w8,0x02b9e9f8
02b9e9f4  bl 0x029f5bd0
02b9e9f8  mov w0,#0x5
02b9e9fc  bl 0x02b9e588
02b9ea00  tbz w0,#0x0,0x02b9ea44
02b9ea04  adrp x19,0x5e5d000
02b9ea08  ldr x19,[x19, #0xd58]
02b9ea0c  ldr x0,[x19]
02b9ea10  ldr w8,[x0, #0xe4]
02b9ea14  cbnz w8,0x02b9ea20
02b9ea18  bl 0x029f5bd0
02b9ea1c  ldr x0,[x19]
02b9ea20  ldr x8,[x0, #0xb8]
02b9ea24  ldr x8,[x8, #0x8]
02b9ea28  cbz x8,0x02b9ea50
02b9ea2c  ldr x0,[x8, #0x38]
02b9ea30  cbz x0,0x02b9ea50
02b9ea34  ldp x20,x19,[sp, #0x10]
02b9ea38  mov x1,xzr
02b9ea3c  ldr x30,[sp], #0x20
02b9ea40  b 0x02c4f488
02b9ea44  ldp x20,x19,[sp, #0x10]
02b9ea48  ldr x30,[sp], #0x20
02b9ea4c  ret
02b9ea50  bl 0x029f5cfc
