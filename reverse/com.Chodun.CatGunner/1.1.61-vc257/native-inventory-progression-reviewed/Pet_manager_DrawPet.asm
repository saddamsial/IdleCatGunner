02c7d16c  str x30,[sp, #-0x30]!
02c7d170  stp x22,x21,[sp, #0x10]
02c7d174  stp x20,x19,[sp, #0x20]
02c7d178  adrp x21,0x625c000
02c7d17c  mov w19,w1
02c7d180  mov x20,x0
02c7d184  ldrb w8,[x21, #0x326]
02c7d188  tbnz w8,#0x0,0x02c7d1b8
02c7d18c  adrp x0,0x5e58000
02c7d190  ldr x0,[x0, #0xf08]
02c7d194  bl 0x029f5a50
02c7d198  adrp x0,0x5e59000
02c7d19c  ldr x0,[x0, #0x1c0]
02c7d1a0  bl 0x029f5a50
02c7d1a4  adrp x0,0x5e63000
02c7d1a8  ldr x0,[x0, #0xd58]
02c7d1ac  bl 0x029f5a50
02c7d1b0  mov w8,#0x1
02c7d1b4  strb w8,[x21, #0x326]
02c7d1b8  mov x0,x20
02c7d1bc  bl 0x02c7d2b8
02c7d1c0  cmn w0,#0x1
02c7d1c4  b.eq 0x02c7d26c
02c7d1c8  ldr x9,[x20, #0x38]
02c7d1cc  cbz x9,0x02c7d2b0
02c7d1d0  ldr w8,[x9, #0x18]
02c7d1d4  mov w21,w0
02c7d1d8  cmp w0,w8
02c7d1dc  b.cs 0x02c7d2b4
02c7d1e0  sxtw x8,w21
02c7d1e4  add x10,x9,x8, LSL #0x2
02c7d1e8  ldr x9,[x20, #0x40]
02c7d1ec  str w19,[x10, #0x20]
02c7d1f0  cbz x9,0x02c7d20c
02c7d1f4  ldr w10,[x9, #0x18]
02c7d1f8  cmp w21,w10
02c7d1fc  b.cs 0x02c7d2b4
02c7d200  add x8,x9,x8, LSL #0x2
02c7d204  mov w9,#0xffffffff
02c7d208  str w9,[x8, #0x20]
02c7d20c  adrp x8,0x5e59000
02c7d210  ldr x8,[x8, #0x1c0]
02c7d214  ldr x22,[x20, #0x88]
02c7d218  ldr x0,[x8]
02c7d21c  ldr w8,[x0, #0xe4]
02c7d220  cbnz w8,0x02c7d228
02c7d224  bl 0x029f5bd0
02c7d228  mov x0,x22
02c7d22c  mov x1,xzr
02c7d230  mov x2,xzr
02c7d234  bl 0x057dfa70
02c7d238  tbz w0,#0x0,0x02c7d260
02c7d23c  ldr x0,[x20, #0x88]
02c7d240  cbz x0,0x02c7d2b0
02c7d244  mov x1,xzr
02c7d248  bl 0x02c825a8
02c7d24c  ldr x0,[x20, #0x88]
02c7d250  cbz x0,0x02c7d2b0
02c7d254  mov w1,w21
02c7d258  mov x2,xzr
02c7d25c  bl 0x02c832f0
02c7d260  mov x0,x20
02c7d264  bl 0x02c7c878
02c7d268  b 0x02c7d29c
02c7d26c  adrp x8,0x5e58000
02c7d270  ldr x8,[x8, #0xf08]
02c7d274  ldr x0,[x8]
02c7d278  ldr w8,[x0, #0xe4]
02c7d27c  cbnz w8,0x02c7d284
02c7d280  bl 0x029f5bd0
02c7d284  adrp x8,0x5e63000
02c7d288  mov x1,xzr
02c7d28c  ldr x8,[x8, #0xd58]
02c7d290  ldr x0,[x8]
02c7d294  bl 0x0579a8d0
02c7d298  mov w19,#0xffffffff
02c7d29c  mov w0,w19
02c7d2a0  ldp x20,x19,[sp, #0x20]
02c7d2a4  ldp x22,x21,[sp, #0x10]
02c7d2a8  ldr x30,[sp], #0x30
02c7d2ac  ret
02c7d2b0  bl 0x029f5cfc
02c7d2b4  bl 0x029f5d04
