02c2f6b8  str x30,[sp, #-0x30]!
02c2f6bc  stp x22,x21,[sp, #0x10]
02c2f6c0  stp x20,x19,[sp, #0x20]
02c2f6c4  adrp x21,0x625c000
02c2f6c8  adrp x20,0x5e5d000
02c2f6cc  mov x19,x0
02c2f6d0  ldrb w8,[x21, #0x1f]
02c2f6d4  ldr x20,[x20, #0xd28]
02c2f6d8  tbnz w8,#0x0,0x02c2f708
02c2f6dc  adrp x0,0x5e5d000
02c2f6e0  ldr x0,[x0, #0xd28]
02c2f6e4  bl 0x029f5a50
02c2f6e8  adrp x0,0x5e59000
02c2f6ec  ldr x0,[x0, #0x1c0]
02c2f6f0  bl 0x029f5a50
02c2f6f4  adrp x0,0x5e61000
02c2f6f8  ldr x0,[x0, #0xf28]
02c2f6fc  bl 0x029f5a50
02c2f700  mov w8,#0x1
02c2f704  strb w8,[x21, #0x1f]
02c2f708  ldr x0,[x20]
02c2f70c  adrp x21,0x5e59000
02c2f710  ldr w8,[x0, #0xe4]
02c2f714  ldr x21,[x21, #0x1c0]
02c2f718  cbnz w8,0x02c2f724
02c2f71c  bl 0x029f5bd0
02c2f720  ldr x0,[x20]
02c2f724  ldr x8,[x21]
02c2f728  ldr x9,[x0, #0xb8]
02c2f72c  ldr w10,[x8, #0xe4]
02c2f730  ldr x20,[x9, #0x10]
02c2f734  cbnz w10,0x02c2f740
02c2f738  mov x0,x8
02c2f73c  bl 0x029f5bd0
02c2f740  mov x0,x20
02c2f744  mov x1,xzr
02c2f748  mov x2,xzr
02c2f74c  bl 0x057e14b4
02c2f750  tbnz w0,#0x0,0x02c2f7f0
02c2f754  cbz x20,0x02c2f800
02c2f758  adrp x22,0x5e58000
02c2f75c  add x1,sp,#0xc
02c2f760  ldr x22,[x22, #0xa10]
02c2f764  ldr w8,[x20, #0x58]
02c2f768  ldr x0,[x22, #0x48]
02c2f76c  str w8,[sp, #0xc]
02c2f770  bl 0x029f5bd8
02c2f774  mov x21,x0
02c2f778  ldr x0,[x22, #0x48]
02c2f77c  mov w8,#0x14
02c2f780  add x1,sp,#0x8
02c2f784  str w8,[sp, #0x8]
02c2f788  bl 0x029f5bd8
02c2f78c  adrp x8,0x5e61000
02c2f790  mov x2,x0
02c2f794  mov x1,x21
02c2f798  ldr x8,[x8, #0xf28]
02c2f79c  mov x3,xzr
02c2f7a0  ldr x8,[x8]
02c2f7a4  mov x0,x8
02c2f7a8  bl 0x046c1d14
02c2f7ac  ldr x8,[x19, #0x20]
02c2f7b0  mov x1,x0
02c2f7b4  mov x0,x8
02c2f7b8  bl 0x02c2f804
02c2f7bc  ldr w8,[x20, #0x58]
02c2f7c0  cmp w8,#0x14
02c2f7c4  b.ge 0x02c2f7dc
02c2f7c8  mov x0,x20
02c2f7cc  bl 0x02c2d344
02c2f7d0  bl 0x02c2f8e4
02c2f7d4  mov x1,x0
02c2f7d8  b 0x02c2f7e8
02c2f7dc  ldr x8,[x22, #0x90]
02c2f7e0  ldr x8,[x8, #0xb8]
02c2f7e4  ldr x1,[x8]
02c2f7e8  ldr x0,[x19, #0x28]
02c2f7ec  bl 0x02c2f804
02c2f7f0  ldp x20,x19,[sp, #0x20]
02c2f7f4  ldp x22,x21,[sp, #0x10]
02c2f7f8  ldr x30,[sp], #0x30
02c2f7fc  ret
02c2f800  bl 0x029f5cfc
