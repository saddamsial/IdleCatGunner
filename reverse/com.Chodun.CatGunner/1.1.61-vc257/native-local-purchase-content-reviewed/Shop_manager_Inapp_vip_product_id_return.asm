02c94dc8  str x30,[sp, #-0x20]!
02c94dcc  stp x20,x19,[sp, #0x10]
02c94dd0  adrp x20,0x625c000
02c94dd4  mov w19,w1
02c94dd8  ldrb w8,[x20, #0x453]
02c94ddc  tbnz w8,#0x0,0x02c94e00
02c94de0  adrp x0,0x5e64000
02c94de4  ldr x0,[x0, #0x208]
02c94de8  bl 0x029f5a50
02c94dec  adrp x0,0x5e5e000
02c94df0  ldr x0,[x0, #0x170]
02c94df4  bl 0x029f5a50
02c94df8  mov w8,#0x1
02c94dfc  strb w8,[x20, #0x453]
02c94e00  cmp w19,#0x1
02c94e04  b.eq 0x02c94e18
02c94e08  cbnz w19,0x02c94e28
02c94e0c  adrp x8,0x5e5e000
02c94e10  ldr x8,[x8, #0x170]
02c94e14  b 0x02c94e20
02c94e18  adrp x8,0x5e64000
02c94e1c  ldr x8,[x8, #0x208]
02c94e20  ldr x0,[x8]
02c94e24  b 0x02c94e2c
02c94e28  mov x0,xzr
02c94e2c  ldp x20,x19,[sp, #0x10]
02c94e30  ldr x30,[sp], #0x20
02c94e34  ret
