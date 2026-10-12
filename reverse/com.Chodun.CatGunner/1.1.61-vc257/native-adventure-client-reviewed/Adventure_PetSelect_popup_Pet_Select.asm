02c36080  str x30,[sp, #-0x30]!
02c36084  stp x22,x21,[sp, #0x10]
02c36088  stp x20,x19,[sp, #0x20]
02c3608c  adrp x22,0x625c000
02c36090  adrp x21,0x5e59000
02c36094  mov x20,x1
02c36098  ldrb w8,[x22, #0x67]
02c3609c  ldr x21,[x21, #0x1c0]
02c360a0  mov x19,x0
02c360a4  tbnz w8,#0x0,0x02c360bc
02c360a8  adrp x0,0x5e59000
02c360ac  ldr x0,[x0, #0x1c0]
02c360b0  bl 0x029f5a50
02c360b4  mov w8,#0x1
02c360b8  strb w8,[x22, #0x67]
02c360bc  ldr x0,[x21]
02c360c0  ldr x21,[x19, #0x28]
02c360c4  ldr w8,[x0, #0xe4]
02c360c8  cbnz w8,0x02c360d0
02c360cc  bl 0x029f5bd0
02c360d0  mov x0,x21
02c360d4  mov x1,xzr
02c360d8  mov x2,xzr
02c360dc  bl 0x057dfa70
02c360e0  tbz w0,#0x0,0x02c360f4
02c360e4  ldr x0,[x19, #0x28]
02c360e8  cbz x0,0x02c3611c
02c360ec  mov x1,x20
02c360f0  bl 0x02c33f20
02c360f4  mov x0,x19
02c360f8  mov x1,xzr
02c360fc  bl 0x057dc1c8
02c36100  cbz x0,0x02c3611c
02c36104  ldp x20,x19,[sp, #0x20]
02c36108  mov w1,wzr
02c3610c  ldp x22,x21,[sp, #0x10]
02c36110  mov x2,xzr
02c36114  ldr x30,[sp], #0x30
02c36118  b 0x057dff3c
02c3611c  bl 0x029f5cfc
