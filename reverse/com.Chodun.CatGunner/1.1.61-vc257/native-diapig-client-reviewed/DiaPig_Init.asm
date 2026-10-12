02c8ca3c  sub sp,sp,#0x40
02c8ca40  stp x30,x23,[sp, #0x10]
02c8ca44  stp x22,x21,[sp, #0x20]
02c8ca48  stp x20,x19,[sp, #0x30]
02c8ca4c  adrp x21,0x625c000
02c8ca50  mov x20,x1
02c8ca54  mov x19,x0
02c8ca58  ldrb w8,[x21, #0x3ba]
02c8ca5c  tbnz w8,#0x0,0x02c8ca8c
02c8ca60  adrp x0,0x5e59000
02c8ca64  ldr x0,[x0, #0x760]
02c8ca68  bl 0x029f5a50
02c8ca6c  adrp x0,0x5e59000
02c8ca70  ldr x0,[x0, #0x7d0]
02c8ca74  bl 0x029f5a50
02c8ca78  adrp x0,0x5e5d000
02c8ca7c  ldr x0,[x0, #0x3c0]
02c8ca80  bl 0x029f5a50
02c8ca84  mov w8,#0x1
02c8ca88  strb w8,[x21, #0x3ba]
02c8ca8c  adrp x22,0x5e5d000
02c8ca90  ldr x22,[x22, #0x3c0]
02c8ca94  str xzr,[sp, #0x8]
02c8ca98  cbz x20,0x02c8cb30
02c8ca9c  adrp x8,0x5e59000
02c8caa0  adrp x23,0x5e59000
02c8caa4  ldr x8,[x8, #0x760]
02c8caa8  ldr x0,[x8]
02c8caac  ldr w8,[x20, #0x10]
02c8cab0  ldr w9,[x0, #0xe4]
02c8cab4  ldr x23,[x23, #0x7d0]
02c8cab8  ldr x20,[x20, #0x18]
02c8cabc  str w8,[x19, #0x20]
02c8cac0  cbnz w9,0x02c8cac8
02c8cac4  bl 0x029f5bd0
02c8cac8  mov x0,xzr
02c8cacc  bl 0x047e36ac
02c8cad0  ldr x8,[x23]
02c8cad4  mov x21,x0
02c8cad8  ldr w9,[x8, #0xe4]
02c8cadc  cbnz w9,0x02c8cae8
02c8cae0  mov x0,x8
02c8cae4  bl 0x029f5bd0
02c8cae8  add x3,sp,#0x8
02c8caec  mov x0,x20
02c8caf0  mov x1,x21
02c8caf4  mov w2,#0x80
02c8caf8  mov x4,xzr
02c8cafc  bl 0x04832870
02c8cb00  tbz w0,#0x0,0x02c8cb3c
02c8cb04  ldr x0,[x23]
02c8cb08  ldr w8,[x0, #0xe4]
02c8cb0c  cbnz w8,0x02c8cb14
02c8cb10  bl 0x029f5bd0
02c8cb14  add x0,sp,#0x8
02c8cb18  mov x1,xzr
02c8cb1c  bl 0x04830a94
02c8cb20  cmp w0,#0x1
02c8cb24  b.ne 0x02c8cb58
02c8cb28  ldr x20,[sp, #0x8]
02c8cb2c  b 0x02c8cb78
02c8cb30  ldr x0,[x22]
02c8cb34  str wzr,[x19, #0x20]
02c8cb38  b 0x02c8cc10
02c8cb3c  ldr x0,[x22]
02c8cb40  ldr w8,[x0, #0xe4]
02c8cb44  cbnz w8,0x02c8cb4c
02c8cb48  bl 0x029f5bd0
02c8cb4c  mov x0,xzr
02c8cb50  bl 0x02c1a570
02c8cb54  b 0x02c8cb74
02c8cb58  ldr x0,[x23]
02c8cb5c  ldr w8,[x0, #0xe4]
02c8cb60  cbnz w8,0x02c8cb68
02c8cb64  bl 0x029f5bd0
02c8cb68  add x0,sp,#0x8
02c8cb6c  mov x1,xzr
02c8cb70  bl 0x04832608
02c8cb74  mov x20,x0
02c8cb78  ldr x0,[x22]
02c8cb7c  str x20,[x19, #0x38]
02c8cb80  ldr w8,[x0, #0xe4]
02c8cb84  cbnz w8,0x02c8cb8c
02c8cb88  bl 0x029f5bd0
02c8cb8c  mov x0,xzr
02c8cb90  bl 0x02c1a570
02c8cb94  ldr x8,[x23]
02c8cb98  mov x21,x0
02c8cb9c  ldr w9,[x8, #0xe4]
02c8cba0  cbnz w9,0x02c8cbac
02c8cba4  mov x0,x8
02c8cba8  bl 0x029f5bd0
02c8cbac  mov x0,x20
02c8cbb0  mov x1,x21
02c8cbb4  mov x2,xzr
02c8cbb8  bl 0x048332e0
02c8cbbc  tbz w0,#0x0,0x02c8cbdc
02c8cbc0  ldr x0,[x22]
02c8cbc4  ldr w8,[x0, #0xe4]
02c8cbc8  cbnz w8,0x02c8cbd0
02c8cbcc  bl 0x029f5bd0
02c8cbd0  mov x0,xzr
02c8cbd4  bl 0x02c1a570
02c8cbd8  str x0,[x19, #0x38]
02c8cbdc  ldr x0,[x22]
02c8cbe0  ldr w8,[x0, #0xe4]
02c8cbe4  cbnz w8,0x02c8cbec
02c8cbe8  bl 0x029f5bd0
02c8cbec  mov x0,xzr
02c8cbf0  bl 0x02c23cf8
02c8cbf4  str d0,[x19, #0x40]
02c8cbf8  bl 0x02c8c7d0
02c8cbfc  tbz w0,#0x0,0x02c8cc0c
02c8cc00  mov x0,x19
02c8cc04  bl 0x02c8cc74
02c8cc08  b 0x02c8cc30
02c8cc0c  ldr x0,[x22]
02c8cc10  ldr w8,[x0, #0xe4]
02c8cc14  cbnz w8,0x02c8cc1c
02c8cc18  bl 0x029f5bd0
02c8cc1c  mov x0,xzr
02c8cc20  bl 0x02c1a570
02c8cc24  mov x1,x0
02c8cc28  mov x0,x19
02c8cc2c  bl 0x02c8c9d0
02c8cc30  ldr x0,[x19, #0x30]
02c8cc34  cbz x0,0x02c8cc70
02c8cc38  ldp s0,s1,[x19, #0x20]
02c8cc3c  mov x1,xzr
02c8cc40  scvtf s0,s0
02c8cc44  scvtf s1,s1
02c8cc48  fdiv s0,s0,s1
02c8cc4c  bl 0x02c28290
02c8cc50  ldr x0,[x19, #0x28]
02c8cc54  cbz x0,0x02c8cc70
02c8cc58  bl 0x02c8cfd8
02c8cc5c  ldp x20,x19,[sp, #0x30]
02c8cc60  ldp x22,x21,[sp, #0x20]
02c8cc64  ldp x30,x23,[sp, #0x10]
02c8cc68  add sp,sp,#0x40
02c8cc6c  ret
02c8cc70  bl 0x029f5cfc
