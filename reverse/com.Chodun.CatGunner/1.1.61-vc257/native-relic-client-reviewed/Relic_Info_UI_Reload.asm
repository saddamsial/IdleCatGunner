02c310cc  sub sp,sp,#0x80
02c310d0  str x30,[sp, #0x20]
02c310d4  stp x28,x27,[sp, #0x30]
02c310d8  stp x26,x25,[sp, #0x40]
02c310dc  stp x24,x23,[sp, #0x50]
02c310e0  stp x22,x21,[sp, #0x60]
02c310e4  stp x20,x19,[sp, #0x70]
02c310e8  adrp x21,0x625c000
02c310ec  mov x20,x1
02c310f0  mov x19,x0
02c310f4  ldrb w8,[x21, #0x39]
02c310f8  tbnz w8,#0x0,0x02c31140
02c310fc  adrp x0,0x5e5d000
02c31100  ldr x0,[x0, #0x4d8]
02c31104  bl 0x029f5a50
02c31108  adrp x0,0x5e61000
02c3110c  ldr x0,[x0, #0xf18]
02c31110  bl 0x029f5a50
02c31114  adrp x0,0x5e63000
02c31118  ldr x0,[x0, #0x80]
02c3111c  bl 0x029f5a50
02c31120  adrp x0,0x5e61000
02c31124  ldr x0,[x0, #0xf28]
02c31128  bl 0x029f5a50
02c3112c  adrp x0,0x5e63000
02c31130  ldr x0,[x0, #0x88]
02c31134  bl 0x029f5a50
02c31138  mov w8,#0x1
02c3113c  strb w8,[x21, #0x39]
02c31140  movi v0.2D,#0x0
02c31144  mov x21,x19
02c31148  mov x1,x20
02c3114c  str x20,[x21, #0x20]!
02c31150  mov x0,x21
02c31154  stp q0,q0,[sp]
02c31158  bl 0x029f59f4
02c3115c  ldr x0,[x21, #0x8]
02c31160  cbz x0,0x02c31428
02c31164  mov x1,x20
02c31168  bl 0x02c30f64
02c3116c  cbz x20,0x02c31428
02c31170  adrp x23,0x5e5d000
02c31174  adrp x28,0x5e61000
02c31178  ldr x23,[x23, #0x4d8]
02c3117c  ldr x0,[x23]
02c31180  ldr x28,[x28, #0xf18]
02c31184  ldr w22,[x20, #0x18]
02c31188  ldr w26,[x20, #0x10]
02c3118c  ldr w8,[x0, #0xe4]
02c31190  cbz w8,0x02c3119c
02c31194  mov w8,w22
02c31198  b 0x02c311a4
02c3119c  bl 0x029f5bd0
02c311a0  ldr w8,[x20, #0x18]
02c311a4  lsl w9,w8,#0x1
02c311a8  adrp x25,0x5e58000
02c311ac  mov w27,#0x32
02c311b0  ldr x25,[x25, #0xa10]
02c311b4  mov w10,#0x2
02c311b8  ldr x21,[x19, #0x38]
02c311bc  add w9,w9,#0x2
02c311c0  add w8,w8,#0x1
02c311c4  add x1,sp,#0x2c
02c311c8  cmp w9,#0x32
02c311cc  ldr x0,[x25, #0x48]
02c311d0  str w8,[sp, #0x2c]
02c311d4  csel w9,w9,w27,lt
02c311d8  cmp w9,#0x2
02c311dc  csel w24,w9,w10,gt
02c311e0  bl 0x029f5bd8
02c311e4  ldr x8,[x28]
02c311e8  mov x1,x0
02c311ec  mov x2,xzr
02c311f0  mov x0,x8
02c311f4  bl 0x046b6c0c
02c311f8  cbz x21,0x02c31428
02c311fc  ldr x8,[x21]
02c31200  mov x1,x0
02c31204  cmp w26,#0x9
02c31208  mov w9,#0x12c
02c3120c  mov x0,x21
02c31210  ldr x10,[x8, #0x558]
02c31214  ldr x2,[x8, #0x560]
02c31218  csel w26,w9,w27,cc
02c3121c  blr x10
02c31220  ldr x21,[x19, #0x40]
02c31224  cmp w22,w26
02c31228  b.ge 0x02c312d4
02c3122c  ldr w8,[x20, #0x1c]
02c31230  ldr x0,[x25, #0x48]
02c31234  add x1,sp,#0x2c
02c31238  str w8,[sp, #0x2c]
02c3123c  bl 0x029f5bd8
02c31240  mov x22,x0
02c31244  ldr x0,[x25, #0x48]
02c31248  add x1,sp,#0x28
02c3124c  str w24,[sp, #0x28]
02c31250  bl 0x029f5bd8
02c31254  adrp x8,0x5e61000
02c31258  mov x2,x0
02c3125c  mov x1,x22
02c31260  ldr x8,[x8, #0xf28]
02c31264  mov x3,xzr
02c31268  ldr x8,[x8]
02c3126c  mov x0,x8
02c31270  bl 0x046c1d14
02c31274  cbz x21,0x02c31428
02c31278  ldr x8,[x21]
02c3127c  mov x1,x0
02c31280  mov x0,x21
02c31284  ldr x9,[x8, #0x558]
02c31288  ldr x2,[x8, #0x560]
02c3128c  blr x9
02c31290  ldr x0,[x19, #0x50]
02c31294  cbz x0,0x02c31428
02c31298  ldr s0,[x20, #0x1c]
02c3129c  scvtf s1,w24
02c312a0  mov x1,xzr
02c312a4  scvtf s0,s0
02c312a8  fdiv s0,s0,s1
02c312ac  bl 0x02c28290
02c312b0  ldr w8,[x20, #0x1c]
02c312b4  ldr x0,[x19, #0x58]
02c312b8  cmp w8,w24
02c312bc  b.lt 0x02c31310
02c312c0  add x8,x19,#0x60
02c312c4  add x9,x19,#0x64
02c312c8  add x10,x19,#0x68
02c312cc  add x11,x19,#0x6c
02c312d0  b 0x02c31320
02c312d4  cbz x21,0x02c31428
02c312d8  adrp x8,0x5e63000
02c312dc  mov x0,x21
02c312e0  ldr x8,[x8, #0x80]
02c312e4  ldr x9,[x21]
02c312e8  ldr x1,[x8]
02c312ec  ldr x8,[x9, #0x558]
02c312f0  ldr x2,[x9, #0x560]
02c312f4  blr x8
02c312f8  ldr x0,[x19, #0x50]
02c312fc  cbz x0,0x02c31428
02c31300  fmov s0,0x3f800000
02c31304  mov x1,xzr
02c31308  bl 0x02c28290
02c3130c  ldr x0,[x19, #0x58]
02c31310  add x8,x19,#0x70
02c31314  add x9,x19,#0x74
02c31318  add x10,x19,#0x78
02c3131c  add x11,x19,#0x7c
02c31320  cbz x0,0x02c31428
02c31324  adrp x24,0x5e63000
02c31328  ldr x24,[x24, #0x88]
02c3132c  ldr x12,[x0]
02c31330  ldr s3,[x11]
02c31334  ldr s2,[x10]
02c31338  ldr s1,[x9]
02c3133c  ldr s0,[x8]
02c31340  ldr x8,[x12, #0x2a8]
02c31344  ldr x1,[x12, #0x2b0]
02c31348  blr x8
02c3134c  ldr x0,[x23]
02c31350  ldr x21,[x19, #0x48]
02c31354  ldr w8,[x0, #0xe4]
02c31358  cbnz w8,0x02c31360
02c3135c  bl 0x029f5bd0
02c31360  mov x0,x20
02c31364  bl 0x02c31464
02c31368  mov x22,x0
02c3136c  mov x8,sp
02c31370  mov x0,x20
02c31374  bl 0x02c3156c
02c31378  mov x0,sp
02c3137c  mov x1,xzr
02c31380  bl 0x0465bddc
02c31384  ldr x8,[x24]
02c31388  mov x1,x0
02c3138c  mov x2,xzr
02c31390  mov x0,x8
02c31394  bl 0x046b2d44
02c31398  mov x1,x0
02c3139c  mov x0,x22
02c313a0  mov x2,xzr
02c313a4  bl 0x046b6c0c
02c313a8  cbz x21,0x02c31428
02c313ac  ldr x8,[x21]
02c313b0  mov x1,x0
02c313b4  mov x0,x21
02c313b8  ldr x9,[x8, #0x558]
02c313bc  ldr x2,[x8, #0x560]
02c313c0  blr x9
02c313c4  ldr x21,[x19, #0x30]
02c313c8  mov x0,x20
02c313cc  bl 0x02c318d0
02c313d0  cbz x21,0x02c31428
02c313d4  ldr x8,[x21]
02c313d8  mov x1,x0
02c313dc  mov x0,x21
02c313e0  ldr x9,[x8, #0x558]
02c313e4  ldr x2,[x8, #0x560]
02c313e8  blr x9
02c313ec  mov x0,x19
02c313f0  mov x1,xzr
02c313f4  bl 0x057dc1c8
02c313f8  cbz x0,0x02c31428
02c313fc  mov w1,#0x1
02c31400  mov x2,xzr
02c31404  bl 0x057dff3c
02c31408  ldp x20,x19,[sp, #0x70]
02c3140c  ldr x30,[sp, #0x20]
02c31410  ldp x22,x21,[sp, #0x60]
02c31414  ldp x24,x23,[sp, #0x50]
02c31418  ldp x26,x25,[sp, #0x40]
02c3141c  ldp x28,x27,[sp, #0x30]
02c31420  add sp,sp,#0x80
02c31424  ret
02c31428  bl 0x029f5cfc
