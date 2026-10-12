02c2dc3c  stp x30,x27,[sp, #-0x50]!
02c2dc40  stp x26,x25,[sp, #0x10]
02c2dc44  stp x24,x23,[sp, #0x20]
02c2dc48  stp x22,x21,[sp, #0x30]
02c2dc4c  stp x20,x19,[sp, #0x40]
02c2dc50  adrp x22,0x625c000
02c2dc54  adrp x24,0x5e5a000
02c2dc58  mov w21,w2
02c2dc5c  ldrb w8,[x22, #0x8]
02c2dc60  ldr x24,[x24, #0x180]
02c2dc64  mov w19,w1
02c2dc68  mov x20,x0
02c2dc6c  tbnz w8,#0x0,0x02c2dcb4
02c2dc70  adrp x0,0x5e5d000
02c2dc74  ldr x0,[x0, #0xd28]
02c2dc78  bl 0x029f5a50
02c2dc7c  adrp x0,0x5e5d000
02c2dc80  ldr x0,[x0, #0x540]
02c2dc84  bl 0x029f5a50
02c2dc88  adrp x0,0x5e62000
02c2dc8c  ldr x0,[x0, #0xfe8]
02c2dc90  bl 0x029f5a50
02c2dc94  adrp x0,0x5e5d000
02c2dc98  ldr x0,[x0, #0x4d0]
02c2dc9c  bl 0x029f5a50
02c2dca0  adrp x0,0x5e5a000
02c2dca4  ldr x0,[x0, #0x180]
02c2dca8  bl 0x029f5a50
02c2dcac  mov w8,#0x1
02c2dcb0  strb w8,[x22, #0x8]
02c2dcb4  mov x0,x20
02c2dcb8  mov w1,w19
02c2dcbc  mov w2,w21
02c2dcc0  bl 0x02c2db00
02c2dcc4  mov w22,w0
02c2dcc8  mov x0,x20
02c2dccc  mov w1,w19
02c2dcd0  mov w2,w21
02c2dcd4  bl 0x02c2dfb8
02c2dcd8  ldr x8,[x24]
02c2dcdc  mov x23,x0
02c2dce0  ldr w9,[x8, #0xe4]
02c2dce4  cbnz w9,0x02c2dcf4
02c2dce8  mov x0,x8
02c2dcec  bl 0x029f5bd0
02c2dcf0  ldr x8,[x24]
02c2dcf4  ldr x8,[x8, #0xb8]
02c2dcf8  mov x0,x23
02c2dcfc  mov x2,xzr
02c2dd00  ldr x1,[x8]
02c2dd04  bl 0x04868dd8
02c2dd08  and w8,w22,w0
02c2dd0c  tbz w8,#0x0,0x02c2dee8
02c2dd10  adrp x22,0x5e5d000
02c2dd14  mov x0,x20
02c2dd18  mov w1,w19
02c2dd1c  ldr x22,[x22, #0xd28]
02c2dd20  mov w2,w21
02c2dd24  bl 0x02c2dbec
02c2dd28  mov w1,w19
02c2dd2c  mov w2,w21
02c2dd30  mov x26,x0
02c2dd34  bl 0x02c2e0ac
02c2dd38  mov x23,x0
02c2dd3c  mov x0,x20
02c2dd40  mov w2,w21
02c2dd44  mov x1,x23
02c2dd48  bl 0x02c2e128
02c2dd4c  ldr x8,[x22]
02c2dd50  mov w22,w0
02c2dd54  ldr w9,[x8, #0xe4]
02c2dd58  cbnz w9,0x02c2dd64
02c2dd5c  mov x0,x8
02c2dd60  bl 0x029f5bd0
02c2dd64  mov w0,w19
02c2dd68  mov w1,w22
02c2dd6c  bl 0x02c2cd94
02c2dd70  mov x0,x20
02c2dd74  mov w1,w21
02c2dd78  bl 0x02c2d050
02c2dd7c  cbz x23,0x02c2df00
02c2dd80  ldr w8,[x23, #0x18]
02c2dd84  ldp w24,w25,[x20, #0x30]
02c2dd88  mul w8,w0,w8
02c2dd8c  mov x0,x20
02c2dd90  add w8,w8,w8, LSL #0x2
02c2dd94  lsl w23,w8,#0x1
02c2dd98  mov w1,w23
02c2dd9c  bl 0x02c2e304
02c2dda0  adrp x27,0x5e5d000
02c2dda4  ldr x27,[x27, #0x4d0]
02c2dda8  ldr x0,[x27]
02c2ddac  ldr w8,[x0, #0xe4]
02c2ddb0  cbnz w8,0x02c2ddbc
02c2ddb4  bl 0x029f5bd0
02c2ddb8  ldr x0,[x27]
02c2ddbc  ldr x8,[x0, #0xb8]
02c2ddc0  ldr x0,[x8, #0x28]
02c2ddc4  cbz x0,0x02c2df00
02c2ddc8  mov w8,#0x64
02c2ddcc  mov x2,xzr
02c2ddd0  madd w1,w19,w8,w21
02c2ddd4  bl 0x02c7ce70
02c2ddd8  cbz x26,0x02c2df00
02c2dddc  adrp x27,0x625b000
02c2dde0  strb wzr,[x26, #0x10]
02c2dde4  ldrb w8,[x27, #0xa57]
02c2dde8  cbnz w8,0x02c2de00
02c2ddec  adrp x0,0x5e5d000
02c2ddf0  ldr x0,[x0, #0xd70]
02c2ddf4  bl 0x029f5a50
02c2ddf8  mov w8,#0x1
02c2ddfc  strb w8,[x27, #0xa57]
02c2de00  adrp x8,0x5e5d000
02c2de04  ldr x8,[x8, #0xd70]
02c2de08  ldr x8,[x8]
02c2de0c  ldr x8,[x8, #0xb8]
02c2de10  ldr x0,[x8]
02c2de14  cbz x0,0x02c2df00
02c2de18  fmov s0,0x3f800000
02c2de1c  mov w1,#0x7
02c2de20  mov x2,xzr
02c2de24  bl 0x02c1f10c
02c2de28  ldr x0,[x20, #0x40]
02c2de2c  cbz x0,0x02c2df00
02c2de30  mov w1,w19
02c2de34  mov x2,xzr
02c2de38  bl 0x02c33e70
02c2de3c  ldr x0,[x20, #0x40]
02c2de40  cbz x0,0x02c2df00
02c2de44  mov x1,xzr
02c2de48  bl 0x02c353e8
02c2de4c  ldr x0,[x20, #0x40]
02c2de50  cbz x0,0x02c2df00
02c2de54  mov x1,xzr
02c2de58  bl 0x02c356d8
02c2de5c  ldr x0,[x20, #0x40]
02c2de60  cbz x0,0x02c2df00
02c2de64  mov x1,xzr
02c2de68  bl 0x02c35734
02c2de6c  ldr x0,[x20, #0x40]
02c2de70  cbz x0,0x02c2df00
02c2de74  mov x1,xzr
02c2de78  bl 0x02c35930
02c2de7c  adrp x8,0x5e5d000
02c2de80  ldr x8,[x8, #0x540]
02c2de84  ldr x0,[x8]
02c2de88  ldr w8,[x0, #0xe4]
02c2de8c  cbnz w8,0x02c2de94
02c2de90  bl 0x029f5bd0
02c2de94  mov w0,w19
02c2de98  mov w1,w21
02c2de9c  mov w2,#0x1
02c2dea0  mov x3,xzr
02c2dea4  bl 0x02b99d2c
02c2dea8  ldr x0,[x20, #0x40]
02c2deac  cbz x0,0x02c2df00
02c2deb0  mov w1,w19
02c2deb4  mov w2,w22
02c2deb8  mov w3,w23
02c2debc  mov w4,w24
02c2dec0  mov w5,w25
02c2dec4  mov x6,xzr
02c2dec8  bl 0x02c35a7c
02c2decc  ldp x20,x19,[sp, #0x40]
02c2ded0  mov x0,xzr
02c2ded4  ldp x22,x21,[sp, #0x30]
02c2ded8  ldp x24,x23,[sp, #0x20]
02c2dedc  ldp x26,x25,[sp, #0x10]
02c2dee0  ldp x30,x27,[sp], #0x50
02c2dee4  b 0x02c0faf8
02c2dee8  ldp x20,x19,[sp, #0x40]
02c2deec  ldp x22,x21,[sp, #0x30]
02c2def0  ldp x24,x23,[sp, #0x20]
02c2def4  ldp x26,x25,[sp, #0x10]
02c2def8  ldp x30,x27,[sp], #0x50
02c2defc  ret
02c2df00  bl 0x029f5cfc
