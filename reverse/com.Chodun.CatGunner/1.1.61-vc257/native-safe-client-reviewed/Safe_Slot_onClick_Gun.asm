02c6cd18  str x30,[sp, #-0x20]!
02c6cd1c  stp x20,x19,[sp, #0x10]
02c6cd20  adrp x20,0x625c000
02c6cd24  mov x19,x0
02c6cd28  ldrb w8,[x20, #0x29d]
02c6cd2c  tbnz w8,#0x0,0x02c6cd44
02c6cd30  adrp x0,0x5e5d000
02c6cd34  ldr x0,[x0, #0xd40]
02c6cd38  bl 0x029f5a50
02c6cd3c  mov w8,#0x1
02c6cd40  strb w8,[x20, #0x29d]
02c6cd44  ldr w8,[x19, #0x78]
02c6cd48  cmp w8,#0x3
02c6cd4c  b.ne 0x02c6cde0
02c6cd50  ldr w8,[x19, #0x7c]
02c6cd54  cmn w8,#0x1
02c6cd58  b.eq 0x02c6cde0
02c6cd5c  adrp x20,0x625b000
02c6cd60  ldrb w8,[x20, #0xa57]
02c6cd64  cbnz w8,0x02c6cd7c
02c6cd68  adrp x0,0x5e5d000
02c6cd6c  ldr x0,[x0, #0xd70]
02c6cd70  bl 0x029f5a50
02c6cd74  mov w8,#0x1
02c6cd78  strb w8,[x20, #0xa57]
02c6cd7c  adrp x8,0x5e5d000
02c6cd80  ldr x8,[x8, #0xd70]
02c6cd84  ldr x8,[x8]
02c6cd88  ldr x8,[x8, #0xb8]
02c6cd8c  ldr x0,[x8]
02c6cd90  cbz x0,0x02c6cdec
02c6cd94  fmov s0,0x3f800000
02c6cd98  mov w1,#0x1
02c6cd9c  mov x2,xzr
02c6cda0  mov x3,xzr
02c6cda4  bl 0x02c1f10c
02c6cda8  adrp x8,0x5e5d000
02c6cdac  ldr x8,[x8, #0xd40]
02c6cdb0  ldr x8,[x8]
02c6cdb4  ldr x8,[x8, #0xb8]
02c6cdb8  ldr x8,[x8]
02c6cdbc  cbz x8,0x02c6cdec
02c6cdc0  ldr x0,[x8, #0xa0]
02c6cdc4  cbz x0,0x02c6cdec
02c6cdc8  ldr w1,[x19, #0x7c]
02c6cdcc  ldr w2,[x19, #0x20]
02c6cdd0  mov x3,xzr
02c6cdd4  ldp x20,x19,[sp, #0x10]
02c6cdd8  ldr x30,[sp], #0x20
02c6cddc  b 0x02c6fc0c
02c6cde0  ldp x20,x19,[sp, #0x10]
02c6cde4  ldr x30,[sp], #0x20
02c6cde8  ret
02c6cdec  bl 0x029f5cfc
