02ba5020  sub sp,sp,#0x50
02ba5024  stp d9,d8,[sp, #0x10]
02ba5028  stp x30,x23,[sp, #0x20]
02ba502c  stp x22,x21,[sp, #0x30]
02ba5030  stp x20,x19,[sp, #0x40]
02ba5034  adrp x21,0x625b000
02ba5038  mov w19,w1
02ba503c  mov x20,x0
02ba5040  ldrb w8,[x21, #0xa44]
02ba5044  tbnz w8,#0x0,0x02ba5068
02ba5048  adrp x0,0x5e5d000
02ba504c  ldr x0,[x0, #0x540]
02ba5050  bl 0x029f5a50
02ba5054  adrp x0,0x5e5d000
02ba5058  ldr x0,[x0, #0xd50]
02ba505c  bl 0x029f5a50
02ba5060  mov w8,#0x1
02ba5064  strb w8,[x21, #0xa44]
02ba5068  ldr x8,[x20, #0x20]
02ba506c  cbz x8,0x02ba5350
02ba5070  ldr w9,[x8, #0x18]
02ba5074  cmp w9,w19
02ba5078  b.ls 0x02ba5354
02ba507c  add x8,x8,w19, SXTW  #0x3
02ba5080  ldr x21,[x8, #0x20]
02ba5084  cbz x21,0x02ba5350
02ba5088  ldrb w8,[x21, #0x24]
02ba508c  cbz w8,0x02ba5338
02ba5090  ldrb w8,[x21, #0x25]
02ba5094  cbnz w8,0x02ba5338
02ba5098  adrp x22,0x5e5d000
02ba509c  ldr x22,[x22, #0xd50]
02ba50a0  ldr x0,[x22]
02ba50a4  ldr w8,[x0, #0xe4]
02ba50a8  cbnz w8,0x02ba50b4
02ba50ac  bl 0x029f5bd0
02ba50b0  ldr x0,[x22]
02ba50b4  ldr x8,[x0, #0xb8]
02ba50b8  ldrb w8,[x8, #0x1]
02ba50bc  cbz w8,0x02ba5138
02ba50c0  ldr s0,[x21, #0x20]
02ba50c4  adrp x23,0x625b000
02ba50c8  fmov s9,0x3f000000
02ba50cc  ldrb w8,[x23, #0x95a]
02ba50d0  scvtf s8,s0
02ba50d4  cbnz w8,0x02ba50ec
02ba50d8  adrp x0,0x5e59000
02ba50dc  ldr x0,[x0]
02ba50e0  bl 0x029f5a50
02ba50e4  mov w8,#0x1
02ba50e8  strb w8,[x23, #0x95a]
02ba50ec  adrp x8,0x5e59000
02ba50f0  fmul s9,s8,s9
02ba50f4  ldr x8,[x8]
02ba50f8  ldr x0,[x8]
02ba50fc  ldr w8,[x0, #0xe4]
02ba5100  cbnz w8,0x02ba5108
02ba5104  bl 0x029f5bd0
02ba5108  fcvt d8,s9
02ba510c  add x0,sp,#0x8
02ba5110  fmov d0,d8
02ba5114  bl 0x05afb230
02ba5118  fcmp s9,#0.0
02ba511c  b.ge 0x02ba51ac
02ba5120  fmov d1,-0x4020000000000000
02ba5124  fcmp d0,d1
02ba5128  b.ne 0x02ba51d4
02ba512c  ldr d0,[sp, #0x8]
02ba5130  fmov d1,-0x4010000000000000
02ba5134  b 0x02ba51c0
02ba5138  ldr x0,[x20, #0xb0]
02ba513c  cbz x0,0x02ba5350
02ba5140  mov w1,#0x1
02ba5144  mov x2,xzr
02ba5148  mov w19,#0x1
02ba514c  bl 0x057dff3c
02ba5150  adrp x20,0x625b000
02ba5154  ldrb w8,[x20, #0xa57]
02ba5158  cbnz w8,0x02ba516c
02ba515c  adrp x0,0x5e5d000
02ba5160  ldr x0,[x0, #0xd70]
02ba5164  bl 0x029f5a50
02ba5168  strb w19,[x20, #0xa57]
02ba516c  adrp x8,0x5e5d000
02ba5170  ldr x8,[x8, #0xd70]
02ba5174  ldr x8,[x8]
02ba5178  ldr x8,[x8, #0xb8]
02ba517c  ldr x0,[x8]
02ba5180  cbz x0,0x02ba5350
02ba5184  ldp x20,x19,[sp, #0x40]
02ba5188  fmov s0,0x3f800000
02ba518c  ldp x22,x21,[sp, #0x30]
02ba5190  mov w1,#0x5
02ba5194  ldp x30,x23,[sp, #0x20]
02ba5198  mov x2,xzr
02ba519c  ldp d9,d8,[sp, #0x10]
02ba51a0  mov x3,xzr
02ba51a4  add sp,sp,#0x50
02ba51a8  b 0x02c1f10c
02ba51ac  fmov d1,0x3fe0000000000000
02ba51b0  fcmp d0,d1
02ba51b4  b.ne 0x02ba51e0
02ba51b8  fmov d1,0x3ff0000000000000
02ba51bc  ldr d0,[sp, #0x8]
02ba51c0  fcvtzs x8,d0
02ba51c4  fadd d1,d0,d1
02ba51c8  tst x8,#0x1
02ba51cc  fcsel d0,d0,d1,eq
02ba51d0  b 0x02ba51e8
02ba51d4  fadd d0,d8,d1
02ba51d8  frintp d0,d0
02ba51dc  b 0x02ba51e8
02ba51e0  fadd d0,d8,d1
02ba51e4  frintm d0,d0
02ba51e8  mov x8,#0x7ff0000000000000
02ba51ec  fcvtzs w9,d0
02ba51f0  mov w23,#0x1
02ba51f4  fmov d1,x8
02ba51f8  mov w8,#0x80000000
02ba51fc  mov x0,x20
02ba5200  strb w23,[x21, #0x25]
02ba5204  fcmp d0,d1
02ba5208  csel w1,w8,w9,eq
02ba520c  bl 0x02b9d264
02ba5210  adrp x21,0x625b000
02ba5214  ldrb w8,[x21, #0xa57]
02ba5218  cbnz w8,0x02ba522c
02ba521c  adrp x0,0x5e5d000
02ba5220  ldr x0,[x0, #0xd70]
02ba5224  bl 0x029f5a50
02ba5228  strb w23,[x21, #0xa57]
02ba522c  adrp x8,0x5e5d000
02ba5230  ldr x8,[x8, #0xd70]
02ba5234  ldr x8,[x8]
02ba5238  ldr x8,[x8, #0xb8]
02ba523c  ldr x0,[x8]
02ba5240  cbz x0,0x02ba5350
02ba5244  fmov s0,0x3f800000
02ba5248  mov w1,#0x7
02ba524c  mov x2,xzr
02ba5250  mov x3,xzr
02ba5254  bl 0x02c1f10c
02ba5258  ldr x8,[x20, #0xa0]
02ba525c  cbz x8,0x02ba5350
02ba5260  ldr x0,[x8, #0x38]
02ba5264  cbz x0,0x02ba5350
02ba5268  bl 0x02b9afe0
02ba526c  mov x0,x20
02ba5270  bl 0x02ba3bb0
02ba5274  ldr x8,[x20, #0x20]
02ba5278  cbz x8,0x02ba5350
02ba527c  ldr w9,[x8, #0x18]
02ba5280  cmp w9,#0x1
02ba5284  b.lt 0x02ba52c0
02ba5288  bic w11,w9,w9, ASR #0x1f
02ba528c  mov w10,wzr
02ba5290  mov w21,wzr
02ba5294  cmp w9,w10
02ba5298  b.eq 0x02ba5354
02ba529c  add x12,x8,w10, SXTW  #0x3
02ba52a0  ldr x12,[x12, #0x20]
02ba52a4  cbz x12,0x02ba5350
02ba52a8  ldrb w12,[x12, #0x24]
02ba52ac  add w10,w10,#0x1
02ba52b0  cmp w11,w10
02ba52b4  add w21,w21,w12
02ba52b8  b.ne 0x02ba5294
02ba52bc  b 0x02ba52c4
02ba52c0  mov w21,wzr
02ba52c4  ldr x0,[x22]
02ba52c8  ldr w20,[x20, #0x48]
02ba52cc  ldr w8,[x0, #0xe4]
02ba52d0  cbnz w8,0x02ba52dc
02ba52d4  bl 0x029f5bd0
02ba52d8  ldr x0,[x22]
02ba52dc  ldr x8,[x0, #0xb8]
02ba52e0  ldrb w9,[x8, #0x1]
02ba52e4  cbz w9,0x02ba52f0
02ba52e8  mov w22,#0x2
02ba52ec  b 0x02ba5308
02ba52f0  ldr w9,[x0, #0xe4]
02ba52f4  cbnz w9,0x02ba5304
02ba52f8  bl 0x029f5bd0
02ba52fc  ldr x8,[x22]
02ba5300  ldr x8,[x8, #0xb8]
02ba5304  ldrb w22,[x8]
02ba5308  adrp x8,0x5e5d000
02ba530c  ldr x8,[x8, #0x540]
02ba5310  ldr x0,[x8]
02ba5314  ldr w8,[x0, #0xe4]
02ba5318  cbnz w8,0x02ba5320
02ba531c  bl 0x029f5bd0
02ba5320  mov w0,w19
02ba5324  mov w1,w21
02ba5328  mov w2,w20
02ba532c  mov w3,w22
02ba5330  mov w4,#0x1
02ba5334  bl 0x02b996c4
02ba5338  ldp x20,x19,[sp, #0x40]
02ba533c  ldp x22,x21,[sp, #0x30]
02ba5340  ldp x30,x23,[sp, #0x20]
02ba5344  ldp d9,d8,[sp, #0x10]
02ba5348  add sp,sp,#0x50
02ba534c  ret
02ba5350  bl 0x029f5cfc
02ba5354  bl 0x029f5d04
