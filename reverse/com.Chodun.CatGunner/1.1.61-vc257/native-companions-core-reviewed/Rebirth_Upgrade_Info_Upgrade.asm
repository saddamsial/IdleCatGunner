02c876cc  sub sp,sp,#0x70
02c876d0  str x30,[sp, #0x40]
02c876d4  stp x22,x21,[sp, #0x50]
02c876d8  stp x20,x19,[sp, #0x60]
02c876dc  adrp x19,0x625c000
02c876e0  mov x20,x0
02c876e4  ldrb w8,[x19, #0x38e]
02c876e8  tbnz w8,#0x0,0x02c8770c
02c876ec  adrp x0,0x5e5d000
02c876f0  ldr x0,[x0, #0x5b0]
02c876f4  bl 0x029f5a50
02c876f8  adrp x0,0x5e5d000
02c876fc  ldr x0,[x0, #0x338]
02c87700  bl 0x029f5a50
02c87704  mov w8,#0x1
02c87708  strb w8,[x19, #0x38e]
02c8770c  mov x0,x20
02c87710  bl 0x02c888a8
02c87714  mov w19,w0
02c87718  tbz w0,#0x0,0x02c877f4
02c8771c  adrp x22,0x5e5d000
02c87720  adrp x21,0x5e5d000
02c87724  add x8,sp,#0x20
02c87728  ldr x22,[x22, #0x338]
02c8772c  ldr x21,[x21, #0x5b0]
02c87730  mov x0,x20
02c87734  bl 0x02c887b8
02c87738  ldr x0,[x22]
02c8773c  ldr w8,[x0, #0xe4]
02c87740  cbnz w8,0x02c87748
02c87744  bl 0x029f5bd0
02c87748  ldp q0,q1,[sp, #0x20]
02c8774c  mov x0,sp
02c87750  mov x1,xzr
02c87754  stp q0,q1,[sp]
02c87758  bl 0x02b7f4fc
02c8775c  ldp x0,x1,[x20, #0x18]
02c87760  mov x2,xzr
02c87764  bl 0x02b1e644
02c87768  add w0,w0,#0x1
02c8776c  mov x1,xzr
02c87770  bl 0x02b1e5c8
02c87774  mov x2,xzr
02c87778  stp x0,x1,[x20, #0x18]
02c8777c  bl 0x02b1e644
02c87780  ldr w8,[x20, #0x28]
02c87784  mov x1,xzr
02c87788  cmp w0,w8
02c8778c  csel w0,w0,w8,lt
02c87790  bl 0x02b1e5c8
02c87794  ldr x8,[x21]
02c87798  stp x0,x1,[x20, #0x18]
02c8779c  ldr x8,[x8, #0xb8]
02c877a0  ldr x0,[x8, #0x8]
02c877a4  cbz x0,0x02c87858
02c877a8  mov x1,xzr
02c877ac  bl 0x02c43744
02c877b0  adrp x20,0x625b000
02c877b4  ldrb w8,[x20, #0xa57]
02c877b8  cbnz w8,0x02c877d0
02c877bc  adrp x0,0x5e5d000
02c877c0  ldr x0,[x0, #0xd70]
02c877c4  bl 0x029f5a50
02c877c8  mov w8,#0x1
02c877cc  strb w8,[x20, #0xa57]
02c877d0  adrp x8,0x5e5d000
02c877d4  ldr x8,[x8, #0xd70]
02c877d8  ldr x8,[x8]
02c877dc  ldr x8,[x8, #0xb8]
02c877e0  ldr x0,[x8]
02c877e4  cbz x0,0x02c87858
02c877e8  fmov s0,0x3f800000
02c877ec  mov w1,#0x4
02c877f0  b 0x02c87834
02c877f4  adrp x20,0x625b000
02c877f8  ldrb w8,[x20, #0xa57]
02c877fc  cbnz w8,0x02c87814
02c87800  adrp x0,0x5e5d000
02c87804  ldr x0,[x0, #0xd70]
02c87808  bl 0x029f5a50
02c8780c  mov w8,#0x1
02c87810  strb w8,[x20, #0xa57]
02c87814  adrp x8,0x5e5d000
02c87818  ldr x8,[x8, #0xd70]
02c8781c  ldr x8,[x8]
02c87820  ldr x8,[x8, #0xb8]
02c87824  ldr x0,[x8]
02c87828  cbz x0,0x02c87858
02c8782c  fmov s0,0x3f800000
02c87830  mov w1,#0x5
02c87834  mov x2,xzr
02c87838  mov x3,xzr
02c8783c  bl 0x02c1f10c
02c87840  and w0,w19,#0x1
02c87844  ldp x20,x19,[sp, #0x60]
02c87848  ldp x22,x21,[sp, #0x50]
02c8784c  ldr x30,[sp, #0x40]
02c87850  add sp,sp,#0x70
02c87854  ret
02c87858  bl 0x029f5cfc
