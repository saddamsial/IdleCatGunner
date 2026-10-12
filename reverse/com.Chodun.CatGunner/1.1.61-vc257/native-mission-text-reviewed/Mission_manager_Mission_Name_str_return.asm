02ba4768  sub sp,sp,#0x30
02ba476c  str x30,[sp, #0x10]
02ba4770  stp x20,x19,[sp, #0x20]
02ba4774  adrp x20,0x625b000
02ba4778  mov w19,w1
02ba477c  ldrb w8,[x20, #0xa50]
02ba4780  tbnz w8,#0x0,0x02ba47c8
02ba4784  adrp x0,0x5e5e000
02ba4788  ldr x0,[x0, #0x528]
02ba478c  bl 0x029f5a50
02ba4790  adrp x0,0x5e5e000
02ba4794  ldr x0,[x0, #0x708]
02ba4798  bl 0x029f5a50
02ba479c  adrp x0,0x5e5e000
02ba47a0  ldr x0,[x0, #0x710]
02ba47a4  bl 0x029f5a50
02ba47a8  adrp x0,0x5e5e000
02ba47ac  ldr x0,[x0, #0x718]
02ba47b0  bl 0x029f5a50
02ba47b4  adrp x0,0x5e5e000
02ba47b8  ldr x0,[x0, #0x720]
02ba47bc  bl 0x029f5a50
02ba47c0  mov w8,#0x1
02ba47c4  strb w8,[x20, #0xa50]
02ba47c8  cmp w19,#0x1
02ba47cc  b.gt 0x02ba4834
02ba47d0  cbz w19,0x02ba486c
02ba47d4  cmp w19,#0x1
02ba47d8  b.ne 0x02ba4864
02ba47dc  adrp x8,0x5e5e000
02ba47e0  adrp x19,0x5e5e000
02ba47e4  ldr x8,[x8, #0x528]
02ba47e8  ldr x0,[x8]
02ba47ec  ldr w8,[x0, #0xe4]
02ba47f0  ldr x19,[x19, #0x708]
02ba47f4  cbnz w8,0x02ba47fc
02ba47f8  bl 0x029f5bd0
02ba47fc  ldr x0,[x19]
02ba4800  mov w1,#0x1
02ba4804  mov w2,wzr
02ba4808  mov w3,#0x1
02ba480c  mov w4,wzr
02ba4810  mov x5,xzr
02ba4814  mov x6,xzr
02ba4818  mov w7,#0x1
02ba481c  str xzr,[sp]
02ba4820  bl 0x02bccb00
02ba4824  ldp x20,x19,[sp, #0x20]
02ba4828  ldr x30,[sp, #0x10]
02ba482c  add sp,sp,#0x30
02ba4830  ret
02ba4834  cmp w19,#0x2
02ba4838  b.eq 0x02ba488c
02ba483c  cmp w19,#0x3
02ba4840  b.ne 0x02ba4864
02ba4844  adrp x8,0x5e5e000
02ba4848  adrp x19,0x5e5e000
02ba484c  ldr x8,[x8, #0x528]
02ba4850  ldr x0,[x8]
02ba4854  ldr w8,[x0, #0xe4]
02ba4858  ldr x19,[x19, #0x720]
02ba485c  cbnz w8,0x02ba47fc
02ba4860  b 0x02ba47f8
02ba4864  mov x0,xzr
02ba4868  b 0x02ba4824
02ba486c  adrp x8,0x5e5e000
02ba4870  adrp x19,0x5e5e000
02ba4874  ldr x8,[x8, #0x528]
02ba4878  ldr x0,[x8]
02ba487c  ldr w8,[x0, #0xe4]
02ba4880  ldr x19,[x19, #0x710]
02ba4884  cbnz w8,0x02ba47fc
02ba4888  b 0x02ba47f8
02ba488c  adrp x8,0x5e5e000
02ba4890  adrp x19,0x5e5e000
02ba4894  ldr x8,[x8, #0x528]
02ba4898  ldr x0,[x8]
02ba489c  ldr w8,[x0, #0xe4]
02ba48a0  ldr x19,[x19, #0x718]
02ba48a4  cbnz w8,0x02ba47fc
02ba48a8  b 0x02ba47f8
