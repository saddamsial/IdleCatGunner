02c56570  sub sp,sp,#0x50
02c56574  stp x30,x25,[sp, #0x10]
02c56578  stp x24,x23,[sp, #0x20]
02c5657c  stp x22,x21,[sp, #0x30]
02c56580  stp x20,x19,[sp, #0x40]
02c56584  adrp x22,0x625c000
02c56588  mov w20,w2
02c5658c  mov w21,w1
02c56590  ldrb w8,[x22, #0x194]
02c56594  mov x19,x0
02c56598  tbnz w8,#0x0,0x02c565d4
02c5659c  adrp x0,0x5e5e000
02c565a0  ldr x0,[x0, #0x528]
02c565a4  bl 0x029f5a50
02c565a8  adrp x0,0x5e63000
02c565ac  ldr x0,[x0, #0x650]
02c565b0  bl 0x029f5a50
02c565b4  adrp x0,0x5e63000
02c565b8  ldr x0,[x0, #0x658]
02c565bc  bl 0x029f5a50
02c565c0  adrp x0,0x5e63000
02c565c4  ldr x0,[x0, #0x660]
02c565c8  bl 0x029f5a50
02c565cc  mov w8,#0x1
02c565d0  strb w8,[x22, #0x194]
02c565d4  ldr x0,[x19, #0x38]
02c565d8  cbz x0,0x02c566d4
02c565dc  adrp x25,0x5e5e000
02c565e0  adrp x24,0x5e63000
02c565e4  adrp x23,0x5e63000
02c565e8  adrp x22,0x5e63000
02c565ec  cmp w21,w20
02c565f0  ldr x25,[x25, #0x528]
02c565f4  ldr x24,[x24, #0x660]
02c565f8  ldr x23,[x23, #0x658]
02c565fc  ldr x22,[x22, #0x650]
02c56600  cset w1,gt
02c56604  mov x2,xzr
02c56608  csel w21,w21,w20,gt
02c5660c  bl 0x057dff3c
02c56610  ldr x0,[x25]
02c56614  ldr w8,[x0, #0xe4]
02c56618  cbnz w8,0x02c56620
02c5661c  bl 0x029f5bd0
02c56620  ldr x0,[x24]
02c56624  mov w1,#0x1
02c56628  mov w2,wzr
02c5662c  mov w3,#0x1
02c56630  mov w4,wzr
02c56634  mov x5,xzr
02c56638  mov x6,xzr
02c5663c  mov w7,#0x1
02c56640  str xzr,[sp]
02c56644  bl 0x02bccb00
02c56648  mov x1,xzr
02c5664c  mov x20,x0
02c56650  bl 0x046c0604
02c56654  adrp x8,0x5e58000
02c56658  tst w0,#0x1
02c5665c  add x1,sp,#0xc
02c56660  ldr x8,[x8, #0xa10]
02c56664  ldr x9,[x23]
02c56668  ldr x19,[x19, #0x40]
02c5666c  str w21,[sp, #0xc]
02c56670  ldr x0,[x8, #0x48]
02c56674  csel x20,x9,x20,ne
02c56678  bl 0x029f5bd8
02c5667c  ldr x8,[x22]
02c56680  mov x1,x0
02c56684  mov x2,xzr
02c56688  mov x0,x8
02c5668c  bl 0x046b6c0c
02c56690  mov x1,x0
02c56694  mov x0,x20
02c56698  mov x2,xzr
02c5669c  bl 0x046b6c0c
02c566a0  cbz x19,0x02c566d4
02c566a4  ldr x8,[x19]
02c566a8  mov x1,x0
02c566ac  mov x0,x19
02c566b0  ldr x9,[x8, #0x558]
02c566b4  ldr x2,[x8, #0x560]
02c566b8  blr x9
02c566bc  ldp x20,x19,[sp, #0x40]
02c566c0  ldp x22,x21,[sp, #0x30]
02c566c4  ldp x24,x23,[sp, #0x20]
02c566c8  ldp x30,x25,[sp, #0x10]
02c566cc  add sp,sp,#0x50
02c566d0  ret
02c566d4  bl 0x029f5cfc
