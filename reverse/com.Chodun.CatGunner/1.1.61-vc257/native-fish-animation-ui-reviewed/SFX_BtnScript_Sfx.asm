02c222a0  str x30,[sp, #-0x20]!
02c222a4  stp x20,x19,[sp, #0x10]
02c222a8  adrp x20,0x625b000
02c222ac  mov x19,x0
02c222b0  ldrb w8,[x20, #0xa57]
02c222b4  cbnz w8,0x02c222cc
02c222b8  adrp x0,0x5e5d000
02c222bc  ldr x0,[x0, #0xd70]
02c222c0  bl 0x029f5a50
02c222c4  mov w8,#0x1
02c222c8  strb w8,[x20, #0xa57]
02c222cc  adrp x8,0x5e5d000
02c222d0  ldr x8,[x8, #0xd70]
02c222d4  ldr x8,[x8]
02c222d8  ldr x8,[x8, #0xb8]
02c222dc  ldr x0,[x8]
02c222e0  cbz x0,0x02c222fc
02c222e4  ldr w1,[x19, #0x20]
02c222e8  ldp x20,x19,[sp, #0x10]
02c222ec  fmov s0,0x3f800000
02c222f0  mov x2,xzr
02c222f4  ldr x30,[sp], #0x20
02c222f8  b 0x02c1f10c
02c222fc  bl 0x029f5cfc
