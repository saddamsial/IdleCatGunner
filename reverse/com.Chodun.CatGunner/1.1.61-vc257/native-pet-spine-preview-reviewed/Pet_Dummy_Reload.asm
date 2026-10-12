02c7aaa4  stp x30,x21,[sp, #-0x20]!
02c7aaa8  stp x20,x19,[sp, #0x10]
02c7aaac  mov w20,w1
02c7aab0  mov x1,xzr
02c7aab4  mov x19,x0
02c7aab8  bl 0x057dc1c8
02c7aabc  cbz x0,0x02c7ab18
02c7aac0  mov w1,#0x1
02c7aac4  mov x2,xzr
02c7aac8  bl 0x057dff3c
02c7aacc  ldr x8,[x19, #0x20]
02c7aad0  cbz x8,0x02c7ab18
02c7aad4  mov x21,xzr
02c7aad8  mov w20,w20
02c7aadc  ldr w9,[x8, #0x18]
02c7aae0  cmp w21,w9
02c7aae4  b.ge 0x02c7ab1c
02c7aae8  cmp w21,w9
02c7aaec  b.cs 0x02c7ab28
02c7aaf0  add x8,x8,x21, LSL #0x3
02c7aaf4  ldr x0,[x8, #0x20]
02c7aaf8  cbz x0,0x02c7ab18
02c7aafc  cmp w20,w21
02c7ab00  mov x2,xzr
02c7ab04  cset w1,eq
02c7ab08  bl 0x057dff3c
02c7ab0c  ldr x8,[x19, #0x20]
02c7ab10  add x21,x21,#0x1
02c7ab14  cbnz x8,0x02c7aadc
02c7ab18  bl 0x029f5cfc
02c7ab1c  ldp x20,x19,[sp, #0x10]
02c7ab20  ldp x30,x21,[sp], #0x20
02c7ab24  ret
02c7ab28  bl 0x029f5d04
