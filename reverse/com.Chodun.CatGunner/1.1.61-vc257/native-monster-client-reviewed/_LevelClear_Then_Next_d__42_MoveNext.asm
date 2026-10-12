02c50570  stp x30,x21,[sp, #-0x20]!
02c50574  stp x20,x19,[sp, #0x10]
02c50578  adrp x20,0x625c000
02c5057c  mov x19,x0
02c50580  ldrb w8,[x20, #0x153]
02c50584  tbnz w8,#0x0,0x02c505a8
02c50588  adrp x0,0x5e5d000
02c5058c  ldr x0,[x0, #0x338]
02c50590  bl 0x029f5a50
02c50594  adrp x0,0x5e5a000
02c50598  ldr x0,[x0, #0x710]
02c5059c  bl 0x029f5a50
02c505a0  mov w8,#0x1
02c505a4  strb w8,[x20, #0x153]
02c505a8  ldr w21,[x19, #0x10]
02c505ac  cbz w21,0x02c50620
02c505b0  cmp w21,#0x1
02c505b4  b.ne 0x02c50660
02c505b8  ldr x20,[x19, #0x20]
02c505bc  mov w8,#0xffffffff
02c505c0  str w8,[x19, #0x10]
02c505c4  cbz x20,0x02c50674
02c505c8  mov x0,x20
02c505cc  mov x1,xzr
02c505d0  str xzr,[x0, #0xe0]!
02c505d4  bl 0x029f59f4
02c505d8  adrp x19,0x5e5d000
02c505dc  ldr x19,[x19, #0x338]
02c505e0  ldr x0,[x19]
02c505e4  ldr w8,[x0, #0xe4]
02c505e8  cbnz w8,0x02c505f4
02c505ec  bl 0x029f5bd0
02c505f0  ldr x0,[x19]
02c505f4  ldr x8,[x0, #0xb8]
02c505f8  ldrb w8,[x8]
02c505fc  cbz w8,0x02c50660
02c50600  ldr x0,[x20, #0x100]
02c50604  cbz x0,0x02c50674
02c50608  mov w1,wzr
02c5060c  mov x2,xzr
02c50610  bl 0x057dff3c
02c50614  mov x0,x20
02c50618  bl 0x02c4daf0
02c5061c  b 0x02c50660
02c50620  adrp x8,0x5e5a000
02c50624  mov w9,#0xffffffff
02c50628  ldr x8,[x8, #0x710]
02c5062c  str w9,[x19, #0x10]
02c50630  ldr x0,[x8]
02c50634  bl 0x029f5cec
02c50638  fmov s0,0x40000000
02c5063c  mov x1,xzr
02c50640  mov x20,x0
02c50644  bl 0x057e84e0
02c50648  mov x0,x19
02c5064c  mov x1,x20
02c50650  str x20,[x0, #0x18]!
02c50654  bl 0x029f59f4
02c50658  mov w8,#0x1
02c5065c  str w8,[x19, #0x10]
02c50660  ldp x20,x19,[sp, #0x10]
02c50664  cmp w21,#0x0
02c50668  cset w0,eq
02c5066c  ldp x30,x21,[sp], #0x20
02c50670  ret
02c50674  bl 0x029f5cfc
