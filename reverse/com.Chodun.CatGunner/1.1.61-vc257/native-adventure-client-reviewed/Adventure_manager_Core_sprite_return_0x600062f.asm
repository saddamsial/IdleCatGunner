02c2cf08  stp x30,x21,[sp, #-0x20]!
02c2cf0c  stp x20,x19,[sp, #0x10]
02c2cf10  adrp x21,0x625b000
02c2cf14  adrp x20,0x5e5d000
02c2cf18  mov w19,w0
02c2cf1c  ldrb w8,[x21, #0xfff]
02c2cf20  ldr x20,[x20, #0xd28]
02c2cf24  tbnz w8,#0x0,0x02c2cf3c
02c2cf28  adrp x0,0x5e5d000
02c2cf2c  ldr x0,[x0, #0xd28]
02c2cf30  bl 0x029f5a50
02c2cf34  mov w8,#0x1
02c2cf38  strb w8,[x21, #0xfff]
02c2cf3c  ldr x0,[x20]
02c2cf40  ldr w8,[x0, #0xe4]
02c2cf44  cbnz w8,0x02c2cf50
02c2cf48  bl 0x029f5bd0
02c2cf4c  ldr x0,[x20]
02c2cf50  ldr x8,[x0, #0xb8]
02c2cf54  ldr x8,[x8, #0x10]
02c2cf58  cbz x8,0x02c2cf84
02c2cf5c  ldr x8,[x8, #0x90]
02c2cf60  cbz x8,0x02c2cf84
02c2cf64  ldr w9,[x8, #0x18]
02c2cf68  cmp w9,w19
02c2cf6c  b.ls 0x02c2cf88
02c2cf70  add x8,x8,w19, SXTW  #0x3
02c2cf74  ldp x20,x19,[sp, #0x10]
02c2cf78  ldr x0,[x8, #0x20]
02c2cf7c  ldp x30,x21,[sp], #0x20
02c2cf80  ret
02c2cf84  bl 0x029f5cfc
02c2cf88  bl 0x029f5d04
