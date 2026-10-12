02ca480c  stp x30,x23,[sp, #-0x30]!
02ca4810  stp x22,x21,[sp, #0x10]
02ca4814  stp x20,x19,[sp, #0x20]
02ca4818  adrp x20,0x625c000
02ca481c  adrp x21,0x5e5e000
02ca4820  mov x19,x0
02ca4824  ldrb w8,[x20, #0x4af]
02ca4828  ldr x21,[x21, #0x4b8]
02ca482c  tbnz w8,#0x0,0x02ca4850
02ca4830  adrp x0,0x5e59000
02ca4834  ldr x0,[x0, #0x1c0]
02ca4838  bl 0x029f5a50
02ca483c  adrp x0,0x5e5e000
02ca4840  ldr x0,[x0, #0x4b8]
02ca4844  bl 0x029f5a50
02ca4848  mov w8,#0x1
02ca484c  strb w8,[x20, #0x4af]
02ca4850  ldr x0,[x21]
02ca4854  adrp x20,0x5e59000
02ca4858  ldr w8,[x0, #0xe4]
02ca485c  ldr x20,[x20, #0x1c0]
02ca4860  cbnz w8,0x02ca486c
02ca4864  bl 0x029f5bd0
02ca4868  ldr x0,[x21]
02ca486c  ldr x8,[x20]
02ca4870  ldr x9,[x0, #0xb8]
02ca4874  ldr w10,[x8, #0xe4]
02ca4878  ldr x20,[x9]
02ca487c  cbnz w10,0x02ca4888
02ca4880  mov x0,x8
02ca4884  bl 0x029f5bd0
02ca4888  mov x0,x20
02ca488c  mov x1,xzr
02ca4890  mov x2,xzr
02ca4894  bl 0x057e14b4
02ca4898  tbz w0,#0x0,0x02ca48ac
02ca489c  ldp x20,x19,[sp, #0x20]
02ca48a0  ldp x22,x21,[sp, #0x10]
02ca48a4  ldp x30,x23,[sp], #0x30
02ca48a8  ret
02ca48ac  ldr x0,[x21]
02ca48b0  ldr w8,[x0, #0xe4]
02ca48b4  cbnz w8,0x02ca48c0
02ca48b8  bl 0x029f5bd0
02ca48bc  ldr x0,[x21]
02ca48c0  ldr x8,[x0, #0xb8]
02ca48c4  ldr x0,[x8]
02ca48c8  cbz x0,0x02ca4978
02ca48cc  ldr x8,[x0, #0x38]
02ca48d0  cbz x8,0x02ca4978
02ca48d4  ldrsw x1,[x19, #0x20]
02ca48d8  ldr w9,[x8, #0x18]
02ca48dc  cmp w1,w9
02ca48e0  b.cs 0x02ca497c
02ca48e4  add x8,x8,x1
02ca48e8  ldrb w21,[x8, #0x20]
02ca48ec  cmp w21,#0x0
02ca48f0  cset w22,eq
02ca48f4  bl 0x02ca2a94
02ca48f8  ldr x8,[x19, #0x50]
02ca48fc  cbz x8,0x02ca4978
02ca4900  eor w23,w0,#0x1
02ca4904  mov w20,w0
02ca4908  mov x0,x8
02ca490c  and w1,w22,w23
02ca4910  mov x2,xzr
02ca4914  bl 0x057dff3c
02ca4918  ldr x0,[x19, #0x58]
02ca491c  cbz x0,0x02ca4978
02ca4920  and w1,w22,w23
02ca4924  mov x2,xzr
02ca4928  bl 0x057dff3c
02ca492c  ldr x0,[x19, #0x60]
02ca4930  cbz x0,0x02ca4978
02ca4934  cmp w21,#0x0
02ca4938  mov x2,xzr
02ca493c  cset w1,ne
02ca4940  bl 0x057dff3c
02ca4944  ldr x0,[x19, #0x68]
02ca4948  cbz x0,0x02ca4978
02ca494c  and w1,w20,#0x1
02ca4950  mov x2,xzr
02ca4954  bl 0x057dff3c
02ca4958  ldr x0,[x19, #0x70]
02ca495c  cbz x0,0x02ca4978
02ca4960  and w1,w20,#0x1
02ca4964  ldp x20,x19,[sp, #0x20]
02ca4968  ldp x22,x21,[sp, #0x10]
02ca496c  mov x2,xzr
02ca4970  ldp x30,x23,[sp], #0x30
02ca4974  b 0x057dff3c
02ca4978  bl 0x029f5cfc
02ca497c  bl 0x029f5d04
