02c6d790  str x30,[sp, #-0x20]!
02c6d794  stp x20,x19,[sp, #0x10]
02c6d798  adrp x20,0x625c000
02c6d79c  mov w19,w0
02c6d7a0  ldrb w8,[x20, #0x2a8]
02c6d7a4  tbnz w8,#0x0,0x02c6d7bc
02c6d7a8  adrp x0,0x5e59000
02c6d7ac  ldr x0,[x0]
02c6d7b0  bl 0x029f5a50
02c6d7b4  mov w8,#0x1
02c6d7b8  strb w8,[x20, #0x2a8]
02c6d7bc  subs w19,w19,#0x1
02c6d7c0  b.lt 0x02c6d7fc
02c6d7c4  adrp x8,0x5e59000
02c6d7c8  ldr x8,[x8]
02c6d7cc  ldr x0,[x8]
02c6d7d0  ldr w8,[x0, #0xe4]
02c6d7d4  cbnz w8,0x02c6d7dc
02c6d7d8  bl 0x029f5bd0
02c6d7dc  scvtf d1,w19
02c6d7e0  adrp x8,0x1170000
02c6d7e4  mov x0,xzr
02c6d7e8  ldr d0,[x8, #0x928]
02c6d7ec  bl 0x04852840
02c6d7f0  fmov d1,0x3ff8000000000000
02c6d7f4  fmul d0,d0,d1
02c6d7f8  b 0x02c6d800
02c6d7fc  fmov d0,0x3ff0000000000000
02c6d800  ldp x20,x19,[sp, #0x10]
02c6d804  ldr x30,[sp], #0x20
02c6d808  ret
