02c2f0a8  stp x30,x23,[sp, #-0x30]!
02c2f0ac  stp x22,x21,[sp, #0x10]
02c2f0b0  stp x20,x19,[sp, #0x20]
02c2f0b4  adrp x20,0x625c000
02c2f0b8  adrp x21,0x5e5d000
02c2f0bc  mov x19,x0
02c2f0c0  ldrb w8,[x20, #0x18]
02c2f0c4  ldr x21,[x21, #0xd28]
02c2f0c8  tbnz w8,#0x0,0x02c2f0e0
02c2f0cc  adrp x0,0x5e5d000
02c2f0d0  ldr x0,[x0, #0xd28]
02c2f0d4  bl 0x029f5a50
02c2f0d8  mov w8,#0x1
02c2f0dc  strb w8,[x20, #0x18]
02c2f0e0  ldr x0,[x21]
02c2f0e4  mov x22,xzr
02c2f0e8  mov w20,wzr
02c2f0ec  ldr w8,[x0, #0xe4]
02c2f0f0  cbnz w8,0x02c2f0fc
02c2f0f4  bl 0x029f5bd0
02c2f0f8  ldr x0,[x21]
02c2f0fc  ldr x8,[x0, #0xb8]
02c2f100  ldr x8,[x8, #0x8]
02c2f104  cbz x8,0x02c2f16c
02c2f108  ldrsw x9,[x8, #0x18]
02c2f10c  cmp x22,x9
02c2f110  b.ge 0x02c2f158
02c2f114  ldr w9,[x0, #0xe4]
02c2f118  ldr w23,[x19, #0x30]
02c2f11c  cbnz w9,0x02c2f134
02c2f120  bl 0x029f5bd0
02c2f124  ldr x0,[x21]
02c2f128  ldr x8,[x0, #0xb8]
02c2f12c  ldr x8,[x8, #0x8]
02c2f130  cbz x8,0x02c2f16c
02c2f134  ldr w9,[x8, #0x18]
02c2f138  cmp x22,x9
02c2f13c  b.cs 0x02c2f170
02c2f140  add x8,x8,x22, LSL #0x2
02c2f144  ldr w8,[x8, #0x20]
02c2f148  cmp w23,w8
02c2f14c  csel w20,w20,w22,lt
02c2f150  add x22,x22,#0x1
02c2f154  b 0x02c2f0ec
02c2f158  mov w0,w20
02c2f15c  ldp x20,x19,[sp, #0x20]
02c2f160  ldp x22,x21,[sp, #0x10]
02c2f164  ldp x30,x23,[sp], #0x30
02c2f168  ret
02c2f16c  bl 0x029f5cfc
02c2f170  bl 0x029f5d04
