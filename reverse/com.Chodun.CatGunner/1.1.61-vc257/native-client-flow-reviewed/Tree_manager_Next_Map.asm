02cadc38  stp x30,x21,[sp, #-0x20]!
02cadc3c  stp x20,x19,[sp, #0x10]
02cadc40  adrp x21,0x625c000
02cadc44  adrp x20,0x5e5d000
02cadc48  mov x19,x0
02cadc4c  ldrb w8,[x21, #0x524]
02cadc50  ldr x20,[x20, #0x338]
02cadc54  tbnz w8,#0x0,0x02cadc6c
02cadc58  adrp x0,0x5e5d000
02cadc5c  ldr x0,[x0, #0x338]
02cadc60  bl 0x029f5a50
02cadc64  mov w8,#0x1
02cadc68  strb w8,[x21, #0x524]
02cadc6c  ldr x0,[x20]
02cadc70  ldr w8,[x19, #0x28]
02cadc74  mov w10,#0x2
02cadc78  ldr w9,[x0, #0xe4]
02cadc7c  add w8,w8,#0x1
02cadc80  stp w8,w10,[x19, #0x28]
02cadc84  cbnz w9,0x02cadc90
02cadc88  bl 0x029f5bd0
02cadc8c  ldr x0,[x20]
02cadc90  ldr x8,[x0, #0xb8]
02cadc94  ldr x0,[x19, #0x58]
02cadc98  strb wzr,[x8]
02cadc9c  cbz x0,0x02cadce0
02cadca0  mov w1,#0x1
02cadca4  mov x2,xzr
02cadca8  bl 0x057dff3c
02cadcac  mov x0,x19
02cadcb0  bl 0x02cad6d4
02cadcb4  mov x20,x19
02cadcb8  mov x1,x0
02cadcbc  str x0,[x20, #0xc8]!
02cadcc0  mov x0,x20
02cadcc4  bl 0x029f59f4
02cadcc8  ldr x1,[x20]
02cadccc  mov x0,x19
02cadcd0  mov x2,xzr
02cadcd4  ldp x20,x19,[sp, #0x10]
02cadcd8  ldp x30,x21,[sp], #0x20
02cadcdc  b 0x057e2120
02cadce0  bl 0x029f5cfc
