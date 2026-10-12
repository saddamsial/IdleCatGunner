02ca9510  stp x29,x30,[sp, #-0x30]!
02ca9514  stp x22,x21,[sp, #0x10]
02ca9518  stp x20,x19,[sp, #0x20]
02ca951c  sub sp,sp,#0x220
02ca9520  adrp x22,0x625c000
02ca9524  adrp x21,0x5e5d000
02ca9528  mov w20,w1
02ca952c  ldrb w9,[x22, #0x4fa]
02ca9530  ldr x21,[x21, #0xc20]
02ca9534  mov x19,x8
02ca9538  tbnz w9,#0x0,0x02ca9550
02ca953c  adrp x0,0x5e5d000
02ca9540  ldr x0,[x0, #0xc20]
02ca9544  bl 0x029f5a50
02ca9548  mov w8,#0x1
02ca954c  strb w8,[x22, #0x4fa]
02ca9550  movi v0.2D,#0x0
02ca9554  ldr x0,[x21]
02ca9558  ldr w8,[x0, #0xe4]
02ca955c  stp q0,q0,[sp, #0x140]
02ca9560  stp q0,q0,[sp, #0x160]
02ca9564  stp q0,q0,[sp, #0x180]
02ca9568  stp q0,q0,[sp, #0x1a0]
02ca956c  stp q0,q0,[sp, #0x1c0]
02ca9570  stp q0,q0,[sp, #0x1e0]
02ca9574  stp q0,q0,[sp, #0x200]
02ca9578  cbnz w8,0x02ca9584
02ca957c  bl 0x029f5bd0
02ca9580  ldr x0,[x21]
02ca9584  ldr x8,[x0, #0xb8]
02ca9588  ldr x0,[x8, #0x10]
02ca958c  cbz x0,0x02ca96c8
02ca9590  lsl w8,w20,#0x4
02ca9594  mov w9,#0xbe
02ca9598  mov w1,w20
02ca959c  sub w8,w8,w20
02ca95a0  add w8,w8,#0x14
02ca95a4  cmp w8,#0xbe
02ca95a8  csel w8,w8,w9,lt
02ca95ac  mov w9,#0x14
02ca95b0  cmp w8,#0x14
02ca95b4  csel w21,w8,w9,gt
02ca95b8  add x8,sp,#0x120
02ca95bc  bl 0x02ca96cc
02ca95c0  ldp q0,q1,[sp, #0x120]
02ca95c4  add x8,sp,#0x100
02ca95c8  mov w0,w21
02ca95cc  mov x1,xzr
02ca95d0  stp q0,q1,[sp, #0x200]
02ca95d4  bl 0x046544b8
02ca95d8  ldp q0,q1,[sp, #0x100]
02ca95dc  add x8,sp,#0xe0
02ca95e0  add x0,sp,#0x200
02ca95e4  add x1,sp,#0x1c0
02ca95e8  mov x2,xzr
02ca95ec  stp q0,q1,[sp, #0x1c0]
02ca95f0  bl 0x04658538
02ca95f4  ldp q0,q1,[sp, #0xe0]
02ca95f8  add x8,sp,#0xc0
02ca95fc  mov w0,#0xc1
02ca9600  mov x1,xzr
02ca9604  stp q0,q1,[sp, #0x1a0]
02ca9608  bl 0x046544b8
02ca960c  ldp q0,q1,[sp, #0xc0]
02ca9610  add x8,sp,#0xa0
02ca9614  add x0,sp,#0x1a0
02ca9618  add x1,sp,#0x180
02ca961c  mov x2,xzr
02ca9620  stp q0,q1,[sp, #0x180]
02ca9624  bl 0x04658538
02ca9628  ldp q0,q1,[sp, #0xa0]
02ca962c  add x8,sp,#0x80
02ca9630  mov w0,#0x64
02ca9634  mov x1,xzr
02ca9638  stp q0,q1,[sp, #0x160]
02ca963c  bl 0x046544b8
02ca9640  ldp q0,q1,[sp, #0x80]
02ca9644  add x8,sp,#0x60
02ca9648  add x0,sp,#0x160
02ca964c  add x1,sp,#0x140
02ca9650  mov x2,xzr
02ca9654  stp q0,q1,[sp, #0x140]
02ca9658  bl 0x046587e8
02ca965c  ldp q0,q1,[sp, #0x60]
02ca9660  add x8,sp,#0x40
02ca9664  mov w0,#0x18
02ca9668  mov x1,xzr
02ca966c  stp q0,q1,[sp, #0x1e0]
02ca9670  bl 0x046544b8
02ca9674  ldp q0,q1,[sp, #0x40]
02ca9678  add x8,sp,#0x20
02ca967c  add x0,sp,#0x1e0
02ca9680  add x1,sp,#0x1c0
02ca9684  mov x2,xzr
02ca9688  stp q0,q1,[sp, #0x1c0]
02ca968c  bl 0x046587e8
02ca9690  ldp q0,q1,[sp, #0x20]
02ca9694  mov x8,sp
02ca9698  add x0,sp,#0x1a0
02ca969c  mov w1,#0x5
02ca96a0  mov x2,xzr
02ca96a4  stp q0,q1,[sp, #0x1a0]
02ca96a8  bl 0x04658464
02ca96ac  ldp q0,q1,[sp]
02ca96b0  stp q0,q1,[x19]
02ca96b4  add sp,sp,#0x220
02ca96b8  ldp x20,x19,[sp, #0x20]
02ca96bc  ldp x22,x21,[sp, #0x10]
02ca96c0  ldp x29,x30,[sp], #0x30
02ca96c4  ret
02ca96c8  bl 0x029f5cfc
