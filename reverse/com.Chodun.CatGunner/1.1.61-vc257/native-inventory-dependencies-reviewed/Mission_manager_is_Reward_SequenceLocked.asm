02ba629c  str x30,[sp, #-0x40]!
02ba62a0  stp x24,x23,[sp, #0x10]
02ba62a4  stp x22,x21,[sp, #0x20]
02ba62a8  stp x20,x19,[sp, #0x30]
02ba62ac  adrp x21,0x625b000
02ba62b0  mov w19,w2
02ba62b4  mov x20,x0
02ba62b8  ldrb w8,[x21, #0xa52]
02ba62bc  tbnz w8,#0x0,0x02ba62d4
02ba62c0  adrp x0,0x5e5d000
02ba62c4  ldr x0,[x0, #0xd50]
02ba62c8  bl 0x029f5a50
02ba62cc  mov w8,#0x1
02ba62d0  strb w8,[x21, #0xa52]
02ba62d4  cmp w19,#0x1
02ba62d8  b.lt 0x02ba6368
02ba62dc  adrp x22,0x5e5d000
02ba62e0  mov x21,xzr
02ba62e4  mov w24,w19
02ba62e8  ldr x22,[x22, #0xd50]
02ba62ec  mov w23,#0x1
02ba62f0  ldr x8,[x20, #0x38]
02ba62f4  cbz x8,0x02ba6384
02ba62f8  ldr w9,[x8, #0x18]
02ba62fc  cmp w21,w9
02ba6300  b.cs 0x02ba6388
02ba6304  add x8,x8,x21
02ba6308  ldrb w8,[x8, #0x20]
02ba630c  cbz w8,0x02ba636c
02ba6310  ldr x0,[x22]
02ba6314  ldr w8,[x0, #0xe4]
02ba6318  cbnz w8,0x02ba6324
02ba631c  bl 0x029f5bd0
02ba6320  ldr x0,[x22]
02ba6324  ldr x8,[x0, #0xb8]
02ba6328  ldrb w8,[x8]
02ba632c  cbz w8,0x02ba6350
02ba6330  ldr x8,[x20, #0x40]
02ba6334  cbz x8,0x02ba6384
02ba6338  ldr w9,[x8, #0x18]
02ba633c  cmp w21,w9
02ba6340  b.cs 0x02ba6388
02ba6344  add x8,x8,x21
02ba6348  ldrb w8,[x8, #0x20]
02ba634c  cbz w8,0x02ba636c
02ba6350  add x21,x21,#0x1
02ba6354  cmp w21,w19
02ba6358  cset w23,lt
02ba635c  cmp w24,w21
02ba6360  b.ne 0x02ba62f0
02ba6364  b 0x02ba636c
02ba6368  mov w23,wzr
02ba636c  and w0,w23,#0x1
02ba6370  ldp x20,x19,[sp, #0x30]
02ba6374  ldp x22,x21,[sp, #0x20]
02ba6378  ldp x24,x23,[sp, #0x10]
02ba637c  ldr x30,[sp], #0x40
02ba6380  ret
02ba6384  bl 0x029f5cfc
02ba6388  bl 0x029f5d04
