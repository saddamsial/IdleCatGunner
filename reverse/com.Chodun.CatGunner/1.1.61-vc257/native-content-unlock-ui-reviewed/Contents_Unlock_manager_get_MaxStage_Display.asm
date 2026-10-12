02b9e050  str x30,[sp, #-0x20]!
02b9e054  stp x20,x19,[sp, #0x10]
02b9e058  adrp x19,0x625b000
02b9e05c  adrp x20,0x5e5d000
02b9e060  ldrb w8,[x19, #0x9e3]
02b9e064  ldr x20,[x20, #0xc20]
02b9e068  tbnz w8,#0x0,0x02b9e08c
02b9e06c  adrp x0,0x5e59000
02b9e070  ldr x0,[x0, #0x1c0]
02b9e074  bl 0x029f5a50
02b9e078  adrp x0,0x5e5d000
02b9e07c  ldr x0,[x0, #0xc20]
02b9e080  bl 0x029f5a50
02b9e084  mov w8,#0x1
02b9e088  strb w8,[x19, #0x9e3]
02b9e08c  ldr x0,[x20]
02b9e090  adrp x19,0x5e59000
02b9e094  ldr w8,[x0, #0xe4]
02b9e098  ldr x19,[x19, #0x1c0]
02b9e09c  cbnz w8,0x02b9e0a8
02b9e0a0  bl 0x029f5bd0
02b9e0a4  ldr x0,[x20]
02b9e0a8  ldr x8,[x19]
02b9e0ac  ldr x9,[x0, #0xb8]
02b9e0b0  ldr w10,[x8, #0xe4]
02b9e0b4  ldr x19,[x9, #0x10]
02b9e0b8  cbnz w10,0x02b9e0c4
02b9e0bc  mov x0,x8
02b9e0c0  bl 0x029f5bd0
02b9e0c4  mov x0,x19
02b9e0c8  mov x1,xzr
02b9e0cc  mov x2,xzr
02b9e0d0  bl 0x057dfa70
02b9e0d4  tbz w0,#0x0,0x02b9e11c
02b9e0d8  ldr x0,[x20]
02b9e0dc  ldr w8,[x0, #0xe4]
02b9e0e0  cbnz w8,0x02b9e0ec
02b9e0e4  bl 0x029f5bd0
02b9e0e8  ldr x0,[x20]
02b9e0ec  ldr x8,[x0, #0xb8]
02b9e0f0  ldr x8,[x8, #0x10]
02b9e0f4  cbz x8,0x02b9e12c
02b9e0f8  ldrsw x8,[x8, #0x30]
02b9e0fc  mov w9,#0x6667
02b9e100  movk w9,#0x6666, LSL #16
02b9e104  smull x8,w8,w9
02b9e108  lsr x9,x8,#0x3f
02b9e10c  asr x8,x8,#0x22
02b9e110  add w8,w8,w9
02b9e114  add w0,w8,#0x1
02b9e118  b 0x02b9e120
02b9e11c  mov w0,wzr
02b9e120  ldp x20,x19,[sp, #0x10]
02b9e124  ldr x30,[sp], #0x20
02b9e128  ret
02b9e12c  bl 0x029f5cfc
