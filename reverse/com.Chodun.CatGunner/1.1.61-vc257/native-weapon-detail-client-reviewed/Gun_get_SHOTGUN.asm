02be08f8  sub sp,sp,#0x30
02be08fc  str x30,[sp, #0x10]
02be0900  stp x20,x19,[sp, #0x20]
02be0904  adrp x20,0x625b000
02be0908  adrp x19,0x5e5e000
02be090c  ldrb w8,[x20, #0xc5f]
02be0910  ldr x19,[x19, #0x528]
02be0914  tbnz w8,#0x0,0x02be0938
02be0918  adrp x0,0x5e5e000
02be091c  ldr x0,[x0, #0x528]
02be0920  bl 0x029f5a50
02be0924  adrp x0,0x5e60000
02be0928  ldr x0,[x0, #0xda0]
02be092c  bl 0x029f5a50
02be0930  mov w8,#0x1
02be0934  strb w8,[x20, #0xc5f]
02be0938  ldr x0,[x19]
02be093c  adrp x19,0x5e60000
02be0940  ldr w8,[x0, #0xe4]
02be0944  ldr x19,[x19, #0xda0]
02be0948  cbnz w8,0x02be0950
02be094c  bl 0x029f5bd0
02be0950  ldr x0,[x19]
02be0954  mov w1,#0x1
02be0958  mov w2,wzr
02be095c  mov w3,#0x1
02be0960  mov w4,wzr
02be0964  mov x5,xzr
02be0968  mov x6,xzr
02be096c  mov w7,#0x1
02be0970  str xzr,[sp]
02be0974  bl 0x02bccb00
02be0978  ldp x20,x19,[sp, #0x20]
02be097c  ldr x30,[sp, #0x10]
02be0980  add sp,sp,#0x30
02be0984  ret
