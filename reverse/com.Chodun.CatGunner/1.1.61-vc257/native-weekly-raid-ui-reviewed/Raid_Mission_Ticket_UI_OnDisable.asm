02c55470  str x30,[sp, #-0x30]!
02c55474  stp x22,x21,[sp, #0x10]
02c55478  stp x20,x19,[sp, #0x20]
02c5547c  adrp x21,0x625c000
02c55480  adrp x22,0x5e59000
02c55484  adrp x20,0x5e63000
02c55488  ldrb w8,[x21, #0x187]
02c5548c  ldr x22,[x22, #0x288]
02c55490  ldr x20,[x20, #0x618]
02c55494  mov x19,x0
02c55498  tbnz w8,#0x0,0x02c554bc
02c5549c  adrp x0,0x5e59000
02c554a0  ldr x0,[x0, #0x288]
02c554a4  bl 0x029f5a50
02c554a8  adrp x0,0x5e63000
02c554ac  ldr x0,[x0, #0x618]
02c554b0  bl 0x029f5a50
02c554b4  mov w8,#0x1
02c554b8  strb w8,[x21, #0x187]
02c554bc  ldr x0,[x22]
02c554c0  bl 0x029f5cec
02c554c4  ldr x2,[x20]
02c554c8  mov x1,x19
02c554cc  mov x3,xzr
02c554d0  mov x20,x0
02c554d4  bl 0x047b3618
02c554d8  mov x0,x20
02c554dc  ldp x20,x19,[sp, #0x20]
02c554e0  ldp x22,x21,[sp, #0x10]
02c554e4  ldr x30,[sp], #0x30
02c554e8  b 0x02c5276c
