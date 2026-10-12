02c6febc  stp x30,x21,[sp, #-0x20]!
02c6fec0  stp x20,x19,[sp, #0x10]
02c6fec4  adrp x21,0x625c000
02c6fec8  adrp x20,0x5e62000
02c6fecc  adrp x19,0x5e59000
02c6fed0  ldrb w8,[x21, #0x2ba]
02c6fed4  ldr x20,[x20, #0x648]
02c6fed8  ldr x19,[x19, #0x1c0]
02c6fedc  tbnz w8,#0x0,0x02c6ff00
02c6fee0  adrp x0,0x5e59000
02c6fee4  ldr x0,[x0, #0x1c0]
02c6fee8  bl 0x029f5a50
02c6feec  adrp x0,0x5e62000
02c6fef0  ldr x0,[x0, #0x648]
02c6fef4  bl 0x029f5a50
02c6fef8  mov w8,#0x1
02c6fefc  strb w8,[x21, #0x2ba]
02c6ff00  ldr x8,[x20]
02c6ff04  ldr x0,[x19]
02c6ff08  ldr x8,[x8, #0xb8]
02c6ff0c  ldr w9,[x0, #0xe4]
02c6ff10  ldr x19,[x8]
02c6ff14  cbnz w9,0x02c6ff1c
02c6ff18  bl 0x029f5bd0
02c6ff1c  mov x0,x19
02c6ff20  mov x1,xzr
02c6ff24  mov x2,xzr
02c6ff28  bl 0x057dfa70
02c6ff2c  tbz w0,#0x0,0x02c6ff50
02c6ff30  ldr x8,[x20]
02c6ff34  ldr x8,[x8, #0xb8]
02c6ff38  ldr x0,[x8]
02c6ff3c  cbz x0,0x02c6ff60
02c6ff40  ldp x20,x19,[sp, #0x10]
02c6ff44  mov x1,xzr
02c6ff48  ldp x30,x21,[sp], #0x20
02c6ff4c  b 0x02c6b498
02c6ff50  ldp x20,x19,[sp, #0x10]
02c6ff54  mov w0,wzr
02c6ff58  ldp x30,x21,[sp], #0x20
02c6ff5c  ret
02c6ff60  bl 0x029f5cfc
