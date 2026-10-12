02c79914  str x30,[sp, #-0x20]!
02c79918  stp x20,x19,[sp, #0x10]
02c7991c  adrp x8,0x116f000
02c79920  adrp x20,0x625b000
02c79924  mov x19,x0
02c79928  ldr d0,[x8, #0xa90]
02c7992c  ldrb w8,[x20, #0x279]
02c79930  str d0,[x0, #0x90]
02c79934  cbnz w8,0x02c7994c
02c79938  adrp x0,0x5e58000
02c7993c  ldr x0,[x0, #0xbf8]
02c79940  bl 0x029f5a50
02c79944  mov w8,#0x1
02c79948  strb w8,[x20, #0x279]
02c7994c  adrp x8,0x5e58000
02c79950  mov x0,x19
02c79954  mov x1,xzr
02c79958  ldr x8,[x8, #0xbf8]
02c7995c  ldr x8,[x8]
02c79960  ldr x9,[x8, #0xb8]
02c79964  ldur d0,[x9, #0xc]
02c79968  ldr s1,[x9, #0x14]
02c7996c  mov w9,#0x6666
02c79970  movk w9,#0x3f86, LSL #16
02c79974  str d0,[x19, #0xa0]
02c79978  dup v0.2S,w9
02c7997c  adrp x9,0x116c000
02c79980  str s1,[x19, #0xa8]
02c79984  ldr s2,[x9, #0x27c]
02c79988  ldr x8,[x8, #0xb8]
02c7998c  ldur d1,[x8, #0xc]
02c79990  ldr s3,[x8, #0x14]
02c79994  mov w8,#0x999a
02c79998  movk w8,#0x3e19, LSL #16
02c7999c  fmul v0.2S,v1.2S,v0.2S
02c799a0  fmul s1,s3,s2
02c799a4  str w8,[x19, #0xb8]
02c799a8  stur d0,[x19, #0xac]
02c799ac  str s1,[x19, #0xb4]
02c799b0  ldp x20,x19,[sp, #0x10]
02c799b4  ldr x30,[sp], #0x20
02c799b8  b 0x057e2ee0
