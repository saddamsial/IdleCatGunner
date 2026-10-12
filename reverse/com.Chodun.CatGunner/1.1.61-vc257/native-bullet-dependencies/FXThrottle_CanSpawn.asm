02c66e60  sub sp,sp,#0x50
02c66e64  str d8,[sp, #0x20]
02c66e68  str x30,[sp, #0x28]
02c66e6c  stp x22,x21,[sp, #0x30]
02c66e70  stp x20,x19,[sp, #0x40]
02c66e74  fmov s8,s2
02c66e78  stp q0,q1,[sp]
02c66e7c  adrp x20,0x625c000
02c66e80  adrp x21,0x5e63000
02c66e84  ldrb w8,[x20, #0x258]
02c66e88  mov w19,w0
02c66e8c  ldr x21,[x21, #0x9f0]
02c66e90  tbnz w8,#0x0,0x02c66ea8
02c66e94  adrp x0,0x5e63000
02c66e98  ldr x0,[x0, #0x9f0]
02c66e9c  bl 0x029f5a50
02c66ea0  mov w8,#0x1
02c66ea4  strb w8,[x20, #0x258]
02c66ea8  mov x0,xzr
02c66eac  bl 0x057d901c
02c66eb0  ldr x8,[x21]
02c66eb4  mov w20,w0
02c66eb8  ldr w9,[x8, #0xe4]
02c66ebc  cbnz w9,0x02c66ecc
02c66ec0  mov x0,x8
02c66ec4  bl 0x029f5bd0
02c66ec8  ldr x8,[x21]
02c66ecc  ldr x9,[x8, #0xb8]
02c66ed0  ldr w10,[x9, #0x8]
02c66ed4  cmp w20,w10
02c66ed8  b.eq 0x02c66ef8
02c66edc  ldr w10,[x8, #0xe4]
02c66ee0  cbnz w10,0x02c66ef4
02c66ee4  mov x0,x8
02c66ee8  bl 0x029f5bd0
02c66eec  ldr x8,[x21]
02c66ef0  ldr x9,[x8, #0xb8]
02c66ef4  stp w20,wzr,[x9, #0x8]
02c66ef8  ldr w9,[x8, #0xe4]
02c66efc  cbnz w9,0x02c66f0c
02c66f00  mov x0,x8
02c66f04  bl 0x029f5bd0
02c66f08  ldr x8,[x21]
02c66f0c  ldr x9,[x8, #0xb8]
02c66f10  ldr w10,[x9, #0xc]
02c66f14  cmp w10,#0x2
02c66f18  b.gt 0x02c66fb0
02c66f1c  ldr w10,[x8, #0xe4]
02c66f20  cbnz w10,0x02c66f34
02c66f24  mov x0,x8
02c66f28  bl 0x029f5bd0
02c66f2c  ldr x8,[x21]
02c66f30  ldr x9,[x8, #0xb8]
02c66f34  ldr x8,[x9]
02c66f38  cbz x8,0x02c67004
02c66f3c  ldr w9,[x8, #0x18]
02c66f40  cmp w9,w19
02c66f44  b.ls 0x02c67008
02c66f48  add x20,x8,#0x20
02c66f4c  mov x0,xzr
02c66f50  sxtw x22,w19
02c66f54  add x19,x20,w19, SXTW  #0x4
02c66f58  bl 0x057eb9ec
02c66f5c  ldr s1,[x19]
02c66f60  adrp x8,0x116c000
02c66f64  ldr s2,[x8, #0x94]
02c66f68  ldp q4,q3,[sp]
02c66f6c  fsub s1,s0,s1
02c66f70  add x8,x20,x22, LSL #0x4
02c66f74  fcmp s1,s2
02c66f78  b.pl 0x02c66fb8
02c66f7c  mov v1.16B,v4.16B
02c66f80  ldur d2,[x8, #0x4]
02c66f84  mov v1.S[0x1],v3.S[0x0]
02c66f88  fsub v1.2S,v1.2S,v2.2S
02c66f8c  ldr s2,[x8, #0xc]
02c66f90  fsub s2,s8,s2
02c66f94  fmul v1.2S,v1.2S,v1.2S
02c66f98  fmul s2,s2,s2
02c66f9c  faddp s1,v1.2S
02c66fa0  fadd s1,s1,s2
02c66fa4  fmov s2,0x40100000
02c66fa8  fcmp s1,s2
02c66fac  b.pl 0x02c66fb8
02c66fb0  mov w0,wzr
02c66fb4  b 0x02c66fec
02c66fb8  stp s4,s3,[x8, #0x4]
02c66fbc  str s8,[x8, #0xc]
02c66fc0  ldr x0,[x21]
02c66fc4  str s0,[x19]
02c66fc8  ldr w8,[x0, #0xe4]
02c66fcc  cbnz w8,0x02c66fd8
02c66fd0  bl 0x029f5bd0
02c66fd4  ldr x0,[x21]
02c66fd8  ldr x8,[x0, #0xb8]
02c66fdc  mov w0,#0x1
02c66fe0  ldr w9,[x8, #0xc]
02c66fe4  add w9,w9,#0x1
02c66fe8  str w9,[x8, #0xc]
02c66fec  ldp x20,x19,[sp, #0x40]
02c66ff0  ldr x30,[sp, #0x28]
02c66ff4  ldp x22,x21,[sp, #0x30]
02c66ff8  ldr d8,[sp, #0x20]
02c66ffc  add sp,sp,#0x50
02c67000  ret
02c67004  bl 0x029f5cfc
02c67008  bl 0x029f5d04
