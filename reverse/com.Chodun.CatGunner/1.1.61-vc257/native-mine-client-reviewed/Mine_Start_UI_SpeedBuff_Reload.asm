02c4bd28  stp x30,x21,[sp, #-0x20]!
02c4bd2c  stp x20,x19,[sp, #0x10]
02c4bd30  adrp x21,0x625c000
02c4bd34  adrp x20,0x5e59000
02c4bd38  mov x19,x0
02c4bd3c  ldrb w8,[x21, #0x124]
02c4bd40  ldr x20,[x20, #0x1c0]
02c4bd44  tbnz w8,#0x0,0x02c4bd74
02c4bd48  adrp x0,0x5e5d000
02c4bd4c  ldr x0,[x0, #0x4c0]
02c4bd50  bl 0x029f5a50
02c4bd54  adrp x0,0x5e5d000
02c4bd58  ldr x0,[x0, #0xd48]
02c4bd5c  bl 0x029f5a50
02c4bd60  adrp x0,0x5e59000
02c4bd64  ldr x0,[x0, #0x1c0]
02c4bd68  bl 0x029f5a50
02c4bd6c  mov w8,#0x1
02c4bd70  strb w8,[x21, #0x124]
02c4bd74  ldr x0,[x20]
02c4bd78  ldr x20,[x19, #0x50]
02c4bd7c  ldr w8,[x0, #0xe4]
02c4bd80  cbnz w8,0x02c4bd88
02c4bd84  bl 0x029f5bd0
02c4bd88  mov x0,x20
02c4bd8c  mov x1,xzr
02c4bd90  mov x2,xzr
02c4bd94  bl 0x057e14b4
02c4bd98  tbz w0,#0x0,0x02c4bda8
02c4bd9c  ldp x20,x19,[sp, #0x10]
02c4bda0  ldp x30,x21,[sp], #0x20
02c4bda4  ret
02c4bda8  adrp x20,0x5e5d000
02c4bdac  ldr x20,[x20, #0x4c0]
02c4bdb0  ldr x0,[x20]
02c4bdb4  ldr w8,[x0, #0xe4]
02c4bdb8  cbnz w8,0x02c4bdc4
02c4bdbc  bl 0x029f5bd0
02c4bdc0  ldr x0,[x20]
02c4bdc4  ldr x8,[x0, #0xb8]
02c4bdc8  ldr x0,[x8]
02c4bdcc  cbz x0,0x02c4be40
02c4bdd0  mov w1,#0x2
02c4bdd4  mov x2,xzr
02c4bdd8  bl 0x02c37494
02c4bddc  adrp x8,0x5e5d000
02c4bde0  ldr x8,[x8, #0xd48]
02c4bde4  ldr x8,[x8]
02c4bde8  ldr x8,[x8, #0xb8]
02c4bdec  ldr x8,[x8]
02c4bdf0  cbz x8,0x02c4be40
02c4bdf4  ldr w21,[x8, #0x50]
02c4bdf8  mov w20,w0
02c4bdfc  bl 0x02c4946c
02c4be00  mov w8,w0
02c4be04  ldr x0,[x19, #0x50]
02c4be08  cmp w21,w8
02c4be0c  cset w21,lt
02c4be10  cbz x0,0x02c4be40
02c4be14  eor w20,w20,#0x1
02c4be18  mov x2,xzr
02c4be1c  and w1,w21,w20
02c4be20  bl 0x057dff3c
02c4be24  ldr x0,[x19, #0x58]
02c4be28  cbz x0,0x02c4be40
02c4be2c  and w1,w21,w20
02c4be30  ldp x20,x19,[sp, #0x10]
02c4be34  mov x2,xzr
02c4be38  ldp x30,x21,[sp], #0x20
02c4be3c  b 0x057dff3c
02c4be40  bl 0x029f5cfc
