02c6007c  str x30,[sp, #-0x30]!
02c60080  stp x22,x21,[sp, #0x10]
02c60084  stp x20,x19,[sp, #0x20]
02c60088  adrp x22,0x625c000
02c6008c  adrp x21,0x5e59000
02c60090  mov w20,w1
02c60094  ldrb w8,[x22, #0x216]
02c60098  ldr x21,[x21, #0x1c0]
02c6009c  mov x19,x0
02c600a0  tbnz w8,#0x0,0x02c600b8
02c600a4  adrp x0,0x5e59000
02c600a8  ldr x0,[x0, #0x1c0]
02c600ac  bl 0x029f5a50
02c600b0  mov w8,#0x1
02c600b4  strb w8,[x22, #0x216]
02c600b8  ldr x0,[x21]
02c600bc  ldr x21,[x19, #0x28]
02c600c0  ldr w8,[x0, #0xe4]
02c600c4  cbnz w8,0x02c600cc
02c600c8  bl 0x029f5bd0
02c600cc  mov x0,x21
02c600d0  mov x1,xzr
02c600d4  mov x2,xzr
02c600d8  bl 0x057dfa70
02c600dc  tbz w0,#0x0,0x02c600fc
02c600e0  ldr x0,[x19, #0x28]
02c600e4  tbz w20,#0x0,0x02c6010c
02c600e8  add x8,x19,#0x40
02c600ec  add x9,x19,#0x44
02c600f0  add x10,x19,#0x48
02c600f4  add x11,x19,#0x4c
02c600f8  b 0x02c6011c
02c600fc  ldp x20,x19,[sp, #0x20]
02c60100  ldp x22,x21,[sp, #0x10]
02c60104  ldr x30,[sp], #0x30
02c60108  ret
02c6010c  add x8,x19,#0x30
02c60110  add x9,x19,#0x34
02c60114  add x10,x19,#0x38
02c60118  add x11,x19,#0x3c
02c6011c  cbz x0,0x02c6014c
02c60120  ldr x12,[x0]
02c60124  ldp x20,x19,[sp, #0x20]
02c60128  ldp x22,x21,[sp, #0x10]
02c6012c  ldr s3,[x11]
02c60130  ldr s1,[x9]
02c60134  ldr s0,[x8]
02c60138  ldr s2,[x10]
02c6013c  ldr x2,[x12, #0x2a8]
02c60140  ldr x1,[x12, #0x2b0]
02c60144  ldr x30,[sp], #0x30
02c60148  br x2
02c6014c  bl 0x029f5cfc
