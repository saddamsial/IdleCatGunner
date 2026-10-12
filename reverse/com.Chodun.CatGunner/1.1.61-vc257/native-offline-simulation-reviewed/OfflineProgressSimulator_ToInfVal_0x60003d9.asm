02c08c6c  sub sp,sp,#0x50
02c08c70  str d8,[sp, #0x20]
02c08c74  stp x30,x21,[sp, #0x30]
02c08c78  stp x20,x19,[sp, #0x40]
02c08c7c  fmov s8,s0
02c08c80  adrp x20,0x625b000
02c08c84  adrp x21,0x5e62000
02c08c88  ldrb w9,[x20, #0xe8e]
02c08c8c  ldr x21,[x21, #0x40]
02c08c90  mov x19,x8
02c08c94  tbnz w9,#0x0,0x02c08cac
02c08c98  adrp x0,0x5e62000
02c08c9c  ldr x0,[x0, #0x40]
02c08ca0  bl 0x029f5a50
02c08ca4  mov w8,#0x1
02c08ca8  strb w8,[x20, #0xe8e]
02c08cac  ldr x0,[x21]
02c08cb0  ldr w8,[x0, #0xe4]
02c08cb4  cbnz w8,0x02c08cbc
02c08cb8  bl 0x029f5bd0
02c08cbc  adrp x8,0x116b000
02c08cc0  ldr s0,[x8, #0xf10]
02c08cc4  fcmp s8,s0
02c08cc8  b.gt 0x02c08ce8
02c08ccc  fmov w8,s8
02c08cd0  and w8,w8,#0x7fffffff
02c08cd4  lsr w8,w8,#0x17
02c08cd8  cmp w8,#0xff
02c08cdc  b.cs 0x02c08ce8
02c08ce0  fcvt d0,s8
02c08ce4  b 0x02c08cf0
02c08ce8  adrp x8,0x116f000
02c08cec  ldr d0,[x8, #0xc10]
02c08cf0  mov x8,sp
02c08cf4  mov x0,xzr
02c08cf8  bl 0x04656c9c
02c08cfc  ldp q0,q1,[sp]
02c08d00  ldr d8,[sp, #0x20]
02c08d04  ldp x30,x21,[sp, #0x30]
02c08d08  stp q0,q1,[x19]
02c08d0c  ldp x20,x19,[sp, #0x40]
02c08d10  add sp,sp,#0x50
02c08d14  ret
