02c653ac  stp x30,x23,[sp, #-0x30]!
02c653b0  stp x22,x21,[sp, #0x10]
02c653b4  stp x20,x19,[sp, #0x20]
02c653b8  adrp x19,0x625c000
02c653bc  adrp x23,0x5e59000
02c653c0  mov w20,w1
02c653c4  ldrb w8,[x19, #0x249]
02c653c8  ldr x23,[x23, #0x1c0]
02c653cc  mov x21,x0
02c653d0  tbnz w8,#0x0,0x02c653f4
02c653d4  adrp x0,0x5e63000
02c653d8  ldr x0,[x0, #0x9c8]
02c653dc  bl 0x029f5a50
02c653e0  adrp x0,0x5e59000
02c653e4  ldr x0,[x0, #0x1c0]
02c653e8  bl 0x029f5a50
02c653ec  mov w8,#0x1
02c653f0  strb w8,[x19, #0x249]
02c653f4  ldr x0,[x23]
02c653f8  mov x19,x21
02c653fc  ldr x22,[x19, #0x90]!
02c65400  ldr w8,[x0, #0xe4]
02c65404  cbnz w8,0x02c6540c
02c65408  bl 0x029f5bd0
02c6540c  mov x0,x22
02c65410  mov x1,xzr
02c65414  mov x2,xzr
02c65418  bl 0x057dfa70
02c6541c  tbz w0,#0x0,0x02c6542c
02c65420  ldr x0,[x19]
02c65424  cbz x0,0x02c654bc
02c65428  bl 0x02c654c4
02c6542c  ldr x8,[x21, #0x78]
02c65430  cbz x8,0x02c654bc
02c65434  ldr w9,[x8, #0x18]
02c65438  cmp w9,w20
02c6543c  b.ls 0x02c654c0
02c65440  add x8,x8,w20, SXTW  #0x3
02c65444  ldr x0,[x8, #0x20]
02c65448  cbz x0,0x02c654bc
02c6544c  adrp x8,0x5e63000
02c65450  ldr x8,[x8, #0x9c8]
02c65454  ldr x1,[x8]
02c65458  bl 0x02fe5f2c
02c6545c  mov x1,x0
02c65460  str x0,[x19]
02c65464  mov x0,x19
02c65468  bl 0x029f59f4
02c6546c  ldr x0,[x23]
02c65470  ldr x20,[x19]
02c65474  ldr w8,[x0, #0xe4]
02c65478  cbnz w8,0x02c65480
02c6547c  bl 0x029f5bd0
02c65480  mov x0,x20
02c65484  mov x1,xzr
02c65488  mov x2,xzr
02c6548c  bl 0x057dfa70
02c65490  tbz w0,#0x0,0x02c654ac
02c65494  ldr x0,[x19]
02c65498  cbz x0,0x02c654bc
02c6549c  ldp x20,x19,[sp, #0x20]
02c654a0  ldp x22,x21,[sp, #0x10]
02c654a4  ldp x30,x23,[sp], #0x30
02c654a8  b 0x02c65548
02c654ac  ldp x20,x19,[sp, #0x20]
02c654b0  ldp x22,x21,[sp, #0x10]
02c654b4  ldp x30,x23,[sp], #0x30
02c654b8  ret
02c654bc  bl 0x029f5cfc
02c654c0  bl 0x029f5d04
