02c61c8c  stp d11,d10,[sp, #-0x40]!
02c61c90  stp d9,d8,[sp, #0x10]
02c61c94  stp x30,x21,[sp, #0x20]
02c61c98  stp x20,x19,[sp, #0x30]
02c61c9c  fmov s8,s3
02c61ca0  fmov s9,s2
02c61ca4  adrp x20,0x625c000
02c61ca8  fmov s11,s1
02c61cac  fmov s10,s0
02c61cb0  adrp x21,0x5e63000
02c61cb4  ldrb w8,[x20, #0x227]
02c61cb8  ldr x21,[x21, #0x880]
02c61cbc  mov x19,x0
02c61cc0  tbnz w8,#0x0,0x02c61cd8
02c61cc4  adrp x0,0x5e63000
02c61cc8  ldr x0,[x0, #0x880]
02c61ccc  bl 0x029f5a50
02c61cd0  mov w8,#0x1
02c61cd4  strb w8,[x20, #0x227]
02c61cd8  ldr x0,[x21]
02c61cdc  bl 0x029f5cec
02c61ce0  mov x1,xzr
02c61ce4  mov x20,x0
02c61ce8  bl 0x04893238
02c61cec  mov x0,x20
02c61cf0  mov x1,x19
02c61cf4  str wzr,[x20, #0x10]
02c61cf8  str x19,[x0, #0x20]!
02c61cfc  bl 0x029f59f4
02c61d00  stp s11,s9,[x20, #0x30]
02c61d04  mov x0,x20
02c61d08  stp s8,s10,[x20, #0x28]
02c61d0c  ldp x20,x19,[sp, #0x30]
02c61d10  ldp x30,x21,[sp, #0x20]
02c61d14  ldp d9,d8,[sp, #0x10]
02c61d18  ldp d11,d10,[sp], #0x40
02c61d1c  ret
