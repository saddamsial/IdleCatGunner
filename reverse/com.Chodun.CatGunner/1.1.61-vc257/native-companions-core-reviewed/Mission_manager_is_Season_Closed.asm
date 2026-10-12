02ba48ac  str x30,[sp, #-0x20]!
02ba48b0  stp x20,x19,[sp, #0x10]
02ba48b4  adrp x20,0x625b000
02ba48b8  mov x19,x0
02ba48bc  ldrb w8,[x20, #0xa3f]
02ba48c0  tbnz w8,#0x0,0x02ba48f0
02ba48c4  adrp x0,0x5e59000
02ba48c8  ldr x0,[x0, #0x7d0]
02ba48cc  bl 0x029f5a50
02ba48d0  adrp x0,0x5e5d000
02ba48d4  ldr x0,[x0, #0x3c0]
02ba48d8  bl 0x029f5a50
02ba48dc  adrp x0,0x5e5e000
02ba48e0  ldr x0,[x0, #0x728]
02ba48e4  bl 0x029f5a50
02ba48e8  mov w8,#0x1
02ba48ec  strb w8,[x20, #0xa3f]
02ba48f0  ldrb w8,[x19, #0x65]
02ba48f4  cbz w8,0x02ba4950
02ba48f8  adrp x20,0x5e5d000
02ba48fc  ldr x20,[x20, #0x3c0]
02ba4900  ldr x0,[x20]
02ba4904  ldr w8,[x0, #0xe4]
02ba4908  cbnz w8,0x02ba4910
02ba490c  bl 0x029f5bd0
02ba4910  mov x0,xzr
02ba4914  bl 0x02c23a70
02ba4918  tbz w0,#0x0,0x02ba4948
02ba491c  ldr x0,[x20]
02ba4920  ldr w8,[x0, #0xe4]
02ba4924  cbnz w8,0x02ba492c
02ba4928  bl 0x029f5bd0
02ba492c  adrp x8,0x5e5e000
02ba4930  mov x1,xzr
02ba4934  ldr x8,[x8, #0x728]
02ba4938  ldr x0,[x8]
02ba493c  bl 0x02c23740
02ba4940  cmp w0,#0x0
02ba4944  b.le 0x02ba4960
02ba4948  mov w0,wzr
02ba494c  b 0x02ba4954
02ba4950  mov w0,#0x1
02ba4954  ldp x20,x19,[sp, #0x10]
02ba4958  ldr x30,[sp], #0x20
02ba495c  ret
02ba4960  ldr x0,[x20]
02ba4964  ldr w8,[x0, #0xe4]
02ba4968  cbnz w8,0x02ba4970
02ba496c  bl 0x029f5bd0
02ba4970  mov x0,xzr
02ba4974  bl 0x02c25c90
02ba4978  adrp x8,0x5e59000
02ba497c  mov x20,x0
02ba4980  ldr x8,[x8, #0x7d0]
02ba4984  ldr x8,[x8]
02ba4988  ldr w9,[x8, #0xe4]
02ba498c  cbnz w9,0x02ba4998
02ba4990  mov x0,x8
02ba4994  bl 0x029f5bd0
02ba4998  add x0,x19,#0x68
02ba499c  mov x1,xzr
02ba49a0  bl 0x04830b04
02ba49a4  mov x1,x0
02ba49a8  mov x0,x20
02ba49ac  mov x2,xzr
02ba49b0  ldp x20,x19,[sp, #0x10]
02ba49b4  ldr x30,[sp], #0x20
02ba49b8  b 0x0483334c
