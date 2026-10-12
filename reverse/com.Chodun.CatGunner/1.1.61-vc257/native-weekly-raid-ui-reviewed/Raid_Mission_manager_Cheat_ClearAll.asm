02c55144  str x30,[sp, #-0x20]!
02c55148  stp x20,x19,[sp, #0x10]
02c5514c  adrp x20,0x625c000
02c55150  mov x19,x0
02c55154  ldrb w8,[x20, #0x185]
02c55158  tbnz w8,#0x0,0x02c55170
02c5515c  adrp x0,0x5e5e000
02c55160  ldr x0,[x0, #0x68]
02c55164  bl 0x029f5a50
02c55168  mov w8,#0x1
02c5516c  strb w8,[x20, #0x185]
02c55170  mov x0,xzr
02c55174  bl 0x02b92498
02c55178  tbz w0,#0x0,0x02c551e4
02c5517c  mov x0,x19
02c55180  bl 0x02c53fc0
02c55184  ldr x10,[x19, #0x30]
02c55188  cbz x10,0x02c551f4
02c5518c  ldr w9,[x10, #0x18]
02c55190  mov x8,xzr
02c55194  add x10,x10,#0x20
02c55198  mov w11,#0x1
02c5519c  cmp x9,x8
02c551a0  b.eq 0x02c551f0
02c551a4  strb w11,[x10, x8, LSL ]
02c551a8  add x8,x8,#0x1
02c551ac  cmp x8,#0x8
02c551b0  b.ne 0x02c5519c
02c551b4  adrp x8,0x5e5e000
02c551b8  ldr x8,[x8, #0x68]
02c551bc  ldr x8,[x8]
02c551c0  ldr x8,[x8, #0xb8]
02c551c4  ldr x8,[x8, #0x8]
02c551c8  cbz x8,0x02c551e4
02c551cc  ldp x20,x19,[sp, #0x10]
02c551d0  ldr x0,[x8, #0x40]
02c551d4  ldr x1,[x8, #0x28]
02c551d8  ldr x2,[x8, #0x18]
02c551dc  ldr x30,[sp], #0x20
02c551e0  br x2
02c551e4  ldp x20,x19,[sp, #0x10]
02c551e8  ldr x30,[sp], #0x20
02c551ec  ret
02c551f0  bl 0x029f5d04
02c551f4  bl 0x029f5cfc
