02c7b5d4  sub sp,sp,#0xb0
02c7b5d8  stp d15,d14,[sp, #0x10]
02c7b5dc  stp d13,d12,[sp, #0x20]
02c7b5e0  stp d11,d10,[sp, #0x30]
02c7b5e4  stp d9,d8,[sp, #0x40]
02c7b5e8  stp x29,x30,[sp, #0x50]
02c7b5ec  stp x28,x27,[sp, #0x60]
02c7b5f0  stp x26,x25,[sp, #0x70]
02c7b5f4  stp x24,x23,[sp, #0x80]
02c7b5f8  stp x22,x21,[sp, #0x90]
02c7b5fc  stp x20,x19,[sp, #0xa0]
02c7b600  adrp x21,0x625c000
02c7b604  mov x19,x1
02c7b608  mov x20,x0
02c7b60c  ldrb w8,[x21, #0x319]
02c7b610  tbnz w8,#0x0,0x02c7b640
02c7b614  adrp x0,0x5e59000
02c7b618  ldr x0,[x0, #0x1c0]
02c7b61c  bl 0x029f5a50
02c7b620  adrp x0,0x5e61000
02c7b624  ldr x0,[x0, #0x878]
02c7b628  bl 0x029f5a50
02c7b62c  adrp x0,0x5e61000
02c7b630  ldr x0,[x0, #0x890]
02c7b634  bl 0x029f5a50
02c7b638  mov w8,#0x1
02c7b63c  strb w8,[x21, #0x319]
02c7b640  ldr x8,[x20, #0x20]
02c7b644  cbz x8,0x02c7b9a0
02c7b648  adrp x10,0x116c000
02c7b64c  adrp x26,0x5e59000
02c7b650  adrp x21,0x5e59000
02c7b654  ldr s0,[x10, #0x88]
02c7b658  adrp x22,0x5e58000
02c7b65c  adrp x11,0x116c000
02c7b660  ldr x26,[x26, #0x1c0]
02c7b664  ldr x21,[x21]
02c7b668  ldr x22,[x22, #0xbf8]
02c7b66c  adrp x9,0x116c000
02c7b670  str s0,[sp, #0xc]
02c7b674  ldr s0,[x11, #0x240]
02c7b678  ldr s15,[x9, #0x21c]
02c7b67c  mov x25,xzr
02c7b680  adrp x29,0x625b000
02c7b684  fmov s13,0x3f800000
02c7b688  str s0,[sp, #0x8]
02c7b68c  mov w27,#0x1
02c7b690  adrp x28,0x625b000
02c7b694  ldr w9,[x8, #0x18]
02c7b698  cmp x25,w9, SXTW 
02c7b69c  b.ge 0x02c7b9a4
02c7b6a0  cmp x25,x9
02c7b6a4  b.cs 0x02c7b9d4
02c7b6a8  ldr x0,[x26]
02c7b6ac  add x8,x8,x25, LSL #0x3
02c7b6b0  ldr w9,[x0, #0xe4]
02c7b6b4  ldr x23,[x8, #0x20]
02c7b6b8  cbnz w9,0x02c7b6c0
02c7b6bc  bl 0x029f5bd0
02c7b6c0  mov x0,x23
02c7b6c4  mov x1,xzr
02c7b6c8  mov x2,xzr
02c7b6cc  bl 0x057e14b4
02c7b6d0  tbnz w0,#0x0,0x02c7b994
02c7b6d4  cbz x23,0x02c7b9a0
02c7b6d8  mov x0,x23
02c7b6dc  mov x1,xzr
02c7b6e0  bl 0x057dc1c8
02c7b6e4  cbz x0,0x02c7b9a0
02c7b6e8  mov x1,xzr
02c7b6ec  bl 0x057e0000
02c7b6f0  tbz w0,#0x0,0x02c7b994
02c7b6f4  cbz x19,0x02c7b9a0
02c7b6f8  mov x0,x19
02c7b6fc  mov x1,xzr
02c7b700  bl 0x057dc0f8
02c7b704  cbz x0,0x02c7b9a0
02c7b708  mov x1,xzr
02c7b70c  bl 0x057eed98
02c7b710  ldr s12,[x23, #0x58]
02c7b714  ldr s14,[x23, #0x60]
02c7b718  mov x0,x23
02c7b71c  mov x1,xzr
02c7b720  fmov s8,s0
02c7b724  fmov s9,s2
02c7b728  bl 0x057dc0f8
02c7b72c  cbz x0,0x02c7b9a0
02c7b730  mov x1,xzr
02c7b734  bl 0x057eed98
02c7b738  fmov s10,s0
02c7b73c  fmov s11,s2
02c7b740  ldrb w8,[x29, #0xae8]
02c7b744  cbnz w8,0x02c7b754
02c7b748  mov x0,x21
02c7b74c  bl 0x029f5a50
02c7b750  strb w27,[x29, #0xae8]
02c7b754  ldr x0,[x21]
02c7b758  ldr w8,[x0, #0xe4]
02c7b75c  cbnz w8,0x02c7b764
02c7b760  bl 0x029f5bd0
02c7b764  fadd s0,s9,s14
02c7b768  fadd s1,s8,s12
02c7b76c  ldrb w8,[x23, #0x64]
02c7b770  fsub s8,s1,s10
02c7b774  fsub s9,s0,s11
02c7b778  fmul s0,s8,s8
02c7b77c  fmul s1,s9,s9
02c7b780  fadd s0,s0,s1
02c7b784  fsqrt s10,s0
02c7b788  cbz w8,0x02c7b7a0
02c7b78c  ldr s0,[x20, #0x34]
02c7b790  fcmp s10,s0
02c7b794  b.pl 0x02c7b7b8
02c7b798  mov w8,wzr
02c7b79c  b 0x02c7b7b0
02c7b7a0  ldr s0,[x20, #0x30]
02c7b7a4  fcmp s10,s0
02c7b7a8  b.le 0x02c7b7c0
02c7b7ac  mov w8,#0x1
02c7b7b0  strb w8,[x23, #0x64]
02c7b7b4  b 0x02c7b7c4
02c7b7b8  mov w8,#0x1
02c7b7bc  b 0x02c7b7c4
02c7b7c0  mov w8,wzr
02c7b7c4  ldrb w9,[x28, #0x26f]
02c7b7c8  cbz w9,0x02c7b87c
02c7b7cc  cbz w8,0x02c7b890
02c7b7d0  ldp s2,s0,[x20, #0x3c]
02c7b7d4  movi d5,#0x0
02c7b7d8  ldp s1,s11,[x20, #0x34]
02c7b7dc  fmov s6,0x40400000
02c7b7e0  ldr s3,[sp, #0xc]
02c7b7e4  ldr s4,[x20, #0x44]
02c7b7e8  adrp x8,0x625b000
02c7b7ec  ldrb w8,[x8, #0x52e]
02c7b7f0  fsub s0,s0,s1
02c7b7f4  fsub s1,s10,s1
02c7b7f8  fmaxnm s0,s0,s3
02c7b7fc  ldr s3,[x20, #0x64]
02c7b800  fmul s3,s3,s4
02c7b804  fdiv s0,s1,s0
02c7b808  fcmp s0,s13
02c7b80c  fcsel s1,s13,s0,gt
02c7b810  fcmp s0,#0.0
02c7b814  fcsel s0,s5,s1,mi
02c7b818  fcmp s2,s3
02c7b81c  fcsel s14,s2,s3,gt
02c7b820  fadd s1,s0,s0
02c7b824  fmul s0,s0,s0
02c7b828  fsub s1,s6,s1
02c7b82c  fmul s0,s0,s1
02c7b830  fcmp s0,s13
02c7b834  fcsel s1,s13,s0,gt
02c7b838  fcmp s0,#0.0
02c7b83c  fcsel s12,s5,s1,mi
02c7b840  cbnz w8,0x02c7b854
02c7b844  mov x0,x21
02c7b848  bl 0x029f5a50
02c7b84c  adrp x8,0x625b000
02c7b850  strb w27,[x8, #0x52e]
02c7b854  ldr x0,[x21]
02c7b858  ldr w8,[x0, #0xe4]
02c7b85c  cbnz w8,0x02c7b864
02c7b860  bl 0x029f5bd0
02c7b864  ldr s0,[sp, #0x8]
02c7b868  fcmp s10,s0
02c7b86c  b.le 0x02c7b8a4
02c7b870  fdiv s0,s8,s10
02c7b874  fdiv s2,s9,s10
02c7b878  b 0x02c7b8c8
02c7b87c  mov x0,x22
02c7b880  bl 0x029f5a50
02c7b884  ldrb w8,[x23, #0x64]
02c7b888  strb w27,[x28, #0x26f]
02c7b88c  cbnz w8,0x02c7b7d0
02c7b890  ldr x8,[x22]
02c7b894  ldr x8,[x8, #0xb8]
02c7b898  ldr s1,[x8]
02c7b89c  ldr s0,[x8, #0x8]
02c7b8a0  b 0x02c7b8dc
02c7b8a4  ldrb w8,[x28, #0x26f]
02c7b8a8  cbnz w8,0x02c7b8b8
02c7b8ac  mov x0,x22
02c7b8b0  bl 0x029f5a50
02c7b8b4  strb w27,[x28, #0x26f]
02c7b8b8  ldr x8,[x22]
02c7b8bc  ldr x8,[x8, #0xb8]
02c7b8c0  ldr s0,[x8]
02c7b8c4  ldr s2,[x8, #0x8]
02c7b8c8  fsub s1,s14,s11
02c7b8cc  fmul s1,s1,s12
02c7b8d0  fadd s3,s11,s1
02c7b8d4  fmul s1,s3,s0
02c7b8d8  fmul s0,s3,s2
02c7b8dc  ldr x24,[x23, #0x28]
02c7b8e0  cbz x24,0x02c7b9a0
02c7b8e4  ldr s2,[x23, #0x40]
02c7b8e8  mov x0,x24
02c7b8ec  mov x1,xzr
02c7b8f0  fadd s1,s1,s2
02c7b8f4  ldp s3,s2,[x23, #0x48]
02c7b8f8  fadd s0,s0,s3
02c7b8fc  ldr s3,[x23, #0x54]
02c7b900  fadd s9,s1,s2
02c7b904  fadd s8,s0,s3
02c7b908  bl 0x0586b268
02c7b90c  fmov s0,s9
02c7b910  fmov s2,s8
02c7b914  mov x0,x24
02c7b918  mov x1,xzr
02c7b91c  bl 0x0586b344
02c7b920  ldrb w8,[x29, #0xae8]
02c7b924  cbnz w8,0x02c7b934
02c7b928  mov x0,x21
02c7b92c  bl 0x029f5a50
02c7b930  strb w27,[x29, #0xae8]
02c7b934  ldr x0,[x21]
02c7b938  ldr w8,[x0, #0xe4]
02c7b93c  cbnz w8,0x02c7b944
02c7b940  bl 0x029f5bd0
02c7b944  fmul s0,s9,s9
02c7b948  fmul s1,s8,s8
02c7b94c  adrp x8,0x5e61000
02c7b950  adrp x9,0x5e61000
02c7b954  ldr x8,[x8, #0x878]
02c7b958  mov x0,x23
02c7b95c  ldr x9,[x9, #0x890]
02c7b960  fadd s0,s0,s1
02c7b964  fsqrt s10,s0
02c7b968  fcmp s10,s15
02c7b96c  csel x8,x8,x9,gt
02c7b970  ldr x1,[x8]
02c7b974  bl 0x02c7a85c
02c7b978  fcmp s10,s15
02c7b97c  b.le 0x02c7b994
02c7b980  movi d1,#0x0
02c7b984  fmov s0,s9
02c7b988  mov x0,x23
02c7b98c  fmov s2,s8
02c7b990  bl 0x02c7a9d8
02c7b994  ldr x8,[x20, #0x20]
02c7b998  add x25,x25,#0x1
02c7b99c  cbnz x8,0x02c7b694
02c7b9a0  bl 0x029f5cfc
02c7b9a4  ldp x20,x19,[sp, #0xa0]
02c7b9a8  ldp x22,x21,[sp, #0x90]
02c7b9ac  ldp x24,x23,[sp, #0x80]
02c7b9b0  ldp x26,x25,[sp, #0x70]
02c7b9b4  ldp x28,x27,[sp, #0x60]
02c7b9b8  ldp x29,x30,[sp, #0x50]
02c7b9bc  ldp d9,d8,[sp, #0x40]
02c7b9c0  ldp d11,d10,[sp, #0x30]
02c7b9c4  ldp d13,d12,[sp, #0x20]
02c7b9c8  ldp d15,d14,[sp, #0x10]
02c7b9cc  add sp,sp,#0xb0
02c7b9d0  ret
02c7b9d4  bl 0x029f5d04
