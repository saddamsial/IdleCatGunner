02c7ca5c  stp x30,x21,[sp, #-0x20]!
02c7ca60  stp x20,x19,[sp, #0x10]
02c7ca64  ldr x8,[x0, #0x38]
02c7ca68  mov x20,x2
02c7ca6c  mov x19,x0
02c7ca70  cbz x8,0x02c7ca7c
02c7ca74  ldr w2,[x8, #0x18]
02c7ca78  b 0x02c7ca80
02c7ca7c  mov w2,wzr
02c7ca80  bl 0x02c7c968
02c7ca84  mov x21,x19
02c7ca88  mov x1,x0
02c7ca8c  str x0,[x21, #0x40]!
02c7ca90  mov x0,x21
02c7ca94  bl 0x029f59f4
02c7ca98  ldur x8,[x21, #-0x10]
02c7ca9c  cbz x8,0x02c7caa8
02c7caa0  ldr w2,[x8, #0x18]
02c7caa4  b 0x02c7caac
02c7caa8  mov w2,wzr
02c7caac  mov x1,x20
02c7cab0  bl 0x02c7c968
02c7cab4  str x0,[x19, #0x48]!
02c7cab8  mov x1,x0
02c7cabc  mov x0,x19
02c7cac0  ldp x20,x19,[sp, #0x10]
02c7cac4  ldp x30,x21,[sp], #0x20
02c7cac8  b 0x029f59f4
