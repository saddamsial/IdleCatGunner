02ca0d60  stp x30,x21,[sp, #-0x20]!
02ca0d64  stp x20,x19,[sp, #0x10]
02ca0d68  adrp x21,0x625c000
02ca0d6c  adrp x20,0x5e59000
02ca0d70  mov x19,x0
02ca0d74  ldrb w8,[x21, #0x47c]
02ca0d78  ldr x20,[x20, #0x1c0]
02ca0d7c  tbnz w8,#0x0,0x02ca0d94
02ca0d80  adrp x0,0x5e59000
02ca0d84  ldr x0,[x0, #0x1c0]
02ca0d88  bl 0x029f5a50
02ca0d8c  mov w8,#0x1
02ca0d90  strb w8,[x21, #0x47c]
02ca0d94  ldr x0,[x20]
02ca0d98  ldr x20,[x19, #0x30]
02ca0d9c  ldr w8,[x0, #0xe4]
02ca0da0  cbnz w8,0x02ca0da8
02ca0da4  bl 0x029f5bd0
02ca0da8  mov x0,x20
02ca0dac  mov x1,xzr
02ca0db0  mov x2,xzr
02ca0db4  bl 0x057dfa70
02ca0db8  tbz w0,#0x0,0x02ca0de4
02ca0dbc  ldr x0,[x19, #0x30]
02ca0dc0  cbz x0,0x02ca0df0
02ca0dc4  mov x1,xzr
02ca0dc8  bl 0x057dc1c8
02ca0dcc  cbz x0,0x02ca0df0
02ca0dd0  ldp x20,x19,[sp, #0x10]
02ca0dd4  mov w1,wzr
02ca0dd8  mov x2,xzr
02ca0ddc  ldp x30,x21,[sp], #0x20
02ca0de0  b 0x057dff3c
02ca0de4  ldp x20,x19,[sp, #0x10]
02ca0de8  ldp x30,x21,[sp], #0x20
02ca0dec  ret
02ca0df0  bl 0x029f5cfc
