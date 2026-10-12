02ca45e0  sub sp,sp,#0x40
02ca45e4  str x30,[sp, #0x10]
02ca45e8  stp x22,x21,[sp, #0x20]
02ca45ec  stp x20,x19,[sp, #0x30]
02ca45f0  adrp x20,0x625c000
02ca45f4  adrp x21,0x5e64000
02ca45f8  mov x19,x0
02ca45fc  ldrb w8,[x20, #0x4ae]
02ca4600  ldr x21,[x21, #0x958]
02ca4604  tbnz w8,#0x0,0x02ca4640
02ca4608  adrp x0,0x5e5e000
02ca460c  ldr x0,[x0, #0x528]
02ca4610  bl 0x029f5a50
02ca4614  adrp x0,0x5e5e000
02ca4618  ldr x0,[x0, #0x4b8]
02ca461c  bl 0x029f5a50
02ca4620  adrp x0,0x5e64000
02ca4624  ldr x0,[x0, #0x960]
02ca4628  bl 0x029f5a50
02ca462c  adrp x0,0x5e64000
02ca4630  ldr x0,[x0, #0x958]
02ca4634  bl 0x029f5a50
02ca4638  mov w8,#0x1
02ca463c  strb w8,[x20, #0x4ae]
02ca4640  adrp x22,0x5e58000
02ca4644  ldr w8,[x19, #0x20]
02ca4648  add x1,sp,#0x18
02ca464c  ldr x22,[x22, #0xa10]
02ca4650  ldr x20,[x19, #0x28]
02ca4654  add w8,w8,#0x1
02ca4658  ldr x0,[x22, #0x48]
02ca465c  stp w8,wzr,[sp, #0x18]
02ca4660  bl 0x029f5bd8
02ca4664  ldr x8,[x21]
02ca4668  mov x1,x0
02ca466c  mov x2,xzr
02ca4670  mov x0,x8
02ca4674  bl 0x046b6c0c
02ca4678  cbz x20,0x02ca4804
02ca467c  ldr x8,[x20]
02ca4680  adrp x21,0x5e5e000
02ca4684  mov x1,x0
02ca4688  ldr x21,[x21, #0x4b8]
02ca468c  mov x0,x20
02ca4690  ldr x9,[x8, #0x558]
02ca4694  ldr x2,[x8, #0x560]
02ca4698  blr x9
02ca469c  ldr x0,[x21]
02ca46a0  ldr x20,[x19, #0x30]
02ca46a4  ldr w8,[x0, #0xe4]
02ca46a8  cbnz w8,0x02ca46b4
02ca46ac  bl 0x029f5bd0
02ca46b0  ldr x0,[x21]
02ca46b4  ldr x8,[x0, #0xb8]
02ca46b8  ldr x8,[x8, #0x8]
02ca46bc  cbz x8,0x02ca4804
02ca46c0  ldrsw x9,[x19, #0x20]
02ca46c4  ldr w10,[x8, #0x18]
02ca46c8  cmp w9,w10
02ca46cc  b.cs 0x02ca4808
02ca46d0  cbz x20,0x02ca4804
02ca46d4  add x8,x8,x9, LSL #0x2
02ca46d8  mov x0,x20
02ca46dc  mov x2,xzr
02ca46e0  ldr w1,[x8, #0x20]
02ca46e4  bl 0x02c75ad0
02ca46e8  ldr x8,[x21]
02ca46ec  ldr x8,[x8, #0xb8]
02ca46f0  ldr x8,[x8, #0x10]
02ca46f4  cbz x8,0x02ca4804
02ca46f8  ldrsw x9,[x19, #0x20]
02ca46fc  ldr w10,[x8, #0x18]
02ca4700  cmp w9,w10
02ca4704  b.cs 0x02ca4808
02ca4708  add x8,x8,x9, LSL #0x2
02ca470c  ldr x0,[x19, #0x38]
02ca4710  ldr w20,[x8, #0x20]
02ca4714  str w20,[sp, #0x1c]
02ca4718  cbz x0,0x02ca4804
02ca471c  cmp w20,#0x0
02ca4720  mov x2,xzr
02ca4724  cset w1,gt
02ca4728  bl 0x057dff3c
02ca472c  cmp w20,#0x1
02ca4730  b.lt 0x02ca4760
02ca4734  ldr x20,[x19, #0x40]
02ca4738  add x0,sp,#0x1c
02ca473c  mov x1,xzr
02ca4740  bl 0x0484e6a4
02ca4744  cbz x20,0x02ca4804
02ca4748  ldr x8,[x20]
02ca474c  mov x1,x0
02ca4750  mov x0,x20
02ca4754  ldr x9,[x8, #0x558]
02ca4758  ldr x2,[x8, #0x560]
02ca475c  blr x9
02ca4760  adrp x8,0x5e5e000
02ca4764  adrp x21,0x5e64000
02ca4768  ldr x8,[x8, #0x528]
02ca476c  ldr x0,[x8]
02ca4770  ldr w8,[x0, #0xe4]
02ca4774  ldr x21,[x21, #0x960]
02ca4778  ldr x20,[x19, #0x48]
02ca477c  cbnz w8,0x02ca4784
02ca4780  bl 0x029f5bd0
02ca4784  ldr x0,[x21]
02ca4788  mov w1,#0x1
02ca478c  mov w2,wzr
02ca4790  mov w3,#0x1
02ca4794  mov w4,wzr
02ca4798  mov x5,xzr
02ca479c  mov x6,xzr
02ca47a0  mov w7,#0x1
02ca47a4  str xzr,[sp]
02ca47a8  bl 0x02bccb00
02ca47ac  mov x21,x0
02ca47b0  ldr w8,[x19, #0x20]
02ca47b4  ldr x0,[x22, #0x48]
02ca47b8  add x1,sp,#0xc
02ca47bc  str w8,[sp, #0xc]
02ca47c0  bl 0x029f5bd8
02ca47c4  mov x1,x0
02ca47c8  mov x0,x21
02ca47cc  mov x2,xzr
02ca47d0  bl 0x046b6c0c
02ca47d4  cbz x20,0x02ca4804
02ca47d8  ldr x8,[x20]
02ca47dc  mov x1,x0
02ca47e0  mov x0,x20
02ca47e4  ldr x9,[x8, #0x558]
02ca47e8  ldr x2,[x8, #0x560]
02ca47ec  blr x9
02ca47f0  ldp x20,x19,[sp, #0x30]
02ca47f4  ldr x30,[sp, #0x10]
02ca47f8  ldp x22,x21,[sp, #0x20]
02ca47fc  add sp,sp,#0x40
02ca4800  ret
02ca4804  bl 0x029f5cfc
02ca4808  bl 0x029f5d04
