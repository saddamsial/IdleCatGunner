02c4fe54  sub sp,sp,#0x50
02c4fe58  stp d13,d12,[sp, #0x10]
02c4fe5c  stp d11,d10,[sp, #0x20]
02c4fe60  stp d9,d8,[sp, #0x30]
02c4fe64  stp x30,x19,[sp, #0x40]
02c4fe68  mov x19,x0
02c4fe6c  mov x0,xzr
02c4fe70  bl 0x05797adc
02c4fe74  cbz x0,0x02c4ff48
02c4fe78  mov x1,xzr
02c4fe7c  bl 0x05795c44
02c4fe80  mov w8,#0x42700000
02c4fe84  fmov s1,0x41f00000
02c4fe88  mov x0,xzr
02c4fe8c  fmov s8,w8
02c4fe90  adrp x8,0x116b000
02c4fe94  movi d10,#0x0
02c4fe98  fmul s0,s0,s8
02c4fe9c  fcmp s0,s8
02c4fea0  fcsel s2,s8,s0,gt
02c4fea4  fcmp s0,s1
02c4fea8  movi d0,#0x0
02c4feac  fcsel s9,s1,s2,mi
02c4feb0  ldr s1,[x8, #0xe60]
02c4feb4  bl 0x057d55d4
02c4feb8  add x0,sp,#0xc
02c4febc  add x1,sp,#0x8
02c4fec0  bl 0x05afb270
02c4fec4  ldp s12,s11,[sp, #0x8]
02c4fec8  mov x0,xzr
02c4fecc  fmul s0,s12,s8
02c4fed0  fmul s1,s11,s9
02c4fed4  fmul s0,s0,s0
02c4fed8  fmul s1,s1,s1
02c4fedc  fadd s0,s0,s1
02c4fee0  fmov s1,0x40a00000
02c4fee4  fsqrt s13,s0
02c4fee8  fmov s0,0xc0a00000
02c4feec  bl 0x057d55d4
02c4fef0  fmul s1,s9,s8
02c4fef4  adrp x8,0x116b000
02c4fef8  ldr s4,[x19, #0xf0]
02c4fefc  ldr s2,[x8, #0xf1c]
02c4ff00  ldp d9,d8,[sp, #0x30]
02c4ff04  fdiv s1,s1,s13
02c4ff08  fadd s0,s0,s1
02c4ff0c  fmul s1,s12,s0
02c4ff10  fmul s0,s11,s0
02c4ff14  ldp d13,d12,[sp, #0x10]
02c4ff18  fmul s1,s1,s2
02c4ff1c  fmul s0,s0,s2
02c4ff20  fsub s2,s1,s0
02c4ff24  fadd s3,s1,s0
02c4ff28  ldp s0,s1,[x19, #0xe8]
02c4ff2c  ldp x30,x19,[sp, #0x40]
02c4ff30  fadd s1,s1,s10
02c4ff34  ldp d11,d10,[sp, #0x20]
02c4ff38  fadd s0,s0,s2
02c4ff3c  fadd s2,s4,s3
02c4ff40  add sp,sp,#0x50
02c4ff44  ret
02c4ff48  bl 0x029f5cfc
