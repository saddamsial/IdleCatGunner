02ba5b08  sub sp,sp,#0x30
02ba5b0c  str x30,[sp, #0x10]
02ba5b10  stp x20,x19,[sp, #0x20]
02ba5b14  adrp x20,0x625b000
02ba5b18  mov w19,w1
02ba5b1c  ldrb w8,[x20, #0xa51]
02ba5b20  tbnz w8,#0x0,0x02ba5b68
02ba5b24  adrp x0,0x5e5e000
02ba5b28  ldr x0,[x0, #0x528]
02ba5b2c  bl 0x029f5a50
02ba5b30  adrp x0,0x5e5e000
02ba5b34  ldr x0,[x0, #0x770]
02ba5b38  bl 0x029f5a50
02ba5b3c  adrp x0,0x5e5e000
02ba5b40  ldr x0,[x0, #0x778]
02ba5b44  bl 0x029f5a50
02ba5b48  adrp x0,0x5e5e000
02ba5b4c  ldr x0,[x0, #0x780]
02ba5b50  bl 0x029f5a50
02ba5b54  adrp x0,0x5e5e000
02ba5b58  ldr x0,[x0, #0x788]
02ba5b5c  bl 0x029f5a50
02ba5b60  mov w8,#0x1
02ba5b64  strb w8,[x20, #0xa51]
02ba5b68  cmp w19,#0x1
02ba5b6c  b.gt 0x02ba5bd4
02ba5b70  cbz w19,0x02ba5c0c
02ba5b74  cmp w19,#0x1
02ba5b78  b.ne 0x02ba5c04
02ba5b7c  adrp x8,0x5e5e000
02ba5b80  adrp x19,0x5e5e000
02ba5b84  ldr x8,[x8, #0x528]
02ba5b88  ldr x0,[x8]
02ba5b8c  ldr w8,[x0, #0xe4]
02ba5b90  ldr x19,[x19, #0x778]
02ba5b94  cbnz w8,0x02ba5b9c
02ba5b98  bl 0x029f5bd0
02ba5b9c  ldr x0,[x19]
02ba5ba0  mov w1,#0x1
02ba5ba4  mov w2,wzr
02ba5ba8  mov w3,#0x1
02ba5bac  mov w4,wzr
02ba5bb0  mov x5,xzr
02ba5bb4  mov x6,xzr
02ba5bb8  mov w7,#0x1
02ba5bbc  str xzr,[sp]
02ba5bc0  bl 0x02bccb00
02ba5bc4  ldp x20,x19,[sp, #0x20]
02ba5bc8  ldr x30,[sp, #0x10]
02ba5bcc  add sp,sp,#0x30
02ba5bd0  ret
02ba5bd4  cmp w19,#0x2
02ba5bd8  b.eq 0x02ba5c2c
02ba5bdc  cmp w19,#0x3
02ba5be0  b.ne 0x02ba5c04
02ba5be4  adrp x8,0x5e5e000
02ba5be8  adrp x19,0x5e5e000
02ba5bec  ldr x8,[x8, #0x528]
02ba5bf0  ldr x0,[x8]
02ba5bf4  ldr w8,[x0, #0xe4]
02ba5bf8  ldr x19,[x19, #0x770]
02ba5bfc  cbnz w8,0x02ba5b9c
02ba5c00  b 0x02ba5b98
02ba5c04  mov x0,xzr
02ba5c08  b 0x02ba5bc4
02ba5c0c  adrp x8,0x5e5e000
02ba5c10  adrp x19,0x5e5e000
02ba5c14  ldr x8,[x8, #0x528]
02ba5c18  ldr x0,[x8]
02ba5c1c  ldr w8,[x0, #0xe4]
02ba5c20  ldr x19,[x19, #0x780]
02ba5c24  cbnz w8,0x02ba5b9c
02ba5c28  b 0x02ba5b98
02ba5c2c  adrp x8,0x5e5e000
02ba5c30  adrp x19,0x5e5e000
02ba5c34  ldr x8,[x8, #0x528]
02ba5c38  ldr x0,[x8]
02ba5c3c  ldr w8,[x0, #0xe4]
02ba5c40  ldr x19,[x19, #0x788]
02ba5c44  cbnz w8,0x02ba5b9c
02ba5c48  b 0x02ba5b98
