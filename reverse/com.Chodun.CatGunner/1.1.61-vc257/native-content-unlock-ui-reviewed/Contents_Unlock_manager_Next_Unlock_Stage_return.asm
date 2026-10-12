02b9e240  str x30,[sp, #-0x30]!
02b9e244  stp x22,x21,[sp, #0x10]
02b9e248  stp x20,x19,[sp, #0x20]
02b9e24c  adrp x19,0x625b000
02b9e250  ldrb w8,[x19, #0x9e6]
02b9e254  tbnz w8,#0x0,0x02b9e26c
02b9e258  adrp x0,0x5e5e000
02b9e25c  ldr x0,[x0, #0x4d0]
02b9e260  bl 0x029f5a50
02b9e264  mov w8,#0x1
02b9e268  strb w8,[x19, #0x9e6]
02b9e26c  adrp x20,0x5e5e000
02b9e270  mov w19,#0x7fffffff
02b9e274  mov w21,#0x8
02b9e278  ldr x20,[x20, #0x4d0]
02b9e27c  ldr x0,[x20]
02b9e280  ldr w8,[x0, #0xe4]
02b9e284  cbnz w8,0x02b9e290
02b9e288  bl 0x029f5bd0
02b9e28c  ldr x0,[x20]
02b9e290  ldr x8,[x0, #0xb8]
02b9e294  ldr x8,[x8, #0x10]
02b9e298  cbz x8,0x02b9e340
02b9e29c  ldrsw x9,[x8, #0x18]
02b9e2a0  sub x22,x21,#0x8
02b9e2a4  cmp x22,x9
02b9e2a8  b.ge 0x02b9e324
02b9e2ac  ldr w9,[x0, #0xe4]
02b9e2b0  cbnz w9,0x02b9e2c8
02b9e2b4  bl 0x029f5bd0
02b9e2b8  ldr x8,[x20]
02b9e2bc  ldr x8,[x8, #0xb8]
02b9e2c0  ldr x8,[x8, #0x10]
02b9e2c4  cbz x8,0x02b9e340
02b9e2c8  ldr w9,[x8, #0x18]
02b9e2cc  cmp x22,x9
02b9e2d0  b.cs 0x02b9e344
02b9e2d4  ldr w0,[x8, x21, LSL #0x2]
02b9e2d8  bl 0x02b9e130
02b9e2dc  tbnz w0,#0x0,0x02b9e31c
02b9e2e0  ldr x0,[x20]
02b9e2e4  ldr w8,[x0, #0xe4]
02b9e2e8  cbnz w8,0x02b9e2f4
02b9e2ec  bl 0x029f5bd0
02b9e2f0  ldr x0,[x20]
02b9e2f4  ldr x8,[x0, #0xb8]
02b9e2f8  ldr x8,[x8, #0x10]
02b9e2fc  cbz x8,0x02b9e340
02b9e300  ldr w9,[x8, #0x18]
02b9e304  cmp x22,x9
02b9e308  b.cs 0x02b9e344
02b9e30c  ldr w0,[x8, x21, LSL #0x2]
02b9e310  bl 0x02b9dfd4
02b9e314  cmp w19,w0
02b9e318  csel w19,w19,w0,lt
02b9e31c  add x21,x21,#0x1
02b9e320  b 0x02b9e27c
02b9e324  mov w8,#0x7fffffff
02b9e328  ldp x22,x21,[sp, #0x10]
02b9e32c  cmp w19,w8
02b9e330  csinv w0,w19,wzr,ne
02b9e334  ldp x20,x19,[sp, #0x20]
02b9e338  ldr x30,[sp], #0x30
02b9e33c  ret
02b9e340  bl 0x029f5cfc
02b9e344  bl 0x029f5d04
