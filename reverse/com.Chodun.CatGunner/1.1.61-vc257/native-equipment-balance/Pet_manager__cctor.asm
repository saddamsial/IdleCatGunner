02c7e5b0  sub sp,sp,#0x40
02c7e5b4  str x30,[sp, #0x20]
02c7e5b8  stp x20,x19,[sp, #0x30]
02c7e5bc  adrp x20,0x625c000
02c7e5c0  adrp x19,0x5e5d000
02c7e5c4  ldrb w8,[x20, #0x33b]
02c7e5c8  ldr x19,[x19, #0x4d0]
02c7e5cc  tbnz w8,#0x0,0x02c7e5e4
02c7e5d0  adrp x0,0x5e5d000
02c7e5d4  ldr x0,[x0, #0x4d0]
02c7e5d8  bl 0x029f5a50
02c7e5dc  mov w8,#0x1
02c7e5e0  strb w8,[x20, #0x33b]
02c7e5e4  mov x8,sp
02c7e5e8  mov w0,#0x64
02c7e5ec  mov x1,xzr
02c7e5f0  mov w20,#0x64
02c7e5f4  bl 0x046544b8
02c7e5f8  ldr x8,[x19]
02c7e5fc  ldp q0,q1,[sp]
02c7e600  mov x1,xzr
02c7e604  ldr x8,[x8, #0xb8]
02c7e608  stp q0,q1,[x8]
02c7e60c  ldr x8,[x19]
02c7e610  ldr x0,[x8, #0xb8]
02c7e614  bl 0x029f59f4
02c7e618  ldr x8,[x19]
02c7e61c  ldr x30,[sp, #0x20]
02c7e620  ldr x8,[x8, #0xb8]
02c7e624  str w20,[x8, #0x20]
02c7e628  ldp x20,x19,[sp, #0x30]
02c7e62c  add sp,sp,#0x40
02c7e630  ret
