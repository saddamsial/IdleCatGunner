02c5fbe0  sub sp,sp,#0x40
02c5fbe4  stp x30,x23,[sp, #0x10]
02c5fbe8  stp x22,x21,[sp, #0x20]
02c5fbec  stp x20,x19,[sp, #0x30]
02c5fbf0  adrp x21,0x625c000
02c5fbf4  adrp x20,0x5e5d000
02c5fbf8  mov x19,x0
02c5fbfc  ldrb w8,[x21, #0x241]
02c5fc00  ldr x20,[x20, #0xd38]
02c5fc04  tbnz w8,#0x0,0x02c5fc34
02c5fc08  adrp x0,0x5e5d000
02c5fc0c  ldr x0,[x0, #0xd38]
02c5fc10  bl 0x029f5a50
02c5fc14  adrp x0,0x5e62000
02c5fc18  ldr x0,[x0, #0xfe8]
02c5fc1c  bl 0x029f5a50
02c5fc20  adrp x0,0x5e63000
02c5fc24  ldr x0,[x0, #0x838]
02c5fc28  bl 0x029f5a50
02c5fc2c  mov w8,#0x1
02c5fc30  strb w8,[x21, #0x241]
02c5fc34  mov x0,x19
02c5fc38  bl 0x02c5fe20
02c5fc3c  mov x0,x19
02c5fc40  bl 0x02c63a38
02c5fc44  ldr x8,[x20]
02c5fc48  ldr x8,[x8, #0xb8]
02c5fc4c  ldr x8,[x8]
02c5fc50  cbz x8,0x02c5fcec
02c5fc54  ldr x8,[x8, #0x90]
02c5fc58  cbz x8,0x02c5fcec
02c5fc5c  adrp x22,0x5e58000
02c5fc60  adrp x23,0x5e63000
02c5fc64  add x1,sp,#0xc
02c5fc68  ldr x22,[x22, #0xa10]
02c5fc6c  ldr x23,[x23, #0x838]
02c5fc70  ldr w8,[x8, #0x18]
02c5fc74  ldr x20,[x19, #0x48]
02c5fc78  ldr x0,[x22, #0x48]
02c5fc7c  str w8,[sp, #0xc]
02c5fc80  bl 0x029f5bd8
02c5fc84  mov x21,x0
02c5fc88  ldr x0,[x22, #0x48]
02c5fc8c  mov w8,#0x14
02c5fc90  add x1,sp,#0x8
02c5fc94  str w8,[sp, #0x8]
02c5fc98  bl 0x029f5bd8
02c5fc9c  ldr x8,[x23]
02c5fca0  mov x2,x0
02c5fca4  mov x1,x21
02c5fca8  mov x3,xzr
02c5fcac  mov x0,x8
02c5fcb0  bl 0x046c1d14
02c5fcb4  cbz x20,0x02c5fcec
02c5fcb8  ldr x8,[x20]
02c5fcbc  mov x1,x0
02c5fcc0  mov x0,x20
02c5fcc4  ldr x9,[x8, #0x558]
02c5fcc8  ldr x2,[x8, #0x560]
02c5fccc  blr x9
02c5fcd0  mov x0,x19
02c5fcd4  bl 0x02c5e45c
02c5fcd8  ldp x20,x19,[sp, #0x30]
02c5fcdc  ldp x22,x21,[sp, #0x20]
02c5fce0  ldp x30,x23,[sp, #0x10]
02c5fce4  add sp,sp,#0x40
02c5fce8  ret
02c5fcec  bl 0x029f5cfc
