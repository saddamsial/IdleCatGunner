02c6e68c  str x30,[sp, #-0x20]!
02c6e690  stp x20,x19,[sp, #0x10]
02c6e694  adrp x20,0x625c000
02c6e698  mov x19,x0
02c6e69c  ldrb w8,[x20, #0x2b1]
02c6e6a0  tbnz w8,#0x0,0x02c6e6b8
02c6e6a4  adrp x0,0x5e5d000
02c6e6a8  ldr x0,[x0, #0x790]
02c6e6ac  bl 0x029f5a50
02c6e6b0  mov w8,#0x1
02c6e6b4  strb w8,[x20, #0x2b1]
02c6e6b8  ldr x0,[x19, #0x30]
02c6e6bc  cbz x0,0x02c6e6f4
02c6e6c0  mov x1,xzr
02c6e6c4  bl 0x04874260
02c6e6c8  cbz x0,0x02c6e6e8
02c6e6cc  adrp x8,0x5e5d000
02c6e6d0  mov x19,x0
02c6e6d4  ldr x8,[x8, #0x790]
02c6e6d8  ldr x20,[x8]
02c6e6dc  mov x1,x20
02c6e6e0  bl 0x029f5bd4
02c6e6e4  cbz x0,0x02c6e6f8
02c6e6e8  ldp x20,x19,[sp, #0x10]
02c6e6ec  ldr x30,[sp], #0x20
02c6e6f0  ret
02c6e6f4  bl 0x029f5cfc
02c6e6f8  mov x0,x19
02c6e6fc  mov x1,x20
02c6e700  bl 0x029f607c
