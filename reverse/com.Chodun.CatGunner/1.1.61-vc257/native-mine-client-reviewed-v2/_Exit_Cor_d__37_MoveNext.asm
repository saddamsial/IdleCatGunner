02c4aca0  str x30,[sp, #-0x20]!
02c4aca4  stp x20,x19,[sp, #0x10]
02c4aca8  adrp x20,0x625c000
02c4acac  mov x19,x0
02c4acb0  ldrb w8,[x20, #0x11e]
02c4acb4  tbnz w8,#0x0,0x02c4acfc
02c4acb8  adrp x0,0x5e5d000
02c4acbc  ldr x0,[x0, #0x910]
02c4acc0  bl 0x029f5a50
02c4acc4  adrp x0,0x5e59000
02c4acc8  ldr x0,[x0, #0x1c0]
02c4accc  bl 0x029f5a50
02c4acd0  adrp x0,0x5e5d000
02c4acd4  ldr x0,[x0, #0xc20]
02c4acd8  bl 0x029f5a50
02c4acdc  adrp x0,0x5e5d000
02c4ace0  ldr x0,[x0, #0x368]
02c4ace4  bl 0x029f5a50
02c4ace8  adrp x0,0x5e5a000
02c4acec  ldr x0,[x0, #0x710]
02c4acf0  bl 0x029f5a50
02c4acf4  mov w8,#0x1
02c4acf8  strb w8,[x20, #0x11e]
02c4acfc  ldr w8,[x19, #0x10]
02c4ad00  cmp w8,#0x2
02c4ad04  b.eq 0x02c4adf4
02c4ad08  cmp w8,#0x1
02c4ad0c  b.eq 0x02c4ad78
02c4ad10  cbnz w8,0x02c4ae94
02c4ad14  adrp x8,0x5e5d000
02c4ad18  ldr x8,[x8, #0x368]
02c4ad1c  ldr x8,[x8]
02c4ad20  ldr x8,[x8, #0xb8]
02c4ad24  ldr x0,[x8]
02c4ad28  mov w8,#0xffffffff
02c4ad2c  str w8,[x19, #0x10]
02c4ad30  cbz x0,0x02c4aea4
02c4ad34  mov x1,xzr
02c4ad38  bl 0x02c2a604
02c4ad3c  adrp x8,0x5e5a000
02c4ad40  ldr x8,[x8, #0x710]
02c4ad44  ldr x0,[x8]
02c4ad48  bl 0x029f5cec
02c4ad4c  fmov s0,0x3fc00000
02c4ad50  mov x1,xzr
02c4ad54  mov x20,x0
02c4ad58  bl 0x057e84e0
02c4ad5c  str x20,[x19, #0x18]!
02c4ad60  mov x0,x19
02c4ad64  mov x1,x20
02c4ad68  bl 0x029f59f4
02c4ad6c  mov w0,#0x1
02c4ad70  stur w0,[x19, #-0x8]
02c4ad74  b 0x02c4ae98
02c4ad78  adrp x20,0x5e5d000
02c4ad7c  mov w9,#0xffffffff
02c4ad80  ldr x20,[x20, #0xc20]
02c4ad84  str w9,[x19, #0x10]
02c4ad88  ldr x0,[x20]
02c4ad8c  ldr w8,[x0, #0xe4]
02c4ad90  cbnz w8,0x02c4ad9c
02c4ad94  bl 0x029f5bd0
02c4ad98  ldr x0,[x20]
02c4ad9c  ldr x8,[x0, #0xb8]
02c4ada0  ldr x0,[x8, #0x10]
02c4ada4  cbz x0,0x02c4aea4
02c4ada8  mov x1,xzr
02c4adac  bl 0x02caac18
02c4adb0  adrp x8,0x5e5a000
02c4adb4  ldr x8,[x8, #0x710]
02c4adb8  ldr x0,[x8]
02c4adbc  bl 0x029f5cec
02c4adc0  adrp x8,0x116c000
02c4adc4  mov x1,xzr
02c4adc8  mov x20,x0
02c4adcc  ldr s0,[x8, #0x60]
02c4add0  bl 0x057e84e0
02c4add4  str x20,[x19, #0x18]!
02c4add8  mov x0,x19
02c4addc  mov x1,x20
02c4ade0  bl 0x029f59f4
02c4ade4  mov w8,#0x2
02c4ade8  mov w0,#0x1
02c4adec  stur w8,[x19, #-0x8]
02c4adf0  b 0x02c4ae98
02c4adf4  adrp x8,0x5e5d000
02c4adf8  ldr x8,[x8, #0x368]
02c4adfc  ldr x20,[x19, #0x20]
02c4ae00  ldr x8,[x8]
02c4ae04  ldr x8,[x8, #0xb8]
02c4ae08  ldr x0,[x8]
02c4ae0c  mov w8,#0xffffffff
02c4ae10  str w8,[x19, #0x10]
02c4ae14  cbz x0,0x02c4aea4
02c4ae18  mov x1,xzr
02c4ae1c  bl 0x02c2a620
02c4ae20  cbz x20,0x02c4aea4
02c4ae24  ldrb w8,[x20, #0x69]
02c4ae28  cbz w8,0x02c4ae94
02c4ae2c  ldrb w8,[x20, #0x6a]
02c4ae30  cbnz w8,0x02c4ae94
02c4ae34  adrp x20,0x5e5d000
02c4ae38  adrp x8,0x5e59000
02c4ae3c  ldr x20,[x20, #0x910]
02c4ae40  ldr x8,[x8, #0x1c0]
02c4ae44  ldr x9,[x20]
02c4ae48  ldr x0,[x8]
02c4ae4c  ldr x8,[x9, #0xb8]
02c4ae50  ldr w9,[x0, #0xe4]
02c4ae54  ldr x19,[x8]
02c4ae58  cbnz w9,0x02c4ae60
02c4ae5c  bl 0x029f5bd0
02c4ae60  mov x0,x19
02c4ae64  mov x1,xzr
02c4ae68  mov x2,xzr
02c4ae6c  bl 0x057dfa70
02c4ae70  tbz w0,#0x0,0x02c4ae94
02c4ae74  ldr x8,[x20]
02c4ae78  ldr x8,[x8, #0xb8]
02c4ae7c  ldr x0,[x8]
02c4ae80  cbz x0,0x02c4aea4
02c4ae84  mov w1,#0x1
02c4ae88  mov x2,xzr
02c4ae8c  mov x3,xzr
02c4ae90  bl 0x02b8ddb4
02c4ae94  mov w0,wzr
02c4ae98  ldp x20,x19,[sp, #0x10]
02c4ae9c  ldr x30,[sp], #0x20
02c4aea0  ret
02c4aea4  bl 0x029f5cfc
