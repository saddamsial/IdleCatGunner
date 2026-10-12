02b7ee50  str d10,[sp, #-0x40]!
02b7ee54  stp d9,d8,[sp, #0x10]
02b7ee58  stp x30,x21,[sp, #0x20]
02b7ee5c  stp x20,x19,[sp, #0x30]
02b7ee60  fmov s8,s2
02b7ee64  fmov s9,s1
02b7ee68  adrp x21,0x625b000
02b7ee6c  fmov s10,s0
02b7ee70  adrp x20,0x5e5d000
02b7ee74  ldrb w8,[x21, #0x8ba]
02b7ee78  ldr x20,[x20, #0x338]
02b7ee7c  mov w19,w0
02b7ee80  tbnz w8,#0x0,0x02b7ee98
02b7ee84  adrp x0,0x5e5d000
02b7ee88  ldr x0,[x0, #0x338]
02b7ee8c  bl 0x029f5a50
02b7ee90  mov w8,#0x1
02b7ee94  strb w8,[x21, #0x8ba]
02b7ee98  ldr x0,[x20]
02b7ee9c  ldr w8,[x0, #0xe4]
02b7eea0  cbnz w8,0x02b7eea8
02b7eea4  bl 0x029f5bd0
02b7eea8  mov w0,w19
02b7eeac  bl 0x02b7ed10
02b7eeb0  mov w0,w19
02b7eeb4  fmov s1,s9
02b7eeb8  fmov s2,s8
02b7eebc  ldp x20,x19,[sp, #0x30]
02b7eec0  fmov s0,s10
02b7eec4  ldp x30,x21,[sp, #0x20]
02b7eec8  ldp d9,d8,[sp, #0x10]
02b7eecc  ldr d10,[sp], #0x40
02b7eed0  b 0x02b7eed4
