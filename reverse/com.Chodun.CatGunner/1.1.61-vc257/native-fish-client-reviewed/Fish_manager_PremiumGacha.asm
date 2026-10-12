02c5ea80  stp x30,x21,[sp, #-0x20]!
02c5ea84  stp x20,x19,[sp, #0x10]
02c5ea88  adrp x20,0x625c000
02c5ea8c  mov x19,x0
02c5ea90  ldrb w8,[x20, #0x207]
02c5ea94  tbnz w8,#0x0,0x02c5ead0
02c5ea98  adrp x0,0x5e5d000
02c5ea9c  ldr x0,[x0, #0x338]
02c5eaa0  bl 0x029f5a50
02c5eaa4  adrp x0,0x5e63000
02c5eaa8  ldr x0,[x0, #0x108]
02c5eaac  bl 0x029f5a50
02c5eab0  adrp x0,0x5e62000
02c5eab4  ldr x0,[x0, #0xfe8]
02c5eab8  bl 0x029f5a50
02c5eabc  adrp x0,0x5e59000
02c5eac0  ldr x0,[x0, #0x1c0]
02c5eac4  bl 0x029f5a50
02c5eac8  mov w8,#0x1
02c5eacc  strb w8,[x20, #0x207]
02c5ead0  ldr x8,[x19, #0x90]
02c5ead4  cbz x8,0x02c5ece4
02c5ead8  ldr w8,[x8, #0x18]
02c5eadc  cmp w8,#0x14
02c5eae0  b.ge 0x02c5eb94
02c5eae4  adrp x20,0x5e5d000
02c5eae8  ldr x20,[x20, #0x338]
02c5eaec  ldr x0,[x20]
02c5eaf0  ldr w8,[x0, #0xe4]
02c5eaf4  cbnz w8,0x02c5eb00
02c5eaf8  bl 0x029f5bd0
02c5eafc  ldr x0,[x20]
02c5eb00  ldr x8,[x0, #0xb8]
02c5eb04  mov x2,xzr
02c5eb08  ldp x0,x1,[x8, #0x90]
02c5eb0c  bl 0x02b1e644
02c5eb10  cmp w0,#0xc7
02c5eb14  b.le 0x02c5ebac
02c5eb18  ldr x0,[x20]
02c5eb1c  ldr w8,[x0, #0xe4]
02c5eb20  cbnz w8,0x02c5eb28
02c5eb24  bl 0x029f5bd0
02c5eb28  mov w0,#0xc8
02c5eb2c  mov w1,#0x3
02c5eb30  mov x2,xzr
02c5eb34  bl 0x02b7f278
02c5eb38  mov x0,x19
02c5eb3c  mov w1,#0x1
02c5eb40  bl 0x02c5e7fc
02c5eb44  ldr x8,[x19, #0x90]
02c5eb48  cbz x8,0x02c5ece4
02c5eb4c  adrp x10,0x5e63000
02c5eb50  ldr x10,[x10, #0x108]
02c5eb54  ldr w11,[x8, #0x1c]
02c5eb58  ldr x9,[x8, #0x10]
02c5eb5c  ldr x10,[x10]
02c5eb60  add w11,w11,#0x1
02c5eb64  str w11,[x8, #0x1c]
02c5eb68  cbz x9,0x02c5ece4
02c5eb6c  ldrsw x11,[x8, #0x18]
02c5eb70  ldr w12,[x9, #0x18]
02c5eb74  mov w20,w0
02c5eb78  cmp w11,w12
02c5eb7c  b.cs 0x02c5ec00
02c5eb80  add x9,x9,x11, LSL #0x2
02c5eb84  add w10,w11,#0x1
02c5eb88  str w10,[x8, #0x18]
02c5eb8c  str w20,[x9, #0x20]
02c5eb90  b 0x02c5ec18
02c5eb94  mov x0,xzr
02c5eb98  bl 0x02bdfae8
02c5eb9c  ldp x20,x19,[sp, #0x10]
02c5eba0  mov x1,xzr
02c5eba4  ldp x30,x21,[sp], #0x20
02c5eba8  b 0x02c1dd54
02c5ebac  adrp x19,0x625b000
02c5ebb0  ldrb w8,[x19, #0xa57]
02c5ebb4  cbnz w8,0x02c5ebcc
02c5ebb8  adrp x0,0x5e5d000
02c5ebbc  ldr x0,[x0, #0xd70]
02c5ebc0  bl 0x029f5a50
02c5ebc4  mov w8,#0x1
02c5ebc8  strb w8,[x19, #0xa57]
02c5ebcc  adrp x8,0x5e5d000
02c5ebd0  ldr x8,[x8, #0xd70]
02c5ebd4  ldr x8,[x8]
02c5ebd8  ldr x8,[x8, #0xb8]
02c5ebdc  ldr x0,[x8]
02c5ebe0  cbz x0,0x02c5ece4
02c5ebe4  ldp x20,x19,[sp, #0x10]
02c5ebe8  fmov s0,0x3f800000
02c5ebec  mov w1,#0x5
02c5ebf0  mov x2,xzr
02c5ebf4  mov x3,xzr
02c5ebf8  ldp x30,x21,[sp], #0x20
02c5ebfc  b 0x02c1f10c
02c5ec00  ldr x9,[x10, #0x20]
02c5ec04  mov x0,x8
02c5ec08  mov w1,w20
02c5ec0c  ldr x9,[x9, #0xc0]
02c5ec10  ldr x2,[x9, #0x70]
02c5ec14  bl 0x044f7a10
02c5ec18  ldr x8,[x19, #0xa8]
02c5ec1c  cbz x8,0x02c5ec30
02c5ec20  ldr x9,[x8, #0x18]
02c5ec24  ldr x0,[x8, #0x40]
02c5ec28  ldr x1,[x8, #0x28]
02c5ec2c  blr x9
02c5ec30  mov x0,x19
02c5ec34  bl 0x02c5d820
02c5ec38  bl 0x02c5e13c
02c5ec3c  adrp x8,0x5e59000
02c5ec40  ldr x8,[x8, #0x1c0]
02c5ec44  ldr x21,[x19, #0xa0]
02c5ec48  ldr x0,[x8]
02c5ec4c  ldr w8,[x0, #0xe4]
02c5ec50  cbnz w8,0x02c5ec58
02c5ec54  bl 0x029f5bd0
02c5ec58  mov x0,x21
02c5ec5c  mov x1,xzr
02c5ec60  mov x2,xzr
02c5ec64  bl 0x057dfa70
02c5ec68  tbz w0,#0x0,0x02c5ec7c
02c5ec6c  ldr x0,[x19, #0xa0]
02c5ec70  cbz x0,0x02c5ece4
02c5ec74  mov w1,w20
02c5ec78  bl 0x02c5e88c
02c5ec7c  mov x0,x19
02c5ec80  mov w1,w20
02c5ec84  bl 0x02c5ea14
02c5ec88  adrp x20,0x625b000
02c5ec8c  ldrb w8,[x20, #0xa57]
02c5ec90  cbnz w8,0x02c5eca8
02c5ec94  adrp x0,0x5e5d000
02c5ec98  ldr x0,[x0, #0xd70]
02c5ec9c  bl 0x029f5a50
02c5eca0  mov w8,#0x1
02c5eca4  strb w8,[x20, #0xa57]
02c5eca8  adrp x8,0x5e5d000
02c5ecac  ldr x8,[x8, #0xd70]
02c5ecb0  ldr x8,[x8]
02c5ecb4  ldr x8,[x8, #0xb8]
02c5ecb8  ldr x0,[x8]
02c5ecbc  cbz x0,0x02c5ece4
02c5ecc0  fmov s0,0x3f800000
02c5ecc4  mov w1,#0x2
02c5ecc8  mov x2,xzr
02c5eccc  mov x3,xzr
02c5ecd0  bl 0x02c1f10c
02c5ecd4  mov x0,x19
02c5ecd8  ldp x20,x19,[sp, #0x10]
02c5ecdc  ldp x30,x21,[sp], #0x20
02c5ece0  b 0x02c5dcbc
02c5ece4  bl 0x029f5cfc
