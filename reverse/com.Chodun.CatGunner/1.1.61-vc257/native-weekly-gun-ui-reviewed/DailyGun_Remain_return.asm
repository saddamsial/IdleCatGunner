02c8ac2c  sub sp,sp,#0x30
02c8ac30  stp x30,x21,[sp, #0x10]
02c8ac34  stp x20,x19,[sp, #0x20]
02c8ac38  adrp x20,0x625c000
02c8ac3c  adrp x19,0x5e5d000
02c8ac40  ldrb w8,[x20, #0x3a5]
02c8ac44  ldr x19,[x19, #0x3c0]
02c8ac48  tbnz w8,#0x0,0x02c8ac84
02c8ac4c  adrp x0,0x5e62000
02c8ac50  ldr x0,[x0, #0x660]
02c8ac54  bl 0x029f5a50
02c8ac58  adrp x0,0x5e59000
02c8ac5c  ldr x0,[x0, #0x7d0]
02c8ac60  bl 0x029f5a50
02c8ac64  adrp x0,0x5e5a000
02c8ac68  ldr x0,[x0, #0x180]
02c8ac6c  bl 0x029f5a50
02c8ac70  adrp x0,0x5e5d000
02c8ac74  ldr x0,[x0, #0x3c0]
02c8ac78  bl 0x029f5a50
02c8ac7c  mov w8,#0x1
02c8ac80  strb w8,[x20, #0x3a5]
02c8ac84  ldr x0,[x19]
02c8ac88  adrp x19,0x5e62000
02c8ac8c  ldr w8,[x0, #0xe4]
02c8ac90  ldr x19,[x19, #0x660]
02c8ac94  str xzr,[sp, #0x8]
02c8ac98  cbnz w8,0x02c8aca0
02c8ac9c  bl 0x029f5bd0
02c8aca0  adrp x21,0x5e59000
02c8aca4  mov x0,xzr
02c8aca8  ldr x21,[x21, #0x7d0]
02c8acac  bl 0x02c25b48
02c8acb0  ldr x8,[x19]
02c8acb4  mov x19,x0
02c8acb8  ldr w9,[x8, #0xe4]
02c8acbc  cbnz w9,0x02c8acc8
02c8acc0  mov x0,x8
02c8acc4  bl 0x029f5bd0
02c8acc8  adrp x20,0x5e5a000
02c8accc  mov x0,x19
02c8acd0  ldr x20,[x20, #0x180]
02c8acd4  bl 0x02c8ab78
02c8acd8  ldr x8,[x21]
02c8acdc  str x0,[sp, #0x8]
02c8ace0  ldr w9,[x8, #0xe4]
02c8ace4  cbnz w9,0x02c8acf0
02c8ace8  mov x0,x8
02c8acec  bl 0x029f5bd0
02c8acf0  fmov d0,0x401c000000000000
02c8acf4  add x0,sp,#0x8
02c8acf8  mov x1,xzr
02c8acfc  bl 0x0482f924
02c8ad00  mov x1,x19
02c8ad04  mov x2,xzr
02c8ad08  bl 0x048330d0
02c8ad0c  ldr x8,[x20]
02c8ad10  mov x19,x0
02c8ad14  ldr w9,[x8, #0xe4]
02c8ad18  cbnz w9,0x02c8ad28
02c8ad1c  mov x0,x8
02c8ad20  bl 0x029f5bd0
02c8ad24  ldr x8,[x20]
02c8ad28  ldr x8,[x8, #0xb8]
02c8ad2c  mov x0,x19
02c8ad30  mov x2,xzr
02c8ad34  ldr x1,[x8]
02c8ad38  bl 0x04868dcc
02c8ad3c  tbz w0,#0x0,0x02c8ad5c
02c8ad40  ldr x0,[x20]
02c8ad44  ldr w8,[x0, #0xe4]
02c8ad48  cbnz w8,0x02c8ad54
02c8ad4c  bl 0x029f5bd0
02c8ad50  ldr x0,[x20]
02c8ad54  ldr x8,[x0, #0xb8]
02c8ad58  ldr x19,[x8]
02c8ad5c  mov x0,x19
02c8ad60  ldp x20,x19,[sp, #0x20]
02c8ad64  ldp x30,x21,[sp, #0x10]
02c8ad68  add sp,sp,#0x30
02c8ad6c  ret
