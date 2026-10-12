02c6841c  str x30,[sp, #-0x30]!
02c68420  stp x22,x21,[sp, #0x10]
02c68424  stp x20,x19,[sp, #0x20]
02c68428  adrp x20,0x625c000
02c6842c  adrp x21,0x5e59000
02c68430  mov x19,x0
02c68434  ldrb w8,[x20, #0x26f]
02c68438  ldr x21,[x21, #0x1c0]
02c6843c  tbnz w8,#0x0,0x02c6846c
02c68440  adrp x0,0x5e59000
02c68444  ldr x0,[x0, #0x1c0]
02c68448  bl 0x029f5a50
02c6844c  adrp x0,0x5e62000
02c68450  ldr x0,[x0, #0x648]
02c68454  bl 0x029f5a50
02c68458  adrp x0,0x5e5e000
02c6845c  ldr x0,[x0, #0x4b8]
02c68460  bl 0x029f5a50
02c68464  mov w8,#0x1
02c68468  strb w8,[x20, #0x26f]
02c6846c  ldr x0,[x21]
02c68470  ldr x20,[x19, #0x58]
02c68474  ldr w8,[x0, #0xe4]
02c68478  cbnz w8,0x02c68480
02c6847c  bl 0x029f5bd0
02c68480  mov x0,x20
02c68484  mov x1,xzr
02c68488  mov x2,xzr
02c6848c  bl 0x057dfa70
02c68490  tbz w0,#0x0,0x02c684a4
02c68494  ldr x0,[x19, #0x58]
02c68498  cbz x0,0x02c685d4
02c6849c  mov x1,xzr
02c684a0  bl 0x02c73c20
02c684a4  adrp x22,0x5e5e000
02c684a8  mov x0,x19
02c684ac  ldr x22,[x22, #0x4b8]
02c684b0  bl 0x02c679fc
02c684b4  ldr x0,[x22]
02c684b8  ldr w8,[x0, #0xe4]
02c684bc  cbnz w8,0x02c684c8
02c684c0  bl 0x029f5bd0
02c684c4  ldr x0,[x22]
02c684c8  ldr x8,[x21]
02c684cc  ldr x9,[x0, #0xb8]
02c684d0  ldr w10,[x8, #0xe4]
02c684d4  ldr x20,[x9]
02c684d8  cbnz w10,0x02c684e4
02c684dc  mov x0,x8
02c684e0  bl 0x029f5bd0
02c684e4  mov x0,x20
02c684e8  mov x1,xzr
02c684ec  mov x2,xzr
02c684f0  bl 0x057dfa70
02c684f4  tbz w0,#0x0,0x02c68520
02c684f8  ldr x0,[x22]
02c684fc  ldr w8,[x0, #0xe4]
02c68500  cbnz w8,0x02c6850c
02c68504  bl 0x029f5bd0
02c68508  ldr x0,[x22]
02c6850c  ldr x8,[x0, #0xb8]
02c68510  ldr x0,[x8]
02c68514  cbz x0,0x02c685d4
02c68518  mov x1,xzr
02c6851c  bl 0x02ca2c5c
02c68520  ldr x0,[x21]
02c68524  ldr x20,[x19, #0xe0]
02c68528  ldr w8,[x0, #0xe4]
02c6852c  cbnz w8,0x02c68534
02c68530  bl 0x029f5bd0
02c68534  mov x0,x20
02c68538  mov x1,xzr
02c6853c  mov x2,xzr
02c68540  bl 0x057dfa70
02c68544  tbz w0,#0x0,0x02c68554
02c68548  ldr x0,[x19, #0xe0]
02c6854c  cbz x0,0x02c685d4
02c68550  bl 0x02c69758
02c68554  adrp x20,0x5e62000
02c68558  mov x0,x19
02c6855c  ldr x20,[x20, #0x648]
02c68560  bl 0x02c67abc
02c68564  mov x0,x19
02c68568  bl 0x02c67c50
02c6856c  mov x0,x19
02c68570  bl 0x02c69c78
02c68574  ldr x8,[x20]
02c68578  ldr x0,[x21]
02c6857c  ldr x8,[x8, #0xb8]
02c68580  ldr w9,[x0, #0xe4]
02c68584  ldr x19,[x8]
02c68588  cbnz w9,0x02c68590
02c6858c  bl 0x029f5bd0
02c68590  mov x0,x19
02c68594  mov x1,xzr
02c68598  mov x2,xzr
02c6859c  bl 0x057dfa70
02c685a0  tbz w0,#0x0,0x02c685c4
02c685a4  ldr x8,[x20]
02c685a8  ldr x8,[x8, #0xb8]
02c685ac  ldr x0,[x8]
02c685b0  cbz x0,0x02c685d4
02c685b4  ldp x20,x19,[sp, #0x20]
02c685b8  ldp x22,x21,[sp, #0x10]
02c685bc  ldr x30,[sp], #0x30
02c685c0  b 0x02c69d0c
02c685c4  ldp x20,x19,[sp, #0x20]
02c685c8  ldp x22,x21,[sp, #0x10]
02c685cc  ldr x30,[sp], #0x30
02c685d0  ret
02c685d4  bl 0x029f5cfc
