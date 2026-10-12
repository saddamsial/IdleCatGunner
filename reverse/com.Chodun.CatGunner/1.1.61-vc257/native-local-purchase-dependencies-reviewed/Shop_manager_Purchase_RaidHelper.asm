02c9cb98  str x30,[sp, #-0x30]!
02c9cb9c  stp x22,x21,[sp, #0x10]
02c9cba0  stp x20,x19,[sp, #0x20]
02c9cba4  adrp x21,0x625c000
02c9cba8  mov x20,x1
02c9cbac  mov x19,x0
02c9cbb0  ldrb w8,[x21, #0x469]
02c9cbb4  tbnz w8,#0x0,0x02c9cbf0
02c9cbb8  adrp x0,0x5e59000
02c9cbbc  ldr x0,[x0, #0x1c0]
02c9cbc0  bl 0x029f5a50
02c9cbc4  adrp x0,0x5e5e000
02c9cbc8  ldr x0,[x0, #0x70]
02c9cbcc  bl 0x029f5a50
02c9cbd0  adrp x0,0x5e5d000
02c9cbd4  ldr x0,[x0, #0x920]
02c9cbd8  bl 0x029f5a50
02c9cbdc  adrp x0,0x5e64000
02c9cbe0  ldr x0,[x0, #0x268]
02c9cbe4  bl 0x029f5a50
02c9cbe8  mov w8,#0x1
02c9cbec  strb w8,[x21, #0x469]
02c9cbf0  ldr x8,[x19, #0x20]
02c9cbf4  cbz x8,0x02c9cc88
02c9cbf8  adrp x22,0x5e5e000
02c9cbfc  adrp x21,0x5e59000
02c9cc00  ldr x22,[x22, #0x70]
02c9cc04  ldr x0,[x22]
02c9cc08  ldr w8,[x0, #0xe4]
02c9cc0c  ldr x21,[x21, #0x1c0]
02c9cc10  cbnz w8,0x02c9cc1c
02c9cc14  bl 0x029f5bd0
02c9cc18  ldr x0,[x22]
02c9cc1c  ldr x8,[x21]
02c9cc20  ldr x9,[x0, #0xb8]
02c9cc24  ldr w10,[x8, #0xe4]
02c9cc28  ldr x21,[x9]
02c9cc2c  cbnz w10,0x02c9cc38
02c9cc30  mov x0,x8
02c9cc34  bl 0x029f5bd0
02c9cc38  mov x0,x21
02c9cc3c  mov x1,xzr
02c9cc40  mov x2,xzr
02c9cc44  bl 0x057e14b4
02c9cc48  tbnz w0,#0x0,0x02c9cc78
02c9cc4c  ldr x0,[x22]
02c9cc50  ldr w8,[x0, #0xe4]
02c9cc54  cbnz w8,0x02c9cc60
02c9cc58  bl 0x029f5bd0
02c9cc5c  ldr x0,[x22]
02c9cc60  ldr x8,[x0, #0xb8]
02c9cc64  ldr x0,[x8]
02c9cc68  cbz x0,0x02c9cd04
02c9cc6c  mov x1,xzr
02c9cc70  bl 0x02c444d8
02c9cc74  tbz w0,#0x0,0x02c9ccc4
02c9cc78  ldp x20,x19,[sp, #0x20]
02c9cc7c  ldp x22,x21,[sp, #0x10]
02c9cc80  ldr x30,[sp], #0x30
02c9cc84  ret
02c9cc88  mov x0,xzr
02c9cc8c  bl 0x02be01a8
02c9cc90  adrp x8,0x5e5d000
02c9cc94  mov x19,x0
02c9cc98  ldr x8,[x8, #0x920]
02c9cc9c  ldr x8,[x8]
02c9cca0  ldr w9,[x8, #0xe4]
02c9cca4  cbnz w9,0x02c9ccb0
02c9cca8  mov x0,x8
02c9ccac  bl 0x029f5bd0
02c9ccb0  mov x0,x19
02c9ccb4  ldp x20,x19,[sp, #0x20]
02c9ccb8  ldp x22,x21,[sp, #0x10]
02c9ccbc  ldr x30,[sp], #0x30
02c9ccc0  b 0x02c92ec4
02c9ccc4  mov x0,x19
02c9ccc8  mov x1,x20
02c9cccc  str x20,[x0, #0x30]!
02c9ccd0  bl 0x029f59f4
02c9ccd4  adrp x20,0x5e64000
02c9ccd8  ldr x20,[x20, #0x268]
02c9ccdc  ldr x1,[x20]
02c9cce0  bl 0x02c93038
02c9cce4  mov w8,w0
02c9cce8  ldr x1,[x20]
02c9ccec  mov x0,x19
02c9ccf0  str w8,[x19, #0x38]
02c9ccf4  ldp x20,x19,[sp, #0x20]
02c9ccf8  ldp x22,x21,[sp, #0x10]
02c9ccfc  ldr x30,[sp], #0x30
02c9cd00  b 0x02c93b4c
02c9cd04  bl 0x029f5cfc
