02c1dd54  str x30,[sp, #-0x30]!
02c1dd58  stp x22,x21,[sp, #0x10]
02c1dd5c  stp x20,x19,[sp, #0x20]
02c1dd60  adrp x22,0x625b000
02c1dd64  adrp x21,0x5e5d000
02c1dd68  adrp x20,0x5e59000
02c1dd6c  ldrb w8,[x22, #0xfde]
02c1dd70  ldr x21,[x21, #0x368]
02c1dd74  ldr x20,[x20, #0x1c0]
02c1dd78  mov x19,x0
02c1dd7c  tbnz w8,#0x0,0x02c1dda0
02c1dd80  adrp x0,0x5e59000
02c1dd84  ldr x0,[x0, #0x1c0]
02c1dd88  bl 0x029f5a50
02c1dd8c  adrp x0,0x5e5d000
02c1dd90  ldr x0,[x0, #0x368]
02c1dd94  bl 0x029f5a50
02c1dd98  mov w8,#0x1
02c1dd9c  strb w8,[x22, #0xfde]
02c1dda0  ldr x8,[x21]
02c1dda4  ldr x0,[x20]
02c1dda8  ldr x8,[x8, #0xb8]
02c1ddac  ldr w9,[x0, #0xe4]
02c1ddb0  ldr x20,[x8]
02c1ddb4  cbnz w9,0x02c1ddbc
02c1ddb8  bl 0x029f5bd0
02c1ddbc  mov x0,x20
02c1ddc0  mov x1,xzr
02c1ddc4  mov x2,xzr
02c1ddc8  bl 0x057e14b4
02c1ddcc  tbnz w0,#0x0,0x02c1ded4
02c1ddd0  ldr x8,[x21]
02c1ddd4  ldr x9,[x8, #0xb8]
02c1ddd8  ldr x8,[x9]
02c1dddc  cbz x8,0x02c1dee4
02c1dde0  ldr x8,[x8, #0x50]
02c1dde4  cbz x8,0x02c1dee4
02c1dde8  ldrsw x9,[x9, #0x8]
02c1ddec  ldr w10,[x8, #0x18]
02c1ddf0  cmp w9,w10
02c1ddf4  b.cs 0x02c1dee8
02c1ddf8  add x8,x8,x9, LSL #0x3
02c1ddfc  ldr x0,[x8, #0x20]
02c1de00  cbz x0,0x02c1dee4
02c1de04  mov x1,xzr
02c1de08  bl 0x057dc1c8
02c1de0c  cbz x0,0x02c1dee4
02c1de10  mov x1,xzr
02c1de14  bl 0x057e00b4
02c1de18  tbz w0,#0x0,0x02c1de68
02c1de1c  ldr x8,[x21]
02c1de20  ldr x9,[x8, #0xb8]
02c1de24  ldr x8,[x9]
02c1de28  cbz x8,0x02c1dee4
02c1de2c  ldr x8,[x8, #0x50]
02c1de30  cbz x8,0x02c1dee4
02c1de34  ldrsw x9,[x9, #0x8]
02c1de38  ldr w10,[x8, #0x18]
02c1de3c  cmp w9,w10
02c1de40  b.cs 0x02c1dee8
02c1de44  add x8,x8,x9, LSL #0x3
02c1de48  ldr x0,[x8, #0x20]
02c1de4c  cbz x0,0x02c1dee4
02c1de50  mov x1,xzr
02c1de54  bl 0x057dc1c8
02c1de58  cbz x0,0x02c1dee4
02c1de5c  mov w1,wzr
02c1de60  mov x2,xzr
02c1de64  bl 0x057dff3c
02c1de68  ldr x8,[x21]
02c1de6c  ldr x9,[x8, #0xb8]
02c1de70  ldr x8,[x9]
02c1de74  cbz x8,0x02c1dee4
02c1de78  ldr x8,[x8, #0x50]
02c1de7c  cbz x8,0x02c1dee4
02c1de80  ldrsw x9,[x9, #0x8]
02c1de84  ldr w10,[x8, #0x18]
02c1de88  cmp w9,w10
02c1de8c  b.cs 0x02c1dee8
02c1de90  add x8,x8,x9, LSL #0x3
02c1de94  ldr x0,[x8, #0x20]
02c1de98  cbz x0,0x02c1dee4
02c1de9c  mov x1,x19
02c1dea0  bl 0x02c26534
02c1dea4  ldr x8,[x21]
02c1dea8  ldr x8,[x8, #0xb8]
02c1deac  ldr x9,[x8]
02c1deb0  cbz x9,0x02c1dee4
02c1deb4  ldr x9,[x9, #0x50]
02c1deb8  cbz x9,0x02c1dee4
02c1debc  ldr w10,[x8, #0x8]
02c1dec0  ldr w9,[x9, #0x18]
02c1dec4  add w10,w10,#0x1
02c1dec8  sdiv w11,w10,w9
02c1decc  msub w9,w11,w9,w10
02c1ded0  str w9,[x8, #0x8]
02c1ded4  ldp x20,x19,[sp, #0x20]
02c1ded8  ldp x22,x21,[sp, #0x10]
02c1dedc  ldr x30,[sp], #0x30
02c1dee0  ret
02c1dee4  bl 0x029f5cfc
02c1dee8  bl 0x029f5d04
