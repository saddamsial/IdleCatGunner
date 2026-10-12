02c2d080  stp x30,x21,[sp, #-0x20]!
02c2d084  stp x20,x19,[sp, #0x10]
02c2d088  adrp x21,0x625c000
02c2d08c  mov w19,w1
02c2d090  mov x20,x0
02c2d094  ldrb w8,[x21, #0x1]
02c2d098  tbnz w8,#0x0,0x02c2d0b0
02c2d09c  adrp x0,0x5e5e000
02c2d0a0  ldr x0,[x0, #0xb8]
02c2d0a4  bl 0x029f5a50
02c2d0a8  mov w8,#0x1
02c2d0ac  strb w8,[x21, #0x1]
02c2d0b0  ldr x8,[x20, #0x68]
02c2d0b4  cbz x8,0x02c2d10c
02c2d0b8  ldr w9,[x8, #0x18]
02c2d0bc  cmp w9,w19
02c2d0c0  b.ls 0x02c2d110
02c2d0c4  adrp x9,0x5e5e000
02c2d0c8  add x8,x8,w19, SXTW  #0x2
02c2d0cc  ldr x9,[x9, #0xb8]
02c2d0d0  ldr w19,[x8, #0x20]
02c2d0d4  ldr x0,[x9]
02c2d0d8  ldr w9,[x0, #0xe4]
02c2d0dc  cbnz w9,0x02c2d0e4
02c2d0e0  bl 0x029f5bd0
02c2d0e4  mov w0,#0x2
02c2d0e8  mov x1,xzr
02c2d0ec  bl 0x02c9077c
02c2d0f0  sub w8,w19,#0x10
02c2d0f4  tst w0,#0x1
02c2d0f8  bic w8,w8,w8, ASR #0x1f
02c2d0fc  csel w0,w8,w19,ne
02c2d100  ldp x20,x19,[sp, #0x10]
02c2d104  ldp x30,x21,[sp], #0x20
02c2d108  ret
02c2d10c  bl 0x029f5cfc
02c2d110  bl 0x029f5d04
