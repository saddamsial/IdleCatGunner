02c0987c  sub sp,sp,#0xd0
02c09880  str d8,[sp, #0x90]
02c09884  str x30,[sp, #0x98]
02c09888  stp x24,x23,[sp, #0xa0]
02c0988c  stp x22,x21,[sp, #0xb0]
02c09890  stp x20,x19,[sp, #0xc0]
02c09894  adrp x24,0x625b000
02c09898  mov w21,w4
02c0989c  mov w22,w3
02c098a0  ldrb w8,[x24, #0xe82]
02c098a4  mov w23,w2
02c098a8  mov x19,x1
02c098ac  mov x20,x0
02c098b0  tbnz w8,#0x0,0x02c098d4
02c098b4  adrp x0,0x5e59000
02c098b8  ldr x0,[x0]
02c098bc  bl 0x029f5a50
02c098c0  adrp x0,0x5e62000
02c098c4  ldr x0,[x0, #0x40]
02c098c8  bl 0x029f5a50
02c098cc  mov w8,#0x1
02c098d0  strb w8,[x24, #0xe82]
02c098d4  movi v0.2D,#0x0
02c098d8  mov x8,sp
02c098dc  mov w0,wzr
02c098e0  mov x1,xzr
02c098e4  str wzr,[sp, #0x28]
02c098e8  stp q0,q0,[sp, #0x30]
02c098ec  stp q0,q0,[sp, #0x50]
02c098f0  stp q0,q0,[sp, #0x70]
02c098f4  bl 0x046544b8
02c098f8  ldp q0,q1,[sp]
02c098fc  add x1,sp,#0x50
02c09900  mov x0,x19
02c09904  mov x2,xzr
02c09908  stp q0,q1,[sp, #0x50]
02c0990c  bl 0x0465468c
02c09910  tbnz w0,#0x0,0x02c0996c
02c09914  adrp x8,0x5e62000
02c09918  ldr x8,[x8, #0x40]
02c0991c  ldr x0,[x8]
02c09920  ldr w8,[x0, #0xe4]
02c09924  cbnz w8,0x02c0992c
02c09928  bl 0x029f5bd0
02c0992c  add x8,sp,#0x70
02c09930  mov w0,w23
02c09934  mov w1,w22
02c09938  mov w2,w21
02c0993c  bl 0x02c09ac0
02c09940  mov x8,sp
02c09944  mov w0,wzr
02c09948  mov x1,xzr
02c0994c  bl 0x046544b8
02c09950  ldp q0,q1,[sp]
02c09954  add x0,sp,#0x70
02c09958  add x1,sp,#0x50
02c0995c  mov x2,xzr
02c09960  stp q0,q1,[sp, #0x50]
02c09964  bl 0x0465468c
02c09968  tbz w0,#0x0,0x02c09990
02c0996c  mov w8,#0x7f800000
02c09970  fmov s0,w8
02c09974  ldp x20,x19,[sp, #0xc0]
02c09978  ldr x30,[sp, #0x98]
02c0997c  ldp x22,x21,[sp, #0xb0]
02c09980  ldr d8,[sp, #0x90]
02c09984  ldp x24,x23,[sp, #0xa0]
02c09988  add sp,sp,#0xd0
02c0998c  ret
02c09990  add x1,sp,#0x70
02c09994  mov x0,x20
02c09998  mov x2,xzr
02c0999c  bl 0x04654530
02c099a0  movi d0,#0x0
02c099a4  tbnz w0,#0x0,0x02c09974
02c099a8  mov x8,sp
02c099ac  add x0,sp,#0x70
02c099b0  mov x1,x20
02c099b4  mov x2,xzr
02c099b8  bl 0x04658270
02c099bc  ldp q0,q1,[sp]
02c099c0  stp q0,q1,[sp, #0x50]
02c099c4  mov x8,sp
02c099c8  add x0,sp,#0x50
02c099cc  mov x1,x19
02c099d0  mov x2,xzr
02c099d4  bl 0x046587e8
02c099d8  ldp q0,q1,[sp]
02c099dc  stp q0,q1,[sp, #0x30]
02c099e0  add x0,sp,#0x30
02c099e4  mov x1,xzr
02c099e8  bl 0x046573a8
02c099ec  adrp x8,0x5e59000
02c099f0  fmov d8,d0
02c099f4  ldr x8,[x8]
02c099f8  ldr x0,[x8]
02c099fc  ldr w8,[x0, #0xe4]
02c09a00  cbnz w8,0x02c09a08
02c09a04  bl 0x029f5bd0
02c09a08  fmov d0,d8
02c09a0c  adrp x8,0x1170000
02c09a10  mov x0,xzr
02c09a14  ldr d1,[x8, #0x5a0]
02c09a18  bl 0x0485210c
02c09a1c  fcvt s0,d0
02c09a20  b 0x02c09974
