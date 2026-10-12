02c26ba8  str x30,[sp, #-0x20]!
02c26bac  stp x20,x19,[sp, #0x10]
02c26bb0  adrp x20,0x625b000
02c26bb4  mov x19,x0
02c26bb8  ldrb w8,[x20, #0xfb3]
02c26bbc  tbnz w8,#0x0,0x02c26be0
02c26bc0  adrp x0,0x5e62000
02c26bc4  ldr x0,[x0, #0xd28]
02c26bc8  bl 0x029f5a50
02c26bcc  adrp x0,0x5e62000
02c26bd0  ldr x0,[x0, #0xd30]
02c26bd4  bl 0x029f5a50
02c26bd8  mov w8,#0x1
02c26bdc  strb w8,[x20, #0xfb3]
02c26be0  adrp x20,0x625b000
02c26be4  ldrb w8,[x20, #0xa57]
02c26be8  cbnz w8,0x02c26c00
02c26bec  adrp x0,0x5e5d000
02c26bf0  ldr x0,[x0, #0xd70]
02c26bf4  bl 0x029f5a50
02c26bf8  mov w8,#0x1
02c26bfc  strb w8,[x20, #0xa57]
02c26c00  adrp x8,0x5e5d000
02c26c04  ldr x8,[x8, #0xd70]
02c26c08  ldr x8,[x8]
02c26c0c  ldr x8,[x8, #0xb8]
02c26c10  ldr x0,[x8]
02c26c14  cbz x0,0x02c26c68
02c26c18  fmov s0,0x3f800000
02c26c1c  mov w1,#0xe
02c26c20  mov x2,xzr
02c26c24  bl 0x02c1f10c
02c26c28  ldr x0,[x19, #0x28]
02c26c2c  cbz x0,0x02c26c68
02c26c30  ldr w8,[x0, #0x18]
02c26c34  subs w1,w8,#0x1
02c26c38  b.lt 0x02c26c5c
02c26c3c  adrp x8,0x5e62000
02c26c40  ldr x8,[x8, #0xd30]
02c26c44  ldr x2,[x8]
02c26c48  bl 0x0452c8d8
02c26c4c  cbz x0,0x02c26c68
02c26c50  ldp x20,x19,[sp, #0x10]
02c26c54  ldr x30,[sp], #0x20
02c26c58  b 0x02c26c6c
02c26c5c  ldp x20,x19,[sp, #0x10]
02c26c60  ldr x30,[sp], #0x20
02c26c64  ret
02c26c68  bl 0x029f5cfc
