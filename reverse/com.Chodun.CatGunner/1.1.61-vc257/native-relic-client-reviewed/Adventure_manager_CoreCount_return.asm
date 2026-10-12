02c2cc20  stp x30,x21,[sp, #-0x20]!
02c2cc24  stp x20,x19,[sp, #0x10]
02c2cc28  adrp x21,0x625b000
02c2cc2c  adrp x20,0x5e5d000
02c2cc30  mov w19,w0
02c2cc34  ldrb w8,[x21, #0xffb]
02c2cc38  ldr x20,[x20, #0xd28]
02c2cc3c  tbnz w8,#0x0,0x02c2cc54
02c2cc40  adrp x0,0x5e5d000
02c2cc44  ldr x0,[x0, #0xd28]
02c2cc48  bl 0x029f5a50
02c2cc4c  mov w8,#0x1
02c2cc50  strb w8,[x21, #0xffb]
02c2cc54  ldr x0,[x20]
02c2cc58  ldr w8,[x0, #0xe4]
02c2cc5c  cbnz w8,0x02c2cc68
02c2cc60  bl 0x029f5bd0
02c2cc64  ldr x0,[x20]
02c2cc68  ldr x8,[x0, #0xb8]
02c2cc6c  ldr x8,[x8, #0x10]
02c2cc70  cbz x8,0x02c2cc9c
02c2cc74  ldr x8,[x8, #0x28]
02c2cc78  cbz x8,0x02c2cc9c
02c2cc7c  ldr w9,[x8, #0x18]
02c2cc80  cmp w9,w19
02c2cc84  b.ls 0x02c2cca0
02c2cc88  add x8,x8,w19, SXTW  #0x2
02c2cc8c  ldp x20,x19,[sp, #0x10]
02c2cc90  ldr w0,[x8, #0x20]
02c2cc94  ldp x30,x21,[sp], #0x20
02c2cc98  ret
02c2cc9c  bl 0x029f5cfc
02c2cca0  bl 0x029f5d04
