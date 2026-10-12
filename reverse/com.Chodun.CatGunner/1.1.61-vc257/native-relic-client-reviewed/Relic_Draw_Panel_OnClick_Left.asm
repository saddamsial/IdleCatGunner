02c308d0  str x30,[sp, #-0x20]!
02c308d4  stp x20,x19,[sp, #0x10]
02c308d8  ldrb w8,[x0, #0x78]
02c308dc  cbz w8,0x02c308ec
02c308e0  ldp x20,x19,[sp, #0x10]
02c308e4  ldr x30,[sp], #0x20
02c308e8  ret
02c308ec  ldr w8,[x0, #0x70]
02c308f0  mov x19,x0
02c308f4  subs w1,w8,#0x1
02c308f8  b.lt 0x02c308e0
02c308fc  mov x0,x19
02c30900  mov w2,#0x1
02c30904  str w1,[x19, #0x70]
02c30908  mov w20,#0x1
02c3090c  bl 0x02c30760
02c30910  mov x0,x19
02c30914  bl 0x02c30850
02c30918  adrp x19,0x625b000
02c3091c  ldrb w8,[x19, #0xa57]
02c30920  cbnz w8,0x02c30934
02c30924  adrp x0,0x5e5d000
02c30928  ldr x0,[x0, #0xd70]
02c3092c  bl 0x029f5a50
02c30930  strb w20,[x19, #0xa57]
02c30934  adrp x8,0x5e5d000
02c30938  ldr x8,[x8, #0xd70]
02c3093c  ldr x8,[x8]
02c30940  ldr x8,[x8, #0xb8]
02c30944  ldr x0,[x8]
02c30948  cbz x0,0x02c30964
02c3094c  ldp x20,x19,[sp, #0x10]
02c30950  fmov s0,0x3f800000
02c30954  mov w1,#0xe
02c30958  mov x2,xzr
02c3095c  ldr x30,[sp], #0x20
02c30960  b 0x02c1f10c
02c30964  bl 0x029f5cfc
