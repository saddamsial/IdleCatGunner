02ba55ac  sub sp,sp,#0x50
02ba55b0  stp x30,x25,[sp, #0x10]
02ba55b4  stp x24,x23,[sp, #0x20]
02ba55b8  stp x22,x21,[sp, #0x30]
02ba55bc  stp x20,x19,[sp, #0x40]
02ba55c0  ldr x8,[x0, #0x90]
02ba55c4  mov w9,#0x1
02ba55c8  strb w9,[x0, #0xd0]
02ba55cc  cbz x8,0x02ba56d4
02ba55d0  adrp x23,0x5e58000
02ba55d4  mov x19,x0
02ba55d8  mov w24,#0x4
02ba55dc  ldr x23,[x23, #0xa10]
02ba55e0  ldr w8,[x8, #0x18]
02ba55e4  sub x20,x24,#0x4
02ba55e8  cmp w20,w8
02ba55ec  b.ge 0x02ba5690
02ba55f0  ldr x8,[x19, #0x20]
02ba55f4  cbz x8,0x02ba56d4
02ba55f8  ldr w9,[x8, #0x18]
02ba55fc  cmp w20,w9
02ba5600  b.cs 0x02ba56f0
02ba5604  ldr x25,[x8, x24, LSL #0x3]
02ba5608  cbz x25,0x02ba56d4
02ba560c  ldr w1,[x25, #0x18]
02ba5610  bl 0x02ba4768
02ba5614  ldr w1,[x25, #0x18]
02ba5618  mov x21,x0
02ba561c  bl 0x02ba5b08
02ba5620  mov x22,x0
02ba5624  ldr w8,[x25, #0x1c]
02ba5628  ldr x0,[x23, #0x48]
02ba562c  add x1,sp,#0xc
02ba5630  str w8,[sp, #0xc]
02ba5634  bl 0x029f5bd8
02ba5638  mov x1,x0
02ba563c  mov x0,x22
02ba5640  mov x2,xzr
02ba5644  bl 0x046b6c0c
02ba5648  ldr x8,[x19, #0x90]
02ba564c  cbz x8,0x02ba56d4
02ba5650  ldr w9,[x8, #0x18]
02ba5654  cmp w20,w9
02ba5658  b.cs 0x02ba56f0
02ba565c  mov x4,x0
02ba5660  ldr x0,[x8, x24, LSL #0x3]
02ba5664  cbz x0,0x02ba56d4
02ba5668  ldrb w5,[x25, #0x26]
02ba566c  ldr w2,[x25, #0x20]
02ba5670  mov w1,w20
02ba5674  mov x3,x21
02ba5678  mov x6,xzr
02ba567c  bl 0x02c03d5c
02ba5680  ldr x8,[x19, #0x90]
02ba5684  add x24,x24,#0x1
02ba5688  cbnz x8,0x02ba55e0
02ba568c  b 0x02ba56d4
02ba5690  ldr x8,[x19, #0x98]
02ba5694  cbz x8,0x02ba56d4
02ba5698  mov x20,xzr
02ba569c  ldr w9,[x8, #0x18]
02ba56a0  cmp w20,w9
02ba56a4  b.ge 0x02ba56d8
02ba56a8  cmp w20,w9
02ba56ac  b.cs 0x02ba56f0
02ba56b0  add x8,x8,x20, LSL #0x3
02ba56b4  ldr x0,[x8, #0x20]
02ba56b8  cbz x0,0x02ba56d4
02ba56bc  mov w1,w20
02ba56c0  mov x2,xzr
02ba56c4  bl 0x02c04658
02ba56c8  ldr x8,[x19, #0x98]
02ba56cc  add x20,x20,#0x1
02ba56d0  cbnz x8,0x02ba569c
02ba56d4  bl 0x029f5cfc
02ba56d8  ldp x20,x19,[sp, #0x40]
02ba56dc  ldp x22,x21,[sp, #0x30]
02ba56e0  ldp x24,x23,[sp, #0x20]
02ba56e4  ldp x30,x25,[sp, #0x10]
02ba56e8  add sp,sp,#0x50
02ba56ec  ret
02ba56f0  bl 0x029f5d04
