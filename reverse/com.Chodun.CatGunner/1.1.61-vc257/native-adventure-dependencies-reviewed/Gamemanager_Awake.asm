02b7b594  sub sp,sp,#0x40
02b7b598  stp x30,x21,[sp, #0x20]
02b7b59c  stp x20,x19,[sp, #0x30]
02b7b5a0  adrp x21,0x625b000
02b7b5a4  adrp x20,0x5e5d000
02b7b5a8  mov x19,x0
02b7b5ac  ldrb w8,[x21, #0x899]
02b7b5b0  ldr x20,[x20, #0x338]
02b7b5b4  tbnz w8,#0x0,0x02b7b5d8
02b7b5b8  adrp x0,0x5e58000
02b7b5bc  ldr x0,[x0, #0xa78]
02b7b5c0  bl 0x029f5a50
02b7b5c4  adrp x0,0x5e5d000
02b7b5c8  ldr x0,[x0, #0x338]
02b7b5cc  bl 0x029f5a50
02b7b5d0  mov w8,#0x1
02b7b5d4  strb w8,[x21, #0x899]
02b7b5d8  ldr x0,[x20]
02b7b5dc  adrp x21,0x5e58000
02b7b5e0  ldr w8,[x0, #0xe4]
02b7b5e4  ldr x21,[x21, #0xa78]
02b7b5e8  cbnz w8,0x02b7b5f4
02b7b5ec  bl 0x029f5bd0
02b7b5f0  ldr x0,[x20]
02b7b5f4  ldr x0,[x0, #0xb8]
02b7b5f8  mov x1,x19
02b7b5fc  str x19,[x0, #0xc8]!
02b7b600  bl 0x029f59f4
02b7b604  ldr x0,[x21]
02b7b608  ldr w8,[x0, #0xe4]
02b7b60c  cbnz w8,0x02b7b614
02b7b610  bl 0x029f5bd0
02b7b614  mov x0,xzr
02b7b618  bl 0x05792b40
02b7b61c  cmp w0,#0xb
02b7b620  b.eq 0x02b7b644
02b7b624  ldr x0,[x21]
02b7b628  ldr w8,[x0, #0xe4]
02b7b62c  cbnz w8,0x02b7b634
02b7b630  bl 0x029f5bd0
02b7b634  mov x0,xzr
02b7b638  bl 0x05792b40
02b7b63c  cmp w0,#0x8
02b7b640  b.ne 0x02b7b66c
02b7b644  mov w0,wzr
02b7b648  mov x1,xzr
02b7b64c  bl 0x057a6b18
02b7b650  ldr x0,[x21]
02b7b654  ldr w8,[x0, #0xe4]
02b7b658  cbnz w8,0x02b7b660
02b7b65c  bl 0x029f5bd0
02b7b660  mov w0,#0x3c
02b7b664  mov x1,xzr
02b7b668  bl 0x05792a8c
02b7b66c  mov w0,#0x1
02b7b670  mov x1,xzr
02b7b674  bl 0x057ec7a0
02b7b678  ldr x0,[x20]
02b7b67c  ldr w8,[x0, #0xe4]
02b7b680  cbnz w8,0x02b7b68c
02b7b684  bl 0x029f5bd0
02b7b688  ldr x0,[x20]
02b7b68c  ldr x9,[x0, #0xb8]
02b7b690  mov x8,sp
02b7b694  mov w1,#0x5
02b7b698  mov x2,xzr
02b7b69c  add x0,x9,#0x30
02b7b6a0  bl 0x04658464
02b7b6a4  ldr x8,[x20]
02b7b6a8  mov w1,#0x5
02b7b6ac  mov x2,xzr
02b7b6b0  ldr x9,[x8, #0xb8]
02b7b6b4  mov x8,sp
02b7b6b8  add x0,x9,#0x70
02b7b6bc  bl 0x04658464
02b7b6c0  mov w0,#0xffffffff
02b7b6c4  mov x1,xzr
02b7b6c8  bl 0x057a2a08
02b7b6cc  ldp x20,x19,[sp, #0x30]
02b7b6d0  ldp x30,x21,[sp, #0x20]
02b7b6d4  add sp,sp,#0x40
02b7b6d8  ret
