02c40f4c  stp d11,d10,[sp, #-0x50]!
02c40f50  stp d9,d8,[sp, #0x10]
02c40f54  str x30,[sp, #0x20]
02c40f58  stp x22,x21,[sp, #0x30]
02c40f5c  stp x20,x19,[sp, #0x40]
02c40f60  fmov s9,s2
02c40f64  fmov s8,s1
02c40f68  adrp x19,0x625c000
02c40f6c  fmov s10,s0
02c40f70  adrp x20,0x5e63000
02c40f74  ldrb w8,[x19, #0xa7]
02c40f78  ldr x20,[x20, #0x1d8]
02c40f7c  tbnz w8,#0x0,0x02c40fb8
02c40f80  adrp x0,0x5e63000
02c40f84  ldr x0,[x0, #0x1d8]
02c40f88  bl 0x029f5a50
02c40f8c  adrp x0,0x5e63000
02c40f90  ldr x0,[x0, #0x200]
02c40f94  bl 0x029f5a50
02c40f98  adrp x0,0x5e63000
02c40f9c  ldr x0,[x0, #0x260]
02c40fa0  bl 0x029f5a50
02c40fa4  adrp x0,0x5e59000
02c40fa8  ldr x0,[x0, #0x1c0]
02c40fac  bl 0x029f5a50
02c40fb0  mov w8,#0x1
02c40fb4  strb w8,[x19, #0xa7]
02c40fb8  ldr x0,[x20]
02c40fbc  ldr w8,[x0, #0xe4]
02c40fc0  cbnz w8,0x02c40fcc
02c40fc4  bl 0x029f5bd0
02c40fc8  ldr x0,[x20]
02c40fcc  ldr x8,[x0, #0xb8]
02c40fd0  ldr x8,[x8]
02c40fd4  cbz x8,0x02c4118c
02c40fd8  ldr w8,[x8, #0x18]
02c40fdc  cbz w8,0x02c41168
02c40fe0  adrp x21,0x5e63000
02c40fe4  mov w8,#0x7f7fffff
02c40fe8  mov w19,wzr
02c40fec  ldr x21,[x21, #0x260]
02c40ff0  mov w22,wzr
02c40ff4  fmov s11,w8
02c40ff8  ldr w8,[x0, #0xe4]
02c40ffc  cbnz w8,0x02c41008
02c41000  bl 0x029f5bd0
02c41004  ldr x0,[x20]
02c41008  ldr x9,[x0, #0xb8]
02c4100c  ldr x8,[x9]
02c41010  cbz x8,0x02c4118c
02c41014  ldr w11,[x8, #0x18]
02c41018  ldr w10,[x0, #0xe4]
02c4101c  cmp w19,w11
02c41020  b.ge 0x02c41084
02c41024  cbnz w10,0x02c4103c
02c41028  bl 0x029f5bd0
02c4102c  ldr x8,[x20]
02c41030  ldr x8,[x8, #0xb8]
02c41034  ldr x8,[x8]
02c41038  cbz x8,0x02c4118c
02c4103c  ldr x2,[x21]
02c41040  mov x0,x8
02c41044  mov w1,w19
02c41048  bl 0x045a6f78
02c4104c  fsub s0,s0,s10
02c41050  fsub s1,s1,s8
02c41054  ldr x0,[x20]
02c41058  fsub s2,s2,s9
02c4105c  fmul s0,s0,s0
02c41060  fmul s1,s1,s1
02c41064  fadd s0,s0,s1
02c41068  fmul s1,s2,s2
02c4106c  fadd s0,s1,s0
02c41070  fcmp s0,s11
02c41074  fcsel s11,s0,s11,mi
02c41078  csel w22,w19,w22,mi
02c4107c  add w19,w19,#0x1
02c41080  b 0x02c40ff8
02c41084  cbnz w10,0x02c4109c
02c41088  bl 0x029f5bd0
02c4108c  ldr x0,[x20]
02c41090  ldr x9,[x0, #0xb8]
02c41094  ldr x8,[x9]
02c41098  cbz x8,0x02c4118c
02c4109c  ldr w10,[x8, #0x18]
02c410a0  add w11,w22,#0x5
02c410a4  sub w10,w10,#0x1
02c410a8  cmp w11,w10
02c410ac  csel w19,w11,w10,lt
02c410b0  ldr w10,[x0, #0xe4]
02c410b4  cmp w19,w22
02c410b8  b.ne 0x02c41134
02c410bc  cbnz w10,0x02c410cc
02c410c0  bl 0x029f5bd0
02c410c4  ldr x8,[x20]
02c410c8  ldr x9,[x8, #0xb8]
02c410cc  adrp x8,0x5e59000
02c410d0  ldr x8,[x8, #0x1c0]
02c410d4  ldr x19,[x9, #0x68]
02c410d8  ldr x0,[x8]
02c410dc  ldr w8,[x0, #0xe4]
02c410e0  cbnz w8,0x02c410e8
02c410e4  bl 0x029f5bd0
02c410e8  mov x0,x19
02c410ec  mov x1,xzr
02c410f0  mov x2,xzr
02c410f4  bl 0x057dfa70
02c410f8  tbz w0,#0x0,0x02c41168
02c410fc  ldr x0,[x20]
02c41100  ldr w8,[x0, #0xe4]
02c41104  cbnz w8,0x02c41110
02c41108  bl 0x029f5bd0
02c4110c  ldr x0,[x20]
02c41110  ldr x8,[x0, #0xb8]
02c41114  ldr x0,[x8, #0x68]
02c41118  cbz x0,0x02c4118c
02c4111c  mov x1,xzr
02c41120  bl 0x057dc0f8
02c41124  cbz x0,0x02c4118c
02c41128  mov x1,xzr
02c4112c  bl 0x057eed98
02c41130  b 0x02c4115c
02c41134  cbnz w10,0x02c4114c
02c41138  bl 0x029f5bd0
02c4113c  ldr x8,[x20]
02c41140  ldr x8,[x8, #0xb8]
02c41144  ldr x8,[x8]
02c41148  cbz x8,0x02c4118c
02c4114c  ldr x2,[x21]
02c41150  mov x0,x8
02c41154  mov w1,w19
02c41158  bl 0x045a6f78
02c4115c  fmov s10,s0
02c41160  fmov s8,s1
02c41164  fmov s9,s2
02c41168  fmov s1,s8
02c4116c  fmov s2,s9
02c41170  ldr x30,[sp, #0x20]
02c41174  ldp x20,x19,[sp, #0x40]
02c41178  fmov s0,s10
02c4117c  ldp x22,x21,[sp, #0x30]
02c41180  ldp d9,d8,[sp, #0x10]
02c41184  ldp d11,d10,[sp], #0x50
02c41188  ret
02c4118c  bl 0x029f5cfc
