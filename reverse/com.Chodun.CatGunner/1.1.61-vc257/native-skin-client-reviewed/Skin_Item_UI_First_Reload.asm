02ca7e00  str x30,[sp, #-0x30]!
02ca7e04  stp x22,x21,[sp, #0x10]
02ca7e08  stp x20,x19,[sp, #0x20]
02ca7e0c  adrp x22,0x625c000
02ca7e10  adrp x21,0x5e5d000
02ca7e14  mov w19,w1
02ca7e18  ldrb w8,[x22, #0x4eb]
02ca7e1c  ldr x21,[x21, #0x4e0]
02ca7e20  mov x20,x0
02ca7e24  tbnz w8,#0x0,0x02ca7e3c
02ca7e28  adrp x0,0x5e5d000
02ca7e2c  ldr x0,[x0, #0x4e0]
02ca7e30  bl 0x029f5a50
02ca7e34  mov w8,#0x1
02ca7e38  strb w8,[x22, #0x4eb]
02ca7e3c  ldr x8,[x21]
02ca7e40  str w19,[x20, #0x20]
02ca7e44  ldr x8,[x8, #0xb8]
02ca7e48  ldr x8,[x8, #0x10]
02ca7e4c  cbz x8,0x02ca7ea4
02ca7e50  ldr x8,[x8, #0x50]
02ca7e54  cbz x8,0x02ca7ea4
02ca7e58  ldr w9,[x8, #0x18]
02ca7e5c  cmp w9,w19
02ca7e60  b.ls 0x02ca7ea8
02ca7e64  ldr x0,[x20, #0x30]
02ca7e68  cbz x0,0x02ca7ea4
02ca7e6c  add x8,x8,w19, SXTW  #0x3
02ca7e70  ldr x20,[x20, #0x28]
02ca7e74  mov x2,xzr
02ca7e78  ldr x19,[x8, #0x20]
02ca7e7c  mov x1,x19
02ca7e80  bl 0x058d34cc
02ca7e84  cbz x20,0x02ca7ea4
02ca7e88  mov x0,x20
02ca7e8c  mov x1,x19
02ca7e90  mov x2,xzr
02ca7e94  ldp x20,x19,[sp, #0x20]
02ca7e98  ldp x22,x21,[sp, #0x10]
02ca7e9c  ldr x30,[sp], #0x30
02ca7ea0  b 0x058d34cc
02ca7ea4  bl 0x029f5cfc
02ca7ea8  bl 0x029f5d04
