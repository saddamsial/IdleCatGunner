02c38d44  stp x30,x21,[sp, #-0x20]!
02c38d48  stp x20,x19,[sp, #0x10]
02c38d4c  adrp x20,0x625c000
02c38d50  adrp x21,0x5e5d000
02c38d54  mov x19,x0
02c38d58  ldrb w8,[x20, #0x88]
02c38d5c  ldr x21,[x21, #0x4e0]
02c38d60  tbnz w8,#0x0,0x02c38d78
02c38d64  adrp x0,0x5e5d000
02c38d68  ldr x0,[x0, #0x4e0]
02c38d6c  bl 0x029f5a50
02c38d70  mov w8,#0x1
02c38d74  strb w8,[x20, #0x88]
02c38d78  ldr x8,[x21]
02c38d7c  ldr x8,[x8, #0xb8]
02c38d80  ldr x0,[x8, #0x10]
02c38d84  cbz x0,0x02c38ddc
02c38d88  ldr x20,[x19, #0x270]
02c38d8c  mov x1,xzr
02c38d90  bl 0x02ca8438
02c38d94  cbz x20,0x02c38ddc
02c38d98  mov x1,x0
02c38d9c  mov x0,x20
02c38da0  mov x2,xzr
02c38da4  bl 0x0578eb10
02c38da8  ldr x8,[x21]
02c38dac  ldr x8,[x8, #0xb8]
02c38db0  ldr x0,[x8, #0x10]
02c38db4  cbz x0,0x02c38ddc
02c38db8  ldr x19,[x19, #0x278]
02c38dbc  mov x1,xzr
02c38dc0  bl 0x02ca846c
02c38dc4  cbz x19,0x02c38ddc
02c38dc8  mov x0,x19
02c38dcc  ldp x20,x19,[sp, #0x10]
02c38dd0  mov x1,xzr
02c38dd4  ldp x30,x21,[sp], #0x20
02c38dd8  b 0x0578ece0
02c38ddc  bl 0x029f5cfc
