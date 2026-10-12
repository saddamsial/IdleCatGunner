02caf298  str x30,[sp, #-0x40]!
02caf29c  stp x24,x23,[sp, #0x10]
02caf2a0  stp x22,x21,[sp, #0x20]
02caf2a4  stp x20,x19,[sp, #0x30]
02caf2a8  adrp x20,0x625c000
02caf2ac  mov x19,x0
02caf2b0  ldrb w8,[x20, #0x537]
02caf2b4  tbnz w8,#0x0,0x02caf2d8
02caf2b8  adrp x0,0x5e5e000
02caf2bc  ldr x0,[x0, #0x4d0]
02caf2c0  bl 0x029f5a50
02caf2c4  adrp x0,0x5e59000
02caf2c8  ldr x0,[x0, #0x1c0]
02caf2cc  bl 0x029f5a50
02caf2d0  mov w8,#0x1
02caf2d4  strb w8,[x20, #0x537]
02caf2d8  ldr x0,[x19, #0x28]
02caf2dc  mov w8,#0x5
02caf2e0  str w8,[x19, #0x60]
02caf2e4  cbz x0,0x02caf45c
02caf2e8  mov w1,wzr
02caf2ec  mov x2,xzr
02caf2f0  bl 0x057dff3c
02caf2f4  ldr x0,[x19, #0x30]
02caf2f8  cbz x0,0x02caf45c
02caf2fc  mov w1,wzr
02caf300  mov x2,xzr
02caf304  bl 0x057dff3c
02caf308  ldr x0,[x19, #0x38]
02caf30c  cbz x0,0x02caf45c
02caf310  mov w1,wzr
02caf314  mov x2,xzr
02caf318  bl 0x057dff3c
02caf31c  ldr x0,[x19, #0x40]
02caf320  cbz x0,0x02caf45c
02caf324  mov x1,xzr
02caf328  bl 0x057dc1c8
02caf32c  cbz x0,0x02caf45c
02caf330  mov w1,wzr
02caf334  mov x2,xzr
02caf338  bl 0x057dff3c
02caf33c  ldr x22,[x19, #0x20]
02caf340  cbz x22,0x02caf45c
02caf344  ldr x8,[x22, #0x18]
02caf348  adrp x21,0x5e59000
02caf34c  ldr x21,[x21, #0x1c0]
02caf350  cmp w8,#0x1
02caf354  b.lt 0x02caf3b8
02caf358  mov x23,xzr
02caf35c  and x8,x8,#0xffffffff
02caf360  add x24,x22,#0x20
02caf364  cmp x23,w8, UXTW 
02caf368  b.cs 0x02caf458
02caf36c  ldr x0,[x21]
02caf370  ldr x20,[x24, x23, LSL #0x3]
02caf374  ldr w8,[x0, #0xe4]
02caf378  cbnz w8,0x02caf380
02caf37c  bl 0x029f5bd0
02caf380  mov x0,x20
02caf384  mov x1,xzr
02caf388  mov x2,xzr
02caf38c  bl 0x057dfa70
02caf390  tbz w0,#0x0,0x02caf3a8
02caf394  cbz x20,0x02caf45c
02caf398  mov x0,x20
02caf39c  mov w1,#0x1
02caf3a0  mov x2,xzr
02caf3a4  bl 0x057dff3c
02caf3a8  ldr w8,[x22, #0x18]
02caf3ac  add x23,x23,#0x1
02caf3b0  cmp x23,w8, SXTW 
02caf3b4  b.lt 0x02caf364
02caf3b8  adrp x22,0x5e5e000
02caf3bc  ldr x22,[x22, #0x4d0]
02caf3c0  ldr x0,[x22]
02caf3c4  ldr w8,[x0, #0xe4]
02caf3c8  cbnz w8,0x02caf3d4
02caf3cc  bl 0x029f5bd0
02caf3d0  ldr x0,[x22]
02caf3d4  ldr x8,[x21]
02caf3d8  ldr x9,[x0, #0xb8]
02caf3dc  ldr w10,[x8, #0xe4]
02caf3e0  ldr x20,[x9]
02caf3e4  cbnz w10,0x02caf3f0
02caf3e8  mov x0,x8
02caf3ec  bl 0x029f5bd0
02caf3f0  mov x0,x20
02caf3f4  mov x1,xzr
02caf3f8  mov x2,xzr
02caf3fc  bl 0x057dfa70
02caf400  tbz w0,#0x0,0x02caf42c
02caf404  ldr x0,[x22]
02caf408  ldr w8,[x0, #0xe4]
02caf40c  cbnz w8,0x02caf418
02caf410  bl 0x029f5bd0
02caf414  ldr x0,[x22]
02caf418  ldr x8,[x0, #0xb8]
02caf41c  ldr x0,[x8]
02caf420  cbz x0,0x02caf45c
02caf424  mov x1,xzr
02caf428  bl 0x02b9e3d4
02caf42c  mov x0,x19
02caf430  mov x1,xzr
02caf434  bl 0x057dc1c8
02caf438  cbz x0,0x02caf45c
02caf43c  ldp x20,x19,[sp, #0x30]
02caf440  mov w1,wzr
02caf444  ldp x22,x21,[sp, #0x20]
02caf448  mov x2,xzr
02caf44c  ldp x24,x23,[sp, #0x10]
02caf450  ldr x30,[sp], #0x40
02caf454  b 0x057dff3c
02caf458  bl 0x029f5d04
02caf45c  bl 0x029f5cfc
