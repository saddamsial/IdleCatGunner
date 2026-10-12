02c35cf8  stp x30,x25,[sp, #-0x40]!
02c35cfc  stp x24,x23,[sp, #0x10]
02c35d00  stp x22,x21,[sp, #0x20]
02c35d04  stp x20,x19,[sp, #0x30]
02c35d08  adrp x21,0x625c000
02c35d0c  adrp x20,0x5e5d000
02c35d10  mov x19,x0
02c35d14  ldrb w8,[x21, #0x66]
02c35d18  ldr x20,[x20, #0x4d0]
02c35d1c  tbnz w8,#0x0,0x02c35d34
02c35d20  adrp x0,0x5e5d000
02c35d24  ldr x0,[x0, #0x4d0]
02c35d28  bl 0x029f5a50
02c35d2c  mov w8,#0x1
02c35d30  strb w8,[x21, #0x66]
02c35d34  ldr x0,[x20]
02c35d38  ldr w8,[x0, #0xe4]
02c35d3c  cbnz w8,0x02c35d48
02c35d40  bl 0x029f5bd0
02c35d44  ldr x0,[x20]
02c35d48  ldr x8,[x0, #0xb8]
02c35d4c  ldr x8,[x8, #0x28]
02c35d50  cbz x8,0x02c35e0c
02c35d54  ldr x9,[x8, #0x30]
02c35d58  cbz x9,0x02c35d64
02c35d5c  ldr w23,[x9, #0x18]
02c35d60  b 0x02c35d68
02c35d64  mov w23,wzr
02c35d68  ldr x8,[x8, #0x38]
02c35d6c  cbz x8,0x02c35d78
02c35d70  ldr w24,[x8, #0x18]
02c35d74  b 0x02c35d7c
02c35d78  mov w24,wzr
02c35d7c  ldr x8,[x19, #0x20]
02c35d80  cbz x8,0x02c35e0c
02c35d84  mov w20,wzr
02c35d88  neg w25,w23
02c35d8c  ldr w9,[x8, #0x18]
02c35d90  cmp w20,w9
02c35d94  b.ge 0x02c35e10
02c35d98  b.cs 0x02c35e24
02c35d9c  add x8,x8,w20, SXTW  #0x3
02c35da0  ldr x21,[x8, #0x20]
02c35da4  cbz x21,0x02c35e0c
02c35da8  mov x0,x21
02c35dac  mov x1,x19
02c35db0  str x19,[x0, #0x38]!
02c35db4  bl 0x029f59f4
02c35db8  cmp w20,w23
02c35dbc  b.ge 0x02c35dd0
02c35dc0  mov w0,w20
02c35dc4  mov x1,xzr
02c35dc8  bl 0x02c2f5bc
02c35dcc  b 0x02c35df4
02c35dd0  add w22,w25,w20
02c35dd4  mov x1,xzr
02c35dd8  mov w0,w22
02c35ddc  bl 0x02c2f5b4
02c35de0  cmp w22,w24
02c35de4  b.lt 0x02c35df4
02c35de8  mov w0,#0x7fffffff
02c35dec  mov x1,xzr
02c35df0  bl 0x02c2f5b4
02c35df4  mov x1,x0
02c35df8  mov x0,x21
02c35dfc  bl 0x02c35e28
02c35e00  ldr x8,[x19, #0x20]
02c35e04  add w20,w20,#0x1
02c35e08  cbnz x8,0x02c35d8c
02c35e0c  bl 0x029f5cfc
02c35e10  ldp x20,x19,[sp, #0x30]
02c35e14  ldp x22,x21,[sp, #0x20]
02c35e18  ldp x24,x23,[sp, #0x10]
02c35e1c  ldp x30,x25,[sp], #0x40
02c35e20  ret
02c35e24  bl 0x029f5d04
