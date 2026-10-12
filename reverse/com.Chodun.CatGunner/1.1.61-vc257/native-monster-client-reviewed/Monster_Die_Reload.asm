02c4cad0  stp x30,x21,[sp, #-0x20]!
02c4cad4  stp x20,x19,[sp, #0x10]
02c4cad8  adrp x20,0x625c000
02c4cadc  mov x19,x0
02c4cae0  ldrb w8,[x20, #0x131]
02c4cae4  tbnz w8,#0x0,0x02c4cb08
02c4cae8  adrp x0,0x5e5d000
02c4caec  ldr x0,[x0, #0xd58]
02c4caf0  bl 0x029f5a50
02c4caf4  adrp x0,0x5e62000
02c4caf8  ldr x0,[x0, #0x148]
02c4cafc  bl 0x029f5a50
02c4cb00  mov w8,#0x1
02c4cb04  strb w8,[x20, #0x131]
02c4cb08  mov x20,x19
02c4cb0c  ldr x1,[x20, #0x70]!
02c4cb10  cbz x1,0x02c4cb30
02c4cb14  mov x0,x19
02c4cb18  mov x2,xzr
02c4cb1c  bl 0x057e237c
02c4cb20  mov x0,x20
02c4cb24  mov x1,xzr
02c4cb28  str xzr,[x19, #0x70]
02c4cb2c  bl 0x029f59f4
02c4cb30  adrp x21,0x625b000
02c4cb34  ldr x20,[x19, #0x28]
02c4cb38  ldrb w8,[x21, #0x26f]
02c4cb3c  cbnz w8,0x02c4cb54
02c4cb40  adrp x0,0x5e58000
02c4cb44  ldr x0,[x0, #0xbf8]
02c4cb48  bl 0x029f5a50
02c4cb4c  mov w8,#0x1
02c4cb50  strb w8,[x21, #0x26f]
02c4cb54  cbz x20,0x02c4cc08
02c4cb58  adrp x8,0x5e58000
02c4cb5c  adrp x21,0x5e5d000
02c4cb60  mov x0,x20
02c4cb64  ldr x8,[x8, #0xbf8]
02c4cb68  mov x1,xzr
02c4cb6c  ldr x8,[x8]
02c4cb70  ldr x8,[x8, #0xb8]
02c4cb74  ldr x21,[x21, #0xd58]
02c4cb78  ldp s1,s2,[x8, #0x4]
02c4cb7c  ldr s0,[x8]
02c4cb80  bl 0x0586b344
02c4cb84  ldr x0,[x21]
02c4cb88  ldr w8,[x0, #0xe4]
02c4cb8c  cbnz w8,0x02c4cb98
02c4cb90  bl 0x029f5bd0
02c4cb94  ldr x0,[x21]
02c4cb98  ldr x8,[x0, #0xb8]
02c4cb9c  ldr x0,[x8, #0x8]
02c4cba0  cbz x0,0x02c4cc08
02c4cba4  mov x1,x19
02c4cba8  bl 0x02c4cc0c
02c4cbac  ldr x0,[x19, #0x38]
02c4cbb0  cbz x0,0x02c4cc08
02c4cbb4  adrp x8,0x5e62000
02c4cbb8  mov x1,xzr
02c4cbbc  ldr x8,[x8, #0x148]
02c4cbc0  ldr x8,[x8]
02c4cbc4  ldr x8,[x8, #0xb8]
02c4cbc8  ldr x20,[x8, #0x10]
02c4cbcc  bl 0x057eed98
02c4cbd0  cbz x20,0x02c4cc08
02c4cbd4  mov x0,x20
02c4cbd8  mov w1,#0x5
02c4cbdc  mov x2,xzr
02c4cbe0  bl 0x02c0b844
02c4cbe4  mov x0,x19
02c4cbe8  mov x1,xzr
02c4cbec  bl 0x057dc1c8
02c4cbf0  cbz x0,0x02c4cc08
02c4cbf4  ldp x20,x19,[sp, #0x10]
02c4cbf8  mov w1,wzr
02c4cbfc  mov x2,xzr
02c4cc00  ldp x30,x21,[sp], #0x20
02c4cc04  b 0x057dff3c
02c4cc08  bl 0x029f5cfc
