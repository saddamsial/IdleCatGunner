02c3fd70  sub sp,sp,#0x90
02c3fd74  stp d15,d14,[sp, #0x30]
02c3fd78  stp d13,d12,[sp, #0x40]
02c3fd7c  stp d11,d10,[sp, #0x50]
02c3fd80  stp d9,d8,[sp, #0x60]
02c3fd84  stp x30,x21,[sp, #0x70]
02c3fd88  stp x20,x19,[sp, #0x80]
02c3fd8c  adrp x20,0x625c000
02c3fd90  mov x19,x0
02c3fd94  ldrb w8,[x20, #0x9e]
02c3fd98  tbnz w8,#0x0,0x02c3fdbc
02c3fd9c  adrp x0,0x5e63000
02c3fda0  ldr x0,[x0, #0x1d8]
02c3fda4  bl 0x029f5a50
02c3fda8  adrp x0,0x5e59000
02c3fdac  ldr x0,[x0, #0x1c0]
02c3fdb0  bl 0x029f5a50
02c3fdb4  mov w8,#0x1
02c3fdb8  strb w8,[x20, #0x9e]
02c3fdbc  mov x0,x19
02c3fdc0  bl 0x02c3f874
02c3fdc4  ldr s10,[x19, #0x1c4]
02c3fdc8  ldr s11,[x19, #0x1c8]
02c3fdcc  mov x0,x19
02c3fdd0  ldr s12,[x19, #0x1cc]
02c3fdd4  ldr s13,[x19, #0x258]
02c3fdd8  mov x1,xzr
02c3fddc  ldr s14,[x19, #0x25c]
02c3fde0  ldr s15,[x19, #0x260]
02c3fde4  fmov s8,s0
02c3fde8  fmov s9,s1
02c3fdec  str s2,[sp, #0x2c]
02c3fdf0  bl 0x057dc0f8
02c3fdf4  cbz x0,0x02c40090
02c3fdf8  mov x1,xzr
02c3fdfc  bl 0x057eed98
02c3fe00  adrp x20,0x625c000
02c3fe04  stp s1,s0,[sp, #0x24]
02c3fe08  ldrb w8,[x20, #0xbe]
02c3fe0c  str s2,[sp, #0x20]
02c3fe10  cbnz w8,0x02c3fe28
02c3fe14  adrp x0,0x5e59000
02c3fe18  ldr x0,[x0]
02c3fe1c  bl 0x029f5a50
02c3fe20  mov w8,#0x1
02c3fe24  strb w8,[x20, #0xbe]
02c3fe28  adrp x8,0x5e59000
02c3fe2c  adrp x20,0x5e59000
02c3fe30  ldr x8,[x8]
02c3fe34  ldr x0,[x8]
02c3fe38  ldr w8,[x0, #0xe4]
02c3fe3c  ldr x20,[x20, #0x1c0]
02c3fe40  cbnz w8,0x02c3fe48
02c3fe44  bl 0x029f5bd0
02c3fe48  ldr x0,[x20]
02c3fe4c  ldr x20,[x19, #0x1e0]
02c3fe50  ldr w8,[x0, #0xe4]
02c3fe54  cbnz w8,0x02c3fe5c
02c3fe58  bl 0x029f5bd0
02c3fe5c  mov x0,x20
02c3fe60  mov x1,xzr
02c3fe64  mov x2,xzr
02c3fe68  bl 0x057dfa70
02c3fe6c  tbz w0,#0x0,0x02c3ffac
02c3fe70  adrp x21,0x5e63000
02c3fe74  ldr x21,[x21, #0x1d8]
02c3fe78  ldr x0,[x21]
02c3fe7c  ldr w8,[x0, #0xe4]
02c3fe80  cbnz w8,0x02c3fe8c
02c3fe84  bl 0x029f5bd0
02c3fe88  ldr x0,[x21]
02c3fe8c  ldr x8,[x19, #0x1e0]
02c3fe90  stp s15,s14,[sp, #0x14]
02c3fe94  str s13,[sp, #0x1c]
02c3fe98  cbz x8,0x02c40090
02c3fe9c  ldr x9,[x0, #0xb8]
02c3fea0  stp s10,s9,[sp, #0xc]
02c3fea4  fmov s13,s8
02c3fea8  mov x0,x8
02c3feac  mov x1,xzr
02c3feb0  stp s12,s11,[sp, #0x4]
02c3feb4  ldp s14,s15,[x9, #0x44]
02c3feb8  ldp s8,s9,[x9, #0x4c]
02c3febc  bl 0x057dc0f8
02c3fec0  cbz x0,0x02c40090
02c3fec4  mov x1,xzr
02c3fec8  bl 0x057eed98
02c3fecc  mov x0,x19
02c3fed0  mov x1,xzr
02c3fed4  fmov s10,s0
02c3fed8  fmov s11,s1
02c3fedc  fmov s12,s2
02c3fee0  bl 0x057dc0f8
02c3fee4  cbz x0,0x02c40090
02c3fee8  mov x1,xzr
02c3feec  bl 0x057eed98
02c3fef0  fsub s4,s10,s0
02c3fef4  fsub s5,s11,s1
02c3fef8  mov x0,xzr
02c3fefc  fsub s6,s12,s2
02c3ff00  fmov s0,s14
02c3ff04  fmov s1,s15
02c3ff08  fmov s2,s8
02c3ff0c  fmov s3,s9
02c3ff10  bl 0x057cdb04
02c3ff14  fcmp s0,#0.0
02c3ff18  ldr x0,[x21]
02c3ff1c  fmov s8,s13
02c3ff20  ldr x20,[x19, #0xb8]
02c3ff24  ldr w8,[x0, #0xe4]
02c3ff28  cset w9,ls
02c3ff2c  strb w9,[x19, #0x1f8]
02c3ff30  b.hi 0x02c3ff64
02c3ff34  ldp s10,s9,[sp, #0xc]
02c3ff38  ldp s12,s11,[sp, #0x4]
02c3ff3c  ldp s15,s14,[sp, #0x14]
02c3ff40  cbnz w8,0x02c3ff4c
02c3ff44  bl 0x029f5bd0
02c3ff48  ldr x0,[x21]
02c3ff4c  ldr x10,[x0, #0xb8]
02c3ff50  ldr s13,[sp, #0x1c]
02c3ff54  add x8,x10,#0x20
02c3ff58  add x9,x10,#0x24
02c3ff5c  add x10,x10,#0x28
02c3ff60  b 0x02c3ff90
02c3ff64  ldp s10,s9,[sp, #0xc]
02c3ff68  ldp s12,s11,[sp, #0x4]
02c3ff6c  ldp s15,s14,[sp, #0x14]
02c3ff70  cbnz w8,0x02c3ff7c
02c3ff74  bl 0x029f5bd0
02c3ff78  ldr x0,[x21]
02c3ff7c  ldr x10,[x0, #0xb8]
02c3ff80  ldr s13,[sp, #0x1c]
02c3ff84  add x8,x10,#0x2c
02c3ff88  add x9,x10,#0x30
02c3ff8c  add x10,x10,#0x34
02c3ff90  cbz x20,0x02c40090
02c3ff94  ldr s2,[x10]
02c3ff98  ldr s1,[x9]
02c3ff9c  mov x0,x20
02c3ffa0  ldr s0,[x8]
02c3ffa4  mov x1,xzr
02c3ffa8  bl 0x057ef218
02c3ffac  fadd s0,s8,s10
02c3ffb0  fadd s1,s9,s11
02c3ffb4  ldp s4,s2,[sp, #0x28]
02c3ffb8  ldp s5,s3,[sp, #0x20]
02c3ffbc  fadd s2,s2,s12
02c3ffc0  fadd s0,s0,s13
02c3ffc4  fadd s1,s1,s14
02c3ffc8  fadd s2,s2,s15
02c3ffcc  fsub s3,s3,s1
02c3ffd0  fsub s4,s4,s0
02c3ffd4  fsub s5,s5,s2
02c3ffd8  fmul s4,s4,s4
02c3ffdc  fmul s3,s3,s3
02c3ffe0  fadd s3,s4,s3
02c3ffe4  fmul s4,s5,s5
02c3ffe8  ldr s5,[x19, #0x1bc]
02c3ffec  fadd s3,s4,s3
02c3fff0  fmov s4,0x3f000000
02c3fff4  fmul s4,s5,s4
02c3fff8  fsqrt s3,s3
02c3fffc  fcmp s3,s4
02c40000  b.pl 0x02c40040
02c40004  ldr d0,[x19, #0x1d0]
02c40008  ldr s1,[x19, #0x1d8]
02c4000c  adrp x8,0x116c000
02c40010  fmul v0.2S,v0.2S,v0.2S
02c40014  fmul s1,s1,s1
02c40018  faddp s0,v0.2S
02c4001c  fadd s0,s0,s1
02c40020  ldr s1,[x8, #0x174]
02c40024  fcmp s0,s1
02c40028  b.le 0x02c40064
02c4002c  adrp x8,0x116c000
02c40030  mov x0,x19
02c40034  ldr s0,[x8, #0x190]
02c40038  bl 0x02c40a90
02c4003c  b 0x02c4006c
02c40040  mov x0,x19
02c40044  ldp x20,x19,[sp, #0x80]
02c40048  ldp x30,x21,[sp, #0x70]
02c4004c  ldp d9,d8,[sp, #0x60]
02c40050  ldp d11,d10,[sp, #0x50]
02c40054  ldp d13,d12,[sp, #0x40]
02c40058  ldp d15,d14,[sp, #0x30]
02c4005c  add sp,sp,#0x90
02c40060  b 0x02c3e32c
02c40064  mov x0,x19
02c40068  bl 0x02c3d9a0
02c4006c  mov x0,x19
02c40070  ldp x20,x19,[sp, #0x80]
02c40074  ldp x30,x21,[sp, #0x70]
02c40078  ldp d9,d8,[sp, #0x60]
02c4007c  ldp d11,d10,[sp, #0x50]
02c40080  ldp d13,d12,[sp, #0x40]
02c40084  ldp d15,d14,[sp, #0x30]
02c40088  add sp,sp,#0x90
02c4008c  b 0x02c40cb4
02c40090  bl 0x029f5cfc
