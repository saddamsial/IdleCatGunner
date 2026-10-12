02c09264  str d8,[sp, #-0x30]!
02c09268  str x30,[sp, #0x8]
02c0926c  stp x22,x21,[sp, #0x10]
02c09270  stp x20,x19,[sp, #0x20]
02c09274  adrp x21,0x625b000
02c09278  adrp x20,0x5e62000
02c0927c  mov w19,w0
02c09280  ldrb w8,[x21, #0xe86]
02c09284  ldr x20,[x20, #0x40]
02c09288  tbnz w8,#0x0,0x02c092a0
02c0928c  adrp x0,0x5e62000
02c09290  ldr x0,[x0, #0x40]
02c09294  bl 0x029f5a50
02c09298  mov w8,#0x1
02c0929c  strb w8,[x21, #0xe86]
02c092a0  cmp w19,#0x4
02c092a4  mov w8,#0x4
02c092a8  movi d8,#0x0
02c092ac  csel w8,w19,w8,lt
02c092b0  ldr x0,[x20]
02c092b4  mov x21,xzr
02c092b8  bic w19,w8,w8, ASR #0x1f
02c092bc  mov x22,#0x4059000000000000
02c092c0  ldr w8,[x0, #0xe4]
02c092c4  cbnz w8,0x02c092d0
02c092c8  bl 0x029f5bd0
02c092cc  ldr x0,[x20]
02c092d0  ldr x9,[x0, #0xb8]
02c092d4  ldr x8,[x9, #0x10]
02c092d8  cbz x8,0x02c0935c
02c092dc  ldr x10,[x8, #0x10]
02c092e0  ldr w11,[x10]
02c092e4  cmp w19,w11
02c092e8  b.cs 0x02c09358
02c092ec  ldr x10,[x10, #0x10]
02c092f0  cmp x21,w10, UXTW 
02c092f4  b.cs 0x02c09358
02c092f8  ldr x9,[x9, #0x8]
02c092fc  cbz x9,0x02c0935c
02c09300  ldr w11,[x9, #0x18]
02c09304  cmp x21,x11
02c09308  b.cs 0x02c09358
02c0930c  madd x10,x10,x19,x21
02c09310  fmov d1,x22
02c09314  add x8,x8,x10, LSL #0x2
02c09318  ldr s0,[x8, #0x20]
02c0931c  add x8,x9,x21, LSL #0x3
02c09320  add x21,x21,#0x1
02c09324  cmp x21,#0x3
02c09328  fcvt d0,s0
02c0932c  fdiv d0,d0,d1
02c09330  ldr d1,[x8, #0x20]
02c09334  fmul d0,d0,d1
02c09338  fadd d8,d8,d0
02c0933c  b.ne 0x02c092c0
02c09340  ldp x20,x19,[sp, #0x20]
02c09344  fmov d0,d8
02c09348  ldp x22,x21,[sp, #0x10]
02c0934c  ldr x30,[sp, #0x8]
02c09350  ldr d8,[sp], #0x30
02c09354  ret
02c09358  bl 0x029f5d04
02c0935c  bl 0x029f5cfc
