02be0598  sub sp,sp,#0x30
02be059c  str x30,[sp, #0x10]
02be05a0  stp x20,x19,[sp, #0x20]
02be05a4  adrp x20,0x625b000
02be05a8  adrp x19,0x5e5e000
02be05ac  ldrb w8,[x20, #0xc59]
02be05b0  ldr x19,[x19, #0x528]
02be05b4  tbnz w8,#0x0,0x02be05d8
02be05b8  adrp x0,0x5e5e000
02be05bc  ldr x0,[x0, #0x528]
02be05c0  bl 0x029f5a50
02be05c4  adrp x0,0x5e60000
02be05c8  ldr x0,[x0, #0xd70]
02be05cc  bl 0x029f5a50
02be05d0  mov w8,#0x1
02be05d4  strb w8,[x20, #0xc59]
02be05d8  ldr x0,[x19]
02be05dc  adrp x19,0x5e60000
02be05e0  ldr w8,[x0, #0xe4]
02be05e4  ldr x19,[x19, #0xd70]
02be05e8  cbnz w8,0x02be05f0
02be05ec  bl 0x029f5bd0
02be05f0  ldr x0,[x19]
02be05f4  mov w1,#0x1
02be05f8  mov w2,wzr
02be05fc  mov w3,#0x1
02be0600  mov w4,wzr
02be0604  mov x5,xzr
02be0608  mov x6,xzr
02be060c  mov w7,#0x1
02be0610  str xzr,[sp]
02be0614  bl 0x02bccb00
02be0618  ldp x20,x19,[sp, #0x20]
02be061c  ldr x30,[sp, #0x10]
02be0620  add sp,sp,#0x30
02be0624  ret
