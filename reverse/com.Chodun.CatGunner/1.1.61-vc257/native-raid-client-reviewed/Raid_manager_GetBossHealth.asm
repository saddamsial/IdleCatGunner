02c59584  sub sp,sp,#0x50
02c59588  str x30,[sp, #0x20]
02c5958c  stp x22,x21,[sp, #0x30]
02c59590  stp x20,x19,[sp, #0x40]
02c59594  adrp x22,0x625c000
02c59598  adrp x21,0x5e5e000
02c5959c  mov x20,x0
02c595a0  ldrb w9,[x22, #0x1b6]
02c595a4  ldr x21,[x21, #0x70]
02c595a8  mov x19,x8
02c595ac  tbnz w9,#0x0,0x02c595c4
02c595b0  adrp x0,0x5e5e000
02c595b4  ldr x0,[x0, #0x70]
02c595b8  bl 0x029f5a50
02c595bc  mov w8,#0x1
02c595c0  strb w8,[x22, #0x1b6]
02c595c4  ldr x0,[x21]
02c595c8  ldr w20,[x20, #0xb0]
02c595cc  ldr w8,[x0, #0xe4]
02c595d0  cbnz w8,0x02c595d8
02c595d4  bl 0x029f5bd0
02c595d8  mov x8,sp
02c595dc  mov w0,w20
02c595e0  bl 0x02c56c34
02c595e4  ldp q0,q1,[sp]
02c595e8  ldr x30,[sp, #0x20]
02c595ec  ldp x22,x21,[sp, #0x30]
02c595f0  stp q0,q1,[x19]
02c595f4  ldp x20,x19,[sp, #0x40]
02c595f8  add sp,sp,#0x50
02c595fc  ret
