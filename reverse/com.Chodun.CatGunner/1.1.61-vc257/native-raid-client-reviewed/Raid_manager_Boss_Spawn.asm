02c58bd0  sub sp,sp,#0x60
02c58bd4  stp x30,x21,[sp, #0x40]
02c58bd8  stp x20,x19,[sp, #0x50]
02c58bdc  adrp x21,0x625c000
02c58be0  adrp x20,0x5e5d000
02c58be4  mov x19,x0
02c58be8  ldrb w8,[x21, #0x1b7]
02c58bec  ldr x20,[x20, #0x338]
02c58bf0  tbnz w8,#0x0,0x02c58c08
02c58bf4  adrp x0,0x5e5d000
02c58bf8  ldr x0,[x0, #0x338]
02c58bfc  bl 0x029f5a50
02c58c00  mov w8,#0x1
02c58c04  strb w8,[x21, #0x1b7]
02c58c08  ldr x0,[x20]
02c58c0c  ldr w8,[x0, #0xe4]
02c58c10  cbnz w8,0x02c58c1c
02c58c14  bl 0x029f5bd0
02c58c18  ldr x0,[x20]
02c58c1c  ldr x8,[x0, #0xb8]
02c58c20  ldrb w8,[x8]
02c58c24  cbz w8,0x02c58c5c
02c58c28  ldr x20,[x19, #0xf0]
02c58c2c  add x8,sp,#0x20
02c58c30  mov x0,x19
02c58c34  bl 0x02c59584
02c58c38  cbz x20,0x02c58c6c
02c58c3c  ldp q0,q1,[sp, #0x20]
02c58c40  mov x1,sp
02c58c44  ldr w2,[x19, #0x20]
02c58c48  mov x0,x20
02c58c4c  stp q0,q1,[sp]
02c58c50  bl 0x02c55f84
02c58c54  mov x0,x19
02c58c58  bl 0x02c59600
02c58c5c  ldp x20,x19,[sp, #0x50]
02c58c60  ldp x30,x21,[sp, #0x40]
02c58c64  add sp,sp,#0x60
02c58c68  ret
02c58c6c  bl 0x029f5cfc
