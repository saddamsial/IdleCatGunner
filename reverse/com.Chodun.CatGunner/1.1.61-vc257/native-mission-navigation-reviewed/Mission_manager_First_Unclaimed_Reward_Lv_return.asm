02ba638c  str x30,[sp, #-0x30]!
02ba6390  stp x22,x21,[sp, #0x10]
02ba6394  stp x20,x19,[sp, #0x20]
02ba6398  adrp x20,0x625b000
02ba639c  mov x19,x0
02ba63a0  ldrb w8,[x20, #0xa53]
02ba63a4  tbnz w8,#0x0,0x02ba63bc
02ba63a8  adrp x0,0x5e5d000
02ba63ac  ldr x0,[x0, #0xd50]
02ba63b0  bl 0x029f5a50
02ba63b4  mov w8,#0x1
02ba63b8  strb w8,[x20, #0xa53]
02ba63bc  ldr x8,[x19, #0x38]
02ba63c0  cbz x8,0x02ba6440
02ba63c4  adrp x21,0x5e5d000
02ba63c8  mov w20,wzr
02ba63cc  ldr x21,[x21, #0xd50]
02ba63d0  ldr w9,[x8, #0x18]
02ba63d4  cmp w20,w9
02ba63d8  b.ge 0x02ba6444
02ba63dc  cmp w20,w9
02ba63e0  b.cs 0x02ba645c
02ba63e4  sxtw x22,w20
02ba63e8  add x8,x8,x22
02ba63ec  ldrb w8,[x8, #0x20]
02ba63f0  cbz w8,0x02ba6448
02ba63f4  ldr x0,[x21]
02ba63f8  ldr w8,[x0, #0xe4]
02ba63fc  cbnz w8,0x02ba6408
02ba6400  bl 0x029f5bd0
02ba6404  ldr x0,[x21]
02ba6408  ldr x8,[x0, #0xb8]
02ba640c  ldrb w8,[x8]
02ba6410  cbz w8,0x02ba6434
02ba6414  ldr x8,[x19, #0x40]
02ba6418  cbz x8,0x02ba6440
02ba641c  ldr w9,[x8, #0x18]
02ba6420  cmp w20,w9
02ba6424  b.cs 0x02ba645c
02ba6428  add x8,x8,x22
02ba642c  ldrb w8,[x8, #0x20]
02ba6430  cbz w8,0x02ba6448
02ba6434  ldr x8,[x19, #0x38]
02ba6438  add w20,w20,#0x1
02ba643c  cbnz x8,0x02ba63d0
02ba6440  bl 0x029f5cfc
02ba6444  mov w20,#0xffffffff
02ba6448  mov w0,w20
02ba644c  ldp x20,x19,[sp, #0x20]
02ba6450  ldp x22,x21,[sp, #0x10]
02ba6454  ldr x30,[sp], #0x30
02ba6458  ret
02ba645c  bl 0x029f5d04
