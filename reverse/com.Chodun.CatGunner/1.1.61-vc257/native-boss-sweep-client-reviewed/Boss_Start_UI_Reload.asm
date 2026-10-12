02c4742c  sub sp,sp,#0x80
02c47430  str x30,[sp, #0x40]
02c47434  stp x24,x23,[sp, #0x50]
02c47438  stp x22,x21,[sp, #0x60]
02c4743c  stp x20,x19,[sp, #0x70]
02c47440  adrp x20,0x625c000
02c47444  adrp x23,0x5e5d000
02c47448  mov x19,x0
02c4744c  ldrb w8,[x20, #0xf4]
02c47450  ldr x23,[x23, #0xd30]
02c47454  tbnz w8,#0x0,0x02c47490
02c47458  adrp x0,0x5e5d000
02c4745c  ldr x0,[x0, #0xd30]
02c47460  bl 0x029f5a50
02c47464  adrp x0,0x5e5e000
02c47468  ldr x0,[x0, #0xb8]
02c4746c  bl 0x029f5a50
02c47470  adrp x0,0x5e61000
02c47474  ldr x0,[x0, #0xf18]
02c47478  bl 0x029f5a50
02c4747c  adrp x0,0x5e63000
02c47480  ldr x0,[x0, #0x338]
02c47484  bl 0x029f5a50
02c47488  mov w8,#0x1
02c4748c  strb w8,[x20, #0xf4]
02c47490  movi v0.2D,#0x0
02c47494  ldr x0,[x23]
02c47498  ldr w8,[x0, #0xe4]
02c4749c  stp q0,q0,[sp, #0x20]
02c474a0  cbnz w8,0x02c474ac
02c474a4  bl 0x029f5bd0
02c474a8  ldr x0,[x23]
02c474ac  ldr x8,[x0, #0xb8]
02c474b0  ldr x0,[x8, #0x8]
02c474b4  cbz x0,0x02c4772c
02c474b8  adrp x22,0x5e61000
02c474bc  mov x8,sp
02c474c0  ldr x22,[x22, #0xf18]
02c474c4  ldr w20,[x0, #0x20]
02c474c8  mov w1,w20
02c474cc  bl 0x02c46e10
02c474d0  adrp x24,0x5e58000
02c474d4  ldp q0,q1,[sp]
02c474d8  ldr x24,[x24, #0xa10]
02c474dc  ldr x21,[x19, #0x20]
02c474e0  add w8,w20,#0x1
02c474e4  add x1,sp,#0x4c
02c474e8  str w8,[sp, #0x4c]
02c474ec  ldr x0,[x24, #0x48]
02c474f0  stp q0,q1,[sp, #0x20]
02c474f4  bl 0x029f5bd8
02c474f8  ldr x8,[x22]
02c474fc  mov x1,x0
02c47500  mov x2,xzr
02c47504  mov x0,x8
02c47508  bl 0x046b6c0c
02c4750c  cbz x21,0x02c4772c
02c47510  ldr x8,[x21]
02c47514  mov x1,x0
02c47518  mov x0,x21
02c4751c  ldr x9,[x8, #0x558]
02c47520  ldr x2,[x8, #0x560]
02c47524  blr x9
02c47528  ldr x21,[x19, #0x28]
02c4752c  add x0,sp,#0x20
02c47530  mov x1,xzr
02c47534  bl 0x0465bddc
02c47538  cbz x21,0x02c4772c
02c4753c  ldr x8,[x21]
02c47540  mov x1,x0
02c47544  mov x0,x21
02c47548  ldr x9,[x8, #0x558]
02c4754c  ldr x2,[x8, #0x560]
02c47550  blr x9
02c47554  ldr x8,[x23]
02c47558  ldr x8,[x8, #0xb8]
02c4755c  ldr x0,[x8, #0x8]
02c47560  cbz x0,0x02c4772c
02c47564  ldp x21,x22,[x19, #0x30]
02c47568  mov w1,w20
02c4756c  bl 0x02c478a8
02c47570  cbz x22,0x02c4772c
02c47574  mov x20,x0
02c47578  mov x0,x22
02c4757c  mov x2,xzr
02c47580  mov x1,x20
02c47584  bl 0x058d34cc
02c47588  cbz x21,0x02c4772c
02c4758c  mov x0,x21
02c47590  mov x1,x20
02c47594  mov x2,xzr
02c47598  bl 0x058d34cc
02c4759c  mov x0,x19
02c475a0  mov x1,xzr
02c475a4  bl 0x057dc1c8
02c475a8  cbz x0,0x02c4772c
02c475ac  adrp x20,0x5e5e000
02c475b0  mov w1,#0x1
02c475b4  mov x2,xzr
02c475b8  ldr x20,[x20, #0xb8]
02c475bc  bl 0x057dff3c
02c475c0  ldr x0,[x20]
02c475c4  ldr w8,[x0, #0xe4]
02c475c8  cbnz w8,0x02c475d0
02c475cc  bl 0x029f5bd0
02c475d0  mov w0,#0x2
02c475d4  mov x1,xzr
02c475d8  bl 0x02c9077c
02c475dc  ldr x8,[x19, #0x88]
02c475e0  cbz x8,0x02c4772c
02c475e4  mov w9,#0x1
02c475e8  mov w20,w0
02c475ec  mov x2,xzr
02c475f0  bic w1,w9,w0
02c475f4  mov x0,x8
02c475f8  bl 0x057dff3c
02c475fc  ldr x0,[x19, #0x90]
02c47600  cbz x0,0x02c4772c
02c47604  and w1,w20,#0x1
02c47608  mov x2,xzr
02c4760c  bl 0x057dff3c
02c47610  tbz w20,#0x0,0x02c47704
02c47614  ldr x0,[x23]
02c47618  ldr w8,[x0, #0xe4]
02c4761c  cbnz w8,0x02c47628
02c47620  bl 0x029f5bd0
02c47624  ldr x0,[x23]
02c47628  ldr x8,[x0, #0xb8]
02c4762c  ldr x0,[x8, #0x8]
02c47630  cbz x0,0x02c4772c
02c47634  bl 0x02c46ef8
02c47638  ldr x8,[x19, #0x98]
02c4763c  cbz x8,0x02c4772c
02c47640  mov w9,#0x1
02c47644  mov w20,w0
02c47648  mov x2,xzr
02c4764c  bic w1,w9,w0
02c47650  mov x0,x8
02c47654  bl 0x057dff3c
02c47658  ldr x0,[x19, #0xa0]
02c4765c  cbz x0,0x02c4772c
02c47660  and w1,w20,#0x1
02c47664  mov x2,xzr
02c47668  bl 0x057dff3c
02c4766c  tbnz w20,#0x0,0x02c47704
02c47670  ldr x0,[x23]
02c47674  ldr w8,[x0, #0xe4]
02c47678  cbnz w8,0x02c47684
02c4767c  bl 0x029f5bd0
02c47680  ldr x0,[x23]
02c47684  ldr x8,[x0, #0xb8]
02c47688  ldr x0,[x8, #0x8]
02c4768c  cbz x0,0x02c4772c
02c47690  bl 0x02c46f94
02c47694  mov w20,w0
02c47698  ldr x0,[x24, #0x48]
02c4769c  ldr x21,[x19, #0xa8]
02c476a0  mov x1,sp
02c476a4  str w20,[sp]
02c476a8  bl 0x029f5bd8
02c476ac  adrp x8,0x5e63000
02c476b0  mov x1,x0
02c476b4  mov x2,xzr
02c476b8  ldr x8,[x8, #0x338]
02c476bc  ldr x8,[x8]
02c476c0  mov x0,x8
02c476c4  bl 0x046b6c0c
02c476c8  cbz x21,0x02c4772c
02c476cc  ldr x8,[x21]
02c476d0  mov x1,x0
02c476d4  mov x0,x21
02c476d8  ldr x9,[x8, #0x558]
02c476dc  ldr x2,[x8, #0x560]
02c476e0  blr x9
02c476e4  ldr x0,[x19, #0xb0]
02c476e8  cbz x0,0x02c4772c
02c476ec  scvtf s0,w20
02c476f0  mov w8,#0x42c80000
02c476f4  mov x1,xzr
02c476f8  fmov s1,w8
02c476fc  fdiv s0,s0,s1
02c47700  bl 0x02c28290
02c47704  mov x0,x19
02c47708  bl 0x02c480e4
02c4770c  mov x0,x19
02c47710  bl 0x02c481a0
02c47714  ldp x20,x19,[sp, #0x70]
02c47718  ldr x30,[sp, #0x40]
02c4771c  ldp x22,x21,[sp, #0x60]
02c47720  ldp x24,x23,[sp, #0x50]
02c47724  add sp,sp,#0x80
02c47728  ret
02c4772c  bl 0x029f5cfc
