02b8274c  str d8,[sp, #-0x30]!
02b82750  stp x30,x21,[sp, #0x10]
02b82754  stp x20,x19,[sp, #0x20]
02b82758  fmov s8,s0
02b8275c  adrp x21,0x625b000
02b82760  adrp x20,0x5e59000
02b82764  ldrb w8,[x21, #0x8dc]
02b82768  ldr x20,[x20, #0x1c0]
02b8276c  mov x19,x0
02b82770  tbnz w8,#0x0,0x02b82794
02b82774  adrp x0,0x5e5b000
02b82778  ldr x0,[x0, #0x2a8]
02b8277c  bl 0x029f5a50
02b82780  adrp x0,0x5e59000
02b82784  ldr x0,[x0, #0x1c0]
02b82788  bl 0x029f5a50
02b8278c  mov w8,#0x1
02b82790  strb w8,[x21, #0x8dc]
02b82794  ldr x0,[x20]
02b82798  mov x20,x19
02b8279c  ldr x21,[x20, #0x20]!
02b827a0  ldr w8,[x0, #0xe4]
02b827a4  cbnz w8,0x02b827ac
02b827a8  bl 0x029f5bd0
02b827ac  mov x0,x21
02b827b0  mov x1,xzr
02b827b4  mov x2,xzr
02b827b8  bl 0x057e14b4
02b827bc  tbz w0,#0x0,0x02b827e4
02b827c0  adrp x8,0x5e5b000
02b827c4  mov x0,x19
02b827c8  ldr x8,[x8, #0x2a8]
02b827cc  ldr x1,[x8]
02b827d0  bl 0x02fe5f2c
02b827d4  mov x1,x0
02b827d8  str x0,[x19, #0x20]
02b827dc  mov x0,x20
02b827e0  bl 0x029f59f4
02b827e4  ldr x0,[x20]
02b827e8  cbz x0,0x02b82810
02b827ec  ldp x20,x19,[sp, #0x20]
02b827f0  fmov s1,0x3f800000
02b827f4  ldp x30,x21,[sp, #0x10]
02b827f8  fmov s2,0x3f800000
02b827fc  fmov s3,0x3f800000
02b82800  fmov s0,s8
02b82804  mov x1,xzr
02b82808  ldr d8,[sp], #0x30
02b8280c  b 0x0578ece0
02b82810  bl 0x029f5cfc
