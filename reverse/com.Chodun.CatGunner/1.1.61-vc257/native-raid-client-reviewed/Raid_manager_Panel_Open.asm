02c57280  stp x30,x21,[sp, #-0x20]!
02c57284  stp x20,x19,[sp, #0x10]
02c57288  adrp x20,0x625c000
02c5728c  mov x19,x0
02c57290  ldrb w8,[x20, #0x1a0]
02c57294  tbnz w8,#0x0,0x02c572b8
02c57298  adrp x0,0x5e59000
02c5729c  ldr x0,[x0, #0x1c0]
02c572a0  bl 0x029f5a50
02c572a4  adrp x0,0x5e5e000
02c572a8  ldr x0,[x0, #0x3e0]
02c572ac  bl 0x029f5a50
02c572b0  mov w8,#0x1
02c572b4  strb w8,[x20, #0x1a0]
02c572b8  ldr x0,[x19, #0x30]
02c572bc  cbz x0,0x02c57388
02c572c0  mov x1,xzr
02c572c4  bl 0x057dc1c8
02c572c8  cbz x0,0x02c57388
02c572cc  mov w1,#0x1
02c572d0  mov x2,xzr
02c572d4  bl 0x057dff3c
02c572d8  mov x0,x19
02c572dc  bl 0x02c5738c
02c572e0  ldr x0,[x19, #0x30]
02c572e4  cbz x0,0x02c57388
02c572e8  adrp x20,0x5e5e000
02c572ec  adrp x21,0x5e59000
02c572f0  mov x1,xzr
02c572f4  ldr x20,[x20, #0x3e0]
02c572f8  ldr x21,[x21, #0x1c0]
02c572fc  bl 0x02c5b898
02c57300  mov x0,x19
02c57304  bl 0x02c574f8
02c57308  ldr x0,[x20]
02c5730c  ldr w8,[x0, #0xe4]
02c57310  cbnz w8,0x02c5731c
02c57314  bl 0x029f5bd0
02c57318  ldr x0,[x20]
02c5731c  ldr x8,[x21]
02c57320  ldr x9,[x0, #0xb8]
02c57324  ldr w10,[x8, #0xe4]
02c57328  ldr x19,[x9]
02c5732c  cbnz w10,0x02c57338
02c57330  mov x0,x8
02c57334  bl 0x029f5bd0
02c57338  mov x0,x19
02c5733c  mov x1,xzr
02c57340  mov x2,xzr
02c57344  bl 0x057dfa70
02c57348  tbz w0,#0x0,0x02c5737c
02c5734c  ldr x0,[x20]
02c57350  ldr w8,[x0, #0xe4]
02c57354  cbnz w8,0x02c57360
02c57358  bl 0x029f5bd0
02c5735c  ldr x0,[x20]
02c57360  ldr x8,[x0, #0xb8]
02c57364  ldr x0,[x8]
02c57368  cbz x0,0x02c57388
02c5736c  ldp x20,x19,[sp, #0x10]
02c57370  mov x1,xzr
02c57374  ldp x30,x21,[sp], #0x20
02c57378  b 0x02ca0830
02c5737c  ldp x20,x19,[sp, #0x10]
02c57380  ldp x30,x21,[sp], #0x20
02c57384  ret
02c57388  bl 0x029f5cfc
