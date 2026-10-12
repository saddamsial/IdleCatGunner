02c5738c  stp x30,x27,[sp, #-0x50]!
02c57390  stp x26,x25,[sp, #0x10]
02c57394  stp x24,x23,[sp, #0x20]
02c57398  stp x22,x21,[sp, #0x30]
02c5739c  stp x20,x19,[sp, #0x40]
02c573a0  adrp x20,0x625c000
02c573a4  adrp x23,0x5e5e000
02c573a8  mov x19,x0
02c573ac  ldrb w8,[x20, #0x1ad]
02c573b0  ldr x23,[x23, #0x70]
02c573b4  tbnz w8,#0x0,0x02c573e4
02c573b8  adrp x0,0x5e62000
02c573bc  ldr x0,[x0, #0xfe8]
02c573c0  bl 0x029f5a50
02c573c4  adrp x0,0x5e63000
02c573c8  ldr x0,[x0, #0x128]
02c573cc  bl 0x029f5a50
02c573d0  adrp x0,0x5e5e000
02c573d4  ldr x0,[x0, #0x70]
02c573d8  bl 0x029f5a50
02c573dc  mov w8,#0x1
02c573e0  strb w8,[x20, #0x1ad]
02c573e4  ldr x0,[x23]
02c573e8  ldr w8,[x0, #0xe4]
02c573ec  cbnz w8,0x02c573f4
02c573f0  bl 0x029f5bd0
02c573f4  bl 0x02c581f4
02c573f8  ldr x8,[x19, #0x88]
02c573fc  cbz x8,0x02c574d8
02c57400  adrp x24,0x5e63000
02c57404  mov x20,x0
02c57408  mov w25,#0x8
02c5740c  ldr x24,[x24, #0x128]
02c57410  mov w26,#0xffffffff
02c57414  ldr w9,[x8, #0x18]
02c57418  sub x21,x25,#0x8
02c5741c  cmp x21,w9, SXTW 
02c57420  b.ge 0x02c574dc
02c57424  cbz x20,0x02c574d8
02c57428  ldrsw x10,[x20, #0x18]
02c5742c  cmp x21,x10
02c57430  b.ge 0x02c574ac
02c57434  ldr x2,[x24]
02c57438  ldr x22,[x19, #0x90]
02c5743c  mov x0,x20
02c57440  mov w1,w21
02c57444  bl 0x044f7718
02c57448  cbz x22,0x02c574d8
02c5744c  ldr w8,[x22, #0x18]
02c57450  cmp x21,x8
02c57454  b.cs 0x02c574f4
02c57458  ldr x2,[x24]
02c5745c  ldr x27,[x19, #0x88]
02c57460  mov w1,w21
02c57464  str w0,[x22, x25, LSL #0x2]
02c57468  mov x0,x20
02c5746c  bl 0x044f7718
02c57470  ldr x8,[x23]
02c57474  mov w22,w0
02c57478  ldr w9,[x8, #0xe4]
02c5747c  cbnz w9,0x02c57488
02c57480  mov x0,x8
02c57484  bl 0x029f5bd0
02c57488  mov w0,w22
02c5748c  bl 0x02c5808c
02c57490  cbz x27,0x02c574d8
02c57494  ldr w8,[x27, #0x18]
02c57498  cmp x21,x8
02c5749c  b.cs 0x02c574f4
02c574a0  ldr x8,[x19, #0x88]
02c574a4  str w0,[x27, x25, LSL #0x2]
02c574a8  b 0x02c574d0
02c574ac  cmp x21,x9
02c574b0  b.cs 0x02c574f4
02c574b4  ldr x9,[x19, #0x90]
02c574b8  str w26,[x8, x25, LSL #0x2]
02c574bc  cbz x9,0x02c574d8
02c574c0  ldr w10,[x9, #0x18]
02c574c4  cmp x21,x10
02c574c8  b.cs 0x02c574f4
02c574cc  str w26,[x9, x25, LSL #0x2]
02c574d0  add x25,x25,#0x1
02c574d4  cbnz x8,0x02c57414
02c574d8  bl 0x029f5cfc
02c574dc  ldp x20,x19,[sp, #0x40]
02c574e0  ldp x22,x21,[sp, #0x30]
02c574e4  ldp x24,x23,[sp, #0x20]
02c574e8  ldp x26,x25,[sp, #0x10]
02c574ec  ldp x30,x27,[sp], #0x50
02c574f0  ret
02c574f4  bl 0x029f5d04
