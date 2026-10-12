02c3ec6c  str x30,[sp, #-0x20]!
02c3ec70  stp x20,x19,[sp, #0x10]
02c3ec74  adrp x20,0x625c000
02c3ec78  adrp x19,0x5e5d000
02c3ec7c  ldrb w8,[x20, #0x96]
02c3ec80  ldr x19,[x19, #0xd30]
02c3ec84  tbnz w8,#0x0,0x02c3ec9c
02c3ec88  adrp x0,0x5e5d000
02c3ec8c  ldr x0,[x0, #0xd30]
02c3ec90  bl 0x029f5a50
02c3ec94  mov w8,#0x1
02c3ec98  strb w8,[x20, #0x96]
02c3ec9c  ldr x0,[x19]
02c3eca0  ldr w8,[x0, #0xe4]
02c3eca4  cbnz w8,0x02c3ecb0
02c3eca8  bl 0x029f5bd0
02c3ecac  ldr x0,[x19]
02c3ecb0  ldr x8,[x0, #0xb8]
02c3ecb4  ldr x8,[x8, #0x8]
02c3ecb8  cbz x8,0x02c3ecd4
02c3ecbc  ldr x0,[x8, #0x110]
02c3ecc0  cbz x0,0x02c3ecd4
02c3ecc4  ldp x20,x19,[sp, #0x10]
02c3ecc8  mov x1,xzr
02c3eccc  ldr x30,[sp], #0x20
02c3ecd0  b 0x057dc0f8
02c3ecd4  bl 0x029f5cfc
