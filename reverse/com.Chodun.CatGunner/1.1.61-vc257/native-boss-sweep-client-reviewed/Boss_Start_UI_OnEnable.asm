02c4826c  stp x30,x23,[sp, #-0x30]!
02c48270  stp x22,x21,[sp, #0x10]
02c48274  stp x20,x19,[sp, #0x20]
02c48278  adrp x22,0x625c000
02c4827c  adrp x23,0x5e59000
02c48280  adrp x20,0x5e63000
02c48284  adrp x21,0x5e5e000
02c48288  ldr x23,[x23, #0x288]
02c4828c  ldrb w8,[x22, #0xf5]
02c48290  ldr x20,[x20, #0x368]
02c48294  ldr x21,[x21, #0xb8]
02c48298  mov x19,x0
02c4829c  tbnz w8,#0x0,0x02c482cc
02c482a0  adrp x0,0x5e59000
02c482a4  ldr x0,[x0, #0x288]
02c482a8  bl 0x029f5a50
02c482ac  adrp x0,0x5e63000
02c482b0  ldr x0,[x0, #0x368]
02c482b4  bl 0x029f5a50
02c482b8  adrp x0,0x5e5e000
02c482bc  ldr x0,[x0, #0xb8]
02c482c0  bl 0x029f5a50
02c482c4  mov w8,#0x1
02c482c8  strb w8,[x22, #0xf5]
02c482cc  ldr x0,[x23]
02c482d0  bl 0x029f5cec
02c482d4  ldr x2,[x20]
02c482d8  mov x1,x19
02c482dc  mov x3,xzr
02c482e0  mov x20,x0
02c482e4  bl 0x047b3618
02c482e8  ldr x0,[x21]
02c482ec  ldr w8,[x0, #0xe4]
02c482f0  cbnz w8,0x02c482f8
02c482f4  bl 0x029f5bd0
02c482f8  mov x0,x20
02c482fc  ldp x20,x19,[sp, #0x20]
02c48300  ldp x22,x21,[sp, #0x10]
02c48304  mov x1,xzr
02c48308  ldp x30,x23,[sp], #0x30
02c4830c  b 0x02c909dc
