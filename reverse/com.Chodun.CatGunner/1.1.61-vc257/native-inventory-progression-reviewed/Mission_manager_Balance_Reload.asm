02ba4574  sub sp,sp,#0x50
02ba4578  stp x30,x25,[sp, #0x10]
02ba457c  stp x24,x23,[sp, #0x20]
02ba4580  stp x22,x21,[sp, #0x30]
02ba4584  stp x20,x19,[sp, #0x40]
02ba4588  adrp x20,0x625b000
02ba458c  mov x19,x0
02ba4590  ldrb w8,[x20, #0xa3c]
02ba4594  tbnz w8,#0x0,0x02ba45ac
02ba4598  adrp x0,0x5e5e000
02ba459c  ldr x0,[x0, #0x700]
02ba45a0  bl 0x029f5a50
02ba45a4  mov w8,#0x1
02ba45a8  strb w8,[x20, #0xa3c]
02ba45ac  ldr x9,[x19, #0x28]
02ba45b0  cbz x9,0x02ba4748
02ba45b4  ldr x8,[x9, #0x18]
02ba45b8  cmp w8,#0x1
02ba45bc  b.lt 0x02ba4640
02ba45c0  bic w11,w8,w8, ASR #0x1f
02ba45c4  mov w13,#0xaaab
02ba45c8  mov w10,wzr
02ba45cc  mov w12,#0xc8
02ba45d0  movk w13,#0xaaaa, LSL #16
02ba45d4  mov w14,#0x13
02ba45d8  cmp w8,w10
02ba45dc  b.eq 0x02ba4764
02ba45e0  add x15,x9,w10, SXTW  #0x3
02ba45e4  ldr x15,[x15, #0x20]
02ba45e8  cbz x15,0x02ba4748
02ba45ec  umull x16,w10,w13
02ba45f0  lsr x17,x16,#0x21
02ba45f4  add w0,w17,w17, LSL #0x1
02ba45f8  add w0,w0,#0x2
02ba45fc  cmp w0,w10
02ba4600  cset w0,eq
02ba4604  stp w10,w0,[x15, #0x10]
02ba4608  mov w0,w12
02ba460c  b.ne 0x02ba462c
02ba4610  lsr x16,x16,#0x22
02ba4614  ubfiz w17,w17,#0x2,#0x1
02ba4618  add w16,w16,w16, LSL #0x2
02ba461c  add w16,w17,w16
02ba4620  cmp w16,#0x13
02ba4624  csel w16,w16,w14,lt
02ba4628  add w0,w16,#0xa
02ba462c  add w10,w10,#0x1
02ba4630  add w12,w12,#0x28
02ba4634  str w0,[x15, #0x18]
02ba4638  cmp w11,w10
02ba463c  b.ne 0x02ba45d8
02ba4640  cmp w8,#0x1
02ba4644  b.lt 0x02ba46a0
02ba4648  ldr x12,[x19, #0x30]
02ba464c  cbz x12,0x02ba4748
02ba4650  ldr x11,[x12, #0x18]
02ba4654  mov x10,xzr
02ba4658  add x12,x12,#0x20
02ba465c  add x9,x9,#0x20
02ba4660  cmp w11,w10
02ba4664  b.eq 0x02ba4764
02ba4668  ldr x13,[x12, x10, LSL #0x3]
02ba466c  cbz x13,0x02ba4748
02ba4670  ldr x14,[x9, x10, LSL #0x3]
02ba4674  str w10,[x13, #0x10]
02ba4678  cbz x14,0x02ba4748
02ba467c  ldp w14,w15,[x14, #0x14]
02ba4680  add x10,x10,#0x1
02ba4684  add w16,w15,w15, LSL #0x1
02ba4688  add w15,w15,#0x5
02ba468c  cmp w14,#0x0
02ba4690  csel w15,w16,w15,eq
02ba4694  cmp w8,w10
02ba4698  stp w14,w15,[x13, #0x14]
02ba469c  b.ne 0x02ba4660
02ba46a0  ldr x8,[x19, #0x20]
02ba46a4  cbz x8,0x02ba4748
02ba46a8  adrp x22,0x5e5e000
02ba46ac  adrp x23,0x5e58000
02ba46b0  mov w24,#0x4
02ba46b4  ldr x22,[x22, #0x700]
02ba46b8  ldr x23,[x23, #0xa10]
02ba46bc  ldr w9,[x8, #0x18]
02ba46c0  sub x25,x24,#0x4
02ba46c4  cmp w25,w9
02ba46c8  b.ge 0x02ba474c
02ba46cc  cmp w25,w9
02ba46d0  b.cs 0x02ba4764
02ba46d4  ldr x0,[x23, #0x48]
02ba46d8  ldr x20,[x8, x24, LSL #0x3]
02ba46dc  add x1,sp,#0xc
02ba46e0  str w25,[sp, #0xc]
02ba46e4  bl 0x029f5bd8
02ba46e8  ldr x8,[x19, #0x20]
02ba46ec  cbz x8,0x02ba4748
02ba46f0  ldr w9,[x8, #0x18]
02ba46f4  cmp w25,w9
02ba46f8  b.cs 0x02ba4764
02ba46fc  ldr x8,[x8, x24, LSL #0x3]
02ba4700  cbz x8,0x02ba4748
02ba4704  ldr w1,[x8, #0x18]
02ba4708  mov x21,x0
02ba470c  bl 0x02ba4768
02ba4710  ldr x8,[x22]
02ba4714  mov x2,x0
02ba4718  mov x1,x21
02ba471c  mov x3,xzr
02ba4720  mov x0,x8
02ba4724  bl 0x046c1d14
02ba4728  cbz x20,0x02ba4748
02ba472c  mov x1,x0
02ba4730  str x0,[x20, #0x10]!
02ba4734  mov x0,x20
02ba4738  bl 0x029f59f4
02ba473c  ldr x8,[x19, #0x20]
02ba4740  add x24,x24,#0x1
02ba4744  cbnz x8,0x02ba46bc
02ba4748  bl 0x029f5cfc
02ba474c  ldp x20,x19,[sp, #0x40]
02ba4750  ldp x22,x21,[sp, #0x30]
02ba4754  ldp x24,x23,[sp, #0x20]
02ba4758  ldp x30,x25,[sp, #0x10]
02ba475c  add sp,sp,#0x50
02ba4760  ret
02ba4764  bl 0x029f5d04
