02be0478  sub sp,sp,#0x30
02be047c  str x30,[sp, #0x10]
02be0480  stp x20,x19,[sp, #0x20]
02be0484  adrp x20,0x625b000
02be0488  adrp x19,0x5e5e000
02be048c  ldrb w8,[x20, #0xc57]
02be0490  ldr x19,[x19, #0x528]
02be0494  tbnz w8,#0x0,0x02be04b8
02be0498  adrp x0,0x5e5e000
02be049c  ldr x0,[x0, #0x528]
02be04a0  bl 0x029f5a50
02be04a4  adrp x0,0x5e60000
02be04a8  ldr x0,[x0, #0xd60]
02be04ac  bl 0x029f5a50
02be04b0  mov w8,#0x1
02be04b4  strb w8,[x20, #0xc57]
02be04b8  ldr x0,[x19]
02be04bc  adrp x19,0x5e60000
02be04c0  ldr w8,[x0, #0xe4]
02be04c4  ldr x19,[x19, #0xd60]
02be04c8  cbnz w8,0x02be04d0
02be04cc  bl 0x029f5bd0
02be04d0  ldr x0,[x19]
02be04d4  mov w1,#0x1
02be04d8  mov w2,wzr
02be04dc  mov w3,#0x1
02be04e0  mov w4,wzr
02be04e4  mov x5,xzr
02be04e8  mov x6,xzr
02be04ec  mov w7,#0x1
02be04f0  str xzr,[sp]
02be04f4  bl 0x02bccb00
02be04f8  ldp x20,x19,[sp, #0x20]
02be04fc  ldr x30,[sp, #0x10]
02be0500  add sp,sp,#0x30
02be0504  ret
