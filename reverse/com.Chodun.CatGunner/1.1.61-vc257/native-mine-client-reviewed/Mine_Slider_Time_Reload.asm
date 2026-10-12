02c4b038  stp d9,d8,[sp, #-0x30]!
02c4b03c  str x30,[sp, #0x10]
02c4b040  stp x20,x19,[sp, #0x20]
02c4b044  fmov s9,s1
02c4b048  fmov s8,s0
02c4b04c  adrp x20,0x625c000
02c4b050  ldrb w8,[x20, #0x122]
02c4b054  mov x19,x0
02c4b058  tbnz w8,#0x0,0x02c4b070
02c4b05c  adrp x0,0x5e5e000
02c4b060  ldr x0,[x0, #0x6d0]
02c4b064  bl 0x029f5a50
02c4b068  mov w8,#0x1
02c4b06c  strb w8,[x20, #0x122]
02c4b070  ldr x0,[x19, #0x28]
02c4b074  cbz x0,0x02c4b108
02c4b078  fdiv s0,s8,s9
02c4b07c  adrp x20,0x5e5e000
02c4b080  mov x1,xzr
02c4b084  ldr x20,[x20, #0x6d0]
02c4b088  bl 0x02c28290
02c4b08c  fmov s0,0x3f800000
02c4b090  mov w8,#0x7f800000
02c4b094  mov w10,#0x80000000
02c4b098  fmov s1,w8
02c4b09c  adrp x8,0x5e58000
02c4b0a0  add x1,sp,#0x1c
02c4b0a4  ldr x8,[x8, #0xa10]
02c4b0a8  ldr x19,[x19, #0x38]
02c4b0ac  fadd s0,s8,s0
02c4b0b0  ldr x0,[x8, #0x48]
02c4b0b4  fcvtzs w9,s0
02c4b0b8  fcmp s0,s1
02c4b0bc  csel w9,w10,w9,eq
02c4b0c0  str w9,[sp, #0x1c]
02c4b0c4  bl 0x029f5bd8
02c4b0c8  ldr x8,[x20]
02c4b0cc  mov x1,x0
02c4b0d0  mov x2,xzr
02c4b0d4  mov x0,x8
02c4b0d8  bl 0x046b6c0c
02c4b0dc  cbz x19,0x02c4b108
02c4b0e0  ldr x8,[x19]
02c4b0e4  mov x1,x0
02c4b0e8  mov x0,x19
02c4b0ec  ldr x9,[x8, #0x558]
02c4b0f0  ldr x2,[x8, #0x560]
02c4b0f4  blr x9
02c4b0f8  ldp x20,x19,[sp, #0x20]
02c4b0fc  ldr x30,[sp, #0x10]
02c4b100  ldp d9,d8,[sp], #0x30
02c4b104  ret
02c4b108  bl 0x029f5cfc
