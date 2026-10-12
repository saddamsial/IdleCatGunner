02cae2dc  str d8,[sp, #-0x30]!
02cae2e0  stp x30,x21,[sp, #0x10]
02cae2e4  stp x20,x19,[sp, #0x20]
02cae2e8  adrp x20,0x625c000
02cae2ec  mov x19,x0
02cae2f0  ldrb w8,[x20, #0x52b]
02cae2f4  tbnz w8,#0x0,0x02cae30c
02cae2f8  adrp x0,0x5e5a000
02cae2fc  ldr x0,[x0, #0x710]
02cae300  bl 0x029f5a50
02cae304  mov w8,#0x1
02cae308  strb w8,[x20, #0x52b]
02cae30c  ldr w8,[x19, #0x10]
02cae310  ldr x20,[x19, #0x20]
02cae314  mov w21,wzr
02cae318  cmp w8,#0x1
02cae31c  b.gt 0x02cae3a8
02cae320  cbz w8,0x02cae408
02cae324  cmp w8,#0x1
02cae328  b.ne 0x02cae4d8
02cae32c  mov w8,#0xffffffff
02cae330  str w8,[x19, #0x10]
02cae334  cbz x20,0x02cae4ec
02cae338  ldr x0,[x20, #0xa8]
02cae33c  cbz x0,0x02cae4ec
02cae340  mov w1,#0x1
02cae344  mov x2,xzr
02cae348  mov w21,#0x1
02cae34c  bl 0x057dff3c
02cae350  ldp w8,w10,[x20, #0x28]
02cae354  mov w9,#0xa
02cae358  fmov s0,0x3fc00000
02cae35c  fmov s1,0x3f400000
02cae360  madd w8,w8,w9,w10
02cae364  ldr w9,[x20, #0x30]
02cae368  cmp w8,w9
02cae36c  adrp x8,0x5e5a000
02cae370  ldr x8,[x8, #0x710]
02cae374  fcsel s8,s1,s0,lt
02cae378  ldr x0,[x8]
02cae37c  bl 0x029f5cec
02cae380  fmov s0,s8
02cae384  mov x1,xzr
02cae388  mov x20,x0
02cae38c  bl 0x057e84e0
02cae390  str x20,[x19, #0x18]!
02cae394  mov x0,x19
02cae398  mov x1,x20
02cae39c  bl 0x029f59f4
02cae3a0  mov w8,#0x2
02cae3a4  b 0x02cae4d4
02cae3a8  cmp w8,#0x2
02cae3ac  b.eq 0x02cae484
02cae3b0  cmp w8,#0x3
02cae3b4  b.ne 0x02cae4d8
02cae3b8  mov w8,#0xffffffff
02cae3bc  str w8,[x19, #0x10]
02cae3c0  cbz x20,0x02cae4ec
02cae3c4  ldr x0,[x20, #0x58]
02cae3c8  cbz x0,0x02cae4ec
02cae3cc  mov w1,wzr
02cae3d0  mov x2,xzr
02cae3d4  bl 0x057dff3c
02cae3d8  ldr x0,[x20, #0x60]
02cae3dc  cbz x0,0x02cae4ec
02cae3e0  mov w1,wzr
02cae3e4  mov x2,xzr
02cae3e8  bl 0x057dff3c
02cae3ec  ldr x0,[x20, #0xa8]
02cae3f0  cbz x0,0x02cae4ec
02cae3f4  mov w1,wzr
02cae3f8  mov x2,xzr
02cae3fc  bl 0x057dff3c
02cae400  mov w21,wzr
02cae404  b 0x02cae4d8
02cae408  mov w8,#0xffffffff
02cae40c  str w8,[x19, #0x10]
02cae410  cbz x20,0x02cae4ec
02cae414  ldr x1,[x20, #0xc0]
02cae418  cbz x1,0x02cae428
02cae41c  mov x0,x20
02cae420  mov x2,xzr
02cae424  bl 0x057e2250
02cae428  ldp w8,w10,[x20, #0x28]
02cae42c  mov w9,#0xa
02cae430  fmov s0,0x40000000
02cae434  fmov s1,0x3f800000
02cae438  madd w8,w8,w9,w10
02cae43c  ldr w9,[x20, #0x30]
02cae440  cmp w8,w9
02cae444  adrp x8,0x5e5a000
02cae448  ldr x8,[x8, #0x710]
02cae44c  fcsel s8,s1,s0,lt
02cae450  ldr x0,[x8]
02cae454  bl 0x029f5cec
02cae458  fmov s0,s8
02cae45c  mov x1,xzr
02cae460  mov x20,x0
02cae464  bl 0x057e84e0
02cae468  str x20,[x19, #0x18]!
02cae46c  mov x0,x19
02cae470  mov x1,x20
02cae474  bl 0x029f59f4
02cae478  mov w21,#0x1
02cae47c  stur w21,[x19, #-0x8]
02cae480  b 0x02cae4d8
02cae484  mov w8,#0xffffffff
02cae488  str w8,[x19, #0x10]
02cae48c  cbz x20,0x02cae4ec
02cae490  mov x0,x20
02cae494  bl 0x02caac18
02cae498  adrp x8,0x5e5a000
02cae49c  ldr x8,[x8, #0x710]
02cae4a0  ldr x0,[x8]
02cae4a4  bl 0x029f5cec
02cae4a8  adrp x8,0x116c000
02cae4ac  mov x1,xzr
02cae4b0  mov x20,x0
02cae4b4  ldr s0,[x8, #0x60]
02cae4b8  bl 0x057e84e0
02cae4bc  str x20,[x19, #0x18]!
02cae4c0  mov x0,x19
02cae4c4  mov x1,x20
02cae4c8  bl 0x029f59f4
02cae4cc  mov w8,#0x3
02cae4d0  mov w21,#0x1
02cae4d4  stur w8,[x19, #-0x8]
02cae4d8  mov w0,w21
02cae4dc  ldp x20,x19,[sp, #0x20]
02cae4e0  ldp x30,x21,[sp, #0x10]
02cae4e4  ldr d8,[sp], #0x30
02cae4e8  ret
02cae4ec  bl 0x029f5cfc
