02c088b0  str d8,[sp, #-0x30]!
02c088b4  str x30,[sp, #0x8]
02c088b8  stp x22,x21,[sp, #0x10]
02c088bc  stp x20,x19,[sp, #0x20]
02c088c0  adrp x21,0x625b000
02c088c4  adrp x20,0x5e62000
02c088c8  mov w19,w0
02c088cc  ldrb w8,[x21, #0xe85]
02c088d0  ldr x20,[x20, #0x40]
02c088d4  tbnz w8,#0x0,0x02c088ec
02c088d8  adrp x0,0x5e62000
02c088dc  ldr x0,[x0, #0x40]
02c088e0  bl 0x029f5a50
02c088e4  mov w8,#0x1
02c088e8  strb w8,[x21, #0xe85]
02c088ec  cmp w19,#0x4
02c088f0  mov w8,#0x4
02c088f4  movi d8,#0x0
02c088f8  csel w8,w19,w8,lt
02c088fc  ldr x0,[x20]
02c08900  mov x21,xzr
02c08904  bic w19,w8,w8, ASR #0x1f
02c08908  mov x22,#0x4059000000000000
02c0890c  ldr w8,[x0, #0xe4]
02c08910  cbnz w8,0x02c0891c
02c08914  bl 0x029f5bd0
02c08918  ldr x0,[x20]
02c0891c  ldr x9,[x0, #0xb8]
02c08920  ldr x8,[x9, #0x10]
02c08924  cbz x8,0x02c089a8
02c08928  ldr x10,[x8, #0x10]
02c0892c  ldr w11,[x10]
02c08930  cmp w19,w11
02c08934  b.cs 0x02c089a4
02c08938  ldr x10,[x10, #0x10]
02c0893c  cmp x21,w10, UXTW 
02c08940  b.cs 0x02c089a4
02c08944  ldr x9,[x9]
02c08948  cbz x9,0x02c089a8
02c0894c  ldr w11,[x9, #0x18]
02c08950  cmp x21,x11
02c08954  b.cs 0x02c089a4
02c08958  madd x10,x10,x19,x21
02c0895c  fmov d1,x22
02c08960  add x8,x8,x10, LSL #0x2
02c08964  ldr s0,[x8, #0x20]
02c08968  add x8,x9,x21, LSL #0x3
02c0896c  add x21,x21,#0x1
02c08970  cmp x21,#0x3
02c08974  fcvt d0,s0
02c08978  fdiv d0,d0,d1
02c0897c  ldr d1,[x8, #0x20]
02c08980  fmul d0,d0,d1
02c08984  fadd d8,d8,d0
02c08988  b.ne 0x02c0890c
02c0898c  ldp x20,x19,[sp, #0x20]
02c08990  fmov d0,d8
02c08994  ldp x22,x21,[sp, #0x10]
02c08998  ldr x30,[sp, #0x8]
02c0899c  ldr d8,[sp], #0x30
02c089a0  ret
02c089a4  bl 0x029f5d04
02c089a8  bl 0x029f5cfc
