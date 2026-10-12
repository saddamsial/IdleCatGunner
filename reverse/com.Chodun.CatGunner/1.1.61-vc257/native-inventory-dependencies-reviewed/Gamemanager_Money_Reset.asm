02b7ec3c  sub sp,sp,#0x60
02b7ec40  str x30,[sp, #0x40]
02b7ec44  stp x20,x19,[sp, #0x50]
02b7ec48  adrp x20,0x625b000
02b7ec4c  adrp x19,0x5e5d000
02b7ec50  ldrb w8,[x20, #0x8b8]
02b7ec54  ldr x19,[x19, #0x338]
02b7ec58  tbnz w8,#0x0,0x02b7ec70
02b7ec5c  adrp x0,0x5e5d000
02b7ec60  ldr x0,[x0, #0x338]
02b7ec64  bl 0x029f5a50
02b7ec68  mov w8,#0x1
02b7ec6c  strb w8,[x20, #0x8b8]
02b7ec70  add x8,sp,#0x20
02b7ec74  mov w0,wzr
02b7ec78  mov x1,xzr
02b7ec7c  bl 0x046544b8
02b7ec80  ldr x0,[x19]
02b7ec84  ldr w8,[x0, #0xe4]
02b7ec88  cbnz w8,0x02b7ec94
02b7ec8c  bl 0x029f5bd0
02b7ec90  ldr x0,[x19]
02b7ec94  ldp q0,q1,[sp, #0x20]
02b7ec98  mov x1,xzr
02b7ec9c  ldr x8,[x0, #0xb8]
02b7eca0  stp q0,q1,[x8, #0x30]
02b7eca4  ldr x8,[x0, #0xb8]
02b7eca8  add x0,x8,#0x30
02b7ecac  bl 0x029f59f4
02b7ecb0  mov x8,sp
02b7ecb4  mov w0,wzr
02b7ecb8  mov x1,xzr
02b7ecbc  bl 0x046544b8
02b7ecc0  ldr x8,[x19]
02b7ecc4  ldp q0,q1,[sp]
02b7ecc8  mov x1,xzr
02b7eccc  ldr x9,[x8, #0xb8]
02b7ecd0  stp q0,q1,[x9, #0x50]
02b7ecd4  ldr x8,[x8, #0xb8]
02b7ecd8  add x0,x8,#0x50
02b7ecdc  bl 0x029f59f4
02b7ece0  ldr x8,[x19]
02b7ece4  ldr x8,[x8, #0xb8]
02b7ece8  ldr x8,[x8, #0x8]
02b7ecec  cbz x8,0x02b7ed00
02b7ecf0  ldr x9,[x8, #0x18]
02b7ecf4  ldr x0,[x8, #0x40]
02b7ecf8  ldr x1,[x8, #0x28]
02b7ecfc  blr x9
02b7ed00  ldp x20,x19,[sp, #0x50]
02b7ed04  ldr x30,[sp, #0x40]
02b7ed08  add sp,sp,#0x60
02b7ed0c  ret
