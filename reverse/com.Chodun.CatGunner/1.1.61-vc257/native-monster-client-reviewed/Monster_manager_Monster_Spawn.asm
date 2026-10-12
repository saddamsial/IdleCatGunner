02c4fbf0  sub sp,sp,#0x110
02c4fbf4  str d12,[sp, #0xc0]
02c4fbf8  stp d11,d10,[sp, #0xc8]
02c4fbfc  stp d9,d8,[sp, #0xd8]
02c4fc00  str x29,[sp, #0xe8]
02c4fc04  stp x30,x21,[sp, #0xf0]
02c4fc08  stp x20,x19,[sp, #0x100]
02c4fc0c  adrp x21,0x625c000
02c4fc10  adrp x20,0x5e5d000
02c4fc14  mov x19,x0
02c4fc18  ldrb w8,[x21, #0x14d]
02c4fc1c  ldr x20,[x20, #0x338]
02c4fc20  tbnz w8,#0x0,0x02c4fc68
02c4fc24  adrp x0,0x5e5d000
02c4fc28  ldr x0,[x0, #0x338]
02c4fc2c  bl 0x029f5a50
02c4fc30  adrp x0,0x5e63000
02c4fc34  ldr x0,[x0, #0x498]
02c4fc38  bl 0x029f5a50
02c4fc3c  adrp x0,0x5e63000
02c4fc40  ldr x0,[x0, #0x530]
02c4fc44  bl 0x029f5a50
02c4fc48  adrp x0,0x5e63000
02c4fc4c  ldr x0,[x0, #0x538]
02c4fc50  bl 0x029f5a50
02c4fc54  adrp x0,0x5e63000
02c4fc58  ldr x0,[x0, #0x540]
02c4fc5c  bl 0x029f5a50
02c4fc60  mov w8,#0x1
02c4fc64  strb w8,[x21, #0x14d]
02c4fc68  movi v0.2D,#0x0
02c4fc6c  ldr x0,[x20]
02c4fc70  ldr w8,[x0, #0xe4]
02c4fc74  stp q0,q0,[sp, #0x60]
02c4fc78  stp q0,q0,[sp, #0x80]
02c4fc7c  stp q0,q0,[sp, #0xa0]
02c4fc80  cbnz w8,0x02c4fc8c
02c4fc84  bl 0x029f5bd0
02c4fc88  ldr x0,[x20]
02c4fc8c  ldr x8,[x0, #0xb8]
02c4fc90  ldrb w8,[x8]
02c4fc94  cbz w8,0x02c4fe30
02c4fc98  ldr x8,[x19, #0x170]
02c4fc9c  cbz x8,0x02c4fe50
02c4fca0  ldr w8,[x8, #0x18]
02c4fca4  cbz w8,0x02c4fe30
02c4fca8  mov x0,x19
02c4fcac  bl 0x02c4fe54
02c4fcb0  ldr x0,[x19, #0x170]
02c4fcb4  cbz x0,0x02c4fe50
02c4fcb8  adrp x8,0x5e63000
02c4fcbc  mov w1,wzr
02c4fcc0  fmov s8,s0
02c4fcc4  ldr x8,[x8, #0x540]
02c4fcc8  fmov s9,s1
02c4fccc  fmov s10,s2
02c4fcd0  ldr x2,[x8]
02c4fcd4  bl 0x0452c8d8
02c4fcd8  movi d0,#0x0
02c4fcdc  fmov s1,0x3f800000
02c4fce0  mov x20,x0
02c4fce4  mov x0,xzr
02c4fce8  bl 0x057d55d4
02c4fcec  ldr s1,[x19, #0x24]
02c4fcf0  adrp x8,0x116c000
02c4fcf4  fmov s11,s0
02c4fcf8  ldr s2,[x8, #0x60]
02c4fcfc  scvtf s1,s1
02c4fd00  fmul s12,s1,s2
02c4fd04  fcmp s0,s12
02c4fd08  b.hi 0x02c4fd58
02c4fd0c  add x8,sp,#0x40
02c4fd10  mov w0,#0x3
02c4fd14  mov x1,xzr
02c4fd18  bl 0x046544b8
02c4fd1c  ldp q0,q1,[sp, #0x40]
02c4fd20  add x8,sp,#0x20
02c4fd24  add x0,x19,#0x60
02c4fd28  add x1,sp,#0xa0
02c4fd2c  mov x2,xzr
02c4fd30  stp q0,q1,[sp, #0xa0]
02c4fd34  bl 0x04658538
02c4fd38  ldp q0,q1,[sp, #0x20]
02c4fd3c  add x8,sp,#0x60
02c4fd40  add x0,sp,#0x80
02c4fd44  mov w1,#0x2
02c4fd48  mov x2,xzr
02c4fd4c  stp q0,q1,[sp, #0x80]
02c4fd50  bl 0x04658464
02c4fd54  b 0x02c4fd60
02c4fd58  ldp q0,q1,[x19, #0x60]
02c4fd5c  stp q0,q1,[sp, #0x60]
02c4fd60  fcmp s11,s12
02c4fd64  ldp q0,q1,[sp, #0x60]
02c4fd68  mov x0,x19
02c4fd6c  cset w1,ls
02c4fd70  stp q0,q1,[sp, #0x40]
02c4fd74  bl 0x02c4ff4c
02c4fd78  cbz x20,0x02c4fe50
02c4fd7c  ldp q0,q1,[sp, #0x40]
02c4fd80  fcmp s11,s12
02c4fd84  fmov s2,s10
02c4fd88  mov x2,x0
02c4fd8c  mov x1,sp
02c4fd90  mov x0,x20
02c4fd94  stp q0,q1,[sp]
02c4fd98  fmov s0,s8
02c4fd9c  fmov s1,s9
02c4fda0  cset w3,ls
02c4fda4  bl 0x02c4c530
02c4fda8  ldr x0,[x19, #0x170]
02c4fdac  cbz x0,0x02c4fe50
02c4fdb0  adrp x8,0x5e63000
02c4fdb4  mov w1,wzr
02c4fdb8  ldr x8,[x8, #0x530]
02c4fdbc  ldr x2,[x8]
02c4fdc0  bl 0x0452e350
02c4fdc4  ldr x0,[x19, #0x178]
02c4fdc8  cbz x0,0x02c4fe50
02c4fdcc  adrp x9,0x5e63000
02c4fdd0  ldr x9,[x9, #0x498]
02c4fdd4  ldr w10,[x0, #0x1c]
02c4fdd8  ldr x8,[x0, #0x10]
02c4fddc  ldr x9,[x9]
02c4fde0  add w10,w10,#0x1
02c4fde4  str w10,[x0, #0x1c]
02c4fde8  cbz x8,0x02c4fe50
02c4fdec  ldrsw x10,[x0, #0x18]
02c4fdf0  ldr w11,[x8, #0x18]
02c4fdf4  cmp w10,w11
02c4fdf8  b.cs 0x02c4fe1c
02c4fdfc  add x8,x8,x10, LSL #0x3
02c4fe00  add w9,w10,#0x1
02c4fe04  mov x1,x20
02c4fe08  str w9,[x0, #0x18]
02c4fe0c  str x20,[x8, #0x20]!
02c4fe10  mov x0,x8
02c4fe14  bl 0x029f59f4
02c4fe18  b 0x02c4fe30
02c4fe1c  ldr x8,[x9, #0x20]
02c4fe20  mov x1,x20
02c4fe24  ldr x8,[x8, #0xc0]
02c4fe28  ldr x2,[x8, #0x70]
02c4fe2c  bl 0x0452cba8
02c4fe30  ldp x20,x19,[sp, #0x100]
02c4fe34  ldr x29,[sp, #0xe8]
02c4fe38  ldp x30,x21,[sp, #0xf0]
02c4fe3c  ldr d12,[sp, #0xc0]
02c4fe40  ldp d9,d8,[sp, #0xd8]
02c4fe44  ldp d11,d10,[sp, #0xc8]
02c4fe48  add sp,sp,#0x110
02c4fe4c  ret
02c4fe50  bl 0x029f5cfc
