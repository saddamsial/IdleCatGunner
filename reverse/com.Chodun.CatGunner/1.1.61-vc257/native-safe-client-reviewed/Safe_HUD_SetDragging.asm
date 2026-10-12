02c6b68c  str x30,[sp, #-0x30]!
02c6b690  stp x22,x21,[sp, #0x10]
02c6b694  stp x20,x19,[sp, #0x20]
02c6b698  adrp x22,0x625c000
02c6b69c  adrp x21,0x5e59000
02c6b6a0  mov w19,w1
02c6b6a4  ldrb w8,[x22, #0x28c]
02c6b6a8  ldr x21,[x21, #0x1c0]
02c6b6ac  mov x20,x0
02c6b6b0  tbnz w8,#0x0,0x02c6b6c8
02c6b6b4  adrp x0,0x5e59000
02c6b6b8  ldr x0,[x0, #0x1c0]
02c6b6bc  bl 0x029f5a50
02c6b6c0  mov w8,#0x1
02c6b6c4  strb w8,[x22, #0x28c]
02c6b6c8  ldr x0,[x21]
02c6b6cc  ldr x21,[x20, #0x20]
02c6b6d0  ldr w8,[x0, #0xe4]
02c6b6d4  cbnz w8,0x02c6b6dc
02c6b6d8  bl 0x029f5bd0
02c6b6dc  mov x0,x21
02c6b6e0  mov x1,xzr
02c6b6e4  mov x2,xzr
02c6b6e8  bl 0x057dfa70
02c6b6ec  tbz w0,#0x0,0x02c6b718
02c6b6f0  ldr x21,[x20, #0x20]
02c6b6f4  tbz w19,#0x0,0x02c6b700
02c6b6f8  bl 0x02c6b3f4
02c6b6fc  b 0x02c6b704
02c6b700  mov w0,wzr
02c6b704  cbz x21,0x02c6b744
02c6b708  and w1,w0,#0x1
02c6b70c  mov x0,x21
02c6b710  mov x2,xzr
02c6b714  bl 0x057dff3c
02c6b718  tbz w19,#0x0,0x02c6b72c
02c6b71c  ldp x20,x19,[sp, #0x20]
02c6b720  ldp x22,x21,[sp, #0x10]
02c6b724  ldr x30,[sp], #0x30
02c6b728  ret
02c6b72c  mov x0,x20
02c6b730  ldp x20,x19,[sp, #0x20]
02c6b734  ldp x22,x21,[sp, #0x10]
02c6b738  mov w1,wzr
02c6b73c  ldr x30,[sp], #0x30
02c6b740  b 0x02c6b564
02c6b744  bl 0x029f5cfc
