02b80694  sub sp,sp,#0x50
02b80698  str d10,[sp, #0x10]
02b8069c  stp d9,d8,[sp, #0x18]
02b806a0  str x30,[sp, #0x28]
02b806a4  stp x22,x21,[sp, #0x30]
02b806a8  stp x20,x19,[sp, #0x40]
02b806ac  fmov s8,s2
02b806b0  fmov s9,s1
02b806b4  adrp x22,0x625b000
02b806b8  fmov s10,s0
02b806bc  ldrb w8,[x22, #0x8e7]
02b806c0  mov x20,x2
02b806c4  mov x19,x1
02b806c8  mov x21,x0
02b806cc  tbnz w8,#0x0,0x02b80708
02b806d0  adrp x0,0x5e58000
02b806d4  ldr x0,[x0, #0xf08]
02b806d8  bl 0x029f5a50
02b806dc  adrp x0,0x5e5d000
02b806e0  ldr x0,[x0, #0x5a0]
02b806e4  bl 0x029f5a50
02b806e8  adrp x0,0x5e59000
02b806ec  ldr x0,[x0, #0x768]
02b806f0  bl 0x029f5a50
02b806f4  adrp x0,0x5e5d000
02b806f8  ldr x0,[x0, #0x5a8]
02b806fc  bl 0x029f5a50
02b80700  mov w8,#0x1
02b80704  strb w8,[x22, #0x8e7]
02b80708  ldr x0,[x21, #0x30]
02b8070c  str wzr,[sp, #0xc]
02b80710  cbz x0,0x02b807e8
02b80714  adrp x8,0x5e5d000
02b80718  add x2,sp,#0xc
02b8071c  mov x1,x19
02b80720  ldr x8,[x8, #0x5a0]
02b80724  ldr x3,[x8]
02b80728  bl 0x03e41968
02b8072c  tbz w0,#0x0,0x02b80750
02b80730  fmov s0,s10
02b80734  fmov s1,s9
02b80738  ldr w1,[sp, #0xc]
02b8073c  fmov s2,s8
02b80740  mov x0,x21
02b80744  mov x2,x20
02b80748  bl 0x02b83e28
02b8074c  b 0x02b807cc
02b80750  adrp x8,0x5e59000
02b80754  mov w1,#0x1
02b80758  ldr x8,[x8, #0x768]
02b8075c  ldr x0,[x8]
02b80760  bl 0x029f5b40
02b80764  cbz x0,0x02b807e8
02b80768  mov x20,x0
02b8076c  cbz x19,0x02b80784
02b80770  ldr x8,[x20]
02b80774  mov x0,x19
02b80778  ldr x1,[x8, #0x40]
02b8077c  bl 0x029f5bd4
02b80780  cbz x0,0x02b807f0
02b80784  ldr w8,[x20, #0x18]
02b80788  cbz w8,0x02b807ec
02b8078c  mov x0,x20
02b80790  mov x1,x19
02b80794  str x19,[x0, #0x20]!
02b80798  bl 0x029f59f4
02b8079c  adrp x8,0x5e58000
02b807a0  ldr x8,[x8, #0xf08]
02b807a4  ldr x0,[x8]
02b807a8  ldr w8,[x0, #0xe4]
02b807ac  cbnz w8,0x02b807b4
02b807b0  bl 0x029f5bd0
02b807b4  adrp x8,0x5e5d000
02b807b8  mov x1,x20
02b807bc  mov x2,xzr
02b807c0  ldr x8,[x8, #0x5a8]
02b807c4  ldr x0,[x8]
02b807c8  bl 0x0579a69c
02b807cc  ldp x20,x19,[sp, #0x40]
02b807d0  ldr x30,[sp, #0x28]
02b807d4  ldp x22,x21,[sp, #0x30]
02b807d8  ldr d10,[sp, #0x10]
02b807dc  ldp d9,d8,[sp, #0x18]
02b807e0  add sp,sp,#0x50
02b807e4  ret
02b807e8  bl 0x029f5cfc
02b807ec  bl 0x029f5d04
02b807f0  bl 0x029f5d20
02b807f4  mov x1,xzr
02b807f8  bl 0x029f5bc0
