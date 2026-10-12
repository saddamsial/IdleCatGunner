02c890bc  sub sp,sp,#0xd0
02c890c0  stp x30,x21,[sp, #0xb0]
02c890c4  stp x20,x19,[sp, #0xc0]
02c890c8  adrp x21,0x625c000
02c890cc  adrp x20,0x5e5d000
02c890d0  mov x19,x0
02c890d4  ldrb w8,[x21, #0x395]
02c890d8  ldr x20,[x20, #0xd60]
02c890dc  tbnz w8,#0x0,0x02c89118
02c890e0  adrp x0,0x5e5e000
02c890e4  ldr x0,[x0, #0x528]
02c890e8  bl 0x029f5a50
02c890ec  adrp x0,0x5e5d000
02c890f0  ldr x0,[x0, #0xd60]
02c890f4  bl 0x029f5a50
02c890f8  adrp x0,0x5e5d000
02c890fc  ldr x0,[x0, #0xc20]
02c89100  bl 0x029f5a50
02c89104  adrp x0,0x5e63000
02c89108  ldr x0,[x0, #0xeb8]
02c8910c  bl 0x029f5a50
02c89110  mov w8,#0x1
02c89114  strb w8,[x21, #0x395]
02c89118  movi v0.2D,#0x0
02c8911c  ldr x8,[x20]
02c89120  ldr x8,[x8, #0xb8]
02c89124  stp q0,q0,[sp, #0x50]
02c89128  stp q0,q0,[sp, #0x70]
02c8912c  stp q0,q0,[sp, #0x90]
02c89130  ldr x0,[x8]
02c89134  cbz x0,0x02c89280
02c89138  bl 0x02c884dc
02c8913c  tbz w0,#0x0,0x02c89210
02c89140  adrp x21,0x5e5d000
02c89144  ldr x21,[x21, #0xc20]
02c89148  ldr x0,[x21]
02c8914c  ldr w8,[x0, #0xe4]
02c89150  cbnz w8,0x02c8915c
02c89154  bl 0x029f5bd0
02c89158  ldr x0,[x21]
02c8915c  ldr x8,[x0, #0xb8]
02c89160  ldr x8,[x8, #0x10]
02c89164  cbz x8,0x02c89280
02c89168  ldr w8,[x8, #0x28]
02c8916c  cmp w8,#0x1
02c89170  b.le 0x02c89224
02c89174  ldr x8,[x20]
02c89178  ldr x8,[x8, #0xb8]
02c8917c  ldr x8,[x8]
02c89180  cbz x8,0x02c89280
02c89184  add x8,sp,#0x70
02c89188  bl 0x02c88058
02c8918c  add x8,sp,#0x30
02c89190  mov w0,#0x3
02c89194  mov x1,xzr
02c89198  bl 0x046544b8
02c8919c  ldp q0,q1,[sp, #0x30]
02c891a0  add x8,sp,#0x10
02c891a4  add x0,sp,#0x70
02c891a8  add x1,sp,#0x50
02c891ac  mov x2,xzr
02c891b0  stp q0,q1,[sp, #0x50]
02c891b4  bl 0x04658538
02c891b8  ldp q0,q1,[sp, #0x10]
02c891bc  ldr x0,[x19, #0x78]
02c891c0  stp q0,q1,[sp, #0x90]
02c891c4  cbz x0,0x02c89280
02c891c8  mov w1,#0x1
02c891cc  mov x2,xzr
02c891d0  bl 0x057dff3c
02c891d4  ldr x19,[x19, #0x80]
02c891d8  add x0,sp,#0x90
02c891dc  mov x1,xzr
02c891e0  bl 0x0465bddc
02c891e4  cbz x19,0x02c89280
02c891e8  ldr x8,[x19]
02c891ec  mov x1,x0
02c891f0  mov x0,x19
02c891f4  ldr x9,[x8, #0x558]
02c891f8  ldr x2,[x8, #0x560]
02c891fc  blr x9
02c89200  ldp x20,x19,[sp, #0xc0]
02c89204  ldp x30,x21,[sp, #0xb0]
02c89208  add sp,sp,#0xd0
02c8920c  ret
02c89210  mov x0,x19
02c89214  ldp x20,x19,[sp, #0xc0]
02c89218  ldp x30,x21,[sp, #0xb0]
02c8921c  add sp,sp,#0xd0
02c89220  b 0x02c8785c
02c89224  adrp x8,0x5e5e000
02c89228  ldr x8,[x8, #0x528]
02c8922c  ldr x0,[x8]
02c89230  ldr w8,[x0, #0xe4]
02c89234  cbnz w8,0x02c8923c
02c89238  bl 0x029f5bd0
02c8923c  adrp x8,0x5e63000
02c89240  mov w1,#0x1
02c89244  mov w2,wzr
02c89248  ldr x8,[x8, #0xeb8]
02c8924c  mov w3,#0x1
02c89250  mov w4,wzr
02c89254  mov x5,xzr
02c89258  mov x6,xzr
02c8925c  mov w7,#0x1
02c89260  ldr x0,[x8]
02c89264  str xzr,[sp]
02c89268  bl 0x02bccb00
02c8926c  ldp x20,x19,[sp, #0xc0]
02c89270  mov x1,xzr
02c89274  ldp x30,x21,[sp, #0xb0]
02c89278  add sp,sp,#0xd0
02c8927c  b 0x02c1dd54
02c89280  bl 0x029f5cfc
