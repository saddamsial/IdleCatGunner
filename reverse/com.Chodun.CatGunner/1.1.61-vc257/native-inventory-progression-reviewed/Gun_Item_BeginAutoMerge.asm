02c71518  stp x30,x21,[sp, #-0x20]!
02c7151c  stp x20,x19,[sp, #0x10]
02c71520  adrp x20,0x625c000
02c71524  mov x19,x0
02c71528  ldrb w8,[x20, #0x2c9]
02c7152c  tbnz w8,#0x0,0x02c71544
02c71530  adrp x0,0x5e59000
02c71534  ldr x0,[x0, #0x1c0]
02c71538  bl 0x029f5a50
02c7153c  mov w8,#0x1
02c71540  strb w8,[x20, #0x2c9]
02c71544  mov w8,#0x1
02c71548  mov x0,x19
02c7154c  strb wzr,[x19, #0xb9]
02c71550  strb w8,[x19, #0x79]
02c71554  bl 0x02c714e8
02c71558  ldrb w8,[x19, #0xb8]
02c7155c  cbz w8,0x02c71568
02c71560  mov x0,x19
02c71564  bl 0x02c70ddc
02c71568  mov x20,x19
02c7156c  ldr x1,[x20, #0xf0]!
02c71570  cbz x1,0x02c71590
02c71574  mov x0,x19
02c71578  mov x2,xzr
02c7157c  bl 0x057e237c
02c71580  mov x0,x20
02c71584  mov x1,xzr
02c71588  str xzr,[x19, #0xf0]
02c7158c  bl 0x029f59f4
02c71590  ldr x1,[x19, #0x110]
02c71594  cbz x1,0x02c715b4
02c71598  mov x0,x19
02c7159c  mov x2,xzr
02c715a0  bl 0x057e237c
02c715a4  add x0,x19,#0x110
02c715a8  mov x1,xzr
02c715ac  str xzr,[x19, #0x110]
02c715b0  bl 0x029f59f4
02c715b4  mov x0,x19
02c715b8  mov x1,xzr
02c715bc  bl 0x057dc0f8
02c715c0  cbz x0,0x02c7167c
02c715c4  ldp s1,s2,[x19, #0xfc]
02c715c8  mov x1,xzr
02c715cc  ldr s0,[x19, #0xf8]
02c715d0  bl 0x057ef654
02c715d4  ldr x0,[x19, #0x38]
02c715d8  cbz x0,0x02c7167c
02c715dc  adrp x21,0x5e59000
02c715e0  mov w1,wzr
02c715e4  mov x2,xzr
02c715e8  ldr x21,[x21, #0x1c0]
02c715ec  bl 0x057dff3c
02c715f0  ldr x0,[x21]
02c715f4  ldr x20,[x19, #0x68]
02c715f8  ldr w8,[x0, #0xe4]
02c715fc  cbnz w8,0x02c71604
02c71600  bl 0x029f5bd0
02c71604  mov x0,x20
02c71608  mov x1,xzr
02c7160c  mov x2,xzr
02c71610  bl 0x057dfa70
02c71614  tbz w0,#0x0,0x02c7162c
02c71618  ldr x0,[x19, #0x68]
02c7161c  cbz x0,0x02c7167c
02c71620  mov w1,#0x1
02c71624  mov x2,xzr
02c71628  bl 0x057dff3c
02c7162c  ldr x0,[x21]
02c71630  ldr x20,[x19, #0xa8]
02c71634  ldr w8,[x0, #0xe4]
02c71638  cbnz w8,0x02c71640
02c7163c  bl 0x029f5bd0
02c71640  mov x0,x20
02c71644  mov x1,xzr
02c71648  mov x2,xzr
02c7164c  bl 0x057dfa70
02c71650  tbz w0,#0x0,0x02c71670
02c71654  ldr x0,[x19, #0xa8]
02c71658  cbz x0,0x02c7167c
02c7165c  ldp x20,x19,[sp, #0x10]
02c71660  mov w1,wzr
02c71664  mov x2,xzr
02c71668  ldp x30,x21,[sp], #0x20
02c7166c  b 0x05a9f1dc
02c71670  ldp x20,x19,[sp, #0x10]
02c71674  ldp x30,x21,[sp], #0x20
02c71678  ret
02c7167c  bl 0x029f5cfc
