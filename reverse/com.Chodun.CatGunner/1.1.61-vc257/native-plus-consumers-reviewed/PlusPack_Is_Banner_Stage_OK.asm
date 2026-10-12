02c918a0  str x30,[sp, #-0x20]!
02c918a4  stp x20,x19,[sp, #0x10]
02c918a8  adrp x19,0x625c000
02c918ac  adrp x20,0x5e5d000
02c918b0  ldrb w8,[x19, #0x3f6]
02c918b4  ldr x20,[x20, #0xc20]
02c918b8  tbnz w8,#0x0,0x02c918dc
02c918bc  adrp x0,0x5e59000
02c918c0  ldr x0,[x0, #0x1c0]
02c918c4  bl 0x029f5a50
02c918c8  adrp x0,0x5e5d000
02c918cc  ldr x0,[x0, #0xc20]
02c918d0  bl 0x029f5a50
02c918d4  mov w8,#0x1
02c918d8  strb w8,[x19, #0x3f6]
02c918dc  ldr x0,[x20]
02c918e0  adrp x19,0x5e59000
02c918e4  ldr w8,[x0, #0xe4]
02c918e8  ldr x19,[x19, #0x1c0]
02c918ec  cbnz w8,0x02c918f8
02c918f0  bl 0x029f5bd0
02c918f4  ldr x0,[x20]
02c918f8  ldr x8,[x19]
02c918fc  ldr x9,[x0, #0xb8]
02c91900  ldr w10,[x8, #0xe4]
02c91904  ldr x19,[x9, #0x10]
02c91908  cbnz w10,0x02c91914
02c9190c  mov x0,x8
02c91910  bl 0x029f5bd0
02c91914  mov x0,x19
02c91918  mov x1,xzr
02c9191c  mov x2,xzr
02c91920  bl 0x057dfa70
02c91924  tbz w0,#0x0,0x02c91958
02c91928  ldr x0,[x20]
02c9192c  ldr w8,[x0, #0xe4]
02c91930  cbnz w8,0x02c9193c
02c91934  bl 0x029f5bd0
02c91938  ldr x0,[x20]
02c9193c  ldr x8,[x0, #0xb8]
02c91940  ldr x8,[x8, #0x10]
02c91944  cbz x8,0x02c91968
02c91948  ldr w8,[x8, #0x30]
02c9194c  cmp w8,#0xbd
02c91950  cset w0,gt
02c91954  b 0x02c9195c
02c91958  mov w0,wzr
02c9195c  ldp x20,x19,[sp, #0x10]
02c91960  ldr x30,[sp], #0x20
02c91964  ret
02c91968  bl 0x029f5cfc
