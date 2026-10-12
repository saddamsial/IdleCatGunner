02c4aa88  stp d9,d8,[sp, #-0x30]!
02c4aa8c  stp x30,x21,[sp, #0x10]
02c4aa90  stp x20,x19,[sp, #0x20]
02c4aa94  adrp x20,0x625c000
02c4aa98  mov x19,x0
02c4aa9c  ldrb w8,[x20, #0x11d]
02c4aaa0  tbnz w8,#0x0,0x02c4aac4
02c4aaa4  adrp x0,0x5e5d000
02c4aaa8  ldr x0,[x0, #0x368]
02c4aaac  bl 0x029f5a50
02c4aab0  adrp x0,0x5e5b000
02c4aab4  ldr x0,[x0, #0xed0]
02c4aab8  bl 0x029f5a50
02c4aabc  mov w8,#0x1
02c4aac0  strb w8,[x20, #0x11d]
02c4aac4  ldr w8,[x19, #0x10]
02c4aac8  ldr x20,[x19, #0x20]
02c4aacc  cmp w8,#0x2
02c4aad0  b.eq 0x02c4abc4
02c4aad4  cmp w8,#0x1
02c4aad8  b.eq 0x02c4ab60
02c4aadc  cbnz w8,0x02c4ac38
02c4aae0  adrp x8,0x5e5d000
02c4aae4  ldr x8,[x8, #0x368]
02c4aae8  ldr x8,[x8]
02c4aaec  ldr x8,[x8, #0xb8]
02c4aaf0  ldr x0,[x8]
02c4aaf4  mov w8,#0xffffffff
02c4aaf8  str w8,[x19, #0x10]
02c4aafc  cbz x0,0x02c4ac50
02c4ab00  mov x1,xzr
02c4ab04  bl 0x02c2a604
02c4ab08  mov x0,xzr
02c4ab0c  bl 0x057ebae4
02c4ab10  str s0,[x19, #0x28]
02c4ab14  cbz x20,0x02c4ac50
02c4ab18  ldr x0,[x20, #0x30]
02c4ab1c  cbz x0,0x02c4ac50
02c4ab20  mov w1,#0x1
02c4ab24  mov x2,xzr
02c4ab28  mov w21,#0x1
02c4ab2c  bl 0x057dff3c
02c4ab30  mov x0,x20
02c4ab34  bl 0x02c4a790
02c4ab38  mov x1,x0
02c4ab3c  mov x0,x20
02c4ab40  mov x2,xzr
02c4ab44  bl 0x057e2120
02c4ab48  mov x1,x0
02c4ab4c  str x0,[x19, #0x18]!
02c4ab50  mov x0,x19
02c4ab54  bl 0x029f59f4
02c4ab58  stur w21,[x19, #-0x8]
02c4ab5c  b 0x02c4ac3c
02c4ab60  mov w8,#0xffffffff
02c4ab64  mov x0,xzr
02c4ab68  str w8,[x19, #0x10]
02c4ab6c  bl 0x057ebae4
02c4ab70  ldr s1,[x19, #0x28]
02c4ab74  fmov s9,0x3fc00000
02c4ab78  fsub s8,s0,s1
02c4ab7c  fcmp s8,s9
02c4ab80  b.pl 0x02c4abcc
02c4ab84  adrp x8,0x5e5b000
02c4ab88  ldr x8,[x8, #0xed0]
02c4ab8c  ldr x0,[x8]
02c4ab90  bl 0x029f5cec
02c4ab94  fsub s0,s9,s8
02c4ab98  mov x1,xzr
02c4ab9c  mov x20,x0
02c4aba0  bl 0x057e85dc
02c4aba4  str x20,[x19, #0x18]!
02c4aba8  mov x0,x19
02c4abac  mov x1,x20
02c4abb0  bl 0x029f59f4
02c4abb4  mov w8,#0x2
02c4abb8  mov w21,#0x1
02c4abbc  stur w8,[x19, #-0x8]
02c4abc0  b 0x02c4ac3c
02c4abc4  mov w8,#0xffffffff
02c4abc8  str w8,[x19, #0x10]
02c4abcc  adrp x8,0x5e5d000
02c4abd0  ldr x8,[x8, #0x368]
02c4abd4  ldr x8,[x8]
02c4abd8  ldr x8,[x8, #0xb8]
02c4abdc  ldr x0,[x8]
02c4abe0  cbz x0,0x02c4ac50
02c4abe4  mov x1,xzr
02c4abe8  bl 0x02c2a620
02c4abec  adrp x19,0x625b000
02c4abf0  ldrb w8,[x19, #0xa57]
02c4abf4  cbnz w8,0x02c4ac0c
02c4abf8  adrp x0,0x5e5d000
02c4abfc  ldr x0,[x0, #0xd70]
02c4ac00  bl 0x029f5a50
02c4ac04  mov w8,#0x1
02c4ac08  strb w8,[x19, #0xa57]
02c4ac0c  adrp x8,0x5e5d000
02c4ac10  ldr x8,[x8, #0xd70]
02c4ac14  ldr x8,[x8]
02c4ac18  ldr x8,[x8, #0xb8]
02c4ac1c  ldr x0,[x8]
02c4ac20  cbz x0,0x02c4ac50
02c4ac24  mov x1,xzr
02c4ac28  bl 0x02c226a0
02c4ac2c  cbz x20,0x02c4ac50
02c4ac30  mov x0,x20
02c4ac34  bl 0x02c49908
02c4ac38  mov w21,wzr
02c4ac3c  mov w0,w21
02c4ac40  ldp x20,x19,[sp, #0x20]
02c4ac44  ldp x30,x21,[sp, #0x10]
02c4ac48  ldp d9,d8,[sp], #0x30
02c4ac4c  ret
02c4ac50  bl 0x029f5cfc
