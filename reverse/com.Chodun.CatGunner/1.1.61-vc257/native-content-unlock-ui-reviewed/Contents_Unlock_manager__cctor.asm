02b9ebb4  stp x30,x23,[sp, #-0x30]!
02b9ebb8  stp x22,x21,[sp, #0x10]
02b9ebbc  stp x20,x19,[sp, #0x20]
02b9ebc0  adrp x22,0x5e5d000
02b9ebc4  adrp x23,0x625b000
02b9ebc8  adrp x19,0x5e5e000
02b9ebcc  adrp x21,0x5e5e000
02b9ebd0  adrp x20,0x5e5e000
02b9ebd4  ldr x22,[x22, #0x790]
02b9ebd8  ldr x19,[x19, #0x4e0]
02b9ebdc  ldrb w8,[x23, #0x9f2]
02b9ebe0  ldr x21,[x21, #0x4d0]
02b9ebe4  ldr x20,[x20, #0x4e8]
02b9ebe8  tbnz w8,#0x0,0x02b9ec30
02b9ebec  adrp x0,0x5e5e000
02b9ebf0  ldr x0,[x0, #0x4f0]
02b9ebf4  bl 0x029f5a50
02b9ebf8  adrp x0,0x5e5e000
02b9ebfc  ldr x0,[x0, #0x4e8]
02b9ec00  bl 0x029f5a50
02b9ec04  adrp x0,0x5e5e000
02b9ec08  ldr x0,[x0, #0x4d0]
02b9ec0c  bl 0x029f5a50
02b9ec10  adrp x0,0x5e5d000
02b9ec14  ldr x0,[x0, #0x790]
02b9ec18  bl 0x029f5a50
02b9ec1c  adrp x0,0x5e5e000
02b9ec20  ldr x0,[x0, #0x4e0]
02b9ec24  bl 0x029f5a50
02b9ec28  mov w8,#0x1
02b9ec2c  strb w8,[x23, #0x9f2]
02b9ec30  ldr x0,[x22]
02b9ec34  mov w1,#0x8
02b9ec38  bl 0x029f5b40
02b9ec3c  ldr x1,[x19]
02b9ec40  mov x2,xzr
02b9ec44  mov x19,x0
02b9ec48  bl 0x047779e0
02b9ec4c  ldr x8,[x21]
02b9ec50  mov x1,x19
02b9ec54  ldr x0,[x8, #0xb8]
02b9ec58  str x19,[x0, #0x8]!
02b9ec5c  bl 0x029f59f4
02b9ec60  adrp x22,0x5e58000
02b9ec64  ldr x22,[x22, #0xa10]
02b9ec68  ldr x19,[x20]
02b9ec6c  ldr x0,[x22, #0xe0]
02b9ec70  ldr w8,[x0, #0xe4]
02b9ec74  cbnz w8,0x02b9ec7c
02b9ec78  bl 0x029f5bd0
02b9ec7c  mov x0,x19
02b9ec80  mov x1,xzr
02b9ec84  bl 0x04860260
02b9ec88  ldr x8,[x22, #0x98]
02b9ec8c  mov x19,x0
02b9ec90  ldr w9,[x8, #0xe4]
02b9ec94  cbnz w9,0x02b9eca0
02b9ec98  mov x0,x8
02b9ec9c  bl 0x029f5bd0
02b9eca0  mov x0,x19
02b9eca4  mov x1,xzr
02b9eca8  bl 0x048858cc
02b9ecac  cbz x0,0x02b9ecf4
02b9ecb0  adrp x22,0x5e5e000
02b9ecb4  mov x19,x0
02b9ecb8  ldr x22,[x22, #0x4f0]
02b9ecbc  ldr x20,[x22]
02b9ecc0  mov x1,x20
02b9ecc4  bl 0x029f5bd4
02b9ecc8  cbz x0,0x02b9ed18
02b9eccc  ldr x8,[x21]
02b9ecd0  ldr x21,[x22]
02b9ecd4  ldr x20,[x8, #0xb8]
02b9ecd8  mov x1,x21
02b9ecdc  str x0,[x20, #0x10]!
02b9ece0  mov x0,x19
02b9ece4  bl 0x029f5bd4
02b9ece8  cbz x0,0x02b9ed24
02b9ecec  mov x1,x0
02b9ecf0  b 0x02b9ed04
02b9ecf4  ldr x8,[x21]
02b9ecf8  mov x1,xzr
02b9ecfc  ldr x20,[x8, #0xb8]
02b9ed00  str xzr,[x20, #0x10]!
02b9ed04  mov x0,x20
02b9ed08  ldp x20,x19,[sp, #0x20]
02b9ed0c  ldp x22,x21,[sp, #0x10]
02b9ed10  ldp x30,x23,[sp], #0x30
02b9ed14  b 0x029f59f4
02b9ed18  mov x0,x19
02b9ed1c  mov x1,x20
02b9ed20  bl 0x029f607c
02b9ed24  mov x0,x19
02b9ed28  mov x1,x21
02b9ed2c  bl 0x029f607c
