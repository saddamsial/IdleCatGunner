02c2cca4  str x30,[sp, #-0x30]!
02c2cca8  stp x22,x21,[sp, #0x10]
02c2ccac  stp x20,x19,[sp, #0x20]
02c2ccb0  adrp x22,0x625b000
02c2ccb4  adrp x21,0x5e5d000
02c2ccb8  mov w19,w1
02c2ccbc  ldrb w8,[x22, #0xffc]
02c2ccc0  ldr x21,[x21, #0xd28]
02c2ccc4  mov w20,w0
02c2ccc8  tbnz w8,#0x0,0x02c2cce0
02c2cccc  adrp x0,0x5e5d000
02c2ccd0  ldr x0,[x0, #0xd28]
02c2ccd4  bl 0x029f5a50
02c2ccd8  mov w8,#0x1
02c2ccdc  strb w8,[x22, #0xffc]
02c2cce0  ldr x0,[x21]
02c2cce4  ldr w8,[x0, #0xe4]
02c2cce8  cbnz w8,0x02c2ccf4
02c2ccec  bl 0x029f5bd0
02c2ccf0  ldr x0,[x21]
02c2ccf4  ldr x8,[x0, #0xb8]
02c2ccf8  ldr x9,[x8, #0x10]
02c2ccfc  cbz x9,0x02c2cd8c
02c2cd00  ldr x9,[x9, #0x28]
02c2cd04  cbz x9,0x02c2cd8c
02c2cd08  ldr w10,[x9, #0x18]
02c2cd0c  cmp w10,w20
02c2cd10  b.ls 0x02c2cd90
02c2cd14  add x9,x9,w20, SXTW  #0x2
02c2cd18  ldr x8,[x8]
02c2cd1c  ldr w10,[x9, #0x20]
02c2cd20  sub w10,w10,w19
02c2cd24  str w10,[x9, #0x20]
02c2cd28  cbz x8,0x02c2cd40
02c2cd2c  ldr x9,[x8, #0x18]
02c2cd30  ldr x0,[x8, #0x40]
02c2cd34  ldr x1,[x8, #0x28]
02c2cd38  blr x9
02c2cd3c  ldr x0,[x21]
02c2cd40  ldr w8,[x0, #0xe4]
02c2cd44  cbnz w8,0x02c2cd50
02c2cd48  bl 0x029f5bd0
02c2cd4c  ldr x0,[x21]
02c2cd50  ldr x8,[x0, #0xb8]
02c2cd54  ldr x0,[x8, #0x10]
02c2cd58  cbz x0,0x02c2cd8c
02c2cd5c  bl 0x02c2c974
02c2cd60  ldr x8,[x21]
02c2cd64  ldr x8,[x8, #0xb8]
02c2cd68  ldr x8,[x8, #0x10]
02c2cd6c  cbz x8,0x02c2cd8c
02c2cd70  ldr x0,[x8, #0x40]
02c2cd74  cbz x0,0x02c2cd8c
02c2cd78  ldp x20,x19,[sp, #0x20]
02c2cd7c  mov x1,xzr
02c2cd80  ldp x22,x21,[sp, #0x10]
02c2cd84  ldr x30,[sp], #0x30
02c2cd88  b 0x02c35930
02c2cd8c  bl 0x029f5cfc
02c2cd90  bl 0x029f5d04
