02c6267c  stp x30,x21,[sp, #-0x20]!
02c62680  stp x20,x19,[sp, #0x10]
02c62684  adrp x21,0x625c000
02c62688  mov x19,x1
02c6268c  mov x20,x0
02c62690  ldrb w8,[x21, #0x238]
02c62694  tbnz w8,#0x0,0x02c626ac
02c62698  adrp x0,0x5e59000
02c6269c  ldr x0,[x0, #0x1c0]
02c626a0  bl 0x029f5a50
02c626a4  mov w8,#0x1
02c626a8  strb w8,[x21, #0x238]
02c626ac  cbz x19,0x02c6271c
02c626b0  ldrb w8,[x19, #0x48]
02c626b4  cbz w8,0x02c626f8
02c626b8  adrp x21,0x5e59000
02c626bc  mov x0,x20
02c626c0  mov x1,x19
02c626c4  ldr x21,[x21, #0x1c0]
02c626c8  bl 0x02c636c4
02c626cc  ldr x8,[x21]
02c626d0  mov x21,x0
02c626d4  ldr w9,[x8, #0xe4]
02c626d8  cbnz w9,0x02c626e4
02c626dc  mov x0,x8
02c626e0  bl 0x029f5bd0
02c626e4  mov x0,x21
02c626e8  mov x1,xzr
02c626ec  mov x2,xzr
02c626f0  bl 0x057e14b4
02c626f4  tbz w0,#0x0,0x02c62704
02c626f8  ldp x20,x19,[sp, #0x10]
02c626fc  ldp x30,x21,[sp], #0x20
02c62700  ret
02c62704  mov x0,x20
02c62708  mov x1,x19
02c6270c  mov x2,x21
02c62710  ldp x20,x19,[sp, #0x10]
02c62714  ldp x30,x21,[sp], #0x20
02c62718  b 0x02c637bc
02c6271c  bl 0x029f5cfc
