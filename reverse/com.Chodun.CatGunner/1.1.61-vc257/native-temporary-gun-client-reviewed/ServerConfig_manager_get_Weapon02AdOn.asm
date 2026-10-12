02c19370  str x30,[sp, #-0x20]!
02c19374  stp x20,x19,[sp, #0x10]
02c19378  adrp x19,0x625b000
02c1937c  adrp x20,0x5e5d000
02c19380  ldrb w8,[x19, #0xf17]
02c19384  ldr x20,[x20, #0x6a8]
02c19388  tbnz w8,#0x0,0x02c193a0
02c1938c  adrp x0,0x5e5d000
02c19390  ldr x0,[x0, #0x6a8]
02c19394  bl 0x029f5a50
02c19398  mov w8,#0x1
02c1939c  strb w8,[x19, #0xf17]
02c193a0  ldr x0,[x20]
02c193a4  ldr w8,[x0, #0xe4]
02c193a8  cbnz w8,0x02c193b0
02c193ac  bl 0x029f5bd0
02c193b0  bl 0x02c18cc0
02c193b4  cbz x0,0x02c193d0
02c193b8  ldr w8,[x0, #0x54]
02c193bc  ldp x20,x19,[sp, #0x10]
02c193c0  cmp w8,#0x1
02c193c4  cset w0,eq
02c193c8  ldr x30,[sp], #0x20
02c193cc  ret
02c193d0  bl 0x029f5cfc
