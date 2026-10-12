02c914e8  stp x30,x23,[sp, #-0x30]!
02c914ec  stp x22,x21,[sp, #0x10]
02c914f0  stp x20,x19,[sp, #0x20]
02c914f4  adrp x20,0x625c000
02c914f8  adrp x22,0x5e64000
02c914fc  adrp x21,0x5e5e000
02c91500  ldrb w8,[x20, #0x3f3]
02c91504  ldr x22,[x22, #0x160]
02c91508  ldr x21,[x21, #0xb8]
02c9150c  mov x19,x1
02c91510  tbnz w8,#0x0,0x02c91534
02c91514  adrp x0,0x5e64000
02c91518  ldr x0,[x0, #0x160]
02c9151c  bl 0x029f5a50
02c91520  adrp x0,0x5e5e000
02c91524  ldr x0,[x0, #0xb8]
02c91528  bl 0x029f5a50
02c9152c  mov w8,#0x1
02c91530  strb w8,[x20, #0x3f3]
02c91534  ldr x0,[x22]
02c91538  mov w1,#0x3
02c9153c  bl 0x029f5b40
02c91540  ldr x8,[x21]
02c91544  mov x20,x0
02c91548  ldr w9,[x8, #0xe4]
02c9154c  cbnz w9,0x02c9155c
02c91550  mov x0,x8
02c91554  bl 0x029f5bd0
02c91558  ldr x8,[x21]
02c9155c  ldr x0,[x8, #0xb8]
02c91560  mov x1,x20
02c91564  str x20,[x0, #0x8]!
02c91568  bl 0x029f59f4
02c9156c  cbz x19,0x02c91600
02c91570  ldr x8,[x19, #0x218]
02c91574  cbz x8,0x02c91600
02c91578  ldr w8,[x8, #0x18]
02c9157c  cmp w8,#0x1
02c91580  b.lt 0x02c91600
02c91584  cmp w8,#0x3
02c91588  mov w9,#0x3
02c9158c  mov x20,xzr
02c91590  csel w22,w8,w9,lt
02c91594  ldr x0,[x21]
02c91598  ldr w8,[x0, #0xe4]
02c9159c  cbnz w8,0x02c915a8
02c915a0  bl 0x029f5bd0
02c915a4  ldr x0,[x21]
02c915a8  ldr x8,[x19, #0x218]
02c915ac  cbz x8,0x02c91610
02c915b0  ldr w9,[x8, #0x18]
02c915b4  cmp x20,x9
02c915b8  b.cs 0x02c91614
02c915bc  add x8,x8,x20, LSL #0x3
02c915c0  ldr x9,[x0, #0xb8]
02c915c4  mov x1,xzr
02c915c8  mov x2,xzr
02c915cc  mov x3,xzr
02c915d0  ldr x0,[x8, #0x20]
02c915d4  ldr x23,[x9, #0x8]
02c915d8  bl 0x02c06754
02c915dc  cbz x23,0x02c91610
02c915e0  ldr w8,[x23, #0x18]
02c915e4  cmp x20,x8
02c915e8  b.cs 0x02c91614
02c915ec  add x8,x23,x20, LSL #0x3
02c915f0  add x20,x20,#0x1
02c915f4  cmp x22,x20
02c915f8  str x0,[x8, #0x20]
02c915fc  b.ne 0x02c91594
02c91600  ldp x20,x19,[sp, #0x20]
02c91604  ldp x22,x21,[sp, #0x10]
02c91608  ldp x30,x23,[sp], #0x30
02c9160c  ret
02c91610  bl 0x029f5cfc
02c91614  bl 0x029f5d04
