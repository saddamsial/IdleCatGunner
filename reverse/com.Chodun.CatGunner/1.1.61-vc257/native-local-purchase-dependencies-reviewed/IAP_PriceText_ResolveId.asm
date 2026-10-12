02ca5890  sub sp,sp,#0x40
02ca5894  stp x30,x21,[sp, #0x20]
02ca5898  stp x20,x19,[sp, #0x30]
02ca589c  adrp x21,0x625c000
02ca58a0  mov x19,x1
02ca58a4  mov x20,x0
02ca58a8  ldrb w8,[x21, #0x4bf]
02ca58ac  tbnz w8,#0x0,0x02ca5924
02ca58b0  adrp x0,0x5e64000
02ca58b4  ldr x0,[x0, #0x318]
02ca58b8  bl 0x029f5a50
02ca58bc  adrp x0,0x5e5e000
02ca58c0  ldr x0,[x0, #0xb8]
02ca58c4  bl 0x029f5a50
02ca58c8  adrp x0,0x5e5d000
02ca58cc  ldr x0,[x0, #0x920]
02ca58d0  bl 0x029f5a50
02ca58d4  adrp x0,0x5e5e000
02ca58d8  ldr x0,[x0, #0x3e0]
02ca58dc  bl 0x029f5a50
02ca58e0  adrp x0,0x5e64000
02ca58e4  ldr x0,[x0, #0x1c8]
02ca58e8  bl 0x029f5a50
02ca58ec  adrp x0,0x5e64000
02ca58f0  ldr x0,[x0, #0x1d8]
02ca58f4  bl 0x029f5a50
02ca58f8  adrp x0,0x5e63000
02ca58fc  ldr x0,[x0, #0xec0]
02ca5900  bl 0x029f5a50
02ca5904  adrp x0,0x5e64000
02ca5908  ldr x0,[x0, #0x268]
02ca590c  bl 0x029f5a50
02ca5910  adrp x0,0x5e64000
02ca5914  ldr x0,[x0, #0x288]
02ca5918  bl 0x029f5a50
02ca591c  mov w8,#0x1
02ca5920  strb w8,[x21, #0x4bf]
02ca5924  ldr w20,[x20, #0x20]
02ca5928  cmp w20,#0x26
02ca592c  b.hi 0x02ca5c08
02ca5930  adrp x8,0x11b0000
02ca5934  add x8,x8,#0x554
02ca5938  adr x9,0x2ca5948
02ca593c  ldrb w10,[x8, x20, LSL ]
02ca5940  add x9,x9,x10, LSL #0x2
02ca5944  br x9
02ca5c08  mov x0,xzr
02ca5c0c  b 0x02ca5c48
02ca5c48  ldp x20,x19,[sp, #0x30]
02ca5c4c  ldp x30,x21,[sp, #0x20]
02ca5c50  add sp,sp,#0x40
02ca5c54  ret
