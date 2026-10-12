02ca90e8  sub sp,sp,#0x30
02ca90ec  str d8,[sp, #0x10]
02ca90f0  str x30,[sp, #0x18]
02ca90f4  stp x20,x19,[sp, #0x20]
02ca90f8  fmov s8,s0
02ca90fc  adrp x20,0x625c000
02ca9100  mov x19,x0
02ca9104  ldrb w8,[x20, #0x50b]
02ca9108  tbnz w8,#0x0,0x02ca9120
02ca910c  adrp x0,0x5e63000
02ca9110  ldr x0,[x0, #0x338]
02ca9114  bl 0x029f5a50
02ca9118  mov w8,#0x1
02ca911c  strb w8,[x20, #0x50b]
02ca9120  ldr x0,[x19, #0x20]
02ca9124  cbz x0,0x02ca91c0
02ca9128  fmov s0,s8
02ca912c  adrp x20,0x5e63000
02ca9130  mov x1,xzr
02ca9134  ldr x20,[x20, #0x338]
02ca9138  bl 0x02c28290
02ca913c  mov w8,#0x42c80000
02ca9140  mov w10,#0x80000000
02ca9144  add x1,sp,#0xc
02ca9148  fmov s0,w8
02ca914c  mov w8,#0x7f800000
02ca9150  fmov s1,w8
02ca9154  adrp x8,0x5e58000
02ca9158  ldr x8,[x8, #0xa10]
02ca915c  ldr x19,[x19, #0x30]
02ca9160  fmul s0,s8,s0
02ca9164  ldr x0,[x8, #0x48]
02ca9168  fcvtzs w9,s0
02ca916c  fcmp s0,s1
02ca9170  csel w9,w10,w9,eq
02ca9174  str w9,[sp, #0xc]
02ca9178  bl 0x029f5bd8
02ca917c  ldr x8,[x20]
02ca9180  mov x1,x0
02ca9184  mov x2,xzr
02ca9188  mov x0,x8
02ca918c  bl 0x046b6c0c
02ca9190  cbz x19,0x02ca91c0
02ca9194  ldr x8,[x19]
02ca9198  mov x1,x0
02ca919c  mov x0,x19
02ca91a0  ldr x9,[x8, #0x558]
02ca91a4  ldr x2,[x8, #0x560]
02ca91a8  blr x9
02ca91ac  ldp x20,x19,[sp, #0x20]
02ca91b0  ldr x30,[sp, #0x18]
02ca91b4  ldr d8,[sp, #0x10]
02ca91b8  add sp,sp,#0x30
02ca91bc  ret
02ca91c0  bl 0x029f5cfc
