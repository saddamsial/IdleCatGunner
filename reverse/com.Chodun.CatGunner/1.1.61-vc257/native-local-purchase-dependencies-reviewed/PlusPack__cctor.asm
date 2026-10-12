02c919f0  stp x30,x21,[sp, #-0x20]!
02c919f4  stp x20,x19,[sp, #0x10]
02c919f8  adrp x20,0x625c000
02c919fc  adrp x21,0x5e64000
02c91a00  adrp x19,0x5e5e000
02c91a04  ldrb w8,[x20, #0x3f8]
02c91a08  ldr x21,[x21, #0x160]
02c91a0c  ldr x19,[x19, #0xb8]
02c91a10  tbnz w8,#0x0,0x02c91a34
02c91a14  adrp x0,0x5e64000
02c91a18  ldr x0,[x0, #0x160]
02c91a1c  bl 0x029f5a50
02c91a20  adrp x0,0x5e5e000
02c91a24  ldr x0,[x0, #0xb8]
02c91a28  bl 0x029f5a50
02c91a2c  mov w8,#0x1
02c91a30  strb w8,[x20, #0x3f8]
02c91a34  ldr x0,[x21]
02c91a38  mov w1,#0x3
02c91a3c  bl 0x029f5b40
02c91a40  ldr x8,[x19]
02c91a44  ldp x20,x19,[sp, #0x10]
02c91a48  mov x1,x0
02c91a4c  ldr x8,[x8, #0xb8]
02c91a50  str x0,[x8, #0x8]!
02c91a54  mov x0,x8
02c91a58  ldp x30,x21,[sp], #0x20
02c91a5c  b 0x029f59f4
