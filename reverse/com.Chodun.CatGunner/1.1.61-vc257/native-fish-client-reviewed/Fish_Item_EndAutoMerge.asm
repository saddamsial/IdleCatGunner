02c61024  str x30,[sp, #-0x30]!
02c61028  stp x22,x21,[sp, #0x10]
02c6102c  stp x20,x19,[sp, #0x20]
02c61030  adrp x20,0x625c000
02c61034  adrp x21,0x5e59000
02c61038  mov x19,x0
02c6103c  ldrb w8,[x20, #0x221]
02c61040  ldr x21,[x21, #0x1c0]
02c61044  tbnz w8,#0x0,0x02c6105c
02c61048  adrp x0,0x5e59000
02c6104c  ldr x0,[x0, #0x1c0]
02c61050  bl 0x029f5a50
02c61054  mov w8,#0x1
02c61058  strb w8,[x20, #0x221]
02c6105c  ldr x0,[x21]
02c61060  ldrb w22,[x19, #0x86]
02c61064  strh wzr,[x19, #0x86]
02c61068  ldr x20,[x19, #0x38]
02c6106c  ldr w8,[x0, #0xe4]
02c61070  cbnz w8,0x02c61078
02c61074  bl 0x029f5bd0
02c61078  mov x0,x20
02c6107c  mov x1,xzr
02c61080  mov x2,xzr
02c61084  bl 0x057dfa70
02c61088  tbz w0,#0x0,0x02c610a0
02c6108c  ldr x0,[x19, #0x38]
02c61090  cbz x0,0x02c61134
02c61094  mov w1,wzr
02c61098  mov x2,xzr
02c6109c  bl 0x057dff3c
02c610a0  ldr x0,[x21]
02c610a4  ldr x20,[x19, #0x68]
02c610a8  ldr w8,[x0, #0xe4]
02c610ac  cbnz w8,0x02c610b4
02c610b0  bl 0x029f5bd0
02c610b4  mov x0,x20
02c610b8  mov x1,xzr
02c610bc  mov x2,xzr
02c610c0  bl 0x057dfa70
02c610c4  tbz w0,#0x0,0x02c610dc
02c610c8  ldr x0,[x19, #0x68]
02c610cc  cbz x0,0x02c61134
02c610d0  mov w1,#0x1
02c610d4  mov x2,xzr
02c610d8  bl 0x05a9f1dc
02c610dc  cbz w22,0x02c61124
02c610e0  ldrb w8,[x19, #0x48]
02c610e4  cbz w8,0x02c61124
02c610e8  ldr x0,[x21]
02c610ec  ldr x20,[x19, #0x60]
02c610f0  ldr w8,[x0, #0xe4]
02c610f4  cbnz w8,0x02c610fc
02c610f8  bl 0x029f5bd0
02c610fc  mov x0,x20
02c61100  mov x1,xzr
02c61104  mov x2,xzr
02c61108  bl 0x057dfa70
02c6110c  tbz w0,#0x0,0x02c61124
02c61110  mov x0,x19
02c61114  ldp x20,x19,[sp, #0x20]
02c61118  ldp x22,x21,[sp, #0x10]
02c6111c  ldr x30,[sp], #0x30
02c61120  b 0x02c613e4
02c61124  ldp x20,x19,[sp, #0x20]
02c61128  ldp x22,x21,[sp, #0x10]
02c6112c  ldr x30,[sp], #0x30
02c61130  ret
02c61134  bl 0x029f5cfc
