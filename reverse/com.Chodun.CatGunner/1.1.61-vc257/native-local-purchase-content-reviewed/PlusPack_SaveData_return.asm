02c91618  str x30,[sp, #-0x30]!
02c9161c  stp x22,x21,[sp, #0x10]
02c91620  stp x20,x19,[sp, #0x20]
02c91624  adrp x20,0x625c000
02c91628  adrp x19,0x5e58000
02c9162c  ldrb w8,[x20, #0x3f4]
02c91630  ldr x19,[x19, #0xa90]
02c91634  tbnz w8,#0x0,0x02c91658
02c91638  adrp x0,0x5e5e000
02c9163c  ldr x0,[x0, #0xb8]
02c91640  bl 0x029f5a50
02c91644  adrp x0,0x5e58000
02c91648  ldr x0,[x0, #0xa90]
02c9164c  bl 0x029f5a50
02c91650  mov w8,#0x1
02c91654  strb w8,[x20, #0x3f4]
02c91658  adrp x20,0x5e5e000
02c9165c  mov w1,#0x3
02c91660  ldr x20,[x20, #0xb8]
02c91664  ldr x0,[x19]
02c91668  bl 0x029f5b40
02c9166c  mov x19,x0
02c91670  mov x21,xzr
02c91674  mov w22,#0x20
02c91678  ldr x0,[x20]
02c9167c  ldr w8,[x0, #0xe4]
02c91680  cbnz w8,0x02c9168c
02c91684  bl 0x029f5bd0
02c91688  ldr x0,[x20]
02c9168c  ldr x8,[x0, #0xb8]
02c91690  ldr x8,[x8, #0x8]
02c91694  cbz x8,0x02c916f8
02c91698  ldr w9,[x8, #0x18]
02c9169c  cmp x21,x9
02c916a0  b.cs 0x02c916fc
02c916a4  ldr x0,[x8, x22, LSL #0x0]
02c916a8  mov x1,xzr
02c916ac  mov x2,xzr
02c916b0  bl 0x02c1485c
02c916b4  cbz x19,0x02c916f8
02c916b8  ldr w8,[x19, #0x18]
02c916bc  cmp x21,x8
02c916c0  b.cs 0x02c916fc
02c916c4  mov x1,x0
02c916c8  str x0,[x19, x22, LSL #0x0]
02c916cc  add x0,x19,x22
02c916d0  bl 0x029f59f4
02c916d4  add x21,x21,#0x1
02c916d8  add x22,x22,#0x8
02c916dc  cmp x21,#0x3
02c916e0  b.ne 0x02c91678
02c916e4  mov x0,x19
02c916e8  ldp x20,x19,[sp, #0x20]
02c916ec  ldp x22,x21,[sp, #0x10]
02c916f0  ldr x30,[sp], #0x30
02c916f4  ret
02c916f8  bl 0x029f5cfc
02c916fc  bl 0x029f5d04
