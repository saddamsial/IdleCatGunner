02c6ac38  stp x30,x23,[sp, #-0x30]!
02c6ac3c  stp x22,x21,[sp, #0x10]
02c6ac40  stp x20,x19,[sp, #0x20]
02c6ac44  adrp x23,0x625c000
02c6ac48  adrp x22,0x5e5d000
02c6ac4c  adrp x21,0x5e62000
02c6ac50  adrp x20,0x5e59000
02c6ac54  ldr x22,[x22, #0x790]
02c6ac58  ldrb w8,[x23, #0x284]
02c6ac5c  ldr x21,[x21, #0x6b0]
02c6ac60  ldr x20,[x20, #0x50]
02c6ac64  mov x19,x0
02c6ac68  tbnz w8,#0x0,0x02c6ac98
02c6ac6c  adrp x0,0x5e62000
02c6ac70  ldr x0,[x0, #0x6b0]
02c6ac74  bl 0x029f5a50
02c6ac78  adrp x0,0x5e5d000
02c6ac7c  ldr x0,[x0, #0x790]
02c6ac80  bl 0x029f5a50
02c6ac84  adrp x0,0x5e59000
02c6ac88  ldr x0,[x0, #0x50]
02c6ac8c  bl 0x029f5a50
02c6ac90  mov w8,#0x1
02c6ac94  strb w8,[x23, #0x284]
02c6ac98  ldr x0,[x22]
02c6ac9c  mov w1,#0xd
02c6aca0  bl 0x029f5b40
02c6aca4  mov x1,x0
02c6aca8  mov x0,x19
02c6acac  str x1,[x0, #0x38]!
02c6acb0  bl 0x029f59f4
02c6acb4  ldr x0,[x22]
02c6acb8  mov w1,#0x10
02c6acbc  bl 0x029f5b40
02c6acc0  mov x1,x0
02c6acc4  mov x0,x19
02c6acc8  str x1,[x0, #0x40]!
02c6accc  bl 0x029f59f4
02c6acd0  ldr x0,[x21]
02c6acd4  mov w1,#0x10
02c6acd8  bl 0x029f5b40
02c6acdc  mov x1,x0
02c6ace0  mov x0,x19
02c6ace4  str x1,[x0, #0x60]!
02c6ace8  bl 0x029f59f4
02c6acec  ldr x1,[x20]
02c6acf0  mov w8,#0x1
02c6acf4  mov w9,#0x6
02c6acf8  mov x0,x19
02c6acfc  strb w8,[x19, #0x70]
02c6ad00  str w9,[x19, #0x74]
02c6ad04  str x1,[x0, #0xb8]!
02c6ad08  bl 0x029f59f4
02c6ad0c  movi v0.2D,#-0x1
02c6ad10  mov x0,x19
02c6ad14  mov x1,xzr
02c6ad18  ldp x22,x21,[sp, #0x10]
02c6ad1c  str d0,[x19, #0xc0]
02c6ad20  ldp x20,x19,[sp, #0x20]
02c6ad24  ldp x30,x23,[sp], #0x30
02c6ad28  b 0x057e2ee0
