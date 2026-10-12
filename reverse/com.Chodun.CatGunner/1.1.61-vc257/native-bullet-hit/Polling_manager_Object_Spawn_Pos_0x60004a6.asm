02c17eb0  stp d11,d10,[sp, #-0x40]!
02c17eb4  stp d9,d8,[sp, #0x10]
02c17eb8  stp x30,x21,[sp, #0x20]
02c17ebc  stp x20,x19,[sp, #0x30]
02c17ec0  fmov s8,s3
02c17ec4  fmov s9,s2
02c17ec8  fmov s10,s1
02c17ecc  fmov s11,s0
02c17ed0  bl 0x02c17d84
02c17ed4  cbz x0,0x02c17f80
02c17ed8  mov x1,xzr
02c17edc  mov x19,x0
02c17ee0  bl 0x057dfcf4
02c17ee4  cbz x0,0x02c17f80
02c17ee8  fmov s0,s11
02c17eec  fmov s1,s10
02c17ef0  mov x1,xzr
02c17ef4  fmov s2,s9
02c17ef8  bl 0x057eee74
02c17efc  mov x0,x19
02c17f00  mov x1,xzr
02c17f04  bl 0x057dfcf4
02c17f08  adrp x21,0x625b000
02c17f0c  mov x20,x0
02c17f10  ldrb w8,[x21, #0x279]
02c17f14  cbnz w8,0x02c17f2c
02c17f18  adrp x0,0x5e58000
02c17f1c  ldr x0,[x0, #0xbf8]
02c17f20  bl 0x029f5a50
02c17f24  mov w8,#0x1
02c17f28  strb w8,[x21, #0x279]
02c17f2c  cbz x20,0x02c17f80
02c17f30  adrp x8,0x5e58000
02c17f34  mov x0,x20
02c17f38  mov x1,xzr
02c17f3c  ldr x8,[x8, #0xbf8]
02c17f40  ldr x8,[x8]
02c17f44  ldr x8,[x8, #0xb8]
02c17f48  ldp s1,s0,[x8, #0x10]
02c17f4c  ldr s3,[x8, #0xc]
02c17f50  fmul s2,s0,s8
02c17f54  fmul s1,s1,s8
02c17f58  fmul s0,s3,s8
02c17f5c  bl 0x057ef654
02c17f60  mov x0,x19
02c17f64  ldp x20,x19,[sp, #0x30]
02c17f68  ldp x30,x21,[sp, #0x20]
02c17f6c  mov w1,#0x1
02c17f70  ldp d9,d8,[sp, #0x10]
02c17f74  mov x2,xzr
02c17f78  ldp d11,d10,[sp], #0x40
02c17f7c  b 0x057dff3c
02c17f80  bl 0x029f5cfc
