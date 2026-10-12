02c342fc  sub sp,sp,#0x40
02c34300  stp x30,x23,[sp, #0x10]
02c34304  stp x22,x21,[sp, #0x20]
02c34308  stp x20,x19,[sp, #0x30]
02c3430c  adrp x23,0x625c000
02c34310  adrp x22,0x5e5d000
02c34314  mov w21,w2
02c34318  ldrb w8,[x23, #0x53]
02c3431c  ldr x22,[x22, #0xd28]
02c34320  mov w20,w1
02c34324  mov x19,x0
02c34328  tbnz w8,#0x0,0x02c3434c
02c3432c  adrp x0,0x5e5d000
02c34330  ldr x0,[x0, #0xd28]
02c34334  bl 0x029f5a50
02c34338  adrp x0,0x5e62000
02c3433c  ldr x0,[x0, #0xfe8]
02c34340  bl 0x029f5a50
02c34344  mov w8,#0x1
02c34348  strb w8,[x23, #0x53]
02c3434c  ldr x0,[x22]
02c34350  str xzr,[sp, #0x8]
02c34354  stp w20,w21,[x19, #0x20]
02c34358  ldr w8,[x0, #0xe4]
02c3435c  cbnz w8,0x02c34368
02c34360  bl 0x029f5bd0
02c34364  ldr x0,[x22]
02c34368  ldr x8,[x0, #0xb8]
02c3436c  ldr x22,[x8, #0x10]
02c34370  cbz x22,0x02c344a8
02c34374  mov x0,x22
02c34378  mov w1,w20
02c3437c  mov w2,w21
02c34380  mov x3,xzr
02c34384  bl 0x02c2e0ac
02c34388  mov x23,x0
02c3438c  mov x0,x22
02c34390  mov w2,w21
02c34394  mov x1,x23
02c34398  mov x3,xzr
02c3439c  bl 0x02c2e128
02c343a0  str w0,[sp, #0xc]
02c343a4  mov x0,x22
02c343a8  mov w1,w21
02c343ac  mov x2,xzr
02c343b0  bl 0x02c2e2ec
02c343b4  cbz x23,0x02c344a8
02c343b8  ldr w8,[x23, #0x18]
02c343bc  ldr x21,[x19, #0x28]
02c343c0  mov x1,xzr
02c343c4  mul w8,w8,w0
02c343c8  add x0,sp,#0x8
02c343cc  str w8,[sp, #0x8]
02c343d0  bl 0x0484e6a4
02c343d4  cbz x21,0x02c344a8
02c343d8  ldr x8,[x21]
02c343dc  mov x1,x0
02c343e0  mov x0,x21
02c343e4  ldr x9,[x8, #0x558]
02c343e8  ldr x2,[x8, #0x560]
02c343ec  blr x9
02c343f0  ldr x21,[x19, #0x30]
02c343f4  add x0,sp,#0xc
02c343f8  mov x1,xzr
02c343fc  bl 0x0484e6a4
02c34400  cbz x21,0x02c344a8
02c34404  ldr x8,[x21]
02c34408  mov x1,x0
02c3440c  mov x0,x21
02c34410  ldr x9,[x8, #0x558]
02c34414  ldr x2,[x8, #0x560]
02c34418  blr x9
02c3441c  ldr x21,[x19, #0x38]
02c34420  mov w0,w20
02c34424  mov x1,xzr
02c34428  bl 0x02c2ce84
02c3442c  cbz x21,0x02c344a8
02c34430  mov x1,x0
02c34434  mov x0,x21
02c34438  mov x2,xzr
02c3443c  bl 0x058d34cc
02c34440  ldr x8,[x19, #0x48]
02c34444  cbz x8,0x02c344a8
02c34448  ldr w9,[x8, #0x18]
02c3444c  cmp w9,w20
02c34450  b.ls 0x02c344ac
02c34454  ldr x0,[x19, #0x40]
02c34458  cbz x0,0x02c344a8
02c3445c  add x8,x8,w20, SXTW  #0x4
02c34460  ldr x9,[x0]
02c34464  ldp s2,s3,[x8, #0x28]
02c34468  ldr x1,[x9, #0x2b0]
02c3446c  ldp s0,s1,[x8, #0x20]
02c34470  ldr x8,[x9, #0x2a8]
02c34474  blr x8
02c34478  mov x0,x19
02c3447c  mov x1,xzr
02c34480  bl 0x057dc1c8
02c34484  cbz x0,0x02c344a8
02c34488  mov w1,#0x1
02c3448c  mov x2,xzr
02c34490  bl 0x057dff3c
02c34494  ldp x20,x19,[sp, #0x30]
02c34498  ldp x22,x21,[sp, #0x20]
02c3449c  ldp x30,x23,[sp, #0x10]
02c344a0  add sp,sp,#0x40
02c344a4  ret
02c344a8  bl 0x029f5cfc
02c344ac  bl 0x029f5d04
