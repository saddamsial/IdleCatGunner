02c94018  str x30,[sp, #-0x20]!
02c9401c  stp x20,x19,[sp, #0x10]
02c94020  adrp x20,0x625c000
02c94024  adrp x19,0x5e64000
02c94028  ldrb w8,[x20, #0x413]
02c9402c  ldr x19,[x19, #0x2f8]
02c94030  str w0,[sp, #0xc]
02c94034  tbnz w8,#0x0,0x02c9404c
02c94038  adrp x0,0x5e64000
02c9403c  ldr x0,[x0, #0x2f8]
02c94040  bl 0x029f5a50
02c94044  mov w8,#0x1
02c94048  strb w8,[x20, #0x413]
02c9404c  add x0,sp,#0xc
02c94050  mov x1,xzr
02c94054  bl 0x0484e6a4
02c94058  ldr x8,[x19]
02c9405c  mov x1,x0
02c94060  mov x2,xzr
02c94064  mov x0,x8
02c94068  bl 0x046b2d44
02c9406c  ldp x20,x19,[sp, #0x10]
02c94070  ldr x30,[sp], #0x20
02c94074  ret
