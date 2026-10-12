02b7ed10  str d8,[sp, #-0x30]!
02b7ed14  stp x30,x21,[sp, #0x10]
02b7ed18  stp x20,x19,[sp, #0x20]
02b7ed1c  adrp x21,0x625b000
02b7ed20  adrp x20,0x5e5d000
02b7ed24  mov w19,w0
02b7ed28  ldrb w8,[x21, #0x8b9]
02b7ed2c  ldr x20,[x20, #0x338]
02b7ed30  tbnz w8,#0x0,0x02b7ed48
02b7ed34  adrp x0,0x5e5d000
02b7ed38  ldr x0,[x0, #0x338]
02b7ed3c  bl 0x029f5a50
02b7ed40  mov w8,#0x1
02b7ed44  strb w8,[x21, #0x8b9]
02b7ed48  ldr x0,[x20]
02b7ed4c  ldr w8,[x0, #0xe4]
02b7ed50  cbnz w8,0x02b7ed5c
02b7ed54  bl 0x029f5bd0
02b7ed58  ldr x0,[x20]
02b7ed5c  ldr x8,[x0, #0xb8]
02b7ed60  mov x2,xzr
02b7ed64  ldp x0,x1,[x8, #0x90]
02b7ed68  bl 0x02b1e644
02b7ed6c  add w0,w0,w19
02b7ed70  mov x1,xzr
02b7ed74  bl 0x02b1e5c8
02b7ed78  ldr x8,[x20]
02b7ed7c  mov x2,xzr
02b7ed80  ldr x9,[x8, #0xb8]
02b7ed84  stp x0,x1,[x9, #0x90]
02b7ed88  ldr x8,[x8, #0xb8]
02b7ed8c  ldp x0,x1,[x8, #0xa0]
02b7ed90  bl 0x02b1e644
02b7ed94  add w8,w19,w19, LSL #0x1
02b7ed98  mov x1,xzr
02b7ed9c  add w0,w0,w8
02b7eda0  bl 0x02b1e5c8
02b7eda4  ldr x8,[x20]
02b7eda8  ldr x9,[x8, #0xb8]
02b7edac  stp x0,x1,[x9, #0xa0]
02b7edb0  ldr x8,[x8, #0xb8]
02b7edb4  ldr x8,[x8, #0x10]
02b7edb8  cbz x8,0x02b7edcc
02b7edbc  ldr x9,[x8, #0x18]
02b7edc0  ldr x0,[x8, #0x40]
02b7edc4  ldr x1,[x8, #0x28]
02b7edc8  blr x9
02b7edcc  mov x0,xzr
02b7edd0  bl 0x057e85b4
02b7edd4  ldr x0,[x20]
02b7edd8  fmov s8,s0
02b7eddc  ldr w8,[x0, #0xe4]
02b7ede0  cbnz w8,0x02b7edec
02b7ede4  bl 0x029f5bd0
02b7ede8  ldr x0,[x20]
02b7edec  ldr x8,[x0, #0xb8]
02b7edf0  fmov s1,0x40a00000
02b7edf4  ldr s0,[x8, #0x158]
02b7edf8  fsub s0,s8,s0
02b7edfc  fcmp s0,s1
02b7ee00  b.ge 0x02b7ee14
02b7ee04  ldp x20,x19,[sp, #0x20]
02b7ee08  ldp x30,x21,[sp, #0x10]
02b7ee0c  ldr d8,[sp], #0x30
02b7ee10  ret
02b7ee14  mov x0,xzr
02b7ee18  bl 0x057e85b4
02b7ee1c  ldr x0,[x20]
02b7ee20  fmov s8,s0
02b7ee24  ldr w8,[x0, #0xe4]
02b7ee28  cbnz w8,0x02b7ee34
02b7ee2c  bl 0x029f5bd0
02b7ee30  ldr x0,[x20]
02b7ee34  ldr x8,[x0, #0xb8]
02b7ee38  ldp x20,x19,[sp, #0x20]
02b7ee3c  ldp x30,x21,[sp, #0x10]
02b7ee40  mov x0,xzr
02b7ee44  str s8,[x8, #0x158]
02b7ee48  ldr d8,[sp], #0x30
02b7ee4c  b 0x02c0faf8
