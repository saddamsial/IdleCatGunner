02c7da80  stp x30,x25,[sp, #-0x40]!
02c7da84  stp x24,x23,[sp, #0x10]
02c7da88  stp x22,x21,[sp, #0x20]
02c7da8c  stp x20,x19,[sp, #0x30]
02c7da90  adrp x21,0x625c000
02c7da94  adrp x23,0x5e5d000
02c7da98  mov w20,w1
02c7da9c  ldrb w8,[x21, #0x33d]
02c7daa0  ldr x23,[x23, #0x4d0]
02c7daa4  mov x19,x0
02c7daa8  tbnz w8,#0x0,0x02c7dacc
02c7daac  adrp x0,0x5e5d000
02c7dab0  ldr x0,[x0, #0x4d0]
02c7dab4  bl 0x029f5a50
02c7dab8  adrp x0,0x5e63000
02c7dabc  ldr x0,[x0, #0x810]
02c7dac0  bl 0x029f5a50
02c7dac4  mov w8,#0x1
02c7dac8  strb w8,[x21, #0x33d]
02c7dacc  ldr x0,[x23]
02c7dad0  str w20,[x19, #0x60]
02c7dad4  ldr w8,[x0, #0xe4]
02c7dad8  cbnz w8,0x02c7dae4
02c7dadc  bl 0x029f5bd0
02c7dae0  ldr x0,[x23]
02c7dae4  ldr x8,[x0, #0xb8]
02c7dae8  ldr x9,[x8, #0x28]
02c7daec  cbz x9,0x02c7dc00
02c7daf0  ldr x8,[x9, #0x20]
02c7daf4  cbz x8,0x02c7dc00
02c7daf8  ldr w10,[x8, #0x18]
02c7dafc  cmp w10,w20
02c7db00  b.ls 0x02c7dd18
02c7db04  ldr x9,[x9, #0x58]
02c7db08  cbz x9,0x02c7dc00
02c7db0c  ldr w10,[x9, #0x18]
02c7db10  cmp w10,w20
02c7db14  b.ls 0x02c7dd18
02c7db18  ldr x0,[x19, #0x20]
02c7db1c  cbz x0,0x02c7dc00
02c7db20  sxtw x10,w20
02c7db24  ldr x22,[x19, #0x28]
02c7db28  mov x2,xzr
02c7db2c  add x9,x9,x10, LSL #0x3
02c7db30  add x8,x8,x10, LSL #0x3
02c7db34  ldr x21,[x9, #0x20]
02c7db38  ldr x24,[x8, #0x20]
02c7db3c  mov x1,x21
02c7db40  bl 0x058d34cc
02c7db44  cbz x22,0x02c7dc00
02c7db48  mov x0,x22
02c7db4c  mov x1,x21
02c7db50  mov x2,xzr
02c7db54  bl 0x058d34cc
02c7db58  ldr x0,[x19, #0x28]
02c7db5c  cbz x0,0x02c7dc00
02c7db60  ldr x8,[x0]
02c7db64  ldr x9,[x8, #0x408]
02c7db68  ldr x1,[x8, #0x410]
02c7db6c  blr x9
02c7db70  ldr x0,[x19, #0x20]
02c7db74  cbz x0,0x02c7dc00
02c7db78  ldr x8,[x0]
02c7db7c  ldr x9,[x8, #0x408]
02c7db80  ldr x1,[x8, #0x410]
02c7db84  blr x9
02c7db88  ldr x21,[x19, #0x30]
02c7db8c  mov w0,w20
02c7db90  bl 0x02c7e324
02c7db94  cbz x21,0x02c7dc00
02c7db98  ldr x8,[x21]
02c7db9c  mov x0,x21
02c7dba0  ldr x9,[x8, #0x2a8]
02c7dba4  ldr x1,[x8, #0x2b0]
02c7dba8  blr x9
02c7dbac  ldr x8,[x19, #0x38]
02c7dbb0  cbz x8,0x02c7dc00
02c7dbb4  adrp x25,0x5e63000
02c7dbb8  mov x21,xzr
02c7dbbc  mov w22,w20
02c7dbc0  ldr x25,[x25, #0x810]
02c7dbc4  ldr w9,[x8, #0x18]
02c7dbc8  cmp w21,w9
02c7dbcc  b.ge 0x02c7dc04
02c7dbd0  cmp w21,w9
02c7dbd4  b.cs 0x02c7dd18
02c7dbd8  add x8,x8,x21, LSL #0x3
02c7dbdc  ldr x0,[x8, #0x20]
02c7dbe0  cbz x0,0x02c7dc00
02c7dbe4  cmp w22,w21
02c7dbe8  mov x2,xzr
02c7dbec  cset w1,eq
02c7dbf0  bl 0x057dff3c
02c7dbf4  ldr x8,[x19, #0x38]
02c7dbf8  add x21,x21,#0x1
02c7dbfc  cbnz x8,0x02c7dbc4
02c7dc00  bl 0x029f5cfc
02c7dc04  cbz x24,0x02c7dc00
02c7dc08  ldr x21,[x19, #0x40]
02c7dc0c  add x0,x24,#0x18
02c7dc10  mov x1,xzr
02c7dc14  bl 0x0465bddc
02c7dc18  ldr x8,[x25]
02c7dc1c  mov x1,x0
02c7dc20  mov x2,xzr
02c7dc24  mov x0,x8
02c7dc28  bl 0x046b6c0c
02c7dc2c  cbz x21,0x02c7dc00
02c7dc30  ldr x8,[x21]
02c7dc34  mov x1,x0
02c7dc38  mov x0,x21
02c7dc3c  ldr x9,[x8, #0x558]
02c7dc40  ldr x2,[x8, #0x560]
02c7dc44  blr x9
02c7dc48  ldr x21,[x19, #0x48]
02c7dc4c  add x0,x24,#0x38
02c7dc50  mov x1,xzr
02c7dc54  bl 0x0484e6a4
02c7dc58  ldr x8,[x25]
02c7dc5c  mov x1,x0
02c7dc60  mov x2,xzr
02c7dc64  mov x0,x8
02c7dc68  bl 0x046b6c0c
02c7dc6c  cbz x21,0x02c7dc00
02c7dc70  ldr x8,[x21]
02c7dc74  mov x1,x0
02c7dc78  mov x0,x21
02c7dc7c  ldr x9,[x8, #0x558]
02c7dc80  ldr x2,[x8, #0x560]
02c7dc84  blr x9
02c7dc88  ldr x0,[x19, #0x50]
02c7dc8c  cbz x0,0x02c7dc00
02c7dc90  cmp w22,#0x0
02c7dc94  mov x2,xzr
02c7dc98  cset w1,gt
02c7dc9c  bl 0x057dff3c
02c7dca0  ldr x0,[x23]
02c7dca4  ldr x21,[x19, #0x58]
02c7dca8  ldr w8,[x0, #0xe4]
02c7dcac  cbnz w8,0x02c7dcb8
02c7dcb0  bl 0x029f5bd0
02c7dcb4  ldr x0,[x23]
02c7dcb8  ldr x8,[x0, #0xb8]
02c7dcbc  ldr x8,[x8, #0x28]
02c7dcc0  cbz x8,0x02c7dc00
02c7dcc4  ldr x8,[x8, #0x20]
02c7dcc8  cbz x8,0x02c7dc00
02c7dccc  cbz x21,0x02c7dc00
02c7dcd0  ldr w8,[x8, #0x18]
02c7dcd4  mov x0,x21
02c7dcd8  mov x2,xzr
02c7dcdc  sub w8,w8,#0x1
02c7dce0  cmp w8,w20
02c7dce4  cset w1,gt
02c7dce8  bl 0x057dff3c
02c7dcec  mov x0,x19
02c7dcf0  mov x1,xzr
02c7dcf4  bl 0x057dc1c8
02c7dcf8  cbz x0,0x02c7dc00
02c7dcfc  ldp x20,x19,[sp, #0x30]
02c7dd00  mov w1,#0x1
02c7dd04  ldp x22,x21,[sp, #0x20]
02c7dd08  mov x2,xzr
02c7dd0c  ldp x24,x23,[sp, #0x10]
02c7dd10  ldp x30,x25,[sp], #0x40
02c7dd14  b 0x057dff3c
02c7dd18  bl 0x029f5d04
