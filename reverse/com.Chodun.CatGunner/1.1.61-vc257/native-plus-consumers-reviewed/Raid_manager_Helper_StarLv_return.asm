02c51b44  str x30,[sp, #-0x30]!
02c51b48  stp x22,x21,[sp, #0x10]
02c51b4c  stp x20,x19,[sp, #0x20]
02c51b50  adrp x19,0x625c000
02c51b54  adrp x20,0x5e5e000
02c51b58  ldrb w8,[x19, #0x1c8]
02c51b5c  ldr x20,[x20, #0x70]
02c51b60  tbnz w8,#0x0,0x02c51b90
02c51b64  adrp x0,0x5e59000
02c51b68  ldr x0,[x0, #0x1c0]
02c51b6c  bl 0x029f5a50
02c51b70  adrp x0,0x5e5e000
02c51b74  ldr x0,[x0, #0x70]
02c51b78  bl 0x029f5a50
02c51b7c  adrp x0,0x5e5e000
02c51b80  ldr x0,[x0, #0x58]
02c51b84  bl 0x029f5a50
02c51b88  mov w8,#0x1
02c51b8c  strb w8,[x19, #0x1c8]
02c51b90  ldr x0,[x20]
02c51b94  adrp x22,0x5e59000
02c51b98  ldr w8,[x0, #0xe4]
02c51b9c  ldr x22,[x22, #0x1c0]
02c51ba0  cbnz w8,0x02c51bac
02c51ba4  bl 0x029f5bd0
02c51ba8  ldr x0,[x20]
02c51bac  ldr x8,[x22]
02c51bb0  ldr x9,[x0, #0xb8]
02c51bb4  ldr w10,[x8, #0xe4]
02c51bb8  ldr x19,[x9]
02c51bbc  cbnz w10,0x02c51bc8
02c51bc0  mov x0,x8
02c51bc4  bl 0x029f5bd0
02c51bc8  mov x0,x19
02c51bcc  mov x1,xzr
02c51bd0  mov x2,xzr
02c51bd4  bl 0x057e14b4
02c51bd8  tbnz w0,#0x0,0x02c51c28
02c51bdc  adrp x21,0x5e5e000
02c51be0  ldr x21,[x21, #0x58]
02c51be4  ldr x0,[x21]
02c51be8  ldr w8,[x0, #0xe4]
02c51bec  cbnz w8,0x02c51bf8
02c51bf0  bl 0x029f5bd0
02c51bf4  ldr x0,[x21]
02c51bf8  ldr x8,[x22]
02c51bfc  ldr x9,[x0, #0xb8]
02c51c00  ldr w10,[x8, #0xe4]
02c51c04  ldr x19,[x9]
02c51c08  cbnz w10,0x02c51c14
02c51c0c  mov x0,x8
02c51c10  bl 0x029f5bd0
02c51c14  mov x0,x19
02c51c18  mov x1,xzr
02c51c1c  mov x2,xzr
02c51c20  bl 0x057e14b4
02c51c24  tbz w0,#0x0,0x02c51c30
02c51c28  mov w0,wzr
02c51c2c  b 0x02c51cb4
02c51c30  mov w19,wzr
02c51c34  mov w22,#0x7fffffff
02c51c38  ldr x0,[x20]
02c51c3c  ldr w8,[x0, #0xe4]
02c51c40  cbnz w8,0x02c51c4c
02c51c44  bl 0x029f5bd0
02c51c48  ldr x0,[x20]
02c51c4c  ldr x8,[x0, #0xb8]
02c51c50  ldr x8,[x8]
02c51c54  cbz x8,0x02c51cc4
02c51c58  ldr x8,[x8, #0x88]
02c51c5c  cbz x8,0x02c51cc4
02c51c60  ldr w8,[x8, #0x18]
02c51c64  cmp w19,w8
02c51c68  b.ge 0x02c51ca8
02c51c6c  ldr x0,[x21]
02c51c70  ldr w8,[x0, #0xe4]
02c51c74  cbnz w8,0x02c51c80
02c51c78  bl 0x029f5bd0
02c51c7c  ldr x0,[x21]
02c51c80  ldr x8,[x0, #0xb8]
02c51c84  ldr x0,[x8]
02c51c88  cbz x0,0x02c51cc4
02c51c8c  mov w1,w19
02c51c90  mov x2,xzr
02c51c94  bl 0x02c6d8fc
02c51c98  cmp w22,w0
02c51c9c  add w19,w19,#0x1
02c51ca0  csel w22,w22,w0,lt
02c51ca4  b 0x02c51c38
02c51ca8  mov w8,#0x7fffffff
02c51cac  cmp w22,w8
02c51cb0  csel w0,wzr,w22,eq
02c51cb4  ldp x20,x19,[sp, #0x20]
02c51cb8  ldp x22,x21,[sp, #0x10]
02c51cbc  ldr x30,[sp], #0x30
02c51cc0  ret
02c51cc4  bl 0x029f5cfc
