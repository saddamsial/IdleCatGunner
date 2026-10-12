02c34d28  stp x30,x21,[sp, #-0x20]!
02c34d2c  stp x20,x19,[sp, #0x10]
02c34d30  adrp x21,0x625c000
02c34d34  adrp x20,0x5e5d000
02c34d38  mov x19,x0
02c34d3c  ldrb w8,[x21, #0x57]
02c34d40  ldr x20,[x20, #0xd28]
02c34d44  tbnz w8,#0x0,0x02c34d5c
02c34d48  adrp x0,0x5e5d000
02c34d4c  ldr x0,[x0, #0xd28]
02c34d50  bl 0x029f5a50
02c34d54  mov w8,#0x1
02c34d58  strb w8,[x21, #0x57]
02c34d5c  ldr x0,[x20]
02c34d60  ldr w8,[x0, #0xe4]
02c34d64  cbnz w8,0x02c34d70
02c34d68  bl 0x029f5bd0
02c34d6c  ldr x0,[x20]
02c34d70  ldr x8,[x0, #0xb8]
02c34d74  ldr x8,[x8, #0x10]
02c34d78  cbz x8,0x02c34d94
02c34d7c  ldr x0,[x8, #0x48]
02c34d80  cbz x0,0x02c34d94
02c34d84  ldp w1,w2,[x19, #0x90]
02c34d88  ldp x20,x19,[sp, #0x10]
02c34d8c  ldp x30,x21,[sp], #0x20
02c34d90  b 0x02c342fc
02c34d94  bl 0x029f5cfc
