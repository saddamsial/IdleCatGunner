02c69c78  stp x30,x21,[sp, #-0x20]!
02c69c7c  stp x20,x19,[sp, #0x10]
02c69c80  adrp x21,0x625c000
02c69c84  adrp x20,0x5e59000
02c69c88  mov x19,x0
02c69c8c  ldrb w8,[x21, #0x275]
02c69c90  ldr x20,[x20, #0x1c0]
02c69c94  tbnz w8,#0x0,0x02c69cac
02c69c98  adrp x0,0x5e59000
02c69c9c  ldr x0,[x0, #0x1c0]
02c69ca0  bl 0x029f5a50
02c69ca4  mov w8,#0x1
02c69ca8  strb w8,[x21, #0x275]
02c69cac  ldr x0,[x20]
02c69cb0  ldr x20,[x19, #0xb0]
02c69cb4  ldr w8,[x0, #0xe4]
02c69cb8  cbnz w8,0x02c69cc0
02c69cbc  bl 0x029f5bd0
02c69cc0  mov x0,x20
02c69cc4  mov x1,xzr
02c69cc8  mov x2,xzr
02c69ccc  bl 0x057dfa70
02c69cd0  tbz w0,#0x0,0x02c69cfc
02c69cd4  ldr x20,[x19, #0xb0]
02c69cd8  mov x0,x19
02c69cdc  bl 0x02c6a0ac
02c69ce0  cbz x20,0x02c69d08
02c69ce4  and w1,w0,#0x1
02c69ce8  mov x0,x20
02c69cec  mov x2,xzr
02c69cf0  ldp x20,x19,[sp, #0x10]
02c69cf4  ldp x30,x21,[sp], #0x20
02c69cf8  b 0x057dff3c
02c69cfc  ldp x20,x19,[sp, #0x10]
02c69d00  ldp x30,x21,[sp], #0x20
02c69d04  ret
02c69d08  bl 0x029f5cfc
