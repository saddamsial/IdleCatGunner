02c98350  str x30,[sp, #-0x20]!
02c98354  stp x20,x19,[sp, #0x10]
02c98358  adrp x19,0x625c000
02c9835c  adrp x20,0x5e5d000
02c98360  ldrb w8,[x19, #0x44c]
02c98364  ldr x20,[x20, #0xd50]
02c98368  tbnz w8,#0x0,0x02c983a4
02c9836c  adrp x0,0x5e5d000
02c98370  ldr x0,[x0, #0x338]
02c98374  bl 0x029f5a50
02c98378  adrp x0,0x5e5d000
02c9837c  ldr x0,[x0, #0xd50]
02c98380  bl 0x029f5a50
02c98384  adrp x0,0x5e59000
02c98388  ldr x0,[x0, #0x1c0]
02c9838c  bl 0x029f5a50
02c98390  adrp x0,0x5e5d000
02c98394  ldr x0,[x0, #0x920]
02c98398  bl 0x029f5a50
02c9839c  mov w8,#0x1
02c983a0  strb w8,[x19, #0x44c]
02c983a4  ldr x0,[x20]
02c983a8  adrp x19,0x5e59000
02c983ac  ldr w8,[x0, #0xe4]
02c983b0  ldr x19,[x19, #0x1c0]
02c983b4  cbnz w8,0x02c983c0
02c983b8  bl 0x029f5bd0
02c983bc  ldr x0,[x20]
02c983c0  ldr x8,[x19]
02c983c4  ldr x9,[x0, #0xb8]
02c983c8  mov w11,#0x1
02c983cc  ldr w10,[x8, #0xe4]
02c983d0  ldr x19,[x9, #0x8]
02c983d4  strb w11,[x9]
02c983d8  cbnz w10,0x02c983e4
02c983dc  mov x0,x8
02c983e0  bl 0x029f5bd0
02c983e4  mov x0,x19
02c983e8  mov x1,xzr
02c983ec  mov x2,xzr
02c983f0  bl 0x057dfa70
02c983f4  tbz w0,#0x0,0x02c98420
02c983f8  ldr x0,[x20]
02c983fc  ldr w8,[x0, #0xe4]
02c98400  cbnz w8,0x02c9840c
02c98404  bl 0x029f5bd0
02c98408  ldr x0,[x20]
02c9840c  ldr x8,[x0, #0xb8]
02c98410  ldr x0,[x8, #0x8]
02c98414  cbz x0,0x02c9848c
02c98418  mov x1,xzr
02c9841c  bl 0x02ba4028
02c98420  adrp x8,0x5e5d000
02c98424  adrp x19,0x5e5d000
02c98428  ldr x8,[x8, #0x338]
02c9842c  ldr x0,[x8]
02c98430  ldr w8,[x0, #0xe4]
02c98434  ldr x19,[x19, #0x920]
02c98438  cbnz w8,0x02c98440
02c9843c  bl 0x029f5bd0
02c98440  mov w0,#0x1f4
02c98444  mov x1,xzr
02c98448  bl 0x02b7ed10
02c9844c  ldr x0,[x19]
02c98450  ldr w8,[x0, #0xe4]
02c98454  cbnz w8,0x02c98460
02c98458  bl 0x029f5bd0
02c9845c  ldr x0,[x19]
02c98460  ldr x8,[x0, #0xb8]
02c98464  ldr x8,[x8, #0x50]
02c98468  cbz x8,0x02c9847c
02c9846c  ldr x9,[x8, #0x18]
02c98470  ldr x0,[x8, #0x40]
02c98474  ldr x1,[x8, #0x28]
02c98478  blr x9
02c9847c  ldp x20,x19,[sp, #0x10]
02c98480  mov x0,xzr
02c98484  ldr x30,[sp], #0x20
02c98488  b 0x02c0faf8
02c9848c  bl 0x029f5cfc
