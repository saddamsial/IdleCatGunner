02c70d14  stp x30,x21,[sp, #-0x20]!
02c70d18  stp x20,x19,[sp, #0x10]
02c70d1c  adrp x20,0x625c000
02c70d20  adrp x21,0x5e59000
02c70d24  mov x19,x0
02c70d28  ldrb w8,[x20, #0x2ca]
02c70d2c  ldr x21,[x21, #0x1c0]
02c70d30  tbnz w8,#0x0,0x02c70d48
02c70d34  adrp x0,0x5e59000
02c70d38  ldr x0,[x0, #0x1c0]
02c70d3c  bl 0x029f5a50
02c70d40  mov w8,#0x1
02c70d44  strb w8,[x20, #0x2ca]
02c70d48  ldr x0,[x21]
02c70d4c  ldr x20,[x19, #0x68]
02c70d50  strb wzr,[x19, #0x79]
02c70d54  ldr w8,[x0, #0xe4]
02c70d58  cbnz w8,0x02c70d60
02c70d5c  bl 0x029f5bd0
02c70d60  mov x0,x20
02c70d64  mov x1,xzr
02c70d68  mov x2,xzr
02c70d6c  bl 0x057dfa70
02c70d70  tbz w0,#0x0,0x02c70d88
02c70d74  ldr x0,[x19, #0x68]
02c70d78  cbz x0,0x02c70dd8
02c70d7c  mov w1,wzr
02c70d80  mov x2,xzr
02c70d84  bl 0x057dff3c
02c70d88  ldr x0,[x21]
02c70d8c  ldr x20,[x19, #0xa8]
02c70d90  ldr w8,[x0, #0xe4]
02c70d94  cbnz w8,0x02c70d9c
02c70d98  bl 0x029f5bd0
02c70d9c  mov x0,x20
02c70da0  mov x1,xzr
02c70da4  mov x2,xzr
02c70da8  bl 0x057dfa70
02c70dac  tbz w0,#0x0,0x02c70dcc
02c70db0  ldr x0,[x19, #0xa8]
02c70db4  cbz x0,0x02c70dd8
02c70db8  ldp x20,x19,[sp, #0x10]
02c70dbc  mov w1,#0x1
02c70dc0  mov x2,xzr
02c70dc4  ldp x30,x21,[sp], #0x20
02c70dc8  b 0x05a9f1dc
02c70dcc  ldp x20,x19,[sp, #0x10]
02c70dd0  ldp x30,x21,[sp], #0x20
02c70dd4  ret
02c70dd8  bl 0x029f5cfc
