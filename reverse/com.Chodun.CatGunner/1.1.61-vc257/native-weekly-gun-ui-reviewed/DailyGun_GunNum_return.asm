02c8b23c  str x30,[sp, #-0x20]!
02c8b240  stp x20,x19,[sp, #0x10]
02c8b244  adrp x20,0x625c000
02c8b248  mov w19,w0
02c8b24c  ldrb w8,[x20, #0x3a9]
02c8b250  tbnz w8,#0x0,0x02c8b268
02c8b254  adrp x0,0x5e62000
02c8b258  ldr x0,[x0, #0x660]
02c8b25c  bl 0x029f5a50
02c8b260  mov w8,#0x1
02c8b264  strb w8,[x20, #0x3a9]
02c8b268  cmp w19,#0x2
02c8b26c  b.hi 0x02c8b2b8
02c8b270  adrp x20,0x5e62000
02c8b274  ldr x20,[x20, #0x660]
02c8b278  ldr x0,[x20]
02c8b27c  ldr w8,[x0, #0xe4]
02c8b280  cbnz w8,0x02c8b28c
02c8b284  bl 0x029f5bd0
02c8b288  ldr x0,[x20]
02c8b28c  ldr x8,[x0, #0xb8]
02c8b290  ldr x8,[x8, #0x18]
02c8b294  cbz x8,0x02c8b2c8
02c8b298  ldr w9,[x8, #0x18]
02c8b29c  cmp w9,w19
02c8b2a0  b.ls 0x02c8b2cc
02c8b2a4  add x8,x8,w19, UXTW  #0x2
02c8b2a8  ldr w19,[x8, #0x20]
02c8b2ac  bl 0x02c8b1c0
02c8b2b0  add w0,w0,w19
02c8b2b4  b 0x02c8b2bc
02c8b2b8  mov w0,#0xffffffff
02c8b2bc  ldp x20,x19,[sp, #0x10]
02c8b2c0  ldr x30,[sp], #0x20
02c8b2c4  ret
02c8b2c8  bl 0x029f5cfc
02c8b2cc  bl 0x029f5d04
