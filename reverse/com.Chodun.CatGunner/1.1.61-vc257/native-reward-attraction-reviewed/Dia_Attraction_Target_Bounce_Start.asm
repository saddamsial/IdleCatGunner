02c26c6c  stp x30,x21,[sp, #-0x20]!
02c26c70  stp x20,x19,[sp, #0x10]
02c26c74  adrp x21,0x625b000
02c26c78  adrp x20,0x5e59000
02c26c7c  mov x19,x0
02c26c80  ldrb w8,[x21, #0xfb6]
02c26c84  ldr x20,[x20, #0x1c0]
02c26c88  tbnz w8,#0x0,0x02c26ca0
02c26c8c  adrp x0,0x5e59000
02c26c90  ldr x0,[x0, #0x1c0]
02c26c94  bl 0x029f5a50
02c26c98  mov w8,#0x1
02c26c9c  strb w8,[x21, #0xfb6]
02c26ca0  ldr x0,[x20]
02c26ca4  ldr x20,[x19, #0x20]
02c26ca8  ldr w8,[x0, #0xe4]
02c26cac  cbnz w8,0x02c26cb4
02c26cb0  bl 0x029f5bd0
02c26cb4  mov x0,x20
02c26cb8  mov x1,xzr
02c26cbc  mov x2,xzr
02c26cc0  bl 0x057dfa70
02c26cc4  tbz w0,#0x0,0x02c26ce0
02c26cc8  ldr x0,[x19, #0x20]
02c26ccc  cbz x0,0x02c26cec
02c26cd0  ldp x20,x19,[sp, #0x10]
02c26cd4  mov x1,xzr
02c26cd8  ldp x30,x21,[sp], #0x20
02c26cdc  b 0x02b9afe0
02c26ce0  ldp x20,x19,[sp, #0x10]
02c26ce4  ldp x30,x21,[sp], #0x20
02c26ce8  ret
02c26cec  bl 0x029f5cfc
