02c4cc0c  str x30,[sp, #-0x30]!
02c4cc10  stp x22,x21,[sp, #0x10]
02c4cc14  stp x20,x19,[sp, #0x20]
02c4cc18  adrp x21,0x625c000
02c4cc1c  adrp x22,0x5e59000
02c4cc20  mov x20,x1
02c4cc24  ldrb w8,[x21, #0x14e]
02c4cc28  ldr x22,[x22, #0x1c0]
02c4cc2c  mov x19,x0
02c4cc30  tbnz w8,#0x0,0x02c4cc6c
02c4cc34  adrp x0,0x5e63000
02c4cc38  ldr x0,[x0, #0x498]
02c4cc3c  bl 0x029f5a50
02c4cc40  adrp x0,0x5e63000
02c4cc44  ldr x0,[x0, #0x4a0]
02c4cc48  bl 0x029f5a50
02c4cc4c  adrp x0,0x5e5d000
02c4cc50  ldr x0,[x0, #0xd58]
02c4cc54  bl 0x029f5a50
02c4cc58  adrp x0,0x5e59000
02c4cc5c  ldr x0,[x0, #0x1c0]
02c4cc60  bl 0x029f5a50
02c4cc64  mov w8,#0x1
02c4cc68  strb w8,[x21, #0x14e]
02c4cc6c  ldr x0,[x22]
02c4cc70  ldr w8,[x0, #0xe4]
02c4cc74  cbnz w8,0x02c4cc7c
02c4cc78  bl 0x029f5bd0
02c4cc7c  mov x0,x20
02c4cc80  mov x1,xzr
02c4cc84  mov x2,xzr
02c4cc88  bl 0x057e14b4
02c4cc8c  tbz w0,#0x0,0x02c4cca0
02c4cc90  ldp x20,x19,[sp, #0x20]
02c4cc94  ldp x22,x21,[sp, #0x10]
02c4cc98  ldr x30,[sp], #0x30
02c4cc9c  ret
02c4cca0  ldr x0,[x19, #0x178]
02c4cca4  cbz x0,0x02c4cdb0
02c4cca8  adrp x8,0x5e63000
02c4ccac  mov x1,x20
02c4ccb0  ldr x8,[x8, #0x4a0]
02c4ccb4  ldr x2,[x8]
02c4ccb8  bl 0x0452e0a8
02c4ccbc  ldr x0,[x19, #0x170]
02c4ccc0  cbz x0,0x02c4cdb0
02c4ccc4  adrp x9,0x5e63000
02c4ccc8  ldr x9,[x9, #0x498]
02c4cccc  ldr w10,[x0, #0x1c]
02c4ccd0  ldr x8,[x0, #0x10]
02c4ccd4  ldr x9,[x9]
02c4ccd8  add w10,w10,#0x1
02c4ccdc  str w10,[x0, #0x1c]
02c4cce0  cbz x8,0x02c4cdb0
02c4cce4  ldrsw x10,[x0, #0x18]
02c4cce8  ldr w11,[x8, #0x18]
02c4ccec  cmp w10,w11
02c4ccf0  b.cs 0x02c4cd14
02c4ccf4  add x8,x8,x10, LSL #0x3
02c4ccf8  add w9,w10,#0x1
02c4ccfc  mov x1,x20
02c4cd00  str w9,[x0, #0x18]
02c4cd04  str x20,[x8, #0x20]!
02c4cd08  mov x0,x8
02c4cd0c  bl 0x029f59f4
02c4cd10  b 0x02c4cd28
02c4cd14  ldr x8,[x9, #0x20]
02c4cd18  mov x1,x20
02c4cd1c  ldr x8,[x8, #0xc0]
02c4cd20  ldr x2,[x8, #0x70]
02c4cd24  bl 0x0452cba8
02c4cd28  adrp x21,0x5e5d000
02c4cd2c  ldr x21,[x21, #0xd58]
02c4cd30  ldr w8,[x19, #0xd0]
02c4cd34  ldr x0,[x21]
02c4cd38  add w20,w8,#0x1
02c4cd3c  str w20,[x19, #0xd0]
02c4cd40  ldr w9,[x0, #0xe4]
02c4cd44  cbnz w9,0x02c4cd50
02c4cd48  bl 0x029f5bd0
02c4cd4c  ldr x0,[x21]
02c4cd50  ldr x8,[x0, #0xb8]
02c4cd54  ldr x8,[x8, #0x10]
02c4cd58  cbz x8,0x02c4cdb0
02c4cd5c  ldrsw x9,[x19, #0x24]
02c4cd60  ldr w10,[x8, #0x18]
02c4cd64  cmp w9,w10
02c4cd68  b.cs 0x02c4cdb4
02c4cd6c  ldr x0,[x19, #0xb0]
02c4cd70  cbz x0,0x02c4cdb0
02c4cd74  add x8,x8,x9, LSL #0x2
02c4cd78  scvtf s1,w20
02c4cd7c  movi d2,#0x0
02c4cd80  ldp x20,x19,[sp, #0x20]
02c4cd84  ldr s0,[x8, #0x20]
02c4cd88  ldp x22,x21,[sp, #0x10]
02c4cd8c  scvtf s0,s0
02c4cd90  fdiv s0,s1,s0
02c4cd94  fmov s1,0x3f800000
02c4cd98  fcmp s0,s1
02c4cd9c  fcsel s1,s1,s0,gt
02c4cda0  fcmp s0,#0.0
02c4cda4  fcsel s0,s2,s1,mi
02c4cda8  ldr x30,[sp], #0x30
02c4cdac  b 0x02c4d3e8
02c4cdb0  bl 0x029f5cfc
02c4cdb4  bl 0x029f5d04
