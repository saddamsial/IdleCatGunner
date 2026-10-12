02c30368  str x30,[sp, #-0x40]!
02c3036c  stp x24,x23,[sp, #0x10]
02c30370  stp x22,x21,[sp, #0x20]
02c30374  stp x20,x19,[sp, #0x30]
02c30378  adrp x22,0x625c000
02c3037c  adrp x21,0x5e63000
02c30380  adrp x23,0x5e63000
02c30384  adrp x24,0x5e63000
02c30388  ldr x21,[x21, #0x48]
02c3038c  ldrb w8,[x22, #0x27]
02c30390  ldr x23,[x23, #0x50]
02c30394  ldr x24,[x24, #0x58]
02c30398  mov w19,w1
02c3039c  mov x20,x0
02c303a0  tbnz w8,#0x0,0x02c303d0
02c303a4  adrp x0,0x5e63000
02c303a8  ldr x0,[x0, #0x58]
02c303ac  bl 0x029f5a50
02c303b0  adrp x0,0x5e63000
02c303b4  ldr x0,[x0, #0x48]
02c303b8  bl 0x029f5a50
02c303bc  adrp x0,0x5e63000
02c303c0  ldr x0,[x0, #0x50]
02c303c4  bl 0x029f5a50
02c303c8  mov w8,#0x1
02c303cc  strb w8,[x22, #0x27]
02c303d0  ldr w8,[x20, #0x60]
02c303d4  cmp w8,w19
02c303d8  ldp x20,x19,[sp, #0x30]
02c303dc  csel x9,x23,x24,eq
02c303e0  cmp w8,#0x3
02c303e4  csel x8,x21,x9,eq
02c303e8  ldp x22,x21,[sp, #0x20]
02c303ec  ldp x24,x23,[sp, #0x10]
02c303f0  ldr x0,[x8]
02c303f4  ldr x30,[sp], #0x40
02c303f8  ret
