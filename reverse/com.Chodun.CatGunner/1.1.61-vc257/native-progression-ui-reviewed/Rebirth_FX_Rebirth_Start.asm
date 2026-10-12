02c88650  sub sp,sp,#0x30
02c88654  stp x30,x21,[sp, #0x10]
02c88658  stp x20,x19,[sp, #0x20]
02c8865c  adrp x21,0x625c000
02c88660  adrp x20,0x5e5d000
02c88664  mov x19,x0
02c88668  ldrb w8,[x21, #0x38f]
02c8866c  ldr x20,[x20, #0xc20]
02c88670  tbnz w8,#0x0,0x02c886b8
02c88674  adrp x0,0x5e5d000
02c88678  ldr x0,[x0, #0x910]
02c8867c  bl 0x029f5a50
02c88680  adrp x0,0x5e5e000
02c88684  ldr x0,[x0, #0x528]
02c88688  bl 0x029f5a50
02c8868c  adrp x0,0x5e5d000
02c88690  ldr x0,[x0, #0xd60]
02c88694  bl 0x029f5a50
02c88698  adrp x0,0x5e5d000
02c8869c  ldr x0,[x0, #0xc20]
02c886a0  bl 0x029f5a50
02c886a4  adrp x0,0x5e63000
02c886a8  ldr x0,[x0, #0xeb8]
02c886ac  bl 0x029f5a50
02c886b0  mov w8,#0x1
02c886b4  strb w8,[x21, #0x38f]
02c886b8  ldr x0,[x20]
02c886bc  ldr w8,[x0, #0xe4]
02c886c0  cbnz w8,0x02c886cc
02c886c4  bl 0x029f5bd0
02c886c8  ldr x0,[x20]
02c886cc  ldr x8,[x0, #0xb8]
02c886d0  ldr x8,[x8, #0x10]
02c886d4  cbz x8,0x02c887ac
02c886d8  ldr w8,[x8, #0x28]
02c886dc  cmp w8,#0x1
02c886e0  b.le 0x02c88720
02c886e4  adrp x8,0x5e5d000
02c886e8  ldr x8,[x8, #0xd60]
02c886ec  ldr x8,[x8]
02c886f0  ldr x8,[x8, #0xb8]
02c886f4  ldr x8,[x8]
02c886f8  cbz x8,0x02c887ac
02c886fc  ldrb w9,[x8, #0x48]
02c88700  cbz w9,0x02c8870c
02c88704  ldrb w8,[x8, #0x49]
02c88708  cbz w8,0x02c8877c
02c8870c  mov x0,x19
02c88710  ldp x20,x19,[sp, #0x20]
02c88714  ldp x30,x21,[sp, #0x10]
02c88718  add sp,sp,#0x30
02c8871c  b 0x02c8896c
02c88720  adrp x8,0x5e5e000
02c88724  ldr x8,[x8, #0x528]
02c88728  ldr x0,[x8]
02c8872c  ldr w8,[x0, #0xe4]
02c88730  cbnz w8,0x02c88738
02c88734  bl 0x029f5bd0
02c88738  adrp x8,0x5e63000
02c8873c  mov w1,#0x1
02c88740  mov w2,wzr
02c88744  ldr x8,[x8, #0xeb8]
02c88748  mov w3,#0x1
02c8874c  mov w4,wzr
02c88750  mov x5,xzr
02c88754  mov x6,xzr
02c88758  mov w7,#0x1
02c8875c  ldr x0,[x8]
02c88760  str xzr,[sp]
02c88764  bl 0x02bccb00
02c88768  ldp x20,x19,[sp, #0x20]
02c8876c  mov x1,xzr
02c88770  ldp x30,x21,[sp, #0x10]
02c88774  add sp,sp,#0x30
02c88778  b 0x02c1dd54
02c8877c  adrp x8,0x5e5d000
02c88780  ldr x8,[x8, #0x910]
02c88784  ldr x8,[x8]
02c88788  ldr x8,[x8, #0xb8]
02c8878c  ldr x0,[x8]
02c88790  cbz x0,0x02c887ac
02c88794  ldp x20,x19,[sp, #0x20]
02c88798  mov w1,#0x8
02c8879c  ldp x30,x21,[sp, #0x10]
02c887a0  mov x2,xzr
02c887a4  add sp,sp,#0x30
02c887a8  b 0x02b89ab0
02c887ac  bl 0x029f5cfc
