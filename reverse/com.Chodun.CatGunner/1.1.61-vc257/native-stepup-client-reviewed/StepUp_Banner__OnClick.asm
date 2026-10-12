02ca3d68  str x30,[sp, #-0x20]!
02ca3d6c  stp x20,x19,[sp, #0x10]
02ca3d70  adrp x20,0x625c000
02ca3d74  adrp x19,0x5e5e000
02ca3d78  ldrb w8,[x20, #0x4a4]
02ca3d7c  ldr x19,[x19, #0x4b8]
02ca3d80  tbnz w8,#0x0,0x02ca3da4
02ca3d84  adrp x0,0x5e5e000
02ca3d88  ldr x0,[x0, #0x4b8]
02ca3d8c  bl 0x029f5a50
02ca3d90  adrp x0,0x5e64000
02ca3d94  ldr x0,[x0, #0x1b8]
02ca3d98  bl 0x029f5a50
02ca3d9c  mov w8,#0x1
02ca3da0  strb w8,[x20, #0x4a4]
02ca3da4  ldr x0,[x19]
02ca3da8  ldr w8,[x0, #0xe4]
02ca3dac  cbnz w8,0x02ca3db8
02ca3db0  bl 0x029f5bd0
02ca3db4  ldr x0,[x19]
02ca3db8  ldr x8,[x0, #0xb8]
02ca3dbc  ldr x0,[x8]
02ca3dc0  cbz x0,0x02ca3ddc
02ca3dc4  adrp x8,0x5e64000
02ca3dc8  ldr x8,[x8, #0x1b8]
02ca3dcc  ldp x20,x19,[sp, #0x10]
02ca3dd0  ldr x1,[x8]
02ca3dd4  ldr x30,[sp], #0x20
02ca3dd8  b 0x02ca3414
02ca3ddc  bl 0x029f5cfc
