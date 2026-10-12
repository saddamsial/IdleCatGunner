02c82428  str x30,[sp, #-0x30]!
02c8242c  stp x22,x21,[sp, #0x10]
02c82430  stp x20,x19,[sp, #0x20]
02c82434  adrp x20,0x625c000
02c82438  mov x19,x0
02c8243c  ldrb w8,[x20, #0x366]
02c82440  tbnz w8,#0x0,0x02c82464
02c82444  adrp x0,0x5e59000
02c82448  ldr x0,[x0, #0x1c0]
02c8244c  bl 0x029f5a50
02c82450  adrp x0,0x5e5d000
02c82454  ldr x0,[x0, #0x4d0]
02c82458  bl 0x029f5a50
02c8245c  mov w8,#0x1
02c82460  strb w8,[x20, #0x366]
02c82464  mov x20,x19
02c82468  ldr x8,[x20, #0x48]!
02c8246c  cbnz x8,0x02c82540
02c82470  mov x0,x19
02c82474  mov x1,xzr
02c82478  bl 0x057dc1c8
02c8247c  cbz x0,0x02c82550
02c82480  mov x1,xzr
02c82484  bl 0x057e00b4
02c82488  tbz w0,#0x0,0x02c82540
02c8248c  adrp x22,0x5e5d000
02c82490  ldr x22,[x22, #0x4d0]
02c82494  ldr x0,[x22]
02c82498  ldr w8,[x0, #0xe4]
02c8249c  cbnz w8,0x02c824a8
02c824a0  bl 0x029f5bd0
02c824a4  ldr x0,[x22]
02c824a8  adrp x8,0x5e59000
02c824ac  ldr x8,[x8, #0x1c0]
02c824b0  ldr x9,[x0, #0xb8]
02c824b4  ldr x8,[x8]
02c824b8  ldr x21,[x9, #0x28]
02c824bc  ldr w10,[x8, #0xe4]
02c824c0  cbnz w10,0x02c824cc
02c824c4  mov x0,x8
02c824c8  bl 0x029f5bd0
02c824cc  mov x0,x21
02c824d0  mov x1,xzr
02c824d4  mov x2,xzr
02c824d8  bl 0x057e14b4
02c824dc  tbnz w0,#0x0,0x02c82540
02c824e0  ldr x0,[x22]
02c824e4  ldr w8,[x0, #0xe4]
02c824e8  cbnz w8,0x02c824f4
02c824ec  bl 0x029f5bd0
02c824f0  ldr x0,[x22]
02c824f4  ldr x8,[x0, #0xb8]
02c824f8  ldr x0,[x8, #0x28]
02c824fc  cbz x0,0x02c82550
02c82500  mov x1,xzr
02c82504  bl 0x02c7d7b8
02c82508  tbz w0,#0x0,0x02c82540
02c8250c  mov x0,x19
02c82510  bl 0x02c8395c
02c82514  mov x1,x0
02c82518  mov x0,x19
02c8251c  mov x2,xzr
02c82520  bl 0x057e2120
02c82524  mov x1,x0
02c82528  mov x0,x20
02c8252c  str x1,[x19, #0x48]
02c82530  ldp x20,x19,[sp, #0x20]
02c82534  ldp x22,x21,[sp, #0x10]
02c82538  ldr x30,[sp], #0x30
02c8253c  b 0x029f59f4
02c82540  ldp x20,x19,[sp, #0x20]
02c82544  ldp x22,x21,[sp, #0x10]
02c82548  ldr x30,[sp], #0x30
02c8254c  ret
02c82550  bl 0x029f5cfc
