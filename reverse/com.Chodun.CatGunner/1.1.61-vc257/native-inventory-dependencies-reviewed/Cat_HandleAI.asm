02c3dba0  stp d13,d12,[sp, #-0x60]!
02c3dba4  stp d11,d10,[sp, #0x10]
02c3dba8  stp d9,d8,[sp, #0x20]
02c3dbac  str x30,[sp, #0x30]
02c3dbb0  stp x22,x21,[sp, #0x40]
02c3dbb4  stp x20,x19,[sp, #0x50]
02c3dbb8  adrp x21,0x625c000
02c3dbbc  adrp x20,0x5e63000
02c3dbc0  mov x19,x0
02c3dbc4  ldrb w8,[x21, #0x9c]
02c3dbc8  ldr x20,[x20, #0x1d8]
02c3dbcc  tbnz w8,#0x0,0x02c3dbfc
02c3dbd0  adrp x0,0x5e63000
02c3dbd4  ldr x0,[x0, #0x1d8]
02c3dbd8  bl 0x029f5a50
02c3dbdc  adrp x0,0x5e59000
02c3dbe0  ldr x0,[x0, #0x1c0]
02c3dbe4  bl 0x029f5a50
02c3dbe8  adrp x0,0x5e5d000
02c3dbec  ldr x0,[x0, #0x368]
02c3dbf0  bl 0x029f5a50
02c3dbf4  mov w8,#0x1
02c3dbf8  strb w8,[x21, #0x9c]
02c3dbfc  ldr x0,[x20]
02c3dc00  adrp x21,0x5e59000
02c3dc04  ldr w8,[x0, #0xe4]
02c3dc08  ldr x21,[x21, #0x1c0]
02c3dc0c  cbnz w8,0x02c3dc18
02c3dc10  bl 0x029f5bd0
02c3dc14  ldr x0,[x20]
02c3dc18  ldr x8,[x21]
02c3dc1c  ldr x9,[x0, #0xb8]
02c3dc20  ldr w10,[x8, #0xe4]
02c3dc24  ldr x20,[x9, #0x68]
02c3dc28  cbnz w10,0x02c3dc34
02c3dc2c  mov x0,x8
02c3dc30  bl 0x029f5bd0
02c3dc34  mov x0,x20
02c3dc38  mov x1,xzr
02c3dc3c  mov x2,xzr
02c3dc40  bl 0x057e14b4
02c3dc44  tbz w0,#0x0,0x02c3dc64
02c3dc48  ldp x20,x19,[sp, #0x50]
02c3dc4c  ldr x30,[sp, #0x30]
02c3dc50  ldp x22,x21,[sp, #0x40]
02c3dc54  ldp d9,d8,[sp, #0x20]
02c3dc58  ldp d11,d10,[sp, #0x10]
02c3dc5c  ldp d13,d12,[sp], #0x60
02c3dc60  ret
02c3dc64  adrp x8,0x5e5d000
02c3dc68  ldr x8,[x8, #0x368]
02c3dc6c  ldr x8,[x8]
02c3dc70  ldr x8,[x8, #0xb8]
02c3dc74  ldr x8,[x8]
02c3dc78  cbz x8,0x02c3de90
02c3dc7c  ldr w8,[x8, #0x20]
02c3dc80  cmp w8,#0x4
02c3dc84  b.ne 0x02c3dca8
02c3dc88  mov x0,x19
02c3dc8c  ldp x20,x19,[sp, #0x50]
02c3dc90  ldp x22,x21,[sp, #0x40]
02c3dc94  ldr x30,[sp, #0x30]
02c3dc98  ldp d9,d8,[sp, #0x20]
02c3dc9c  ldp d11,d10,[sp, #0x10]
02c3dca0  ldp d13,d12,[sp], #0x60
02c3dca4  b 0x02c3de94
02c3dca8  mov x0,x19
02c3dcac  bl 0x02c3ba74
02c3dcb0  mov x0,x19
02c3dcb4  bl 0x02c3bf38
02c3dcb8  mov x0,x19
02c3dcbc  mov x1,xzr
02c3dcc0  bl 0x057dc0f8
02c3dcc4  cbz x0,0x02c3de90
02c3dcc8  mov x1,xzr
02c3dccc  bl 0x057eed98
02c3dcd0  cbz x20,0x02c3de90
02c3dcd4  mov x0,x20
02c3dcd8  mov x1,xzr
02c3dcdc  fmov s8,s0
02c3dce0  fmov s10,s1
02c3dce4  fmov s9,s2
02c3dce8  bl 0x057dc0f8
02c3dcec  cbz x0,0x02c3de90
02c3dcf0  mov x1,xzr
02c3dcf4  bl 0x057eed98
02c3dcf8  fmov s11,s0
02c3dcfc  fmov s12,s1
02c3dd00  adrp x22,0x625c000
02c3dd04  fmov s13,s2
02c3dd08  ldrb w8,[x22, #0xbe]
02c3dd0c  cbnz w8,0x02c3dd24
02c3dd10  adrp x0,0x5e59000
02c3dd14  ldr x0,[x0]
02c3dd18  bl 0x029f5a50
02c3dd1c  mov w8,#0x1
02c3dd20  strb w8,[x22, #0xbe]
02c3dd24  adrp x8,0x5e59000
02c3dd28  ldr x8,[x8]
02c3dd2c  ldr x0,[x8]
02c3dd30  ldr w8,[x0, #0xe4]
02c3dd34  cbnz w8,0x02c3dd3c
02c3dd38  bl 0x029f5bd0
02c3dd3c  fsub s0,s10,s12
02c3dd40  fsub s1,s8,s11
02c3dd44  mov x0,xzr
02c3dd48  fsub s2,s9,s13
02c3dd4c  ldr s9,[x19, #0x22c]
02c3dd50  fmul s1,s1,s1
02c3dd54  fmul s0,s0,s0
02c3dd58  fadd s0,s1,s0
02c3dd5c  fmul s1,s2,s2
02c3dd60  fadd s0,s1,s0
02c3dd64  fsqrt s8,s0
02c3dd68  bl 0x057ebabc
02c3dd6c  fadd s0,s9,s0
02c3dd70  mov x0,x19
02c3dd74  mov x1,x20
02c3dd78  str s0,[x19, #0x22c]
02c3dd7c  fmov s0,s8
02c3dd80  bl 0x02c3fad0
02c3dd84  ldr w8,[x19, #0x208]
02c3dd88  cmp w0,w8
02c3dd8c  b.ne 0x02c3dd98
02c3dd90  mov w8,w0
02c3dd94  b 0x02c3ddb4
02c3dd98  ldr s0,[x19, #0x22c]
02c3dd9c  ldr s1,[x19, #0x21c]
02c3dda0  fcmp s0,s1
02c3dda4  b.lt 0x02c3ddb4
02c3dda8  mov w8,w0
02c3ddac  str w0,[x19, #0x208]
02c3ddb0  str wzr,[x19, #0x22c]
02c3ddb4  cmp w8,#0x1
02c3ddb8  b.le 0x02c3dde4
02c3ddbc  cmp w8,#0x2
02c3ddc0  b.eq 0x02c3ddfc
02c3ddc4  cmp w8,#0x3
02c3ddc8  b.eq 0x02c3de08
02c3ddcc  cmp w8,#0x4
02c3ddd0  b.ne 0x02c3de1c
02c3ddd4  mov x0,x19
02c3ddd8  mov x1,x20
02c3dddc  bl 0x02c405f0
02c3dde0  b 0x02c3de1c
02c3dde4  cbz w8,0x02c3de14
02c3dde8  cmp w8,#0x1
02c3ddec  b.ne 0x02c3de1c
02c3ddf0  mov x0,x19
02c3ddf4  bl 0x02c40094
02c3ddf8  b 0x02c3de1c
02c3ddfc  mov x0,x19
02c3de00  bl 0x02c40208
02c3de04  b 0x02c3de1c
02c3de08  mov x0,x19
02c3de0c  bl 0x02c40400
02c3de10  b 0x02c3de1c
02c3de14  mov x0,x19
02c3de18  bl 0x02c3fd70
02c3de1c  ldr s8,[x19, #0xac]
02c3de20  mov x0,xzr
02c3de24  bl 0x057ebabc
02c3de28  fadd s0,s8,s0
02c3de2c  ldr s1,[x19, #0xb0]
02c3de30  fcmp s0,s1
02c3de34  str s0,[x19, #0xac]
02c3de38  b.lt 0x02c3dc48
02c3de3c  ldr x0,[x21]
02c3de40  ldr x20,[x19, #0x1e0]
02c3de44  ldr w8,[x0, #0xe4]
02c3de48  cbnz w8,0x02c3de50
02c3de4c  bl 0x029f5bd0
02c3de50  mov x0,x20
02c3de54  mov x1,xzr
02c3de58  mov x2,xzr
02c3de5c  bl 0x057dfa70
02c3de60  tbz w0,#0x0,0x02c3dc48
02c3de64  ldr x1,[x19, #0x1e0]
02c3de68  mov x0,x19
02c3de6c  str wzr,[x19, #0xac]
02c3de70  bl 0x02c3d4ac
02c3de74  tbnz w0,#0x0,0x02c3dc48
02c3de78  ldr s8,[x19, #0xb0]
02c3de7c  mov x0,xzr
02c3de80  bl 0x057ebabc
02c3de84  fsub s0,s8,s0
02c3de88  str s0,[x19, #0xac]
02c3de8c  b 0x02c3dc48
02c3de90  bl 0x029f5cfc
