02ca2d18  stp x30,x21,[sp, #-0x20]!
02ca2d1c  stp x20,x19,[sp, #0x10]
02ca2d20  adrp x21,0x625c000
02ca2d24  adrp x20,0x5e59000
02ca2d28  mov x19,x0
02ca2d2c  ldrb w8,[x21, #0x49b]
02ca2d30  ldr x20,[x20, #0x1c0]
02ca2d34  tbnz w8,#0x0,0x02ca2d4c
02ca2d38  adrp x0,0x5e59000
02ca2d3c  ldr x0,[x0, #0x1c0]
02ca2d40  bl 0x029f5a50
02ca2d44  mov w8,#0x1
02ca2d48  strb w8,[x21, #0x49b]
02ca2d4c  ldr x0,[x20]
02ca2d50  ldr x20,[x19, #0x30]
02ca2d54  ldr w8,[x0, #0xe4]
02ca2d58  cbnz w8,0x02ca2d60
02ca2d5c  bl 0x029f5bd0
02ca2d60  mov x0,x20
02ca2d64  mov x1,xzr
02ca2d68  mov x2,xzr
02ca2d6c  bl 0x057dfa70
02ca2d70  tbz w0,#0x0,0x02ca2d88
02ca2d74  ldr x0,[x19, #0x30]
02ca2d78  cbz x0,0x02ca2d94
02ca2d7c  ldp x20,x19,[sp, #0x10]
02ca2d80  ldp x30,x21,[sp], #0x20
02ca2d84  b 0x02ca300c
02ca2d88  ldp x20,x19,[sp, #0x10]
02ca2d8c  ldp x30,x21,[sp], #0x20
02ca2d90  ret
02ca2d94  bl 0x029f5cfc
