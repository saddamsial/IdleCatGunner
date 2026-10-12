02c47950  stp x30,x21,[sp, #-0x20]!
02c47954  stp x20,x19,[sp, #0x10]
02c47958  adrp x20,0x625c000
02c4795c  mov x19,x0
02c47960  ldrb w8,[x20, #0xef]
02c47964  tbnz w8,#0x0,0x02c47994
02c47968  adrp x0,0x5e5d000
02c4796c  ldr x0,[x0, #0x910]
02c47970  bl 0x029f5a50
02c47974  adrp x0,0x5e5d000
02c47978  ldr x0,[x0, #0x368]
02c4797c  bl 0x029f5a50
02c47980  adrp x0,0x5e5a000
02c47984  ldr x0,[x0, #0x710]
02c47988  bl 0x029f5a50
02c4798c  mov w8,#0x1
02c47990  strb w8,[x20, #0xef]
02c47994  ldr w21,[x19, #0x10]
02c47998  cbz w21,0x02c47a20
02c4799c  cmp w21,#0x1
02c479a0  b.ne 0x02c47aa0
02c479a4  adrp x8,0x5e5d000
02c479a8  ldr x8,[x8, #0x368]
02c479ac  ldr x20,[x19, #0x20]
02c479b0  ldr x8,[x8]
02c479b4  ldr x8,[x8, #0xb8]
02c479b8  ldr x0,[x8]
02c479bc  mov w8,#0xffffffff
02c479c0  str w8,[x19, #0x10]
02c479c4  cbz x0,0x02c47ab4
02c479c8  mov x1,xzr
02c479cc  bl 0x02c2a620
02c479d0  adrp x19,0x625b000
02c479d4  ldrb w8,[x19, #0xa57]
02c479d8  cbnz w8,0x02c479f0
02c479dc  adrp x0,0x5e5d000
02c479e0  ldr x0,[x0, #0xd70]
02c479e4  bl 0x029f5a50
02c479e8  mov w8,#0x1
02c479ec  strb w8,[x19, #0xa57]
02c479f0  adrp x8,0x5e5d000
02c479f4  ldr x8,[x8, #0xd70]
02c479f8  ldr x8,[x8]
02c479fc  ldr x8,[x8, #0xb8]
02c47a00  ldr x0,[x8]
02c47a04  cbz x0,0x02c47ab4
02c47a08  mov x1,xzr
02c47a0c  bl 0x02c226a0
02c47a10  cbz x20,0x02c47ab4
02c47a14  mov x0,x20
02c47a18  bl 0x02c462c8
02c47a1c  b 0x02c47aa0
02c47a20  adrp x8,0x5e5d000
02c47a24  ldr x8,[x8, #0x368]
02c47a28  ldr x8,[x8]
02c47a2c  ldr x8,[x8, #0xb8]
02c47a30  ldr x0,[x8]
02c47a34  mov w8,#0xffffffff
02c47a38  str w8,[x19, #0x10]
02c47a3c  cbz x0,0x02c47ab4
02c47a40  mov x1,xzr
02c47a44  bl 0x02c2a604
02c47a48  adrp x8,0x5e5d000
02c47a4c  ldr x8,[x8, #0x910]
02c47a50  ldr x8,[x8]
02c47a54  ldr x8,[x8, #0xb8]
02c47a58  ldr x0,[x8]
02c47a5c  cbz x0,0x02c47ab4
02c47a60  mov x1,xzr
02c47a64  bl 0x02b8c5a0
02c47a68  adrp x8,0x5e5a000
02c47a6c  ldr x8,[x8, #0x710]
02c47a70  ldr x0,[x8]
02c47a74  bl 0x029f5cec
02c47a78  fmov s0,0x40000000
02c47a7c  mov x1,xzr
02c47a80  mov x20,x0
02c47a84  bl 0x057e84e0
02c47a88  str x20,[x19, #0x18]!
02c47a8c  mov x0,x19
02c47a90  mov x1,x20
02c47a94  bl 0x029f59f4
02c47a98  mov w8,#0x1
02c47a9c  stur w8,[x19, #-0x8]
02c47aa0  ldp x20,x19,[sp, #0x10]
02c47aa4  cmp w21,#0x0
02c47aa8  cset w0,eq
02c47aac  ldp x30,x21,[sp], #0x20
02c47ab0  ret
02c47ab4  bl 0x029f5cfc
