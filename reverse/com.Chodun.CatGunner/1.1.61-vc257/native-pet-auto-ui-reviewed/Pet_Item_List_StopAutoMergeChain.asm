02c839c8  sub sp,sp,#0x60
02c839cc  str x30,[sp, #0x30]
02c839d0  stp x22,x21,[sp, #0x40]
02c839d4  stp x20,x19,[sp, #0x50]
02c839d8  adrp x20,0x625c000
02c839dc  mov x19,x0
02c839e0  ldrb w8,[x20, #0x367]
02c839e4  tbnz w8,#0x0,0x02c83a20
02c839e8  adrp x0,0x5e63000
02c839ec  ldr x0,[x0, #0xda0]
02c839f0  bl 0x029f5a50
02c839f4  adrp x0,0x5e63000
02c839f8  ldr x0,[x0, #0xda8]
02c839fc  bl 0x029f5a50
02c83a00  adrp x0,0x5e63000
02c83a04  ldr x0,[x0, #0xdb0]
02c83a08  bl 0x029f5a50
02c83a0c  adrp x0,0x5e63000
02c83a10  ldr x0,[x0, #0xdb8]
02c83a14  bl 0x029f5a50
02c83a18  mov w8,#0x1
02c83a1c  strb w8,[x20, #0x367]
02c83a20  mov x20,x19
02c83a24  stp xzr,xzr,[sp, #0x18]
02c83a28  ldr x1,[x20, #0x48]!
02c83a2c  str xzr,[sp, #0x28]
02c83a30  cbz x1,0x02c83a50
02c83a34  mov x0,x19
02c83a38  mov x2,xzr
02c83a3c  bl 0x057e237c
02c83a40  mov x0,x20
02c83a44  mov x1,xzr
02c83a48  str xzr,[x19, #0x48]
02c83a4c  bl 0x029f59f4
02c83a50  ldr x0,[x19, #0x40]
02c83a54  mov x8,#-0x1
02c83a58  stp x8,x8,[x19, #0x50]
02c83a5c  cbz x0,0x02c83ae4
02c83a60  adrp x8,0x5e63000
02c83a64  adrp x20,0x5e63000
02c83a68  adrp x21,0x5e63000
02c83a6c  ldr x8,[x8, #0xdb8]
02c83a70  ldr x20,[x20, #0xda8]
02c83a74  ldr x21,[x21, #0xda0]
02c83a78  add x22,sp,#0x18
02c83a7c  ldr x1,[x8]
02c83a80  add x8,sp,#0x18
02c83a84  bl 0x0452d690
02c83a88  stp xzr,x22,[sp, #0x8]
02c83a8c  ldr x1,[x20]
02c83a90  add x0,sp,#0x18
02c83a94  bl 0x03fa4e10
02c83a98  tbz w0,#0x0,0x02c83ab8
02c83a9c  ldr x0,[sp, #0x28]
02c83aa0  cbz x0,0x02c83ae0
02c83aa4  ldrb w8,[x0, #0x6d]
02c83aa8  cbz w8,0x02c83a8c
02c83aac  mov x1,xzr
02c83ab0  bl 0x02c7ebc0
02c83ab4  b 0x02c83a8c
02c83ab8  ldr x1,[x21]
02c83abc  add x0,sp,#0x18
02c83ac0  bl 0x03fa4e0c
02c83ac4  mov x0,x19
02c83ac8  bl 0x02c828c0
02c83acc  ldp x20,x19,[sp, #0x50]
02c83ad0  ldr x30,[sp, #0x30]
02c83ad4  ldp x22,x21,[sp, #0x40]
02c83ad8  add sp,sp,#0x60
02c83adc  ret
02c83ae0  bl 0x029f5cfc
02c83ae4  bl 0x029f5cfc
