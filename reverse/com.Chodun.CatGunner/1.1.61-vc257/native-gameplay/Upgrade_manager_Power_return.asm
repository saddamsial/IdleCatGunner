02cb2d48  stp x30,x21,[sp, #-0x20]!
02cb2d4c  stp x20,x19,[sp, #0x10]
02cb2d50  adrp x21,0x625c000
02cb2d54  adrp x20,0x5e5d000
02cb2d58  mov x19,x8
02cb2d5c  ldrb w9,[x21, #0x55c]
02cb2d60  ldr x20,[x20, #0x4e8]
02cb2d64  tbnz w9,#0x0,0x02cb2d7c
02cb2d68  adrp x0,0x5e5d000
02cb2d6c  ldr x0,[x0, #0x4e8]
02cb2d70  bl 0x029f5a50
02cb2d74  mov w8,#0x1
02cb2d78  strb w8,[x21, #0x55c]
02cb2d7c  ldr x0,[x20]
02cb2d80  ldr w8,[x0, #0xe4]
02cb2d84  cbnz w8,0x02cb2d90
02cb2d88  bl 0x029f5bd0
02cb2d8c  ldr x0,[x20]
02cb2d90  ldr x8,[x0, #0xb8]
02cb2d94  ldr x8,[x8]
02cb2d98  cbz x8,0x02cb2dd4
02cb2d9c  ldr x20,[x8, #0x38]
02cb2da0  mov w0,wzr
02cb2da4  bl 0x02caf208
02cb2da8  cbz x20,0x02cb2dd4
02cb2dac  ldr w8,[x20, #0x18]
02cb2db0  cmp w0,w8
02cb2db4  b.cs 0x02cb2dd8
02cb2db8  sxtw x8,w0
02cb2dbc  add x8,x20,x8, LSL #0x5
02cb2dc0  ldp q0,q1,[x8, #0x20]
02cb2dc4  stp q0,q1,[x19]
02cb2dc8  ldp x20,x19,[sp, #0x10]
02cb2dcc  ldp x30,x21,[sp], #0x20
02cb2dd0  ret
02cb2dd4  bl 0x029f5cfc
02cb2dd8  bl 0x029f5d04
