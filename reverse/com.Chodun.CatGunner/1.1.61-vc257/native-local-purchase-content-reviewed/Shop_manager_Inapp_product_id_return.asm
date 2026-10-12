02c94b30  str x30,[sp, #-0x20]!
02c94b34  stp x20,x19,[sp, #0x10]
02c94b38  adrp x20,0x625c000
02c94b3c  mov w19,w1
02c94b40  ldrb w8,[x20, #0x452]
02c94b44  tbnz w8,#0x0,0x02c94b98
02c94b48  adrp x0,0x5e64000
02c94b4c  ldr x0,[x0, #0x1e0]
02c94b50  bl 0x029f5a50
02c94b54  adrp x0,0x5e64000
02c94b58  ldr x0,[x0, #0x248]
02c94b5c  bl 0x029f5a50
02c94b60  adrp x0,0x5e64000
02c94b64  ldr x0,[x0, #0x298]
02c94b68  bl 0x029f5a50
02c94b6c  adrp x0,0x5e64000
02c94b70  ldr x0,[x0, #0x2a0]
02c94b74  bl 0x029f5a50
02c94b78  adrp x0,0x5e64000
02c94b7c  ldr x0,[x0, #0x2c0]
02c94b80  bl 0x029f5a50
02c94b84  adrp x0,0x5e64000
02c94b88  ldr x0,[x0, #0x2d0]
02c94b8c  bl 0x029f5a50
02c94b90  mov w8,#0x1
02c94b94  strb w8,[x20, #0x452]
02c94b98  cmp w19,#0x2
02c94b9c  mov x0,xzr
02c94ba0  b.gt 0x02c94bc4
02c94ba4  cbz w19,0x02c94be8
02c94ba8  cmp w19,#0x1
02c94bac  b.eq 0x02c94c00
02c94bb0  cmp w19,#0x2
02c94bb4  b.ne 0x02c94c18
02c94bb8  adrp x8,0x5e64000
02c94bbc  ldr x8,[x8, #0x1e0]
02c94bc0  b 0x02c94c14
02c94bc4  cmp w19,#0x3
02c94bc8  b.eq 0x02c94bf4
02c94bcc  cmp w19,#0x4
02c94bd0  b.eq 0x02c94c0c
02c94bd4  cmp w19,#0x5
02c94bd8  b.ne 0x02c94c18
02c94bdc  adrp x8,0x5e64000
02c94be0  ldr x8,[x8, #0x2d0]
02c94be4  b 0x02c94c14
02c94be8  adrp x8,0x5e64000
02c94bec  ldr x8,[x8, #0x298]
02c94bf0  b 0x02c94c14
02c94bf4  adrp x8,0x5e64000
02c94bf8  ldr x8,[x8, #0x248]
02c94bfc  b 0x02c94c14
02c94c00  adrp x8,0x5e64000
02c94c04  ldr x8,[x8, #0x2c0]
02c94c08  b 0x02c94c14
02c94c0c  adrp x8,0x5e64000
02c94c10  ldr x8,[x8, #0x2a0]
02c94c14  ldr x0,[x8]
02c94c18  ldp x20,x19,[sp, #0x10]
02c94c1c  ldr x30,[sp], #0x20
02c94c20  ret
