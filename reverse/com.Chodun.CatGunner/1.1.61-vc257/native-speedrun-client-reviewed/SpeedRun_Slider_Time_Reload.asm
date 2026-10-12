02cab0f4  stp d9,d8,[sp, #-0x30]!
02cab0f8  str x30,[sp, #0x10]
02cab0fc  stp x20,x19,[sp, #0x20]
02cab100  fmov s9,s1
02cab104  fmov s8,s0
02cab108  adrp x20,0x625c000
02cab10c  ldrb w8,[x20, #0x50c]
02cab110  mov x19,x0
02cab114  tbnz w8,#0x0,0x02cab12c
02cab118  adrp x0,0x5e5e000
02cab11c  ldr x0,[x0, #0x6d0]
02cab120  bl 0x029f5a50
02cab124  mov w8,#0x1
02cab128  strb w8,[x20, #0x50c]
02cab12c  ldr x0,[x19, #0x28]
02cab130  cbz x0,0x02cab1c4
02cab134  fdiv s0,s8,s9
02cab138  adrp x20,0x5e5e000
02cab13c  mov x1,xzr
02cab140  ldr x20,[x20, #0x6d0]
02cab144  bl 0x02c28290
02cab148  fmov s0,0x3f800000
02cab14c  mov w8,#0x7f800000
02cab150  mov w10,#0x80000000
02cab154  fmov s1,w8
02cab158  adrp x8,0x5e58000
02cab15c  add x1,sp,#0x1c
02cab160  ldr x8,[x8, #0xa10]
02cab164  ldr x19,[x19, #0x38]
02cab168  fadd s0,s8,s0
02cab16c  ldr x0,[x8, #0x48]
02cab170  fcvtzs w9,s0
02cab174  fcmp s0,s1
02cab178  csel w9,w10,w9,eq
02cab17c  str w9,[sp, #0x1c]
02cab180  bl 0x029f5bd8
02cab184  ldr x8,[x20]
02cab188  mov x1,x0
02cab18c  mov x2,xzr
02cab190  mov x0,x8
02cab194  bl 0x046b6c0c
02cab198  cbz x19,0x02cab1c4
02cab19c  ldr x8,[x19]
02cab1a0  mov x1,x0
02cab1a4  mov x0,x19
02cab1a8  ldr x9,[x8, #0x558]
02cab1ac  ldr x2,[x8, #0x560]
02cab1b0  blr x9
02cab1b4  ldp x20,x19,[sp, #0x20]
02cab1b8  ldr x30,[sp, #0x10]
02cab1bc  ldp d9,d8,[sp], #0x30
02cab1c0  ret
02cab1c4  bl 0x029f5cfc
