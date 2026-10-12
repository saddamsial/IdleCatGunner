02b9b7d0  stp d13,d12,[sp, #-0x50]!
02b9b7d4  stp d11,d10,[sp, #0x10]
02b9b7d8  stp d9,d8,[sp, #0x20]
02b9b7dc  stp x30,x21,[sp, #0x30]
02b9b7e0  stp x20,x19,[sp, #0x40]
02b9b7e4  ldr w8,[x0, #0x10]
02b9b7e8  ldr x20,[x0, #0x20]
02b9b7ec  mov x19,x0
02b9b7f0  sub w9,w8,#0x1
02b9b7f4  cmp w9,#0x2
02b9b7f8  b.cc 0x02b9b858
02b9b7fc  cmp w8,#0x3
02b9b800  b.eq 0x02b9b924
02b9b804  cbnz w8,0x02b9b998
02b9b808  mov w8,#0xffffffff
02b9b80c  str w8,[x19, #0x10]
02b9b810  cbz x20,0x02b9ba74
02b9b814  mov x0,x20
02b9b818  mov x1,xzr
02b9b81c  bl 0x057dc0f8
02b9b820  cbz x0,0x02b9ba74
02b9b824  adrp x8,0x116c000
02b9b828  mov x1,xzr
02b9b82c  ldr s0,[x8, #0x268]
02b9b830  fmov s1,s0
02b9b834  fmov s2,s0
02b9b838  bl 0x057ef654
02b9b83c  str xzr,[x19, #0x18]!
02b9b840  mov x0,x19
02b9b844  mov x1,xzr
02b9b848  bl 0x029f59f4
02b9b84c  mov w0,#0x1
02b9b850  stur w0,[x19, #-0x8]
02b9b854  b 0x02b9ba5c
02b9b858  mov w8,#0xffffffff
02b9b85c  str w8,[x19, #0x10]
02b9b860  cbz x20,0x02b9ba74
02b9b864  ldr s8,[x20, #0x20]
02b9b868  ldr s0,[x20, #0x30]
02b9b86c  fcmp s8,s0
02b9b870  b.hi 0x02b9b934
02b9b874  mov x0,xzr
02b9b878  bl 0x057ebabc
02b9b87c  fadd s0,s8,s0
02b9b880  ldr s1,[x20, #0x30]
02b9b884  fmov s2,0x3f800000
02b9b888  movi d8,#0x0
02b9b88c  adrp x21,0x625b000
02b9b890  ldr s10,[x20, #0x24]
02b9b894  ldrb w8,[x21, #0x279]
02b9b898  fdiv s1,s0,s1
02b9b89c  str s0,[x20, #0x20]
02b9b8a0  fcmp s1,s2
02b9b8a4  fcsel s2,s2,s1,gt
02b9b8a8  fcmp s1,#0.0
02b9b8ac  fcsel s9,s8,s2,mi
02b9b8b0  cbnz w8,0x02b9b8c8
02b9b8b4  adrp x0,0x5e58000
02b9b8b8  ldr x0,[x0, #0xbf8]
02b9b8bc  bl 0x029f5a50
02b9b8c0  mov w8,#0x1
02b9b8c4  strb w8,[x21, #0x279]
02b9b8c8  adrp x8,0x5e58000
02b9b8cc  mov x0,x20
02b9b8d0  mov x1,xzr
02b9b8d4  ldr x8,[x8, #0xbf8]
02b9b8d8  ldr x8,[x8]
02b9b8dc  ldr x8,[x8, #0xb8]
02b9b8e0  ldp s11,s12,[x8, #0xc]
02b9b8e4  ldr s13,[x8, #0x14]
02b9b8e8  bl 0x057dc0f8
02b9b8ec  cbz x0,0x02b9ba74
02b9b8f0  fmul s0,s10,s9
02b9b8f4  mov x1,xzr
02b9b8f8  fadd s0,s0,s8
02b9b8fc  fmul s2,s0,s13
02b9b900  fmul s1,s0,s12
02b9b904  fmul s0,s0,s11
02b9b908  bl 0x057ef654
02b9b90c  str xzr,[x19, #0x18]!
02b9b910  mov x0,x19
02b9b914  mov x1,xzr
02b9b918  bl 0x029f59f4
02b9b91c  mov w8,#0x2
02b9b920  b 0x02b9ba54
02b9b924  mov w8,#0xffffffff
02b9b928  str w8,[x19, #0x10]
02b9b92c  cbz x20,0x02b9ba74
02b9b930  ldr s8,[x20, #0x20]
02b9b934  ldr s0,[x20, #0x28]
02b9b938  fcmp s8,s0
02b9b93c  b.ls 0x02b9b9a0
02b9b940  mov x0,x20
02b9b944  mov x1,xzr
02b9b948  bl 0x057dc0f8
02b9b94c  adrp x20,0x625b000
02b9b950  mov x19,x0
02b9b954  ldrb w8,[x20, #0x279]
02b9b958  cbnz w8,0x02b9b970
02b9b95c  adrp x0,0x5e58000
02b9b960  ldr x0,[x0, #0xbf8]
02b9b964  bl 0x029f5a50
02b9b968  mov w8,#0x1
02b9b96c  strb w8,[x20, #0x279]
02b9b970  cbz x19,0x02b9ba74
02b9b974  adrp x8,0x5e58000
02b9b978  mov x0,x19
02b9b97c  mov x1,xzr
02b9b980  ldr x8,[x8, #0xbf8]
02b9b984  ldr x8,[x8]
02b9b988  ldr x8,[x8, #0xb8]
02b9b98c  ldp s1,s2,[x8, #0x10]
02b9b990  ldr s0,[x8, #0xc]
02b9b994  bl 0x057ef654
02b9b998  mov w0,wzr
02b9b99c  b 0x02b9ba5c
02b9b9a0  mov x0,xzr
02b9b9a4  bl 0x057ebabc
02b9b9a8  fadd s0,s8,s0
02b9b9ac  ldp s1,s2,[x20, #0x30]
02b9b9b0  fmov s8,0x3f800000
02b9b9b4  movi d3,#0x0
02b9b9b8  adrp x21,0x625b000
02b9b9bc  ldrb w8,[x21, #0x279]
02b9b9c0  ldr s10,[x20, #0x24]
02b9b9c4  fsub s1,s0,s1
02b9b9c8  str s0,[x20, #0x20]
02b9b9cc  fdiv s1,s1,s2
02b9b9d0  fcmp s1,s8
02b9b9d4  fcsel s2,s8,s1,gt
02b9b9d8  fcmp s1,#0.0
02b9b9dc  fcsel s9,s3,s2,mi
02b9b9e0  cbnz w8,0x02b9b9f8
02b9b9e4  adrp x0,0x5e58000
02b9b9e8  ldr x0,[x0, #0xbf8]
02b9b9ec  bl 0x029f5a50
02b9b9f0  mov w8,#0x1
02b9b9f4  strb w8,[x21, #0x279]
02b9b9f8  adrp x8,0x5e58000
02b9b9fc  mov x0,x20
02b9ba00  mov x1,xzr
02b9ba04  ldr x8,[x8, #0xbf8]
02b9ba08  ldr x8,[x8]
02b9ba0c  ldr x8,[x8, #0xb8]
02b9ba10  ldp s11,s12,[x8, #0xc]
02b9ba14  ldr s13,[x8, #0x14]
02b9ba18  bl 0x057dc0f8
02b9ba1c  cbz x0,0x02b9ba74
02b9ba20  fsub s0,s8,s10
02b9ba24  mov x1,xzr
02b9ba28  fmul s0,s0,s9
02b9ba2c  fadd s0,s10,s0
02b9ba30  fmul s2,s0,s13
02b9ba34  fmul s1,s0,s12
02b9ba38  fmul s0,s0,s11
02b9ba3c  bl 0x057ef654
02b9ba40  str xzr,[x19, #0x18]!
02b9ba44  mov x0,x19
02b9ba48  mov x1,xzr
02b9ba4c  bl 0x029f59f4
02b9ba50  mov w8,#0x3
02b9ba54  stur w8,[x19, #-0x8]
02b9ba58  mov w0,#0x1
02b9ba5c  ldp x20,x19,[sp, #0x40]
02b9ba60  ldp x30,x21,[sp, #0x30]
02b9ba64  ldp d9,d8,[sp, #0x20]
02b9ba68  ldp d11,d10,[sp, #0x10]
02b9ba6c  ldp d13,d12,[sp], #0x50
02b9ba70  ret
02b9ba74  bl 0x029f5cfc
