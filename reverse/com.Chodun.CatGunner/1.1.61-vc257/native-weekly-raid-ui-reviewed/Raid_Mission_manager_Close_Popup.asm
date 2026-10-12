02c53e84  stp x30,x21,[sp, #-0x20]!
02c53e88  stp x20,x19,[sp, #0x10]
02c53e8c  adrp x21,0x625c000
02c53e90  adrp x20,0x5e59000
02c53e94  mov x19,x0
02c53e98  ldrb w8,[x21, #0x172]
02c53e9c  ldr x20,[x20, #0x1c0]
02c53ea0  tbnz w8,#0x0,0x02c53eb8
02c53ea4  adrp x0,0x5e59000
02c53ea8  ldr x0,[x0, #0x1c0]
02c53eac  bl 0x029f5a50
02c53eb0  mov w8,#0x1
02c53eb4  strb w8,[x21, #0x172]
02c53eb8  ldr x0,[x20]
02c53ebc  ldr x20,[x19, #0x50]
02c53ec0  ldr w8,[x0, #0xe4]
02c53ec4  cbnz w8,0x02c53ecc
02c53ec8  bl 0x029f5bd0
02c53ecc  mov x0,x20
02c53ed0  mov x1,xzr
02c53ed4  mov x2,xzr
02c53ed8  bl 0x057dfa70
02c53edc  tbz w0,#0x0,0x02c53ef4
02c53ee0  ldr x0,[x19, #0x50]
02c53ee4  cbz x0,0x02c53f00
02c53ee8  ldp x20,x19,[sp, #0x10]
02c53eec  ldp x30,x21,[sp], #0x20
02c53ef0  b 0x02c53f04
02c53ef4  ldp x20,x19,[sp, #0x10]
02c53ef8  ldp x30,x21,[sp], #0x20
02c53efc  ret
02c53f00  bl 0x029f5cfc
