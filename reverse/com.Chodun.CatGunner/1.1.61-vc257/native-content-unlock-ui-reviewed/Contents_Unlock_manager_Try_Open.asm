02b9e588  sub sp,sp,#0x30
02b9e58c  stp x30,x21,[sp, #0x10]
02b9e590  stp x20,x19,[sp, #0x20]
02b9e594  adrp x19,0x625b000
02b9e598  adrp x21,0x5e5e000
02b9e59c  mov w20,w0
02b9e5a0  ldrb w8,[x19, #0x9e9]
02b9e5a4  ldr x21,[x21, #0x4d0]
02b9e5a8  tbnz w8,#0x0,0x02b9e5c0
02b9e5ac  adrp x0,0x5e5e000
02b9e5b0  ldr x0,[x0, #0x4d0]
02b9e5b4  bl 0x029f5a50
02b9e5b8  mov w8,#0x1
02b9e5bc  strb w8,[x19, #0x9e9]
02b9e5c0  ldr x0,[x21]
02b9e5c4  ldr w8,[x0, #0xe4]
02b9e5c8  cbnz w8,0x02b9e5d0
02b9e5cc  bl 0x029f5bd0
02b9e5d0  mov w0,w20
02b9e5d4  bl 0x02b9e130
02b9e5d8  mov w19,w0
02b9e5dc  tbnz w0,#0x0,0x02b9e63c
02b9e5e0  mov x0,xzr
02b9e5e4  bl 0x02be0118
02b9e5e8  ldr x8,[x21]
02b9e5ec  mov x21,x0
02b9e5f0  ldr w9,[x8, #0xe4]
02b9e5f4  cbnz w9,0x02b9e600
02b9e5f8  mov x0,x8
02b9e5fc  bl 0x029f5bd0
02b9e600  mov w0,w20
02b9e604  bl 0x02b9dfd4
02b9e608  adrp x8,0x5e58000
02b9e60c  add x1,sp,#0xc
02b9e610  ldr x8,[x8, #0xa10]
02b9e614  str w0,[sp, #0xc]
02b9e618  ldr x8,[x8, #0x48]
02b9e61c  mov x0,x8
02b9e620  bl 0x029f5bd8
02b9e624  mov x1,x0
02b9e628  mov x0,x21
02b9e62c  mov x2,xzr
02b9e630  bl 0x046b6c0c
02b9e634  mov x1,xzr
02b9e638  bl 0x02c1dd54
02b9e63c  and w0,w19,#0x1
02b9e640  ldp x20,x19,[sp, #0x20]
02b9e644  ldp x30,x21,[sp, #0x10]
02b9e648  add sp,sp,#0x30
02b9e64c  ret
