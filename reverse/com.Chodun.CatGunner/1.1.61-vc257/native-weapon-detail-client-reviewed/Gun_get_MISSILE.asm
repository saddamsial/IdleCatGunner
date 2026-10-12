02be06b8  sub sp,sp,#0x30
02be06bc  str x30,[sp, #0x10]
02be06c0  stp x20,x19,[sp, #0x20]
02be06c4  adrp x20,0x625b000
02be06c8  adrp x19,0x5e5e000
02be06cc  ldrb w8,[x20, #0xc5b]
02be06d0  ldr x19,[x19, #0x528]
02be06d4  tbnz w8,#0x0,0x02be06f8
02be06d8  adrp x0,0x5e5e000
02be06dc  ldr x0,[x0, #0x528]
02be06e0  bl 0x029f5a50
02be06e4  adrp x0,0x5e60000
02be06e8  ldr x0,[x0, #0xd80]
02be06ec  bl 0x029f5a50
02be06f0  mov w8,#0x1
02be06f4  strb w8,[x20, #0xc5b]
02be06f8  ldr x0,[x19]
02be06fc  adrp x19,0x5e60000
02be0700  ldr w8,[x0, #0xe4]
02be0704  ldr x19,[x19, #0xd80]
02be0708  cbnz w8,0x02be0710
02be070c  bl 0x029f5bd0
02be0710  ldr x0,[x19]
02be0714  mov w1,#0x1
02be0718  mov w2,wzr
02be071c  mov w3,#0x1
02be0720  mov w4,wzr
02be0724  mov x5,xzr
02be0728  mov x6,xzr
02be072c  mov w7,#0x1
02be0730  str xzr,[sp]
02be0734  bl 0x02bccb00
02be0738  ldp x20,x19,[sp, #0x20]
02be073c  ldr x30,[sp, #0x10]
02be0740  add sp,sp,#0x30
02be0744  ret
