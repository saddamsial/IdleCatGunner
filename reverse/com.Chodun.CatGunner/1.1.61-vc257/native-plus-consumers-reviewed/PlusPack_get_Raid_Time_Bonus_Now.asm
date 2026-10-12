02c90978  str x30,[sp, #-0x20]!
02c9097c  stp x20,x19,[sp, #0x10]
02c90980  adrp x19,0x625c000
02c90984  adrp x20,0x5e5e000
02c90988  ldrb w8,[x19, #0x3e8]
02c9098c  ldr x20,[x20, #0xb8]
02c90990  tbnz w8,#0x0,0x02c909a8
02c90994  adrp x0,0x5e5e000
02c90998  ldr x0,[x0, #0xb8]
02c9099c  bl 0x029f5a50
02c909a0  mov w8,#0x1
02c909a4  strb w8,[x19, #0x3e8]
02c909a8  ldr x0,[x20]
02c909ac  ldr w8,[x0, #0xe4]
02c909b0  cbnz w8,0x02c909b8
02c909b4  bl 0x029f5bd0
02c909b8  mov w0,wzr
02c909bc  bl 0x02c9077c
02c909c0  movi d0,#0x0
02c909c4  fmov s1,0x41200000
02c909c8  tst w0,#0x1
02c909cc  ldp x20,x19,[sp, #0x10]
02c909d0  fcsel s0,s1,s0,ne
02c909d4  ldr x30,[sp], #0x20
02c909d8  ret
