02c59258  stp x30,x21,[sp, #-0x20]!
02c5925c  stp x20,x19,[sp, #0x10]
02c59260  adrp x21,0x625c000
02c59264  adrp x20,0x5e5d000
02c59268  mov x19,x0
02c5926c  ldrb w8,[x21, #0x1b5]
02c59270  ldr x20,[x20, #0x338]
02c59274  tbnz w8,#0x0,0x02c592a4
02c59278  adrp x0,0x5e5d000
02c5927c  ldr x0,[x0, #0x338]
02c59280  bl 0x029f5a50
02c59284  adrp x0,0x5e59000
02c59288  ldr x0,[x0, #0x1c0]
02c5928c  bl 0x029f5a50
02c59290  adrp x0,0x5e5e000
02c59294  ldr x0,[x0, #0x68]
02c59298  bl 0x029f5a50
02c5929c  mov w8,#0x1
02c592a0  strb w8,[x21, #0x1b5]
02c592a4  ldr x0,[x20]
02c592a8  ldr w8,[x0, #0xe4]
02c592ac  cbnz w8,0x02c592b8
02c592b0  bl 0x029f5bd0
02c592b4  ldr x0,[x20]
02c592b8  ldr x8,[x0, #0xb8]
02c592bc  ldrb w9,[x8]
02c592c0  cbz w9,0x02c59404
02c592c4  ldr w9,[x0, #0xe4]
02c592c8  cbnz w9,0x02c592d8
02c592cc  bl 0x029f5bd0
02c592d0  ldr x8,[x20]
02c592d4  ldr x8,[x8, #0xb8]
02c592d8  ldr w9,[x19, #0xb0]
02c592dc  ldr w10,[x19, #0x80]
02c592e0  strb wzr,[x8]
02c592e4  cmp w9,w10
02c592e8  b.le 0x02c592f0
02c592ec  str w9,[x19, #0x80]
02c592f0  mov x0,x19
02c592f4  bl 0x02c59418
02c592f8  mov x0,x19
02c592fc  bl 0x02c5952c
02c59300  ldr x8,[x19, #0xf8]
02c59304  cbz x8,0x02c59410
02c59308  ldr w9,[x8, #0x18]
02c5930c  cmp w0,w9
02c59310  b.cs 0x02c59414
02c59314  add x8,x8,w0, SXTW  #0x2
02c59318  ldr w9,[x19, #0xb0]
02c5931c  adrp x21,0x5e5e000
02c59320  adrp x20,0x5e59000
02c59324  ldr w10,[x8, #0x20]!
02c59328  ldr x21,[x21, #0x68]
02c5932c  ldr x20,[x20, #0x1c0]
02c59330  cmp w9,w10
02c59334  b.le 0x02c5933c
02c59338  str w9,[x8]
02c5933c  mov x0,x19
02c59340  mov w1,#0x1
02c59344  bl 0x02c58e74
02c59348  ldr x8,[x21]
02c5934c  ldr x0,[x20]
02c59350  ldr x8,[x8, #0xb8]
02c59354  ldr w9,[x0, #0xe4]
02c59358  ldr x20,[x8]
02c5935c  cbnz w9,0x02c59364
02c59360  bl 0x029f5bd0
02c59364  mov x0,x20
02c59368  mov x1,xzr
02c5936c  mov x2,xzr
02c59370  bl 0x057dfa70
02c59374  tbz w0,#0x0,0x02c5938c
02c59378  ldr x8,[x21]
02c5937c  ldr x8,[x8, #0xb8]
02c59380  ldr x0,[x8]
02c59384  cbz x0,0x02c59410
02c59388  bl 0x02c53c8c
02c5938c  ldr x8,[x19, #0xf0]
02c59390  cbz x8,0x02c59410
02c59394  ldr x0,[x19, #0x40]
02c59398  cbz x0,0x02c59410
02c5939c  mov w1,#0x1
02c593a0  mov x2,xzr
02c593a4  mov w20,#0x1
02c593a8  bl 0x057dff3c
02c593ac  mov x0,x19
02c593b0  bl 0x02c57578
02c593b4  adrp x19,0x625b000
02c593b8  ldrb w8,[x19, #0xa57]
02c593bc  cbnz w8,0x02c593d0
02c593c0  adrp x0,0x5e5d000
02c593c4  ldr x0,[x0, #0xd70]
02c593c8  bl 0x029f5a50
02c593cc  strb w20,[x19, #0xa57]
02c593d0  adrp x8,0x5e5d000
02c593d4  ldr x8,[x8, #0xd70]
02c593d8  ldr x8,[x8]
02c593dc  ldr x8,[x8, #0xb8]
02c593e0  ldr x0,[x8]
02c593e4  cbz x0,0x02c59410
02c593e8  ldp x20,x19,[sp, #0x10]
02c593ec  fmov s0,0x3f800000
02c593f0  mov w1,#0xb
02c593f4  mov x2,xzr
02c593f8  mov x3,xzr
02c593fc  ldp x30,x21,[sp], #0x20
02c59400  b 0x02c1f10c
02c59404  ldp x20,x19,[sp, #0x10]
02c59408  ldp x30,x21,[sp], #0x20
02c5940c  ret
02c59410  bl 0x029f5cfc
02c59414  bl 0x029f5d04
