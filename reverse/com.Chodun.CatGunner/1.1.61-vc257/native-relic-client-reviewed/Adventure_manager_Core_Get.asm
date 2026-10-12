02c2cd94  str x30,[sp, #-0x30]!
02c2cd98  stp x22,x21,[sp, #0x10]
02c2cd9c  stp x20,x19,[sp, #0x20]
02c2cda0  adrp x22,0x625b000
02c2cda4  adrp x21,0x5e5d000
02c2cda8  mov w19,w1
02c2cdac  ldrb w8,[x22, #0xffd]
02c2cdb0  ldr x21,[x21, #0xd28]
02c2cdb4  mov w20,w0
02c2cdb8  tbnz w8,#0x0,0x02c2cdd0
02c2cdbc  adrp x0,0x5e5d000
02c2cdc0  ldr x0,[x0, #0xd28]
02c2cdc4  bl 0x029f5a50
02c2cdc8  mov w8,#0x1
02c2cdcc  strb w8,[x22, #0xffd]
02c2cdd0  ldr x0,[x21]
02c2cdd4  ldr w8,[x0, #0xe4]
02c2cdd8  cbnz w8,0x02c2cde4
02c2cddc  bl 0x029f5bd0
02c2cde0  ldr x0,[x21]
02c2cde4  ldr x8,[x0, #0xb8]
02c2cde8  ldr x9,[x8, #0x10]
02c2cdec  cbz x9,0x02c2ce7c
02c2cdf0  ldr x9,[x9, #0x28]
02c2cdf4  cbz x9,0x02c2ce7c
02c2cdf8  ldr w10,[x9, #0x18]
02c2cdfc  cmp w10,w20
02c2ce00  b.ls 0x02c2ce80
02c2ce04  add x9,x9,w20, SXTW  #0x2
02c2ce08  ldr x8,[x8]
02c2ce0c  ldr w10,[x9, #0x20]
02c2ce10  add w10,w10,w19
02c2ce14  str w10,[x9, #0x20]
02c2ce18  cbz x8,0x02c2ce30
02c2ce1c  ldr x9,[x8, #0x18]
02c2ce20  ldr x0,[x8, #0x40]
02c2ce24  ldr x1,[x8, #0x28]
02c2ce28  blr x9
02c2ce2c  ldr x0,[x21]
02c2ce30  ldr w8,[x0, #0xe4]
02c2ce34  cbnz w8,0x02c2ce40
02c2ce38  bl 0x029f5bd0
02c2ce3c  ldr x0,[x21]
02c2ce40  ldr x8,[x0, #0xb8]
02c2ce44  ldr x0,[x8, #0x10]
02c2ce48  cbz x0,0x02c2ce7c
02c2ce4c  bl 0x02c2c974
02c2ce50  ldr x8,[x21]
02c2ce54  ldr x8,[x8, #0xb8]
02c2ce58  ldr x8,[x8, #0x10]
02c2ce5c  cbz x8,0x02c2ce7c
02c2ce60  ldr x0,[x8, #0x40]
02c2ce64  cbz x0,0x02c2ce7c
02c2ce68  ldp x20,x19,[sp, #0x20]
02c2ce6c  mov x1,xzr
02c2ce70  ldp x22,x21,[sp, #0x10]
02c2ce74  ldr x30,[sp], #0x30
02c2ce78  b 0x02c35930
02c2ce7c  bl 0x029f5cfc
02c2ce80  bl 0x029f5d04
