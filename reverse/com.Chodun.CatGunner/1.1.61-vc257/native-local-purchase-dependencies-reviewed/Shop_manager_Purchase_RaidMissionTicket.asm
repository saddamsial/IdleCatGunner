02c9ca50  str x30,[sp, #-0x30]!
02c9ca54  stp x22,x21,[sp, #0x10]
02c9ca58  stp x20,x19,[sp, #0x20]
02c9ca5c  adrp x21,0x625c000
02c9ca60  mov x20,x1
02c9ca64  mov x19,x0
02c9ca68  ldrb w8,[x21, #0x467]
02c9ca6c  tbnz w8,#0x0,0x02c9caa8
02c9ca70  adrp x0,0x5e59000
02c9ca74  ldr x0,[x0, #0x1c0]
02c9ca78  bl 0x029f5a50
02c9ca7c  adrp x0,0x5e5e000
02c9ca80  ldr x0,[x0, #0x68]
02c9ca84  bl 0x029f5a50
02c9ca88  adrp x0,0x5e5d000
02c9ca8c  ldr x0,[x0, #0x920]
02c9ca90  bl 0x029f5a50
02c9ca94  adrp x0,0x5e64000
02c9ca98  ldr x0,[x0, #0x1d8]
02c9ca9c  bl 0x029f5a50
02c9caa0  mov w8,#0x1
02c9caa4  strb w8,[x21, #0x467]
02c9caa8  ldr x8,[x19, #0x20]
02c9caac  cbz x8,0x02c9cb18
02c9cab0  adrp x22,0x5e5e000
02c9cab4  adrp x8,0x5e59000
02c9cab8  ldr x22,[x22, #0x68]
02c9cabc  ldr x8,[x8, #0x1c0]
02c9cac0  ldr x9,[x22]
02c9cac4  ldr x0,[x8]
02c9cac8  ldr x8,[x9, #0xb8]
02c9cacc  ldr w9,[x0, #0xe4]
02c9cad0  ldr x21,[x8]
02c9cad4  cbnz w9,0x02c9cadc
02c9cad8  bl 0x029f5bd0
02c9cadc  mov x0,x21
02c9cae0  mov x1,xzr
02c9cae4  mov x2,xzr
02c9cae8  bl 0x057e14b4
02c9caec  tbnz w0,#0x0,0x02c9cb08
02c9caf0  ldr x8,[x22]
02c9caf4  ldr x8,[x8, #0xb8]
02c9caf8  ldr x8,[x8]
02c9cafc  cbz x8,0x02c9cb94
02c9cb00  ldrb w8,[x8, #0x48]
02c9cb04  cbz w8,0x02c9cb54
02c9cb08  ldp x20,x19,[sp, #0x20]
02c9cb0c  ldp x22,x21,[sp, #0x10]
02c9cb10  ldr x30,[sp], #0x30
02c9cb14  ret
02c9cb18  mov x0,xzr
02c9cb1c  bl 0x02be01a8
02c9cb20  adrp x8,0x5e5d000
02c9cb24  mov x19,x0
02c9cb28  ldr x8,[x8, #0x920]
02c9cb2c  ldr x8,[x8]
02c9cb30  ldr w9,[x8, #0xe4]
02c9cb34  cbnz w9,0x02c9cb40
02c9cb38  mov x0,x8
02c9cb3c  bl 0x029f5bd0
02c9cb40  mov x0,x19
02c9cb44  ldp x20,x19,[sp, #0x20]
02c9cb48  ldp x22,x21,[sp, #0x10]
02c9cb4c  ldr x30,[sp], #0x30
02c9cb50  b 0x02c92ec4
02c9cb54  mov x0,x19
02c9cb58  mov x1,x20
02c9cb5c  str x20,[x0, #0x30]!
02c9cb60  bl 0x029f59f4
02c9cb64  adrp x20,0x5e64000
02c9cb68  ldr x20,[x20, #0x1d8]
02c9cb6c  ldr x1,[x20]
02c9cb70  bl 0x02c93038
02c9cb74  mov w8,w0
02c9cb78  ldr x1,[x20]
02c9cb7c  mov x0,x19
02c9cb80  str w8,[x19, #0x38]
02c9cb84  ldp x20,x19,[sp, #0x20]
02c9cb88  ldp x22,x21,[sp, #0x10]
02c9cb8c  ldr x30,[sp], #0x30
02c9cb90  b 0x02c93b4c
02c9cb94  bl 0x029f5cfc
