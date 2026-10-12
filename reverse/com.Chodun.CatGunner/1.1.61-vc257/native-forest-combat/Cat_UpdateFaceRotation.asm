02c3b64c  stp d15,d14,[sp, #-0x60]!
02c3b650  stp d13,d12,[sp, #0x10]
02c3b654  stp d11,d10,[sp, #0x20]
02c3b658  stp d9,d8,[sp, #0x30]
02c3b65c  stp x30,x21,[sp, #0x40]
02c3b660  stp x20,x19,[sp, #0x50]
02c3b664  adrp x20,0x625c000
02c3b668  adrp x21,0x5e59000
02c3b66c  mov x19,x0
02c3b670  ldrb w8,[x20, #0xb0]
02c3b674  ldr x21,[x21, #0x1c0]
02c3b678  tbnz w8,#0x0,0x02c3b69c
02c3b67c  adrp x0,0x5e63000
02c3b680  ldr x0,[x0, #0x1d8]
02c3b684  bl 0x029f5a50
02c3b688  adrp x0,0x5e59000
02c3b68c  ldr x0,[x0, #0x1c0]
02c3b690  bl 0x029f5a50
02c3b694  mov w8,#0x1
02c3b698  strb w8,[x20, #0xb0]
02c3b69c  ldr x0,[x21]
02c3b6a0  ldr x20,[x19, #0x1e0]
02c3b6a4  ldr w8,[x0, #0xe4]
02c3b6a8  cbnz w8,0x02c3b6b0
02c3b6ac  bl 0x029f5bd0
02c3b6b0  mov x0,x20
02c3b6b4  mov x1,xzr
02c3b6b8  mov x2,xzr
02c3b6bc  bl 0x057dfa70
02c3b6c0  tbz w0,#0x0,0x02c3b790
02c3b6c4  ldr s8,[x19, #0x1e8]
02c3b6c8  ldr s9,[x19, #0x1f0]
02c3b6cc  mov x0,x19
02c3b6d0  mov x1,xzr
02c3b6d4  bl 0x057dc0f8
02c3b6d8  cbz x0,0x02c3ba70
02c3b6dc  mov x1,xzr
02c3b6e0  bl 0x057eed98
02c3b6e4  fsub s13,s8,s0
02c3b6e8  fsub s12,s9,s2
02c3b6ec  adrp x8,0x116c000
02c3b6f0  fmul s0,s13,s13
02c3b6f4  fmul s1,s12,s12
02c3b6f8  fadd s14,s0,s1
02c3b6fc  ldr s0,[x8, #0x200]
02c3b700  fcmp s14,s0
02c3b704  b.le 0x02c3b900
02c3b708  adrp x20,0x5e63000
02c3b70c  ldr x20,[x20, #0x1d8]
02c3b710  ldr x0,[x20]
02c3b714  ldr w8,[x0, #0xe4]
02c3b718  cbnz w8,0x02c3b724
02c3b71c  bl 0x029f5bd0
02c3b720  ldr x0,[x20]
02c3b724  ldr x8,[x0, #0xb8]
02c3b728  adrp x20,0x625b000
02c3b72c  ldrb w9,[x20, #0x52e]
02c3b730  ldp s8,s9,[x8, #0x44]
02c3b734  ldp s10,s11,[x8, #0x4c]
02c3b738  cbnz w9,0x02c3b750
02c3b73c  adrp x0,0x5e59000
02c3b740  ldr x0,[x0]
02c3b744  bl 0x029f5a50
02c3b748  mov w8,#0x1
02c3b74c  strb w8,[x20, #0x52e]
02c3b750  adrp x8,0x5e59000
02c3b754  ldr x8,[x8]
02c3b758  ldr x0,[x8]
02c3b75c  ldr w8,[x0, #0xe4]
02c3b760  cbnz w8,0x02c3b768
02c3b764  bl 0x029f5bd0
02c3b768  fsqrt s0,s14
02c3b76c  adrp x8,0x116c000
02c3b770  ldr s1,[x8, #0x240]
02c3b774  fcmp s0,s1
02c3b778  b.le 0x02c3b90c
02c3b77c  movi d1,#0x0
02c3b780  fdiv s4,s13,s0
02c3b784  fdiv s5,s1,s0
02c3b788  fdiv s6,s12,s0
02c3b78c  b 0x02c3b944
02c3b790  ldrb w8,[x19, #0x1b0]
02c3b794  cbz w8,0x02c3b7a8
02c3b798  ldr s12,[x19, #0x20c]
02c3b79c  ldr s13,[x19, #0x210]
02c3b7a0  ldr s14,[x19, #0x214]
02c3b7a4  b 0x02c3b858
02c3b7a8  ldr x0,[x21]
02c3b7ac  ldr x20,[x19, #0x28]
02c3b7b0  ldr w8,[x0, #0xe4]
02c3b7b4  cbnz w8,0x02c3b7bc
02c3b7b8  bl 0x029f5bd0
02c3b7bc  mov x0,x20
02c3b7c0  mov x1,xzr
02c3b7c4  mov x2,xzr
02c3b7c8  bl 0x057dfa70
02c3b7cc  tbz w0,#0x0,0x02c3b7ec
02c3b7d0  ldr x0,[x19, #0x28]
02c3b7d4  cbz x0,0x02c3ba70
02c3b7d8  mov x1,xzr
02c3b7dc  bl 0x02b87424
02c3b7e0  fmov s8,s0
02c3b7e4  fmov s9,s1
02c3b7e8  b 0x02c3b820
02c3b7ec  adrp x20,0x625b000
02c3b7f0  ldrb w8,[x20, #0x271]
02c3b7f4  cbnz w8,0x02c3b80c
02c3b7f8  adrp x0,0x5e59000
02c3b7fc  ldr x0,[x0, #0x608]
02c3b800  bl 0x029f5a50
02c3b804  mov w8,#0x1
02c3b808  strb w8,[x20, #0x271]
02c3b80c  adrp x8,0x5e59000
02c3b810  ldr x8,[x8, #0x608]
02c3b814  ldr x8,[x8]
02c3b818  ldr x8,[x8, #0xb8]
02c3b81c  ldp s8,s9,[x8]
02c3b820  movi d0,#0x0
02c3b824  movi d2,#0x0
02c3b828  adrp x8,0x116c000
02c3b82c  ldr s1,[x8, #0xe0]
02c3b830  mov x0,xzr
02c3b834  bl 0x057cd67c
02c3b838  movi d5,#0x0
02c3b83c  fmov s4,s8
02c3b840  mov x0,xzr
02c3b844  fmov s6,s9
02c3b848  bl 0x057cdb04
02c3b84c  fmov s12,s0
02c3b850  fmov s13,s1
02c3b854  fmov s14,s2
02c3b858  fmul s0,s12,s12
02c3b85c  fmul s1,s13,s13
02c3b860  adrp x8,0x116c000
02c3b864  fadd s0,s0,s1
02c3b868  fmul s1,s14,s14
02c3b86c  fadd s15,s0,s1
02c3b870  ldr s0,[x8, #0x200]
02c3b874  fcmp s15,s0
02c3b878  b.le 0x02c3b900
02c3b87c  adrp x20,0x5e63000
02c3b880  ldr x20,[x20, #0x1d8]
02c3b884  ldr x0,[x20]
02c3b888  ldr w8,[x0, #0xe4]
02c3b88c  cbnz w8,0x02c3b898
02c3b890  bl 0x029f5bd0
02c3b894  ldr x0,[x20]
02c3b898  ldr x8,[x0, #0xb8]
02c3b89c  adrp x20,0x625b000
02c3b8a0  ldrb w9,[x20, #0x52e]
02c3b8a4  ldp s8,s9,[x8, #0x44]
02c3b8a8  ldp s10,s11,[x8, #0x4c]
02c3b8ac  cbnz w9,0x02c3b8c4
02c3b8b0  adrp x0,0x5e59000
02c3b8b4  ldr x0,[x0]
02c3b8b8  bl 0x029f5a50
02c3b8bc  mov w8,#0x1
02c3b8c0  strb w8,[x20, #0x52e]
02c3b8c4  adrp x8,0x5e59000
02c3b8c8  ldr x8,[x8]
02c3b8cc  ldr x0,[x8]
02c3b8d0  ldr w8,[x0, #0xe4]
02c3b8d4  cbnz w8,0x02c3b8dc
02c3b8d8  bl 0x029f5bd0
02c3b8dc  fsqrt s0,s15
02c3b8e0  adrp x8,0x116c000
02c3b8e4  ldr s1,[x8, #0x240]
02c3b8e8  fcmp s0,s1
02c3b8ec  b.le 0x02c3b90c
02c3b8f0  fdiv s4,s12,s0
02c3b8f4  fdiv s5,s13,s0
02c3b8f8  fdiv s6,s14,s0
02c3b8fc  b 0x02c3b944
02c3b900  mov w8,#0x42b40000
02c3b904  fmov s10,w8
02c3b908  b 0x02c3b980
02c3b90c  adrp x20,0x625b000
02c3b910  ldrb w8,[x20, #0x26f]
02c3b914  cbnz w8,0x02c3b92c
02c3b918  adrp x0,0x5e58000
02c3b91c  ldr x0,[x0, #0xbf8]
02c3b920  bl 0x029f5a50
02c3b924  mov w8,#0x1
02c3b928  strb w8,[x20, #0x26f]
02c3b92c  adrp x8,0x5e58000
02c3b930  ldr x8,[x8, #0xbf8]
02c3b934  ldr x8,[x8]
02c3b938  ldr x8,[x8, #0xb8]
02c3b93c  ldp s4,s5,[x8]
02c3b940  ldr s6,[x8, #0x8]
02c3b944  fmov s0,s8
02c3b948  fmov s1,s9
02c3b94c  mov x0,xzr
02c3b950  fmov s2,s10
02c3b954  fmov s3,s11
02c3b958  bl 0x057cdb04
02c3b95c  fmov s1,s2
02c3b960  bl 0x05afb2e0
02c3b964  adrp x8,0x116c000
02c3b968  ldr s1,[x8, #0xc]
02c3b96c  ldrb w8,[x19, #0x1f8]
02c3b970  fmul s2,s0,s1
02c3b974  fnmul s0,s0,s1
02c3b978  cmp w8,#0x0
02c3b97c  fcsel s10,s0,s2,eq
02c3b980  ldr x0,[x19, #0xc8]
02c3b984  cbz x0,0x02c3ba70
02c3b988  ldr s12,[x19, #0x29c]
02c3b98c  ldr s11,[x19, #0x298]
02c3b990  mov x1,xzr
02c3b994  bl 0x057ef154
02c3b998  ldr s13,[x19, #0x124]
02c3b99c  mov x0,xzr
02c3b9a0  fmov s8,s2
02c3b9a4  bl 0x057ebabc
02c3b9a8  ldr x0,[x19, #0xc8]
02c3b9ac  cbz x0,0x02c3ba70
02c3b9b0  mov x1,xzr
02c3b9b4  fmov s9,s0
02c3b9b8  bl 0x057ef154
02c3b9bc  ldr x0,[x19, #0xc8]
02c3b9c0  cbz x0,0x02c3ba70
02c3b9c4  mov w8,#0x43340000
02c3b9c8  fmul s4,s13,s9
02c3b9cc  fmov s5,0x3f800000
02c3b9d0  fmov s2,w8
02c3b9d4  movi d7,#0x0
02c3b9d8  mov w8,#0x43b40000
02c3b9dc  ldp x20,x19,[sp, #0x50]
02c3b9e0  mov x1,xzr
02c3b9e4  ldp x30,x21,[sp, #0x40]
02c3b9e8  fdiv s3,s10,s2
02c3b9ec  fcmp s4,s5
02c3b9f0  fcsel s6,s5,s4,gt
02c3b9f4  fcmp s4,#0.0
02c3b9f8  fcsel s4,s7,s6,mi
02c3b9fc  fcmp s3,s5
02c3ba00  fcsel s5,s5,s3,gt
02c3ba04  fcmp s3,#0.0
02c3ba08  fsub s3,s12,s11
02c3ba0c  ldp d13,d12,[sp, #0x10]
02c3ba10  fcsel s5,s7,s5,mi
02c3ba14  fmul s3,s5,s3
02c3ba18  fmov s5,w8
02c3ba1c  mov w8,#0xc3b40000
02c3ba20  fmov s16,w8
02c3ba24  fadd s3,s11,s3
02c3ba28  ldp d11,d10,[sp, #0x20]
02c3ba2c  fsub s3,s3,s8
02c3ba30  fdiv s6,s3,s5
02c3ba34  frintm s6,s6
02c3ba38  fmul s6,s6,s16
02c3ba3c  fadd s3,s3,s6
02c3ba40  fcmp s3,s5
02c3ba44  fcsel s5,s5,s3,gt
02c3ba48  fcmp s3,#0.0
02c3ba4c  fcsel s3,s7,s5,mi
02c3ba50  fadd s5,s3,s16
02c3ba54  fcmp s3,s2
02c3ba58  fcsel s2,s5,s3,gt
02c3ba5c  fmul s2,s4,s2
02c3ba60  fadd s2,s8,s2
02c3ba64  ldp d9,d8,[sp, #0x30]
02c3ba68  ldp d15,d14,[sp], #0x60
02c3ba6c  b 0x057ef218
02c3ba70  bl 0x029f5cfc
