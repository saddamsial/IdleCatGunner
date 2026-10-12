02cb39e4  stp x30,x21,[sp, #-0x20]!
02cb39e8  stp x20,x19,[sp, #0x10]
02cb39ec  adrp x21,0x625c000
02cb39f0  adrp x20,0x5e59000
02cb39f4  adrp x19,0x5e5d000
02cb39f8  ldrb w8,[x21, #0x56f]
02cb39fc  ldr x20,[x20, #0x50]
02cb3a00  ldr x19,[x19, #0x4e8]
02cb3a04  tbnz w8,#0x0,0x02cb3a28
02cb3a08  adrp x0,0x5e5d000
02cb3a0c  ldr x0,[x0, #0x4e8]
02cb3a10  bl 0x029f5a50
02cb3a14  adrp x0,0x5e59000
02cb3a18  ldr x0,[x0, #0x50]
02cb3a1c  bl 0x029f5a50
02cb3a20  mov w8,#0x1
02cb3a24  strb w8,[x21, #0x56f]
02cb3a28  ldr x8,[x19]
02cb3a2c  ldr x1,[x20]
02cb3a30  ldr x0,[x8, #0xb8]
02cb3a34  str x1,[x0, #0x8]!
02cb3a38  bl 0x029f59f4
02cb3a3c  ldr x8,[x19]
02cb3a40  ldp x20,x19,[sp, #0x10]
02cb3a44  ldr x8,[x8, #0xb8]
02cb3a48  str wzr,[x8, #0x10]
02cb3a4c  ldp x30,x21,[sp], #0x20
02cb3a50  ret
