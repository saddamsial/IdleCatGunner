02c4ede8  sub sp,sp,#0xa0
02c4edec  str x30,[sp, #0x60]
02c4edf0  stp x24,x23,[sp, #0x70]
02c4edf4  stp x22,x21,[sp, #0x80]
02c4edf8  stp x20,x19,[sp, #0x90]
02c4edfc  adrp x24,0x625c000
02c4ee00  adrp x23,0x5e5d000
02c4ee04  mov x19,x3
02c4ee08  ldrb w8,[x24, #0x143]
02c4ee0c  ldr x23,[x23, #0x338]
02c4ee10  mov x20,x2
02c4ee14  mov x21,x1
02c4ee18  mov x22,x0
02c4ee1c  tbnz w8,#0x0,0x02c4ee34
02c4ee20  adrp x0,0x5e5d000
02c4ee24  ldr x0,[x0, #0x338]
02c4ee28  bl 0x029f5a50
02c4ee2c  mov w8,#0x1
02c4ee30  strb w8,[x24, #0x143]
02c4ee34  ldr w8,[x22, #0x20]
02c4ee38  movi v0.2D,#0x0
02c4ee3c  ldr x0,[x23]
02c4ee40  str w8,[x21]
02c4ee44  ldr w8,[x22, #0x24]
02c4ee48  stp q0,q0,[sp, #0x20]
02c4ee4c  str w8,[x20]
02c4ee50  str wzr,[x19]
02c4ee54  ldr w8,[x0, #0xe4]
02c4ee58  stp q0,q0,[sp, #0x40]
02c4ee5c  cbnz w8,0x02c4ee64
02c4ee60  bl 0x029f5bd0
02c4ee64  add x8,sp,#0x40
02c4ee68  mov x0,xzr
02c4ee6c  bl 0x02b80ff8
02c4ee70  ldr w8,[x19]
02c4ee74  cmp w8,#0x63
02c4ee78  b.gt 0x02c4eee0
02c4ee7c  ldr w1,[x21]
02c4ee80  ldr w2,[x20]
02c4ee84  mov x8,sp
02c4ee88  mov x0,x22
02c4ee8c  bl 0x02c4ec08
02c4ee90  ldp q0,q1,[sp]
02c4ee94  add x0,sp,#0x40
02c4ee98  add x1,sp,#0x20
02c4ee9c  mov x2,xzr
02c4eea0  stp q0,q1,[sp, #0x20]
02c4eea4  bl 0x04654530
02c4eea8  tbz w0,#0x0,0x02c4eee0
02c4eeac  ldr w8,[x19]
02c4eeb0  add w8,w8,#0x1
02c4eeb4  str w8,[x19]
02c4eeb8  ldr w8,[x20]
02c4eebc  add w8,w8,#0x1
02c4eec0  cmp w8,#0x5
02c4eec4  str w8,[x20]
02c4eec8  b.lt 0x02c4ee70
02c4eecc  str wzr,[x20]
02c4eed0  ldr w8,[x21]
02c4eed4  add w8,w8,#0x1
02c4eed8  str w8,[x21]
02c4eedc  b 0x02c4ee70
02c4eee0  ldp x20,x19,[sp, #0x90]
02c4eee4  ldr x30,[sp, #0x60]
02c4eee8  ldp x22,x21,[sp, #0x80]
02c4eeec  ldp x24,x23,[sp, #0x70]
02c4eef0  add sp,sp,#0xa0
02c4eef4  ret
