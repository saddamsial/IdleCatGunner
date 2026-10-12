02bee940  str x30,[sp, #-0x30]!
02bee944  stp x22,x21,[sp, #0x10]
02bee948  stp x20,x19,[sp, #0x20]
02bee94c  adrp x20,0x625b000
02bee950  adrp x22,0x5e61000
02bee954  mov x19,x0
02bee958  ldrb w8,[x20, #0xd3e]
02bee95c  ldr x22,[x22, #0x4b8]
02bee960  tbnz w8,#0x0,0x02bee990
02bee964  adrp x0,0x5e5b000
02bee968  ldr x0,[x0, #0x940]
02bee96c  bl 0x029f5a50
02bee970  adrp x0,0x5e61000
02bee974  ldr x0,[x0, #0x4c0]
02bee978  bl 0x029f5a50
02bee97c  adrp x0,0x5e61000
02bee980  ldr x0,[x0, #0x4b8]
02bee984  bl 0x029f5a50
02bee988  mov w8,#0x1
02bee98c  strb w8,[x20, #0xd3e]
02bee990  ldr x0,[x22]
02bee994  ldr w8,[x0, #0xe4]
02bee998  cbnz w8,0x02bee9a4
02bee99c  bl 0x029f5bd0
02bee9a0  ldr x0,[x22]
02bee9a4  ldr x8,[x0, #0xb8]
02bee9a8  ldr x20,[x8, #0x10]
02bee9ac  cbnz x20,0x02beea08
02bee9b0  ldr w9,[x0, #0xe4]
02bee9b4  cbnz w9,0x02bee9c4
02bee9b8  bl 0x029f5bd0
02bee9bc  ldr x8,[x22]
02bee9c0  ldr x8,[x8, #0xb8]
02bee9c4  adrp x9,0x5e5b000
02bee9c8  ldr x9,[x9, #0x940]
02bee9cc  ldr x21,[x8]
02bee9d0  ldr x0,[x9]
02bee9d4  bl 0x029f5cec
02bee9d8  adrp x8,0x5e61000
02bee9dc  mov x1,x21
02bee9e0  mov x3,xzr
02bee9e4  ldr x8,[x8, #0x4c0]
02bee9e8  mov x20,x0
02bee9ec  ldr x2,[x8]
02bee9f0  bl 0x03d323cc
02bee9f4  ldr x8,[x22]
02bee9f8  mov x1,x20
02bee9fc  ldr x0,[x8, #0xb8]
02beea00  str x20,[x0, #0x10]!
02beea04  bl 0x029f59f4
02beea08  cbz x19,0x02beea34
02beea0c  mov x0,x19
02beea10  mov x1,x20
02beea14  str x20,[x0, #0x50]!
02beea18  bl 0x029f59f4
02beea1c  mov x0,x19
02beea20  ldp x20,x19,[sp, #0x20]
02beea24  ldp x22,x21,[sp, #0x10]
02beea28  mov x1,xzr
02beea2c  ldr x30,[sp], #0x30
02beea30  b 0x057e2ee0
02beea34  bl 0x029f5cfc
