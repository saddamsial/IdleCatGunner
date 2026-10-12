02c40cb4  sub sp,sp,#0x30
02c40cb8  stp d9,d8,[sp, #0x10]
02c40cbc  stp x30,x19,[sp, #0x20]
02c40cc0  mov x19,x0
02c40cc4  ldr s8,[x0, #0x250]
02c40cc8  mov x0,xzr
02c40ccc  bl 0x057ebabc
02c40cd0  fadd s0,s8,s0
02c40cd4  ldr s1,[x19, #0x254]
02c40cd8  fcmp s0,s1
02c40cdc  str s0,[x19, #0x250]
02c40ce0  b.mi 0x02c40d64
02c40ce4  adrp x8,0x116c000
02c40ce8  fmov s1,0x40600000
02c40cec  mov x0,xzr
02c40cf0  ldr s0,[x8, #0x7c]
02c40cf4  str wzr,[x19, #0x250]
02c40cf8  bl 0x057d55d4
02c40cfc  str s0,[x19, #0x254]
02c40d00  movi d0,#0x0
02c40d04  mov w8,#0x43b40000
02c40d08  fmov s1,w8
02c40d0c  mov x0,xzr
02c40d10  bl 0x057d55d4
02c40d14  adrp x8,0x116c000
02c40d18  adrp x9,0x116b000
02c40d1c  mov x0,xzr
02c40d20  ldr s1,[x8, #0x26c]
02c40d24  adrp x8,0x116c000
02c40d28  fmul s8,s0,s1
02c40d2c  ldr s0,[x8, #0x190]
02c40d30  ldr s1,[x9, #0xf64]
02c40d34  bl 0x057d55d4
02c40d38  fmov s9,s0
02c40d3c  fmov s0,s8
02c40d40  add x0,sp,#0xc
02c40d44  add x1,sp,#0x8
02c40d48  bl 0x05afb270
02c40d4c  ldp s1,s0,[sp, #0x8]
02c40d50  str wzr,[x19, #0x25c]
02c40d54  fmul s0,s9,s0
02c40d58  fmul s1,s9,s1
02c40d5c  str s0,[x19, #0x258]
02c40d60  str s1,[x19, #0x260]
02c40d64  ldp x30,x19,[sp, #0x20]
02c40d68  ldp d9,d8,[sp, #0x10]
02c40d6c  add sp,sp,#0x30
02c40d70  ret
