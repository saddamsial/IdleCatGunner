02c65edc  sub sp,sp,#0xd0
02c65ee0  stp d13,d12,[sp, #0x40]
02c65ee4  stp d11,d10,[sp, #0x50]
02c65ee8  stp d9,d8,[sp, #0x60]
02c65eec  stp x29,x30,[sp, #0x70]
02c65ef0  stp x28,x27,[sp, #0x80]
02c65ef4  stp x26,x25,[sp, #0x90]
02c65ef8  stp x24,x23,[sp, #0xa0]
02c65efc  stp x22,x21,[sp, #0xb0]
02c65f00  stp x20,x19,[sp, #0xc0]
02c65f04  fmov s8,s2
02c65f08  fmov s9,s1
02c65f0c  adrp x20,0x625c000
02c65f10  fmov s10,s0
02c65f14  ldrb w8,[x20, #0x252]
02c65f18  mov x19,x0
02c65f1c  tbnz w8,#0x0,0x02c65f64
02c65f20  adrp x0,0x5e5d000
02c65f24  ldr x0,[x0, #0x338]
02c65f28  bl 0x029f5a50
02c65f2c  adrp x0,0x5e63000
02c65f30  ldr x0,[x0, #0x9e0]
02c65f34  bl 0x029f5a50
02c65f38  adrp x0,0x5e63000
02c65f3c  ldr x0,[x0, #0x9e8]
02c65f40  bl 0x029f5a50
02c65f44  adrp x0,0x5e59000
02c65f48  ldr x0,[x0, #0x1c0]
02c65f4c  bl 0x029f5a50
02c65f50  adrp x0,0x5e5b000
02c65f54  ldr x0,[x0, #0xa0]
02c65f58  bl 0x029f5a50
02c65f5c  mov w8,#0x1
02c65f60  strb w8,[x20, #0x252]
02c65f64  ldr s11,[x19, #0x9c]
02c65f68  fcmp s11,#0.0
02c65f6c  b.ls 0x02c6614c
02c65f70  ldr w0,[x19, #0xa0]
02c65f74  mov x1,xzr
02c65f78  bl 0x057e0dd4
02c65f7c  adrp x8,0x5e5b000
02c65f80  mov w20,w0
02c65f84  ldr x8,[x8, #0xa0]
02c65f88  ldr x8,[x8]
02c65f8c  ldr w9,[x8, #0xe4]
02c65f90  cbnz w9,0x02c65f9c
02c65f94  mov x0,x8
02c65f98  bl 0x029f5bd0
02c65f9c  fmov s0,s10
02c65fa0  fmov s1,s9
02c65fa4  mov w0,w20
02c65fa8  fmov s2,s8
02c65fac  fmov s3,s11
02c65fb0  mov x1,xzr
02c65fb4  bl 0x05869600
02c65fb8  cbz x0,0x02c6617c
02c65fbc  ldr x8,[x0, #0x18]
02c65fc0  mov x20,x0
02c65fc4  cmp w8,#0x1
02c65fc8  b.lt 0x02c6614c
02c65fcc  adrp x24,0x5e59000
02c65fd0  adrp x25,0x5e63000
02c65fd4  adrp x26,0x5e63000
02c65fd8  adrp x27,0x5e5d000
02c65fdc  ldr x24,[x24, #0x1c0]
02c65fe0  ldr x25,[x25, #0x9e8]
02c65fe4  ldr x26,[x26, #0x9e0]
02c65fe8  ldr x27,[x27, #0x338]
02c65fec  mov x23,xzr
02c65ff0  and x8,x8,#0xffffffff
02c65ff4  add x28,x20,#0x20
02c65ff8  cmp x23,w8, UXTW 
02c65ffc  b.cs 0x02c66178
02c66000  ldr x0,[x24]
02c66004  ldr x21,[x28, x23, LSL #0x3]
02c66008  ldr w8,[x0, #0xe4]
02c6600c  cbnz w8,0x02c66014
02c66010  bl 0x029f5bd0
02c66014  mov x0,x21
02c66018  mov x1,xzr
02c6601c  mov x2,xzr
02c66020  bl 0x057e14b4
02c66024  tbnz w0,#0x0,0x02c6613c
02c66028  ldr w8,[x20, #0x18]
02c6602c  cmp x23,x8
02c66030  b.cs 0x02c66178
02c66034  ldr x0,[x28, x23, LSL #0x3]
02c66038  cbz x0,0x02c6617c
02c6603c  mov x1,xzr
02c66040  bl 0x057dc1c8
02c66044  cbz x0,0x02c6617c
02c66048  mov x1,xzr
02c6604c  bl 0x057e00b4
02c66050  tbz w0,#0x0,0x02c6613c
02c66054  ldr w8,[x20, #0x18]
02c66058  cmp x23,x8
02c6605c  b.cs 0x02c66178
02c66060  ldr x0,[x28, x23, LSL #0x3]
02c66064  cbz x0,0x02c6617c
02c66068  mov x1,xzr
02c6606c  bl 0x057e4ed0
02c66070  ldr x8,[x19, #0xd0]
02c66074  cbz x8,0x02c6617c
02c66078  mov w21,w0
02c6607c  ldr x2,[x25]
02c66080  mov x0,x8
02c66084  mov w1,w21
02c66088  bl 0x04281fa8
02c6608c  tbnz w0,#0x0,0x02c6613c
02c66090  ldr x0,[x19, #0xd0]
02c66094  cbz x0,0x02c6617c
02c66098  ldr x2,[x26]
02c6609c  mov w1,w21
02c660a0  bl 0x04282ae4
02c660a4  ldr w8,[x20, #0x18]
02c660a8  cmp x23,x8
02c660ac  b.cs 0x02c66178
02c660b0  ldr x0,[x28, x23, LSL #0x3]
02c660b4  cbz x0,0x02c6617c
02c660b8  fmov s0,s10
02c660bc  fmov s1,s9
02c660c0  mov x1,xzr
02c660c4  fmov s2,s8
02c660c8  bl 0x05866b18
02c660cc  ldr w8,[x20, #0x18]
02c660d0  cmp x23,x8
02c660d4  b.cs 0x02c66178
02c660d8  fmov s11,s0
02c660dc  fmov s12,s1
02c660e0  ldr x0,[x27]
02c660e4  fmov s13,s2
02c660e8  ldur q0,[x19, #0x28]
02c660ec  ldr x22,[x28, x23, LSL #0x3]
02c660f0  ldur q1,[x19, #0x38]
02c660f4  ldr w8,[x0, #0xe4]
02c660f8  ldr x21,[x19, #0x48]
02c660fc  ldrb w29,[x19, #0x24]
02c66100  stp q0,q1,[sp, #0x20]
02c66104  cbnz w8,0x02c6610c
02c66108  bl 0x029f5bd0
02c6610c  ldp q0,q1,[sp, #0x20]
02c66110  fmov s2,s13
02c66114  cmp w29,#0x0
02c66118  mov x1,sp
02c6611c  mov x0,x22
02c66120  cset w3,ne
02c66124  mov x2,x21
02c66128  mov x4,xzr
02c6612c  stp q0,q1,[sp]
02c66130  fmov s0,s11
02c66134  fmov s1,s12
02c66138  bl 0x02b7fba8
02c6613c  ldr w8,[x20, #0x18]
02c66140  add x23,x23,#0x1
02c66144  cmp x23,w8, SXTW 
02c66148  b.lt 0x02c65ff8
02c6614c  ldp x20,x19,[sp, #0xc0]
02c66150  ldp x22,x21,[sp, #0xb0]
02c66154  ldp x24,x23,[sp, #0xa0]
02c66158  ldp x26,x25,[sp, #0x90]
02c6615c  ldp x28,x27,[sp, #0x80]
02c66160  ldp x29,x30,[sp, #0x70]
02c66164  ldp d9,d8,[sp, #0x60]
02c66168  ldp d11,d10,[sp, #0x50]
02c6616c  ldp d13,d12,[sp, #0x40]
02c66170  add sp,sp,#0xd0
02c66174  ret
02c66178  bl 0x029f5d04
02c6617c  bl 0x029f5cfc
