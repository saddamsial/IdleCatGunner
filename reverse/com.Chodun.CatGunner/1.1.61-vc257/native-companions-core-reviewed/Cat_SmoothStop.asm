02c3d9a0  sub sp,sp,#0x60
02c3d9a4  str d12,[sp, #0x10]
02c3d9a8  stp d11,d10,[sp, #0x18]
02c3d9ac  stp d9,d8,[sp, #0x28]
02c3d9b0  str x30,[sp, #0x38]
02c3d9b4  stp x22,x21,[sp, #0x40]
02c3d9b8  stp x20,x19,[sp, #0x50]
02c3d9bc  adrp x20,0x625c000
02c3d9c0  mov x19,x0
02c3d9c4  ldrb w8,[x20, #0xa4]
02c3d9c8  tbnz w8,#0x0,0x02c3d9e0
02c3d9cc  adrp x0,0x5e61000
02c3d9d0  ldr x0,[x0, #0x878]
02c3d9d4  bl 0x029f5a50
02c3d9d8  mov w8,#0x1
02c3d9dc  strb w8,[x20, #0xa4]
02c3d9e0  adrp x21,0x625b000
02c3d9e4  ldr d9,[x19, #0x230]
02c3d9e8  ldr s8,[x19, #0x238]
02c3d9ec  ldrb w8,[x21, #0x26f]
02c3d9f0  cbnz w8,0x02c3da08
02c3d9f4  adrp x0,0x5e58000
02c3d9f8  ldr x0,[x0, #0xbf8]
02c3d9fc  bl 0x029f5a50
02c3da00  mov w8,#0x1
02c3da04  strb w8,[x21, #0x26f]
02c3da08  adrp x22,0x5e58000
02c3da0c  mov x0,xzr
02c3da10  ldr x22,[x22, #0xbf8]
02c3da14  ldr s11,[x19, #0x228]
02c3da18  ldr x8,[x22]
02c3da1c  ldr x8,[x8, #0xb8]
02c3da20  ldr s0,[x8, #0x8]
02c3da24  ldr d12,[x8]
02c3da28  fsub s10,s0,s8
02c3da2c  bl 0x057ebabc
02c3da30  fmul s0,s11,s0
02c3da34  fmov s1,0x3f800000
02c3da38  movi d2,#0x0
02c3da3c  adrp x8,0x116c000
02c3da40  fcmp s0,s1
02c3da44  fcsel s1,s1,s0,gt
02c3da48  fcmp s0,#0.0
02c3da4c  fcsel s0,s2,s1,mi
02c3da50  fsub v1.2S,v12.2S,v9.2S
02c3da54  fmul v1.2S,v1.2S,v0.S[0x0]
02c3da58  fmul s0,s10,s0
02c3da5c  fadd v3.2S,v9.2S,v1.2S
02c3da60  fadd s0,s8,s0
02c3da64  fmul v1.2S,v3.2S,v3.2S
02c3da68  fmul s2,s0,s0
02c3da6c  str d3,[x19, #0x230]
02c3da70  str s0,[x19, #0x238]
02c3da74  faddp s1,v1.2S
02c3da78  fadd s1,s2,s1
02c3da7c  ldr s2,[x8, #0x88]
02c3da80  fcmp s1,s2
02c3da84  b.pl 0x02c3daf8
02c3da88  ldrb w8,[x21, #0x26f]
02c3da8c  cbnz w8,0x02c3daa4
02c3da90  adrp x0,0x5e58000
02c3da94  ldr x0,[x0, #0xbf8]
02c3da98  bl 0x029f5a50
02c3da9c  mov w8,#0x1
02c3daa0  strb w8,[x21, #0x26f]
02c3daa4  ldr x8,[x22]
02c3daa8  ldr x20,[x19, #0x30]
02c3daac  ldr x8,[x8, #0xb8]
02c3dab0  ldr d0,[x8]
02c3dab4  ldr s1,[x8, #0x8]
02c3dab8  str d0,[x19, #0x230]
02c3dabc  str s1,[x19, #0x238]
02c3dac0  cbz x20,0x02c3db9c
02c3dac4  mov x0,x20
02c3dac8  mov x1,xzr
02c3dacc  bl 0x0586b268
02c3dad0  movi d0,#0x0
02c3dad4  movi d2,#0x0
02c3dad8  mov x0,x20
02c3dadc  mov x1,xzr
02c3dae0  bl 0x0586b344
02c3dae4  ldr x0,[x19, #0x38]
02c3dae8  cbz x0,0x02c3db9c
02c3daec  adrp x8,0x5e61000
02c3daf0  mov w2,wzr
02c3daf4  b 0x02c3db34
02c3daf8  ldr x20,[x19, #0x30]
02c3dafc  str q3,[sp]
02c3db00  cbz x20,0x02c3db9c
02c3db04  mov x0,x20
02c3db08  mov x1,xzr
02c3db0c  bl 0x0586b268
02c3db10  ldr s2,[x19, #0x238]
02c3db14  mov x0,x20
02c3db18  ldr q0,[sp]
02c3db1c  mov x1,xzr
02c3db20  bl 0x0586b344
02c3db24  ldr x0,[x19, #0x38]
02c3db28  cbz x0,0x02c3db9c
02c3db2c  adrp x8,0x5e61000
02c3db30  mov w2,#0x1
02c3db34  ldr x8,[x8, #0x878]
02c3db38  ldr x1,[x8]
02c3db3c  mov x3,xzr
02c3db40  bl 0x05784a20
02c3db44  ldrb w8,[x21, #0x26f]
02c3db48  cbnz w8,0x02c3db60
02c3db4c  adrp x0,0x5e58000
02c3db50  ldr x0,[x0, #0xbf8]
02c3db54  bl 0x029f5a50
02c3db58  mov w8,#0x1
02c3db5c  strb w8,[x21, #0x26f]
02c3db60  ldr x8,[x22]
02c3db64  add x9,x19,#0x20c
02c3db68  ldr x30,[sp, #0x38]
02c3db6c  ldp x22,x21,[sp, #0x40]
02c3db70  ldr d12,[sp, #0x10]
02c3db74  ldr x8,[x8, #0xb8]
02c3db78  ldp d9,d8,[sp, #0x28]
02c3db7c  ldp d11,d10,[sp, #0x18]
02c3db80  ldr s1,[x8, #0x8]
02c3db84  ldr d0,[x8]
02c3db88  str s1,[x19, #0x214]
02c3db8c  ldp x20,x19,[sp, #0x50]
02c3db90  str d0,[x9]
02c3db94  add sp,sp,#0x60
02c3db98  ret
02c3db9c  bl 0x029f5cfc
