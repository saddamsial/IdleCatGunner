02c29820  sub sp,sp,#0x40
02c29824  stp d11,d10,[sp, #0x10]
02c29828  stp d9,d8,[sp, #0x20]
02c2982c  stp x30,x19,[sp, #0x30]
02c29830  mov x1,xzr
02c29834  fmov s9,s7
02c29838  fmov s10,s6
02c2983c  fmov s8,s1
02c29840  fmov s11,s0
02c29844  stp s3,s2,[sp, #0x8]
02c29848  bl 0x058dba10
02c2984c  cbz x0,0x02c299a4
02c29850  mov x1,xzr
02c29854  bl 0x057ed9fc
02c29858  fdiv s0,s9,s3
02c2985c  mov w8,#0x2
02c29860  mov w14,#0x1
02c29864  add x9,sp,#0xc
02c29868  add x10,sp,#0x8
02c2986c  mov w11,#0x3
02c29870  mov w13,#0x2
02c29874  fdiv s1,s10,s2
02c29878  tst w14,#0x1
02c2987c  mov w12,w14
02c29880  fcsel s4,s2,s3,ne
02c29884  fcmp s4,#0.0
02c29888  b.eq 0x02c298bc
02c2988c  ands w13,w12,#0x1
02c29890  fmul s5,s1,s11
02c29894  fmul s6,s0,s8
02c29898  fcsel s4,s1,s0,ne
02c2989c  cmp w13,#0x0
02c298a0  csel x14,x9,x10,ne
02c298a4  csel w13,w8,w11,ne
02c298a8  ldr s7,[x14]
02c298ac  fcsel s8,s8,s6,ne
02c298b0  fcsel s11,s5,s11,ne
02c298b4  fmul s4,s4,s7
02c298b8  str s4,[x14]
02c298bc  tst w12,#0x1
02c298c0  fcsel s4,s11,s8,ne
02c298c4  cmp w13,#0x2
02c298c8  b.eq 0x02c298dc
02c298cc  cmp w13,#0x3
02c298d0  b.ne 0x02c2995c
02c298d4  add x13,sp,#0x8
02c298d8  b 0x02c298e0
02c298dc  add x13,sp,#0xc
02c298e0  ldr s5,[x13]
02c298e4  tst w12,#0x1
02c298e8  fadd s4,s4,s5
02c298ec  fcsel s5,s10,s9,ne
02c298f0  fcmp s5,s4
02c298f4  b.pl 0x02c29930
02c298f8  fcmp s4,#0.0
02c298fc  b.eq 0x02c29930
02c29900  tbz w12,#0x0,0x02c29918
02c29904  fdiv s4,s10,s4
02c29908  ldr s5,[sp, #0xc]
02c2990c  add x13,sp,#0xc
02c29910  fmul s11,s4,s11
02c29914  b 0x02c29928
02c29918  fdiv s4,s9,s4
02c2991c  ldr s5,[sp, #0x8]
02c29920  add x13,sp,#0x8
02c29924  fmul s8,s4,s8
02c29928  fmul s4,s4,s5
02c2992c  str s4,[x13]
02c29930  mov w14,wzr
02c29934  mov w13,#0x3
02c29938  tbnz w12,#0x0,0x02c29878
02c2993c  ldp s3,s2,[sp, #0x8]
02c29940  fmov s0,s11
02c29944  fmov s1,s8
02c29948  ldp x30,x19,[sp, #0x30]
02c2994c  ldp d9,d8,[sp, #0x20]
02c29950  ldp d11,d10,[sp, #0x10]
02c29954  add sp,sp,#0x40
02c29958  ret
02c2995c  adrp x0,0x5e5a000
02c29960  ldr x0,[x0, #0x220]
02c29964  bl 0x029f5a64
02c29968  bl 0x029f5cec
02c2996c  mov x19,x0
02c29970  adrp x0,0x5e62000
02c29974  ldr x0,[x0, #0xdc0]
02c29978  bl 0x029f5a64
02c2997c  mov x1,x0
02c29980  mov x0,x19
02c29984  mov x2,xzr
02c29988  bl 0x0484c5e0
02c2998c  adrp x0,0x5e62000
02c29990  ldr x0,[x0, #0xdc8]
02c29994  bl 0x029f5a64
02c29998  mov x1,x0
02c2999c  mov x0,x19
02c299a0  bl 0x029f5bc0
02c299a4  bl 0x029f5cfc
