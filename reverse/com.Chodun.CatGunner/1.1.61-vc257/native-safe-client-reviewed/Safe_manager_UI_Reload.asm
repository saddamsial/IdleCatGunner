02c69d0c  stp x30,x21,[sp, #-0x20]!
02c69d10  stp x20,x19,[sp, #0x10]
02c69d14  adrp x20,0x625c000
02c69d18  adrp x21,0x5e59000
02c69d1c  mov x19,x0
02c69d20  ldrb w8,[x20, #0x297]
02c69d24  ldr x21,[x21, #0x1c0]
02c69d28  tbnz w8,#0x0,0x02c69d40
02c69d2c  adrp x0,0x5e59000
02c69d30  ldr x0,[x0, #0x1c0]
02c69d34  bl 0x029f5a50
02c69d38  mov w8,#0x1
02c69d3c  strb w8,[x20, #0x297]
02c69d40  ldr x0,[x21]
02c69d44  ldr x20,[x19, #0x38]
02c69d48  ldr w8,[x0, #0xe4]
02c69d4c  cbnz w8,0x02c69d54
02c69d50  bl 0x029f5bd0
02c69d54  mov x0,x20
02c69d58  mov x1,xzr
02c69d5c  mov x2,xzr
02c69d60  bl 0x057dfa70
02c69d64  tbz w0,#0x0,0x02c69d74
02c69d68  ldr x0,[x19, #0x38]
02c69d6c  cbz x0,0x02c69ddc
02c69d70  bl 0x02c6b244
02c69d74  ldr x0,[x21]
02c69d78  ldr x20,[x19, #0x30]
02c69d7c  ldr w8,[x0, #0xe4]
02c69d80  cbnz w8,0x02c69d88
02c69d84  bl 0x029f5bd0
02c69d88  mov x0,x20
02c69d8c  mov x1,xzr
02c69d90  mov x2,xzr
02c69d94  bl 0x057dfa70
02c69d98  tbz w0,#0x0,0x02c69dd0
02c69d9c  ldr x0,[x19, #0x30]
02c69da0  cbz x0,0x02c69ddc
02c69da4  mov x1,xzr
02c69da8  bl 0x057dc1c8
02c69dac  cbz x0,0x02c69ddc
02c69db0  mov x1,xzr
02c69db4  bl 0x057e00b4
02c69db8  tbz w0,#0x0,0x02c69dd0
02c69dbc  ldr x0,[x19, #0x30]
02c69dc0  cbz x0,0x02c69ddc
02c69dc4  ldp x20,x19,[sp, #0x10]
02c69dc8  ldp x30,x21,[sp], #0x20
02c69dcc  b 0x02c6c5c4
02c69dd0  ldp x20,x19,[sp, #0x10]
02c69dd4  ldp x30,x21,[sp], #0x20
02c69dd8  ret
02c69ddc  bl 0x029f5cfc
