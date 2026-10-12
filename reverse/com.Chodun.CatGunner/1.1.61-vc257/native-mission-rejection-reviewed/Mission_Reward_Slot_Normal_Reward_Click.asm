02c04908  stp x30,x21,[sp, #-0x20]!
02c0490c  stp x20,x19,[sp, #0x10]
02c04910  adrp x21,0x625b000
02c04914  adrp x20,0x5e5d000
02c04918  mov x19,x0
02c0491c  ldrb w8,[x21, #0xe62]
02c04920  ldr x20,[x20, #0xd50]
02c04924  tbnz w8,#0x0,0x02c0493c
02c04928  adrp x0,0x5e5d000
02c0492c  ldr x0,[x0, #0xd50]
02c04930  bl 0x029f5a50
02c04934  mov w8,#0x1
02c04938  strb w8,[x21, #0xe62]
02c0493c  ldr x0,[x20]
02c04940  ldr w8,[x0, #0xe4]
02c04944  cbnz w8,0x02c04950
02c04948  bl 0x029f5bd0
02c0494c  ldr x0,[x20]
02c04950  ldr x8,[x0, #0xb8]
02c04954  ldr x0,[x8, #0x8]
02c04958  cbz x0,0x02c04974
02c0495c  ldr w2,[x19, #0x20]
02c04960  ldp x20,x19,[sp, #0x10]
02c04964  mov w1,wzr
02c04968  mov x3,xzr
02c0496c  ldp x30,x21,[sp], #0x20
02c04970  b 0x02ba5e74
02c04974  bl 0x029f5cfc
