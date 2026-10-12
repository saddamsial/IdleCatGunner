02c50978  stp x30,x21,[sp, #-0x20]!
02c5097c  stp x20,x19,[sp, #0x10]
02c50980  adrp x21,0x625c000
02c50984  adrp x20,0x5e59000
02c50988  mov x19,x0
02c5098c  ldrb w8,[x21, #0x158]
02c50990  ldr x20,[x20, #0x1c0]
02c50994  tbnz w8,#0x0,0x02c509b8
02c50998  adrp x0,0x5e59000
02c5099c  ldr x0,[x0, #0x1c0]
02c509a0  bl 0x029f5a50
02c509a4  adrp x0,0x5e5e000
02c509a8  ldr x0,[x0, #0xb8]
02c509ac  bl 0x029f5a50
02c509b0  mov w8,#0x1
02c509b4  strb w8,[x21, #0x158]
02c509b8  ldr x0,[x20]
02c509bc  ldr x20,[x19, #0xb0]
02c509c0  ldr w8,[x0, #0xe4]
02c509c4  cbnz w8,0x02c509cc
02c509c8  bl 0x029f5bd0
02c509cc  mov x0,x20
02c509d0  mov x1,xzr
02c509d4  mov x2,xzr
02c509d8  bl 0x057dfa70
02c509dc  tbz w0,#0x0,0x02c50a24
02c509e0  adrp x8,0x5e5e000
02c509e4  ldr x8,[x8, #0xb8]
02c509e8  ldr x19,[x19, #0xb0]
02c509ec  ldr x0,[x8]
02c509f0  ldr w8,[x0, #0xe4]
02c509f4  cbnz w8,0x02c509fc
02c509f8  bl 0x029f5bd0
02c509fc  mov w0,#0x2
02c50a00  mov x1,xzr
02c50a04  bl 0x02c9196c
02c50a08  cbz x19,0x02c50a30
02c50a0c  and w1,w0,#0x1
02c50a10  mov x0,x19
02c50a14  mov x2,xzr
02c50a18  ldp x20,x19,[sp, #0x10]
02c50a1c  ldp x30,x21,[sp], #0x20
02c50a20  b 0x057dff3c
02c50a24  ldp x20,x19,[sp, #0x10]
02c50a28  ldp x30,x21,[sp], #0x20
02c50a2c  ret
02c50a30  bl 0x029f5cfc
