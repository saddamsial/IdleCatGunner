02c1d984  stp x30,x21,[sp, #-0x20]!
02c1d988  stp x20,x19,[sp, #0x10]
02c1d98c  adrp x20,0x625b000
02c1d990  adrp x21,0x5e5d000
02c1d994  mov x19,x0
02c1d998  ldrb w8,[x20, #0xf36]
02c1d99c  ldr x21,[x21, #0x4e8]
02c1d9a0  tbnz w8,#0x0,0x02c1d9d0
02c1d9a4  adrp x0,0x5e5d000
02c1d9a8  ldr x0,[x0, #0x910]
02c1d9ac  bl 0x029f5a50
02c1d9b0  adrp x0,0x5e59000
02c1d9b4  ldr x0,[x0, #0x1c0]
02c1d9b8  bl 0x029f5a50
02c1d9bc  adrp x0,0x5e5d000
02c1d9c0  ldr x0,[x0, #0x4e8]
02c1d9c4  bl 0x029f5a50
02c1d9c8  mov w8,#0x1
02c1d9cc  strb w8,[x20, #0xf36]
02c1d9d0  ldr x0,[x21]
02c1d9d4  ldr w8,[x0, #0xe4]
02c1d9d8  cbnz w8,0x02c1d9e0
02c1d9dc  bl 0x029f5bd0
02c1d9e0  mov x0,xzr
02c1d9e4  bl 0x02cb35c0
02c1d9e8  tbz w0,#0x0,0x02c1da54
02c1d9ec  adrp x20,0x5e5d000
02c1d9f0  adrp x8,0x5e59000
02c1d9f4  ldr x20,[x20, #0x910]
02c1d9f8  ldr x8,[x8, #0x1c0]
02c1d9fc  ldr x9,[x20]
02c1da00  ldr x0,[x8]
02c1da04  ldr x8,[x9, #0xb8]
02c1da08  ldr w9,[x0, #0xe4]
02c1da0c  ldr x19,[x8]
02c1da10  cbnz w9,0x02c1da18
02c1da14  bl 0x029f5bd0
02c1da18  mov x0,x19
02c1da1c  mov x1,xzr
02c1da20  mov x2,xzr
02c1da24  bl 0x057e14b4
02c1da28  tbnz w0,#0x0,0x02c1da48
02c1da2c  ldr x8,[x20]
02c1da30  ldr x8,[x8, #0xb8]
02c1da34  ldr x0,[x8]
02c1da38  cbz x0,0x02c1da88
02c1da3c  mov x1,xzr
02c1da40  bl 0x02b89a70
02c1da44  tbz w0,#0x0,0x02c1da64
02c1da48  ldp x20,x19,[sp, #0x10]
02c1da4c  ldp x30,x21,[sp], #0x20
02c1da50  ret
02c1da54  mov x0,x19
02c1da58  ldp x20,x19,[sp, #0x10]
02c1da5c  ldp x30,x21,[sp], #0x20
02c1da60  b 0x02c1d4b0
02c1da64  ldr x8,[x20]
02c1da68  ldr x8,[x8, #0xb8]
02c1da6c  ldr x0,[x8]
02c1da70  cbz x0,0x02c1da88
02c1da74  ldp x20,x19,[sp, #0x10]
02c1da78  mov w1,#0xc
02c1da7c  mov x2,xzr
02c1da80  ldp x30,x21,[sp], #0x20
02c1da84  b 0x02b89ab0
02c1da88  bl 0x029f5cfc
