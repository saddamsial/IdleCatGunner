02caa1a0  stp x30,x21,[sp, #-0x20]!
02caa1a4  stp x20,x19,[sp, #0x10]
02caa1a8  adrp x20,0x625c000
02caa1ac  adrp x21,0x5e64000
02caa1b0  mov x19,x0
02caa1b4  ldrb w8,[x20, #0x502]
02caa1b8  ldr x21,[x21, #0xa20]
02caa1bc  tbnz w8,#0x0,0x02caa1d4
02caa1c0  adrp x0,0x5e64000
02caa1c4  ldr x0,[x0, #0xa20]
02caa1c8  bl 0x029f5a50
02caa1cc  mov w8,#0x1
02caa1d0  strb w8,[x20, #0x502]
02caa1d4  ldr x0,[x21]
02caa1d8  bl 0x029f5cec
02caa1dc  mov x1,xzr
02caa1e0  mov x20,x0
02caa1e4  bl 0x04893238
02caa1e8  mov x0,x20
02caa1ec  mov x1,x19
02caa1f0  str wzr,[x20, #0x10]
02caa1f4  str x19,[x0, #0x20]!
02caa1f8  bl 0x029f59f4
02caa1fc  mov x0,x20
02caa200  ldp x20,x19,[sp, #0x10]
02caa204  ldp x30,x21,[sp], #0x20
02caa208  ret
