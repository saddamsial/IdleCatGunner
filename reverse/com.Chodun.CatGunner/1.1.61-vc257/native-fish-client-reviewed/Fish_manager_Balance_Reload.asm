02c5dd3c  stp d11,d10,[sp, #-0x70]!
02c5dd40  stp d9,d8,[sp, #0x10]
02c5dd44  str x30,[sp, #0x20]
02c5dd48  stp x26,x25,[sp, #0x30]
02c5dd4c  stp x24,x23,[sp, #0x40]
02c5dd50  stp x22,x21,[sp, #0x50]
02c5dd54  stp x20,x19,[sp, #0x60]
02c5dd58  adrp x20,0x625c000
02c5dd5c  adrp x21,0x5e63000
02c5dd60  mov x19,x0
02c5dd64  ldrb w8,[x20, #0x1fb]
02c5dd68  ldr x21,[x21, #0x818]
02c5dd6c  tbnz w8,#0x0,0x02c5dd9c
02c5dd70  adrp x0,0x5e63000
02c5dd74  ldr x0,[x0, #0x818]
02c5dd78  bl 0x029f5a50
02c5dd7c  adrp x0,0x5e63000
02c5dd80  ldr x0,[x0, #0x820]
02c5dd84  bl 0x029f5a50
02c5dd88  adrp x0,0x5e59000
02c5dd8c  ldr x0,[x0, #0x50]
02c5dd90  bl 0x029f5a50
02c5dd94  mov w8,#0x1
02c5dd98  strb w8,[x20, #0x1fb]
02c5dd9c  ldr x0,[x21]
02c5dda0  mov w1,#0xd
02c5dda4  bl 0x029f5b40
02c5dda8  mov x1,x0
02c5ddac  str x0,[x19, #0x20]!
02c5ddb0  mov x0,x19
02c5ddb4  bl 0x029f59f4
02c5ddb8  ldr x23,[x19]
02c5ddbc  cbz x23,0x02c5debc
02c5ddc0  adrp x22,0x5e63000
02c5ddc4  adrp x24,0x5e59000
02c5ddc8  mov x21,xzr
02c5ddcc  ldr x22,[x22, #0x820]
02c5ddd0  ldr x24,[x24, #0x50]
02c5ddd4  fmov s10,0x40800000
02c5ddd8  fmov s11,0x41000000
02c5dddc  mov w25,#0x20
02c5dde0  mov w26,#0x64
02c5dde4  ldrsw x8,[x23, #0x18]
02c5dde8  cmp x21,x8
02c5ddec  b.ge 0x02c5dec0
02c5ddf0  ldr x0,[x22]
02c5ddf4  bl 0x029f5cec
02c5ddf8  mov x1,xzr
02c5ddfc  mov x20,x0
02c5de00  bl 0x04893238
02c5de04  cbz x20,0x02c5debc
02c5de08  scvtf s8,w21
02c5de0c  fmov s0,0x40400000
02c5de10  fmov s1,s8
02c5de14  bl 0x05afb280
02c5de18  fmov s1,s8
02c5de1c  fmov s9,s0
02c5de20  fmov s0,0x40200000
02c5de24  bl 0x05afb280
02c5de28  ldr x1,[x24]
02c5de2c  mov x0,x20
02c5de30  fmov s8,s0
02c5de34  str x1,[x0, #0x10]!
02c5de38  bl 0x029f59f4
02c5de3c  fmul s0,s9,s10
02c5de40  mov w0,#0x2
02c5de44  bl 0x02c5def8
02c5de48  fmov s0,s8
02c5de4c  str w0,[x20, #0x18]
02c5de50  mov w0,#0x2
02c5de54  bl 0x02c5def8
02c5de58  fmul s0,s8,s11
02c5de5c  cmp w0,#0x64
02c5de60  csel w8,w0,w26,lt
02c5de64  mov w0,#0x2
02c5de68  bic w8,w8,w8, ASR #0x1f
02c5de6c  str w8,[x20, #0x1c]
02c5de70  bl 0x02c5def8
02c5de74  str w0,[x20, #0x20]
02c5de78  mov x0,x20
02c5de7c  ldr x8,[x23]
02c5de80  ldr x1,[x8, #0x40]
02c5de84  bl 0x029f5bd4
02c5de88  cbz x0,0x02c5dee0
02c5de8c  ldr w8,[x23, #0x18]
02c5de90  cmp x21,x8
02c5de94  b.cs 0x02c5deec
02c5de98  add x8,x23,x21, LSL #0x3
02c5de9c  add x0,x23,x25
02c5dea0  mov x1,x20
02c5dea4  str x20,[x8, #0x20]
02c5dea8  bl 0x029f59f4
02c5deac  ldr x23,[x19]
02c5deb0  add x21,x21,#0x1
02c5deb4  add x25,x25,#0x8
02c5deb8  cbnz x23,0x02c5dde4
02c5debc  bl 0x029f5cfc
02c5dec0  ldp x20,x19,[sp, #0x60]
02c5dec4  ldr x30,[sp, #0x20]
02c5dec8  ldp x22,x21,[sp, #0x50]
02c5decc  ldp x24,x23,[sp, #0x40]
02c5ded0  ldp x26,x25,[sp, #0x30]
02c5ded4  ldp d9,d8,[sp, #0x10]
02c5ded8  ldp d11,d10,[sp], #0x70
02c5dedc  ret
02c5dee0  bl 0x029f5d20
02c5dee4  mov x1,xzr
02c5dee8  bl 0x029f5bc0
02c5deec  bl 0x029f5d04
