02b9bf44  stp d13,d12,[sp, #-0x50]!
02b9bf48  stp d11,d10,[sp, #0x10]
02b9bf4c  stp d9,d8,[sp, #0x20]
02b9bf50  stp x30,x21,[sp, #0x30]
02b9bf54  stp x20,x19,[sp, #0x40]
02b9bf58  adrp x19,0x625b000
02b9bf5c  mov x20,x0
02b9bf60  ldrb w8,[x19, #0x9b9]
02b9bf64  tbnz w8,#0x0,0x02b9bf7c
02b9bf68  adrp x0,0x5e5e000
02b9bf6c  ldr x0,[x0, #0x368]
02b9bf70  bl 0x029f5a50
02b9bf74  mov w8,#0x1
02b9bf78  strb w8,[x19, #0x9b9]
02b9bf7c  ldr w21,[x20, #0x10]
02b9bf80  cbz w21,0x02b9c000
02b9bf84  cmp w21,#0x1
02b9bf88  b.ne 0x02b9c0d0
02b9bf8c  ldr x19,[x20, #0x20]
02b9bf90  mov w8,#0xffffffff
02b9bf94  str w8,[x20, #0x10]
02b9bf98  cbz x19,0x02b9c0f0
02b9bf9c  ldr s8,[x19, #0x20]
02b9bfa0  mov x0,xzr
02b9bfa4  bl 0x057ebabc
02b9bfa8  fadd s9,s8,s0
02b9bfac  ldrb w8,[x19, #0x3c]
02b9bfb0  str s9,[x19, #0x20]
02b9bfb4  cbz w8,0x02b9c0d0
02b9bfb8  fmov s1,0x3f000000
02b9bfbc  ldr s0,[x19, #0x34]
02b9bfc0  fmul s1,s0,s1
02b9bfc4  fcmp s9,s1
02b9bfc8  b.ls 0x02b9c024
02b9bfcc  fcmp s9,s0
02b9bfd0  b.ls 0x02b9c050
02b9bfd4  mov x0,x19
02b9bfd8  mov x1,xzr
02b9bfdc  str wzr,[x19, #0x20]
02b9bfe0  strb wzr,[x19, #0x3c]
02b9bfe4  bl 0x057dc0f8
02b9bfe8  cbz x0,0x02b9c0f0
02b9bfec  ldp s1,s2,[x19, #0x44]
02b9bff0  mov x1,xzr
02b9bff4  ldr s0,[x19, #0x40]
02b9bff8  bl 0x057ef654
02b9bffc  b 0x02b9c0d0
02b9c000  str xzr,[x20, #0x18]!
02b9c004  mov w8,#0xffffffff
02b9c008  mov x0,x20
02b9c00c  mov x1,xzr
02b9c010  stur w8,[x20, #-0x8]
02b9c014  bl 0x029f59f4
02b9c018  mov w8,#0x1
02b9c01c  stur w8,[x20, #-0x8]
02b9c020  b 0x02b9c0d0
02b9c024  ldr s10,[x19, #0x48]
02b9c028  ldr d8,[x19, #0x40]
02b9c02c  mov x0,x19
02b9c030  ldur d11,[x19, #0x24]
02b9c034  ldr s12,[x19, #0x2c]
02b9c038  mov x1,xzr
02b9c03c  ldr s13,[x19, #0x38]
02b9c040  bl 0x057dc0f8
02b9c044  cbz x0,0x02b9c0f0
02b9c048  fdiv s0,s9,s13
02b9c04c  b 0x02b9c07c
02b9c050  ldr s10,[x19, #0x2c]
02b9c054  ldur d8,[x19, #0x24]
02b9c058  mov x0,x19
02b9c05c  ldr d11,[x19, #0x40]
02b9c060  ldr s12,[x19, #0x48]
02b9c064  mov x1,xzr
02b9c068  ldr s13,[x19, #0x38]
02b9c06c  bl 0x057dc0f8
02b9c070  cbz x0,0x02b9c0f0
02b9c074  fsub s0,s9,s13
02b9c078  fdiv s0,s0,s13
02b9c07c  fmov s1,0x3f800000
02b9c080  movi d2,#0x0
02b9c084  mov x1,xzr
02b9c088  fsub s3,s12,s10
02b9c08c  fcmp s0,s1
02b9c090  fcsel s1,s1,s0,gt
02b9c094  fcmp s0,#0.0
02b9c098  fcsel s0,s2,s1,mi
02b9c09c  fmul s1,s3,s0
02b9c0a0  fadd s2,s10,s1
02b9c0a4  fsub v1.2S,v11.2S,v8.2S
02b9c0a8  fmul v0.2S,v1.2S,v0.S[0x0]
02b9c0ac  fadd v0.2S,v8.2S,v0.2S
02b9c0b0  dup s1,v0.S[0x1]
02b9c0b4  bl 0x057ef654
02b9c0b8  adrp x8,0x5e5e000
02b9c0bc  mov x0,x19
02b9c0c0  mov x2,xzr
02b9c0c4  ldr x8,[x8, #0x368]
02b9c0c8  ldr x1,[x8]
02b9c0cc  bl 0x057e1df4
02b9c0d0  cmp w21,#0x0
02b9c0d4  ldp x20,x19,[sp, #0x40]
02b9c0d8  ldp x30,x21,[sp, #0x30]
02b9c0dc  cset w0,eq
02b9c0e0  ldp d9,d8,[sp, #0x20]
02b9c0e4  ldp d11,d10,[sp, #0x10]
02b9c0e8  ldp d13,d12,[sp], #0x50
02b9c0ec  ret
02b9c0f0  bl 0x029f5cfc
