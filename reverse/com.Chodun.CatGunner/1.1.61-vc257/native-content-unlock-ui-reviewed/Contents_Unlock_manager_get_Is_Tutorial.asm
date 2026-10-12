02b9e198  stp x30,x21,[sp, #-0x20]!
02b9e19c  stp x20,x19,[sp, #0x10]
02b9e1a0  adrp x21,0x625b000
02b9e1a4  adrp x20,0x5e5e000
02b9e1a8  adrp x19,0x5e59000
02b9e1ac  ldrb w8,[x21, #0x9e5]
02b9e1b0  ldr x20,[x20, #0x4d8]
02b9e1b4  ldr x19,[x19, #0x1c0]
02b9e1b8  tbnz w8,#0x0,0x02b9e1dc
02b9e1bc  adrp x0,0x5e59000
02b9e1c0  ldr x0,[x0, #0x1c0]
02b9e1c4  bl 0x029f5a50
02b9e1c8  adrp x0,0x5e5e000
02b9e1cc  ldr x0,[x0, #0x4d8]
02b9e1d0  bl 0x029f5a50
02b9e1d4  mov w8,#0x1
02b9e1d8  strb w8,[x21, #0x9e5]
02b9e1dc  ldr x8,[x20]
02b9e1e0  ldr x0,[x19]
02b9e1e4  ldr x8,[x8, #0xb8]
02b9e1e8  ldr w9,[x0, #0xe4]
02b9e1ec  ldr x19,[x8]
02b9e1f0  cbnz w9,0x02b9e1f8
02b9e1f4  bl 0x029f5bd0
02b9e1f8  mov x0,x19
02b9e1fc  mov x1,xzr
02b9e200  mov x2,xzr
02b9e204  bl 0x057dfa70
02b9e208  tbz w0,#0x0,0x02b9e22c
02b9e20c  ldr x8,[x20]
02b9e210  ldr x8,[x8, #0xb8]
02b9e214  ldr x8,[x8]
02b9e218  cbz x8,0x02b9e23c
02b9e21c  ldr w8,[x8, #0x60]
02b9e220  cmp w8,#0x5
02b9e224  cset w0,ne
02b9e228  b 0x02b9e230
02b9e22c  mov w0,wzr
02b9e230  ldp x20,x19,[sp, #0x10]
02b9e234  ldp x30,x21,[sp], #0x20
02b9e238  ret
02b9e23c  bl 0x029f5cfc
