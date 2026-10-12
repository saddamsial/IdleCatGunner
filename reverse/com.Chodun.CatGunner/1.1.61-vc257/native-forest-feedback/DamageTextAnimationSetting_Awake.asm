02b82d00  stp x30,x21,[sp, #-0x20]!
02b82d04  stp x20,x19,[sp, #0x10]
02b82d08  adrp x21,0x625b000
02b82d0c  adrp x20,0x5e5d000
02b82d10  mov x19,x0
02b82d14  ldrb w8,[x21, #0x8e0]
02b82d18  ldr x20,[x20, #0x6d8]
02b82d1c  tbnz w8,#0x0,0x02b82d34
02b82d20  adrp x0,0x5e5d000
02b82d24  ldr x0,[x0, #0x6d8]
02b82d28  bl 0x029f5a50
02b82d2c  mov w8,#0x1
02b82d30  strb w8,[x21, #0x8e0]
02b82d34  ldr x8,[x20]
02b82d38  mov x1,x19
02b82d3c  ldr x8,[x8, #0xb8]
02b82d40  str x19,[x8]
02b82d44  ldr x8,[x20]
02b82d48  ldp x20,x19,[sp, #0x10]
02b82d4c  ldr x0,[x8, #0xb8]
02b82d50  ldp x30,x21,[sp], #0x20
02b82d54  b 0x029f59f4
