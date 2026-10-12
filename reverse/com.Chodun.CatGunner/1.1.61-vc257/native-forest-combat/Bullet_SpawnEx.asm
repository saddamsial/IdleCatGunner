02c655a8  sub sp,sp,#0xb0
02c655ac  stp d15,d14,[sp, #0x20]
02c655b0  stp d13,d12,[sp, #0x30]
02c655b4  stp d11,d10,[sp, #0x40]
02c655b8  stp d9,d8,[sp, #0x50]
02c655bc  stp x30,x27,[sp, #0x60]
02c655c0  stp x26,x25,[sp, #0x70]
02c655c4  stp x24,x23,[sp, #0x80]
02c655c8  stp x22,x21,[sp, #0x90]
02c655cc  stp x20,x19,[sp, #0xa0]
02c655d0  fmov s8,s7
02c655d4  fmov s15,s6
02c655d8  adrp x27,0x625c000
02c655dc  fmov s9,s5
02c655e0  fmov s10,s4
02c655e4  adrp x26,0x5e63000
02c655e8  fmov s11,s3
02c655ec  fmov s12,s2
02c655f0  ldrb w8,[x27, #0x24a]
02c655f4  fmov s13,s1
02c655f8  fmov s14,s0
02c655fc  ldr x26,[x26, #0x9d0]
02c65600  mov x22,x6
02c65604  mov w24,w5
02c65608  mov w21,w4
02c6560c  mov x19,x3
02c65610  mov x23,x2
02c65614  mov w25,w1
02c65618  mov x20,x0
02c6561c  tbnz w8,#0x0,0x02c65634
02c65620  adrp x0,0x5e63000
02c65624  ldr x0,[x0, #0x9d0]
02c65628  bl 0x029f5a50
02c6562c  mov w8,#0x1
02c65630  strb w8,[x27, #0x24a]
02c65634  mov x0,x20
02c65638  mov w1,w25
02c6563c  bl 0x02c652f8
02c65640  mov x0,x20
02c65644  mov w1,w25
02c65648  bl 0x02c653ac
02c6564c  mov x0,x20
02c65650  bl 0x02c656f0
02c65654  str w24,[x20, #0x98]
02c65658  fmov s2,s12
02c6565c  fmov s3,s11
02c65660  str s15,[x20, #0x9c]
02c65664  fmov s4,s10
02c65668  fmov s5,s9
02c6566c  str w22,[x20, #0xa0]
02c65670  mov x1,sp
02c65674  and w3,w21,#0x1
02c65678  ldp q0,q1,[x23]
02c6567c  mov x0,x20
02c65680  mov x2,x19
02c65684  stp q0,q1,[sp]
02c65688  fmov s0,s14
02c6568c  fmov s1,s13
02c65690  bl 0x02c657d0
02c65694  adrp x8,0x116c000
02c65698  ldr s0,[x20, #0x50]
02c6569c  ldr x1,[x26]
02c656a0  ldr s1,[x8, #0x174]
02c656a4  mov w8,#0x42480000
02c656a8  mov x0,x20
02c656ac  ldp x20,x19,[sp, #0xa0]
02c656b0  mov x2,xzr
02c656b4  fmaxnm s0,s0,s1
02c656b8  fmov s1,w8
02c656bc  ldp x22,x21,[sp, #0x90]
02c656c0  ldp x24,x23,[sp, #0x80]
02c656c4  ldp x26,x25,[sp, #0x70]
02c656c8  fdiv s0,s1,s0
02c656cc  ldp x30,x27,[sp, #0x60]
02c656d0  ldp d11,d10,[sp, #0x40]
02c656d4  ldp d13,d12,[sp, #0x30]
02c656d8  ldp d15,d14,[sp, #0x20]
02c656dc  fcmp s0,s8
02c656e0  fcsel s0,s8,s0,gt
02c656e4  ldp d9,d8,[sp, #0x50]
02c656e8  add sp,sp,#0xb0
02c656ec  b 0x057e1774
