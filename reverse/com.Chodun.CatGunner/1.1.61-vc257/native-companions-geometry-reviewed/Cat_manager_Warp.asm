02c44748  str d10,[sp, #-0x50]!
02c4474c  stp d9,d8,[sp, #0x8]
02c44750  str x30,[sp, #0x18]
02c44754  stp x24,x23,[sp, #0x20]
02c44758  stp x22,x21,[sp, #0x30]
02c4475c  stp x20,x19,[sp, #0x40]
02c44760  fmov s9,s2
02c44764  fmov s8,s1
02c44768  adrp x20,0x625c000
02c4476c  fmov s10,s0
02c44770  ldrb w8,[x20, #0xca]
02c44774  mov x19,x0
02c44778  tbnz w8,#0x0,0x02c44790
02c4477c  adrp x0,0x5e59000
02c44780  ldr x0,[x0, #0x1c0]
02c44784  bl 0x029f5a50
02c44788  mov w8,#0x1
02c4478c  strb w8,[x20, #0xca]
02c44790  ldr x8,[x19, #0x20]
02c44794  cbz x8,0x02c44924
02c44798  ldr x9,[x8, #0x18]
02c4479c  cbz x9,0x02c44924
02c447a0  cbz w9,0x02c44940
02c447a4  adrp x21,0x5e59000
02c447a8  ldr x21,[x21, #0x1c0]
02c447ac  ldr x20,[x8, #0x20]
02c447b0  ldr x0,[x21]
02c447b4  ldr w9,[x0, #0xe4]
02c447b8  cbnz w9,0x02c447c0
02c447bc  bl 0x029f5bd0
02c447c0  mov x0,x20
02c447c4  mov x1,xzr
02c447c8  mov x2,xzr
02c447cc  bl 0x057dfa70
02c447d0  tbz w0,#0x0,0x02c447f0
02c447d4  cbz x20,0x02c448bc
02c447d8  fmov s0,s10
02c447dc  fmov s1,s8
02c447e0  mov x0,x20
02c447e4  fmov s2,s9
02c447e8  mov x1,xzr
02c447ec  bl 0x02c42da4
02c447f0  ldr x8,[x19, #0x20]
02c447f4  cbz x8,0x02c448bc
02c447f8  mov x22,xzr
02c447fc  mov w23,#0x20
02c44800  ldr w9,[x8, #0x18]
02c44804  add x24,x22,#0x1
02c44808  cmp x24,w9, SXTW 
02c4480c  b.ge 0x02c448c0
02c44810  cmp x24,x9
02c44814  b.cs 0x02c44940
02c44818  ldr x0,[x21]
02c4481c  add x8,x8,x22, LSL #0x3
02c44820  ldr w9,[x0, #0xe4]
02c44824  ldr x20,[x8, #0x28]
02c44828  cbnz w9,0x02c44830
02c4482c  bl 0x029f5bd0
02c44830  mov x0,x20
02c44834  mov x1,xzr
02c44838  mov x2,xzr
02c4483c  bl 0x057e14b4
02c44840  tbnz w0,#0x0,0x02c448ac
02c44844  cbz x20,0x02c448bc
02c44848  ldrb w8,[x20, #0x1b0]
02c4484c  cbz w8,0x02c448ac
02c44850  ldr x8,[x19, #0x48]
02c44854  cbz x8,0x02c448bc
02c44858  ldr w9,[x8, #0x18]
02c4485c  cmp x24,w9, SXTW 
02c44860  b.le 0x02c44874
02c44864  add x8,x20,#0x1c4
02c44868  add x9,x20,#0x1c8
02c4486c  add x10,x20,#0x1cc
02c44870  b 0x02c44888
02c44874  cmp x22,x9
02c44878  b.cs 0x02c44940
02c4487c  add x8,x8,x23
02c44880  add x9,x8,#0x4
02c44884  add x10,x8,#0x8
02c44888  ldr s0,[x8]
02c4488c  ldr s1,[x9]
02c44890  mov x0,x20
02c44894  ldr s2,[x10]
02c44898  mov x1,xzr
02c4489c  fadd s0,s10,s0
02c448a0  fadd s1,s8,s1
02c448a4  fadd s2,s9,s2
02c448a8  bl 0x02c42da4
02c448ac  ldr x8,[x19, #0x20]
02c448b0  add x22,x22,#0x1
02c448b4  add x23,x23,#0xc
02c448b8  cbnz x8,0x02c44800
02c448bc  bl 0x029f5cfc
02c448c0  ldr x0,[x21]
02c448c4  ldr x20,[x19, #0x28]
02c448c8  ldr w8,[x0, #0xe4]
02c448cc  cbnz w8,0x02c448d4
02c448d0  bl 0x029f5bd0
02c448d4  mov x0,x20
02c448d8  mov x1,xzr
02c448dc  mov x2,xzr
02c448e0  bl 0x057dfa70
02c448e4  tbz w0,#0x0,0x02c44924
02c448e8  ldr x0,[x19, #0x28]
02c448ec  cbz x0,0x02c448bc
02c448f0  ldp s0,s1,[x19, #0x30]
02c448f4  mov x1,xzr
02c448f8  ldr s2,[x19, #0x38]
02c448fc  ldp x20,x19,[sp, #0x40]
02c44900  ldp x22,x21,[sp, #0x30]
02c44904  ldr x30,[sp, #0x18]
02c44908  fadd s2,s9,s2
02c4490c  fadd s1,s8,s1
02c44910  fadd s0,s10,s0
02c44914  ldp x24,x23,[sp, #0x20]
02c44918  ldp d9,d8,[sp, #0x8]
02c4491c  ldr d10,[sp], #0x50
02c44920  b 0x02c42da4
02c44924  ldp x20,x19,[sp, #0x40]
02c44928  ldr x30,[sp, #0x18]
02c4492c  ldp x22,x21,[sp, #0x30]
02c44930  ldp x24,x23,[sp, #0x20]
02c44934  ldp d9,d8,[sp, #0x8]
02c44938  ldr d10,[sp], #0x50
02c4493c  ret
02c44940  bl 0x029f5d04
