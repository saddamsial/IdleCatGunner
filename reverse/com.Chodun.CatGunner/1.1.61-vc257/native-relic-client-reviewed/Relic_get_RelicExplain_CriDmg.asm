02be1168  sub sp,sp,#0x30
02be116c  str x30,[sp, #0x10]
02be1170  stp x20,x19,[sp, #0x20]
02be1174  adrp x20,0x625b000
02be1178  adrp x19,0x5e5e000
02be117c  ldrb w8,[x20, #0xc6e]
02be1180  ldr x19,[x19, #0x528]
02be1184  tbnz w8,#0x0,0x02be11a8
02be1188  adrp x0,0x5e5e000
02be118c  ldr x0,[x0, #0x528]
02be1190  bl 0x029f5a50
02be1194  adrp x0,0x5e60000
02be1198  ldr x0,[x0, #0xe18]
02be119c  bl 0x029f5a50
02be11a0  mov w8,#0x1
02be11a4  strb w8,[x20, #0xc6e]
02be11a8  ldr x0,[x19]
02be11ac  adrp x19,0x5e60000
02be11b0  ldr w8,[x0, #0xe4]
02be11b4  ldr x19,[x19, #0xe18]
02be11b8  cbnz w8,0x02be11c0
02be11bc  bl 0x029f5bd0
02be11c0  ldr x0,[x19]
02be11c4  mov w1,#0x1
02be11c8  mov w2,wzr
02be11cc  mov w3,#0x1
02be11d0  mov w4,wzr
02be11d4  mov x5,xzr
02be11d8  mov x6,xzr
02be11dc  mov w7,#0x1
02be11e0  str xzr,[sp]
02be11e4  bl 0x02bccb00
02be11e8  ldp x20,x19,[sp, #0x20]
02be11ec  ldr x30,[sp, #0x10]
02be11f0  add sp,sp,#0x30
02be11f4  ret
