02b9f624  str x30,[sp, #-0x20]!
02b9f628  stp x20,x19,[sp, #0x10]
02b9f62c  mov x19,x0
02b9f630  ldr x0,[x0, #0x28]
02b9f634  cbz x0,0x02b9f698
02b9f638  cmp w1,#0x1
02b9f63c  mov w20,w1
02b9f640  mov x2,xzr
02b9f644  cset w1,eq
02b9f648  bl 0x057dff3c
02b9f64c  ldr x0,[x19, #0x30]
02b9f650  cbz x0,0x02b9f698
02b9f654  cmp w20,#0x2
02b9f658  mov x2,xzr
02b9f65c  cset w1,eq
02b9f660  bl 0x057dff3c
02b9f664  cmp w20,#0x1
02b9f668  b.ne 0x02b9f68c
02b9f66c  mov x0,x19
02b9f670  mov x1,xzr
02b9f674  bl 0x057dc0f8
02b9f678  cbz x0,0x02b9f698
02b9f67c  ldp x20,x19,[sp, #0x10]
02b9f680  mov x1,xzr
02b9f684  ldr x30,[sp], #0x20
02b9f688  b 0x057f0b34
02b9f68c  ldp x20,x19,[sp, #0x10]
02b9f690  ldr x30,[sp], #0x20
02b9f694  ret
02b9f698  bl 0x029f5cfc
