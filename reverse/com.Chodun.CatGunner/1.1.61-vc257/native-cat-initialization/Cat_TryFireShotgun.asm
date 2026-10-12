02c41fbc  sub sp,sp,#0xd0
02c41fc0  stp d15,d14,[sp, #0x30]
02c41fc4  stp d13,d12,[sp, #0x40]
02c41fc8  stp d11,d10,[sp, #0x50]
02c41fcc  stp d9,d8,[sp, #0x60]
02c41fd0  str x30,[sp, #0x70]
02c41fd4  stp x28,x27,[sp, #0x80]
02c41fd8  stp x26,x25,[sp, #0x90]
02c41fdc  stp x24,x23,[sp, #0xa0]
02c41fe0  stp x22,x21,[sp, #0xb0]
02c41fe4  stp x20,x19,[sp, #0xc0]
02c41fe8  fmov s13,s0
02c41fec  adrp x23,0x625c000
02c41ff0  mov w19,w3
02c41ff4  ldrb w8,[x23, #0xb5]
02c41ff8  mov x20,x2
02c41ffc  mov x21,x1
02c42000  mov x22,x0
02c42004  stp s4,s5,[sp, #0x78]
02c42008  stp s2,s3,[sp, #0x8]
02c4200c  str s1,[sp, #0x4]
02c42010  tbnz w8,#0x0,0x02c42040
02c42014  adrp x0,0x5e62000
02c42018  ldr x0,[x0, #0x770]
02c4201c  bl 0x029f5a50
02c42020  adrp x0,0x5e59000
02c42024  ldr x0,[x0, #0x1c0]
02c42028  bl 0x029f5a50
02c4202c  adrp x0,0x5e62000
02c42030  ldr x0,[x0, #0x768]
02c42034  bl 0x029f5a50
02c42038  mov w8,#0x1
02c4203c  strb w8,[x23, #0xb5]
02c42040  ldr x8,[x22, #0x48]
02c42044  cbz x8,0x02c421b0
02c42048  adrp x25,0x5e62000
02c4204c  adrp x26,0x5e59000
02c42050  adrp x27,0x5e62000
02c42054  ldr x25,[x25, #0x768]
02c42058  ldr x26,[x26, #0x1c0]
02c4205c  ldr s14,[x8, #0x48]
02c42060  ldr x27,[x27, #0x770]
02c42064  ldr w8,[x8, #0x44]
02c42068  adrp x9,0x116c000
02c4206c  fneg s15,s14
02c42070  adrp x10,0x116c000
02c42074  ldr s12,[x9, #0x26c]
02c42078  cmp w8,#0x1
02c4207c  ldr s8,[x10, #0x218]
02c42080  mov w24,wzr
02c42084  csinc w28,w8,wzr,gt
02c42088  ldr x8,[x25]
02c4208c  ldr x8,[x8, #0xb8]
02c42090  ldr x0,[x8]
02c42094  cbz x0,0x02c421b0
02c42098  mov w1,wzr
02c4209c  mov x2,xzr
02c420a0  bl 0x02c17b80
02c420a4  ldr x8,[x26]
02c420a8  mov x23,x0
02c420ac  ldr w9,[x8, #0xe4]
02c420b0  cbnz w9,0x02c420bc
02c420b4  mov x0,x8
02c420b8  bl 0x029f5bd0
02c420bc  mov x0,x23
02c420c0  mov x1,xzr
02c420c4  mov x2,xzr
02c420c8  bl 0x057e14b4
02c420cc  tbnz w0,#0x0,0x02c42178
02c420d0  fmov s0,s15
02c420d4  fmov s1,s14
02c420d8  mov x0,xzr
02c420dc  bl 0x057d55d4
02c420e0  fmul s1,s0,s12
02c420e4  movi d0,#0x0
02c420e8  movi d2,#0x0
02c420ec  mov x0,xzr
02c420f0  bl 0x057cd67c
02c420f4  ldp s5,s6,[sp, #0x78]
02c420f8  mov x0,xzr
02c420fc  ldr s4,[sp, #0xc]
02c42100  bl 0x057cdb04
02c42104  cbz x23,0x02c421b0
02c42108  ldr x1,[x27]
02c4210c  mov x0,x23
02c42110  fmov s9,s0
02c42114  fmov s10,s1
02c42118  fmov s11,s2
02c4211c  bl 0x030a02b4
02c42120  cbz x0,0x02c421b0
02c42124  ldp q0,q1,[x21]
02c42128  movi d6,#0x0
02c4212c  fmov s3,s9
02c42130  fmov s4,s10
02c42134  fmov s5,s11
02c42138  fmov s7,s8
02c4213c  ldr w1,[x22, #0x40]
02c42140  ldr w6,[x22, #0xb4]
02c42144  stp q0,q1,[sp, #0x10]
02c42148  fmov s0,s13
02c4214c  add x2,sp,#0x10
02c42150  ldp s1,s2,[sp, #0x4]
02c42154  and w4,w19,#0x1
02c42158  mov x3,x20
02c4215c  mov w5,#0x3
02c42160  mov x7,xzr
02c42164  bl 0x02c655a8
02c42168  add w24,w24,#0x1
02c4216c  cmp w28,w24
02c42170  b.ne 0x02c42088
02c42174  mov w24,#0x1
02c42178  cmp w24,#0x0
02c4217c  ldp x20,x19,[sp, #0xc0]
02c42180  ldp x22,x21,[sp, #0xb0]
02c42184  cset w0,ne
02c42188  ldp x24,x23,[sp, #0xa0]
02c4218c  ldr x30,[sp, #0x70]
02c42190  ldp x26,x25,[sp, #0x90]
02c42194  ldp x28,x27,[sp, #0x80]
02c42198  ldp d9,d8,[sp, #0x60]
02c4219c  ldp d11,d10,[sp, #0x50]
02c421a0  ldp d13,d12,[sp, #0x40]
02c421a4  ldp d15,d14,[sp, #0x30]
02c421a8  add sp,sp,#0xd0
02c421ac  ret
02c421b0  bl 0x029f5cfc
