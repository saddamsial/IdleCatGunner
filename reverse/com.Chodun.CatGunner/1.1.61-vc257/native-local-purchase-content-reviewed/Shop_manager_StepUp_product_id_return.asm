02c92be0  str x30,[sp, #-0x20]!
02c92be4  stp x20,x19,[sp, #0x10]
02c92be8  adrp x20,0x625c000
02c92bec  adrp x19,0x5e64000
02c92bf0  ldrb w8,[x20, #0x40f]
02c92bf4  ldr x19,[x19, #0x1b0]
02c92bf8  str w0,[sp, #0xc]
02c92bfc  tbnz w8,#0x0,0x02c92c14
02c92c00  adrp x0,0x5e64000
02c92c04  ldr x0,[x0, #0x1b0]
02c92c08  bl 0x029f5a50
02c92c0c  mov w8,#0x1
02c92c10  strb w8,[x20, #0x40f]
02c92c14  add x0,sp,#0xc
02c92c18  mov x1,xzr
02c92c1c  bl 0x0484e6a4
02c92c20  ldr x8,[x19]
02c92c24  mov x1,x0
02c92c28  mov x2,xzr
02c92c2c  mov x0,x8
02c92c30  bl 0x046b2d44
02c92c34  ldp x20,x19,[sp, #0x10]
02c92c38  ldr x30,[sp], #0x20
02c92c3c  ret
