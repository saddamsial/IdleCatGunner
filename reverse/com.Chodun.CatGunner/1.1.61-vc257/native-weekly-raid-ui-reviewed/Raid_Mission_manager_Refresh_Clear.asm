02c53c8c  stp x30,x21,[sp, #-0x20]!
02c53c90  stp x20,x19,[sp, #0x10]
02c53c94  adrp x20,0x625c000
02c53c98  adrp x21,0x5e5e000
02c53c9c  mov x19,x0
02c53ca0  ldrb w8,[x20, #0x17b]
02c53ca4  ldr x21,[x21, #0x70]
02c53ca8  tbnz w8,#0x0,0x02c53cd8
02c53cac  adrp x0,0x5e59000
02c53cb0  ldr x0,[x0, #0x1c0]
02c53cb4  bl 0x029f5a50
02c53cb8  adrp x0,0x5e5e000
02c53cbc  ldr x0,[x0, #0x68]
02c53cc0  bl 0x029f5a50
02c53cc4  adrp x0,0x5e5e000
02c53cc8  ldr x0,[x0, #0x70]
02c53ccc  bl 0x029f5a50
02c53cd0  mov w8,#0x1
02c53cd4  strb w8,[x20, #0x17b]
02c53cd8  adrp x20,0x5e59000
02c53cdc  mov x0,x19
02c53ce0  ldr x20,[x20, #0x1c0]
02c53ce4  bl 0x02c53fc0
02c53ce8  ldr x0,[x21]
02c53cec  ldr w8,[x0, #0xe4]
02c53cf0  cbnz w8,0x02c53cfc
02c53cf4  bl 0x029f5bd0
02c53cf8  ldr x0,[x21]
02c53cfc  ldr x8,[x20]
02c53d00  ldr x9,[x0, #0xb8]
02c53d04  ldr w10,[x8, #0xe4]
02c53d08  ldr x20,[x9]
02c53d0c  cbnz w10,0x02c53d18
02c53d10  mov x0,x8
02c53d14  bl 0x029f5bd0
02c53d18  mov x0,x20
02c53d1c  mov x1,xzr
02c53d20  mov x2,xzr
02c53d24  bl 0x057e14b4
02c53d28  tbnz w0,#0x0,0x02c53e40
02c53d2c  ldr x0,[x21]
02c53d30  ldr w8,[x0, #0xe4]
02c53d34  cbnz w8,0x02c53d40
02c53d38  bl 0x029f5bd0
02c53d3c  ldr x0,[x21]
02c53d40  ldr x8,[x0, #0xb8]
02c53d44  ldr x0,[x8]
02c53d48  cbz x0,0x02c53e4c
02c53d4c  bl 0x02c548dc
02c53d50  mov x20,xzr
02c53d54  mov w21,wzr
02c53d58  ldr x8,[x19, #0x30]
02c53d5c  cbz x8,0x02c53e4c
02c53d60  ldr w9,[x8, #0x18]
02c53d64  cmp x20,x9
02c53d68  b.cs 0x02c53e50
02c53d6c  add x8,x8,x20
02c53d70  ldrb w8,[x8, #0x20]
02c53d74  cbnz w8,0x02c53dcc
02c53d78  ldr x8,[x19, #0x20]
02c53d7c  cbz x8,0x02c53e4c
02c53d80  ldr w9,[x8, #0x18]
02c53d84  cmp x20,x9
02c53d88  b.cs 0x02c53e50
02c53d8c  add x8,x8,x20, LSL #0x3
02c53d90  ldr x8,[x8, #0x20]
02c53d94  cbz x8,0x02c53e4c
02c53d98  ldr w0,[x8, #0x10]
02c53d9c  bl 0x02c547cc
02c53da0  ldr x8,[x19, #0x20]
02c53da4  cbz x8,0x02c53e4c
02c53da8  ldr w9,[x8, #0x18]
02c53dac  cmp x20,x9
02c53db0  b.cs 0x02c53e50
02c53db4  add x8,x8,x20, LSL #0x3
02c53db8  ldr x8,[x8, #0x20]
02c53dbc  cbz x8,0x02c53e4c
02c53dc0  ldr w8,[x8, #0x14]
02c53dc4  cmp w0,w8
02c53dc8  b.ge 0x02c53ddc
02c53dcc  add x20,x20,#0x1
02c53dd0  cmp x20,#0x8
02c53dd4  b.ne 0x02c53d58
02c53dd8  b 0x02c53e0c
02c53ddc  ldr x8,[x19, #0x30]
02c53de0  cbz x8,0x02c53e4c
02c53de4  ldr w9,[x8, #0x18]
02c53de8  cmp x20,x9
02c53dec  b.cs 0x02c53e50
02c53df0  add x8,x8,x20
02c53df4  mov w21,#0x1
02c53df8  cmp x20,#0x7
02c53dfc  add x20,x20,#0x1
02c53e00  strb w21,[x8, #0x20]
02c53e04  b.ne 0x02c53d58
02c53e08  b 0x02c53e10
02c53e0c  tbz w21,#0x0,0x02c53e40
02c53e10  adrp x8,0x5e5e000
02c53e14  ldr x8,[x8, #0x68]
02c53e18  ldr x8,[x8]
02c53e1c  ldr x8,[x8, #0xb8]
02c53e20  ldr x8,[x8, #0x8]
02c53e24  cbz x8,0x02c53e40
02c53e28  ldp x20,x19,[sp, #0x10]
02c53e2c  ldr x0,[x8, #0x40]
02c53e30  ldr x1,[x8, #0x28]
02c53e34  ldr x2,[x8, #0x18]
02c53e38  ldp x30,x21,[sp], #0x20
02c53e3c  br x2
02c53e40  ldp x20,x19,[sp, #0x10]
02c53e44  ldp x30,x21,[sp], #0x20
02c53e48  ret
02c53e4c  bl 0x029f5cfc
02c53e50  bl 0x029f5d04
