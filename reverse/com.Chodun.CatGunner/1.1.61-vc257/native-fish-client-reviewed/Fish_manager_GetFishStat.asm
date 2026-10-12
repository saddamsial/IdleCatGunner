02c5f590  sub sp,sp,#0x50
02c5f594  stp x30,x21,[sp, #0x30]
02c5f598  stp x20,x19,[sp, #0x40]
02c5f59c  adrp x20,0x625c000
02c5f5a0  mov x19,x0
02c5f5a4  ldrb w8,[x20, #0x20f]
02c5f5a8  tbnz w8,#0x0,0x02c5f5f0
02c5f5ac  adrp x0,0x5e62000
02c5f5b0  ldr x0,[x0, #0xff8]
02c5f5b4  bl 0x029f5a50
02c5f5b8  adrp x0,0x5e63000
02c5f5bc  ldr x0,[x0]
02c5f5c0  bl 0x029f5a50
02c5f5c4  adrp x0,0x5e63000
02c5f5c8  ldr x0,[x0, #0x8]
02c5f5cc  bl 0x029f5a50
02c5f5d0  adrp x0,0x5e63000
02c5f5d4  ldr x0,[x0, #0x10]
02c5f5d8  bl 0x029f5a50
02c5f5dc  adrp x0,0x5e62000
02c5f5e0  ldr x0,[x0, #0xfe8]
02c5f5e4  bl 0x029f5a50
02c5f5e8  mov w8,#0x1
02c5f5ec  strb w8,[x20, #0x20f]
02c5f5f0  ldr x0,[x19, #0x90]
02c5f5f4  stp xzr,xzr,[sp, #0x18]
02c5f5f8  str xzr,[sp, #0x28]
02c5f5fc  cbz x0,0x02c5f688
02c5f600  ldr w8,[x0, #0x18]
02c5f604  cbz w8,0x02c5f684
02c5f608  adrp x8,0x5e63000
02c5f60c  add x21,sp,#0x18
02c5f610  ldr x8,[x8, #0x10]
02c5f614  ldr x1,[x8]
02c5f618  add x8,sp,#0x18
02c5f61c  bl 0x044f84d0
02c5f620  adrp x19,0x5e63000
02c5f624  mov w20,wzr
02c5f628  ldr x19,[x19]
02c5f62c  stp xzr,x21,[sp, #0x8]
02c5f630  mov w21,#0xffffffff
02c5f634  ldr x1,[x19]
02c5f638  add x0,sp,#0x18
02c5f63c  bl 0x03f9a744
02c5f640  tbz w0,#0x0,0x02c5f664
02c5f644  ldr w8,[sp, #0x28]
02c5f648  cmp w8,w21
02c5f64c  b.gt 0x02c5f658
02c5f650  cinc w20,w20,eq
02c5f654  b 0x02c5f634
02c5f658  mov w20,#0x1
02c5f65c  mov w21,w8
02c5f660  b 0x02c5f634
02c5f664  adrp x8,0x5e62000
02c5f668  add x0,sp,#0x18
02c5f66c  ldr x8,[x8, #0xff8]
02c5f670  ldr x1,[x8]
02c5f674  bl 0x03f9a740
02c5f678  mov w8,#0x3e8
02c5f67c  madd w0,w21,w8,w20
02c5f680  b 0x02c5f688
02c5f684  mov w0,wzr
02c5f688  ldp x20,x19,[sp, #0x40]
02c5f68c  ldp x30,x21,[sp, #0x30]
02c5f690  add sp,sp,#0x50
02c5f694  ret
