02c17de4  str x30,[sp, #-0x10]!
02c17de8  ldr x9,[x0, #0x8]
02c17dec  cbz x9,0x02c17e24
02c17df0  ldrsw x10,[x0, #0x10]
02c17df4  ldr w11,[x9, #0x18]
02c17df8  mov x8,x0
02c17dfc  cmp w10,w11
02c17e00  b.cs 0x02c17e28
02c17e04  add w12,w10,#0x1
02c17e08  add x9,x9,x10, LSL #0x3
02c17e0c  sdiv w13,w12,w11
02c17e10  ldr x0,[x9, #0x20]
02c17e14  msub w9,w13,w11,w12
02c17e18  str w9,[x8, #0x10]
02c17e1c  ldr x30,[sp], #0x10
02c17e20  ret
02c17e24  bl 0x029f5cfc
02c17e28  bl 0x029f5d04
