02c2d524  sub sp,sp,#0xb0
02c2d528  stp x29,x30,[sp, #0x50]
02c2d52c  stp x28,x27,[sp, #0x60]
02c2d530  stp x26,x25,[sp, #0x70]
02c2d534  stp x24,x23,[sp, #0x80]
02c2d538  stp x22,x21,[sp, #0x90]
02c2d53c  stp x20,x19,[sp, #0xa0]
02c2d540  adrp x22,0x625c000
02c2d544  mov x23,x3
02c2d548  mov w19,w2
02c2d54c  ldrb w8,[x22, #0x7]
02c2d550  mov w20,w1
02c2d554  mov x21,x0
02c2d558  tbnz w8,#0x0,0x02c2d5e8
02c2d55c  adrp x0,0x5e5d000
02c2d560  ldr x0,[x0, #0x540]
02c2d564  bl 0x029f5a50
02c2d568  adrp x0,0x5e62000
02c2d56c  ldr x0,[x0, #0xfa0]
02c2d570  bl 0x029f5a50
02c2d574  adrp x0,0x5e62000
02c2d578  ldr x0,[x0, #0xfa8]
02c2d57c  bl 0x029f5a50
02c2d580  adrp x0,0x5e62000
02c2d584  ldr x0,[x0, #0xfb0]
02c2d588  bl 0x029f5a50
02c2d58c  adrp x0,0x5e62000
02c2d590  ldr x0,[x0, #0xfb8]
02c2d594  bl 0x029f5a50
02c2d598  adrp x0,0x5e62000
02c2d59c  ldr x0,[x0, #0xfc0]
02c2d5a0  bl 0x029f5a50
02c2d5a4  adrp x0,0x5e62000
02c2d5a8  ldr x0,[x0, #0xfc8]
02c2d5ac  bl 0x029f5a50
02c2d5b0  adrp x0,0x5e62000
02c2d5b4  ldr x0,[x0, #0xfd0]
02c2d5b8  bl 0x029f5a50
02c2d5bc  adrp x0,0x5e62000
02c2d5c0  ldr x0,[x0, #0xfd8]
02c2d5c4  bl 0x029f5a50
02c2d5c8  adrp x0,0x5e5d000
02c2d5cc  ldr x0,[x0, #0x4d0]
02c2d5d0  bl 0x029f5a50
02c2d5d4  adrp x0,0x5e5d000
02c2d5d8  ldr x0,[x0, #0x3c0]
02c2d5dc  bl 0x029f5a50
02c2d5e0  mov w8,#0x1
02c2d5e4  strb w8,[x22, #0x7]
02c2d5e8  mov x0,x21
02c2d5ec  mov w1,w20
02c2d5f0  mov w2,w19
02c2d5f4  stp xzr,xzr,[sp, #0x30]
02c2d5f8  str xzr,[sp, #0x40]
02c2d5fc  str wzr,[sp, #0x28]
02c2d600  bl 0x02c2db00
02c2d604  tbnz w0,#0x0,0x02c2d994
02c2d608  mov x0,x21
02c2d60c  mov w1,w19
02c2d610  bl 0x02c2db58
02c2d614  tbz w0,#0x0,0x02c2d994
02c2d618  adrp x22,0x5e5d000
02c2d61c  ldr x22,[x22, #0x4d0]
02c2d620  ldr x0,[x22]
02c2d624  ldr w8,[x0, #0xe4]
02c2d628  cbnz w8,0x02c2d634
02c2d62c  bl 0x029f5bd0
02c2d630  ldr x0,[x22]
02c2d634  adrp x9,0x5e62000
02c2d638  ldr x8,[x0, #0xb8]
02c2d63c  ldr x9,[x9, #0xfd8]
02c2d640  ldr x22,[x8, #0x28]
02c2d644  ldr x0,[x9]
02c2d648  bl 0x029f5cec
02c2d64c  adrp x8,0x5e62000
02c2d650  mov x24,x0
02c2d654  ldr x8,[x8, #0xfc8]
02c2d658  ldr x1,[x8]
02c2d65c  bl 0x045c0d0c
02c2d660  cbz x23,0x02c2d814
02c2d664  ldr x8,[x23, #0x18]
02c2d668  cmp w8,#0x1
02c2d66c  b.lt 0x02c2d814
02c2d670  adrp x27,0x5e62000
02c2d674  mov x28,xzr
02c2d678  and x8,x8,#0xffffffff
02c2d67c  ldr x27,[x27, #0xfa8]
02c2d680  add x29,sp,#0x30
02c2d684  cmp x28,w8, UXTW 
02c2d688  b.cs 0x02c2d9c0
02c2d68c  cbz x24,0x02c2d9b4
02c2d690  ldr w8,[x24, #0x18]
02c2d694  cmp w8,#0x2
02c2d698  b.gt 0x02c2d820
02c2d69c  add x8,x23,x28, LSL #0x3
02c2d6a0  mov x0,x24
02c2d6a4  ldr x25,[x8, #0x20]
02c2d6a8  adrp x8,0x5e62000
02c2d6ac  ldr x8,[x8, #0xfc0]
02c2d6b0  lsr x26,x25,#0x20
02c2d6b4  ldr x1,[x8]
02c2d6b8  add x8,sp,#0x8
02c2d6bc  bl 0x045c2058
02c2d6c0  ldur q0,[sp, #0x8]
02c2d6c4  ldr x8,[sp, #0x18]
02c2d6c8  stp xzr,x29,[sp, #0x8]
02c2d6cc  str q0,[sp, #0x30]
02c2d6d0  str x8,[sp, #0x40]
02c2d6d4  ldr x1,[x27]
02c2d6d8  add x0,sp,#0x30
02c2d6dc  bl 0x03fd486c
02c2d6e0  tbz w0,#0x0,0x02c2d714
02c2d6e4  ldr x8,[sp, #0x40]
02c2d6e8  cmp w8,w25
02c2d6ec  b.ne 0x02c2d6d4
02c2d6f0  lsr x8,x8,#0x20
02c2d6f4  cmp x8,x26
02c2d6f8  b.ne 0x02c2d6d4
02c2d6fc  adrp x8,0x5e62000
02c2d700  add x0,sp,#0x30
02c2d704  ldr x8,[x8, #0xfa0]
02c2d708  ldr x1,[x8]
02c2d70c  bl 0x03fd4868
02c2d710  b 0x02c2d7bc
02c2d714  adrp x8,0x5e62000
02c2d718  add x0,sp,#0x30
02c2d71c  ldr x8,[x8, #0xfa0]
02c2d720  ldr x1,[x8]
02c2d724  bl 0x03fd4868
02c2d728  cbz w25,0x02c2d748
02c2d72c  cbz x22,0x02c2d9b4
02c2d730  mov x0,x22
02c2d734  mov w1,w26
02c2d738  mov x2,xzr
02c2d73c  bl 0x02c7cd4c
02c2d740  tbnz w0,#0x0,0x02c2d760
02c2d744  b 0x02c2d7bc
02c2d748  cbz x22,0x02c2d9b4
02c2d74c  mov x0,x22
02c2d750  mov w1,w26
02c2d754  mov x2,xzr
02c2d758  bl 0x02c7cce0
02c2d75c  tbz w0,#0x0,0x02c2d7bc
02c2d760  adrp x9,0x5e62000
02c2d764  ldr w10,[x24, #0x1c]
02c2d768  ldr x8,[x24, #0x10]
02c2d76c  ldr x9,[x9, #0xfb8]
02c2d770  add w10,w10,#0x1
02c2d774  ldr x9,[x9]
02c2d778  str w10,[x24, #0x1c]
02c2d77c  cbz x8,0x02c2d9b4
02c2d780  ldrsw x10,[x24, #0x18]
02c2d784  ldr w11,[x8, #0x18]
02c2d788  cmp w10,w11
02c2d78c  b.cs 0x02c2d7a4
02c2d790  add x8,x8,x10, LSL #0x3
02c2d794  add w9,w10,#0x1
02c2d798  str w9,[x24, #0x18]
02c2d79c  str x25,[x8, #0x20]
02c2d7a0  b 0x02c2d7bc
02c2d7a4  ldr x8,[x9, #0x20]
02c2d7a8  mov x0,x24
02c2d7ac  mov x1,x25
02c2d7b0  ldr x8,[x8, #0xc0]
02c2d7b4  ldr x2,[x8, #0x70]
02c2d7b8  bl 0x045c1598
02c2d7bc  ldr w8,[x23, #0x18]
02c2d7c0  add x28,x28,#0x1
02c2d7c4  cmp x28,w8, SXTW 
02c2d7c8  b.lt 0x02c2d684
02c2d7cc  b 0x02c2d814
02c2d814  cbz x24,0x02c2d9b4
02c2d818  ldr w8,[x24, #0x18]
02c2d81c  cbz w8,0x02c2d994
02c2d820  mov x0,x21
02c2d824  mov w1,w20
02c2d828  mov w2,w19
02c2d82c  bl 0x02c2dbec
02c2d830  cbz x0,0x02c2d9b4
02c2d834  adrp x8,0x5e5d000
02c2d838  mov x25,x0
02c2d83c  mov w9,#0x1
02c2d840  ldr x8,[x8, #0x3c0]
02c2d844  strb w9,[x25, #0x10]
02c2d848  ldr x0,[x8]
02c2d84c  mov w8,#0x64
02c2d850  madd w23,w20,w8,w19
02c2d854  ldr w8,[x0, #0xe4]
02c2d858  cbnz w8,0x02c2d860
02c2d85c  bl 0x029f5bd0
02c2d860  bl 0x02c25b48
02c2d864  adrp x8,0x5e62000
02c2d868  ldr x8,[x8, #0xfc0]
02c2d86c  str x0,[x25, #0x18]
02c2d870  mov x0,x24
02c2d874  ldr x1,[x8]
02c2d878  add x8,sp,#0x8
02c2d87c  bl 0x045c2058
02c2d880  ldur q0,[sp, #0x8]
02c2d884  ldr x8,[sp, #0x18]
02c2d888  adrp x24,0x5e62000
02c2d88c  add x9,sp,#0x30
02c2d890  str q0,[sp, #0x30]
02c2d894  str x8,[sp, #0x40]
02c2d898  ldr x24,[x24, #0xfa8]
02c2d89c  stp xzr,x9,[sp, #0x8]
02c2d8a0  ldr x1,[x24]
02c2d8a4  add x0,sp,#0x30
02c2d8a8  bl 0x03fd486c
02c2d8ac  tbz w0,#0x0,0x02c2d8e8
02c2d8b0  ldp w8,w1,[sp, #0x40]
02c2d8b4  cbz w8,0x02c2d8d0
02c2d8b8  cbz x22,0x02c2d9b8
02c2d8bc  mov x0,x22
02c2d8c0  mov w2,w23
02c2d8c4  mov x3,xzr
02c2d8c8  bl 0x02c7ce14
02c2d8cc  b 0x02c2d8a0
02c2d8d0  cbz x22,0x02c2d9bc
02c2d8d4  mov x0,x22
02c2d8d8  mov w2,w23
02c2d8dc  mov x3,xzr
02c2d8e0  bl 0x02c7cdb8
02c2d8e4  b 0x02c2d8a0
02c2d8e8  adrp x8,0x5e62000
02c2d8ec  add x0,sp,#0x30
02c2d8f0  ldr x8,[x8, #0xfa0]
02c2d8f4  ldr x1,[x8]
02c2d8f8  bl 0x03fd4868
02c2d8fc  cbz x22,0x02c2d9b4
02c2d900  mov x0,x22
02c2d904  mov x1,xzr
02c2d908  bl 0x02c7ceec
02c2d90c  ldr x0,[x21, #0x40]
02c2d910  cbz x0,0x02c2d9b4
02c2d914  mov x1,xzr
02c2d918  bl 0x02c353e8
02c2d91c  adrp x21,0x625b000
02c2d920  ldrb w8,[x21, #0xa57]
02c2d924  cbnz w8,0x02c2d93c
02c2d928  adrp x0,0x5e5d000
02c2d92c  ldr x0,[x0, #0xd70]
02c2d930  bl 0x029f5a50
02c2d934  mov w8,#0x1
02c2d938  strb w8,[x21, #0xa57]
02c2d93c  adrp x8,0x5e5d000
02c2d940  ldr x8,[x8, #0xd70]
02c2d944  ldr x8,[x8]
02c2d948  ldr x8,[x8, #0xb8]
02c2d94c  ldr x0,[x8]
02c2d950  cbz x0,0x02c2d9b4
02c2d954  fmov s0,0x3f800000
02c2d958  mov w1,#0xa
02c2d95c  mov x2,xzr
02c2d960  bl 0x02c1f10c
02c2d964  adrp x8,0x5e5d000
02c2d968  ldr x8,[x8, #0x540]
02c2d96c  ldr x0,[x8]
02c2d970  ldr w8,[x0, #0xe4]
02c2d974  cbnz w8,0x02c2d97c
02c2d978  bl 0x029f5bd0
02c2d97c  mov w0,w20
02c2d980  mov w1,w19
02c2d984  mov x2,xzr
02c2d988  bl 0x02b99a10
02c2d98c  mov x0,xzr
02c2d990  bl 0x02c0faf8
02c2d994  ldp x20,x19,[sp, #0xa0]
02c2d998  ldp x22,x21,[sp, #0x90]
02c2d99c  ldp x24,x23,[sp, #0x80]
02c2d9a0  ldp x26,x25,[sp, #0x70]
02c2d9a4  ldp x28,x27,[sp, #0x60]
02c2d9a8  ldp x29,x30,[sp, #0x50]
02c2d9ac  add sp,sp,#0xb0
02c2d9b0  ret
02c2d9b4  bl 0x029f5cfc
02c2d9b8  bl 0x029f5cfc
02c2d9bc  bl 0x029f5cfc
02c2d9c0  bl 0x029f5d04
