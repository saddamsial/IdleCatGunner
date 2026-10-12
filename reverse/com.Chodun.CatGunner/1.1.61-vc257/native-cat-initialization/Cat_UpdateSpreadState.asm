02c3bf38  str d10,[sp, #-0x40]!
02c3bf3c  stp d9,d8,[sp, #0x8]
02c3bf40  str x30,[sp, #0x18]
02c3bf44  stp x22,x21,[sp, #0x20]
02c3bf48  stp x20,x19,[sp, #0x30]
02c3bf4c  adrp x21,0x625c000
02c3bf50  adrp x20,0x5e59000
02c3bf54  mov x19,x0
02c3bf58  ldrb w8,[x21, #0x91]
02c3bf5c  ldr x20,[x20, #0x1c0]
02c3bf60  tbnz w8,#0x0,0x02c3bf78
02c3bf64  adrp x0,0x5e59000
02c3bf68  ldr x0,[x0, #0x1c0]
02c3bf6c  bl 0x029f5a50
02c3bf70  mov w8,#0x1
02c3bf74  strb w8,[x21, #0x91]
02c3bf78  ldr x0,[x20]
02c3bf7c  ldr x20,[x19, #0x1e0]
02c3bf80  ldr w8,[x0, #0xe4]
02c3bf84  cbnz w8,0x02c3bf8c
02c3bf88  bl 0x029f5bd0
02c3bf8c  mov x0,x20
02c3bf90  mov x1,xzr
02c3bf94  mov x2,xzr
02c3bf98  bl 0x057dfa70
02c3bf9c  adrp x22,0x116c000
02c3bfa0  and w8,w0,#0x1
02c3bfa4  adrp x21,0x116c000
02c3bfa8  adrp x20,0x116b000
02c3bfac  tbz w0,#0x0,0x02c3bfc0
02c3bfb0  ldrb w9,[x19, #0x140]
02c3bfb4  cbz w9,0x02c3c070
02c3bfb8  ldr s8,[x19, #0x13c]
02c3bfbc  b 0x02c3c07c
02c3bfc0  ldr s8,[x19, #0x13c]
02c3bfc4  strb w8,[x19, #0x140]
02c3bfc8  fcmp s8,#0.0
02c3bfcc  b.le 0x02c3c080
02c3bfd0  ldr s0,[x19, #0xb0]
02c3bfd4  ldr s1,[x22, #0x94]
02c3bfd8  fmaxnm s0,s0,s1
02c3bfdc  bl 0x05afb2d0
02c3bfe0  ldr s1,[x21, #0x118]
02c3bfe4  movi d9,#0x0
02c3bfe8  ldr s3,[x19, #0x130]
02c3bfec  mov x0,xzr
02c3bff0  fadd s0,s0,s1
02c3bff4  ldr s1,[x20, #0xf14]
02c3bff8  fdiv s0,s0,s1
02c3bffc  fmov s1,0x3f800000
02c3c000  fcmp s0,s1
02c3c004  fcsel s2,s1,s0,gt
02c3c008  fcmp s0,#0.0
02c3c00c  fsub s2,s1,s2
02c3c010  fcsel s0,s1,s2,mi
02c3c014  fcmp s0,s1
02c3c018  fcsel s2,s1,s0,gt
02c3c01c  fcmp s0,#0.0
02c3c020  ldr s0,[x19, #0x12c]
02c3c024  fsub s3,s3,s0
02c3c028  fcsel s2,s9,s2,mi
02c3c02c  fmul s2,s3,s2
02c3c030  fadd s0,s0,s2
02c3c034  fmaxnm s0,s0,s1
02c3c038  ldr s1,[x19, #0x138]
02c3c03c  fmul s10,s1,s0
02c3c040  bl 0x057ebabc
02c3c044  fsub s1,s9,s8
02c3c048  fmul s2,s0,s10
02c3c04c  fnmul s0,s0,s10
02c3c050  fcmp s1,#0.0
02c3c054  fabd s1,s9,s8
02c3c058  fcsel s0,s0,s2,lt
02c3c05c  fcmp s1,s2
02c3c060  fadd s0,s8,s0
02c3c064  fcsel s8,s0,s9,hi
02c3c068  str s8,[x19, #0x13c]
02c3c06c  b 0x02c3c080
02c3c070  movi d8,#0x0
02c3c074  str wzr,[x19, #0x13c]
02c3c078  str wzr,[x19, #0xac]
02c3c07c  strb w8,[x19, #0x140]
02c3c080  ldr s0,[x19, #0xb0]
02c3c084  ldr s1,[x22, #0x94]
02c3c088  str s8,[x19, #0x144]
02c3c08c  fmaxnm s0,s0,s1
02c3c090  bl 0x05afb2d0
02c3c094  ldr s1,[x21, #0x118]
02c3c098  ldr s3,[x19, #0x130]
02c3c09c  ldr x30,[sp, #0x18]
02c3c0a0  ldp x22,x21,[sp, #0x20]
02c3c0a4  fadd s0,s0,s1
02c3c0a8  ldr s1,[x20, #0xf14]
02c3c0ac  ldp d9,d8,[sp, #0x8]
02c3c0b0  fdiv s0,s0,s1
02c3c0b4  fmov s1,0x3f800000
02c3c0b8  fcmp s0,s1
02c3c0bc  fcsel s2,s1,s0,gt
02c3c0c0  fcmp s0,#0.0
02c3c0c4  fsub s2,s1,s2
02c3c0c8  fcsel s0,s1,s2,mi
02c3c0cc  movi d2,#0x0
02c3c0d0  fcmp s0,s1
02c3c0d4  fcsel s1,s1,s0,gt
02c3c0d8  fcmp s0,#0.0
02c3c0dc  ldr s0,[x19, #0x12c]
02c3c0e0  fcsel s1,s2,s1,mi
02c3c0e4  fsub s2,s3,s0
02c3c0e8  fmul s1,s2,s1
02c3c0ec  fadd s0,s0,s1
02c3c0f0  str s0,[x19, #0x148]
02c3c0f4  ldp x20,x19,[sp, #0x30]
02c3c0f8  ldr d10,[sp], #0x40
02c3c0fc  ret
