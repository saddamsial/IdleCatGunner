02c8c374  stp x30,x21,[sp, #-0x20]!
02c8c378  stp x20,x19,[sp, #0x10]
02c8c37c  adrp x21,0x625c000
02c8c380  adrp x20,0x5e62000
02c8c384  mov x19,x0
02c8c388  ldrb w8,[x21, #0x3b4]
02c8c38c  ldr x20,[x20, #0x660]
02c8c390  tbnz w8,#0x0,0x02c8c3a8
02c8c394  adrp x0,0x5e62000
02c8c398  ldr x0,[x0, #0x660]
02c8c39c  bl 0x029f5a50
02c8c3a0  mov w8,#0x1
02c8c3a4  strb w8,[x21, #0x3b4]
02c8c3a8  ldr x0,[x20]
02c8c3ac  ldr w8,[x0, #0xe4]
02c8c3b0  cbnz w8,0x02c8c3bc
02c8c3b4  bl 0x029f5bd0
02c8c3b8  ldr x0,[x20]
02c8c3bc  ldr x8,[x0, #0xb8]
02c8c3c0  ldr x0,[x8]
02c8c3c4  cbz x0,0x02c8c42c
02c8c3c8  bl 0x02c8b2d0
02c8c3cc  ldr x8,[x20]
02c8c3d0  ldr x8,[x8, #0xb8]
02c8c3d4  ldr x8,[x8]
02c8c3d8  cbz x8,0x02c8c42c
02c8c3dc  ldr x1,[x8, #0x28]
02c8c3e0  mov x20,x19
02c8c3e4  str x1,[x20, #0x38]!
02c8c3e8  mov x0,x20
02c8c3ec  bl 0x029f59f4
02c8c3f0  ldur x8,[x20, #-0x18]
02c8c3f4  cbz x8,0x02c8c42c
02c8c3f8  mov x20,xzr
02c8c3fc  ldr w9,[x8, #0x18]
02c8c400  cmp x20,w9, SXTW 
02c8c404  b.ge 0x02c8c430
02c8c408  cmp x20,x9
02c8c40c  b.cs 0x02c8c480
02c8c410  add x9,x8,x20, LSL #0x3
02c8c414  ldr x0,[x9, #0x20]
02c8c418  cbz x0,0x02c8c424
02c8c41c  bl 0x02c8bb7c
02c8c420  ldr x8,[x19, #0x20]
02c8c424  add x20,x20,#0x1
02c8c428  cbnz x8,0x02c8c3fc
02c8c42c  bl 0x029f5cfc
02c8c430  mov x0,x19
02c8c434  bl 0x02c8b80c
02c8c438  mov x20,x19
02c8c43c  ldr x1,[x20, #0x30]!
02c8c440  cbz x1,0x02c8c450
02c8c444  mov x0,x19
02c8c448  mov x2,xzr
02c8c44c  bl 0x057e237c
02c8c450  mov x0,x19
02c8c454  bl 0x02c8c484
02c8c458  mov x1,x0
02c8c45c  mov x0,x19
02c8c460  mov x2,xzr
02c8c464  bl 0x057e2120
02c8c468  mov x1,x0
02c8c46c  mov x0,x20
02c8c470  str x1,[x19, #0x30]
02c8c474  ldp x20,x19,[sp, #0x10]
02c8c478  ldp x30,x21,[sp], #0x20
02c8c47c  b 0x029f59f4
02c8c480  bl 0x029f5d04
