02c5aa98  stp x30,x21,[sp, #-0x20]!
02c5aa9c  stp x20,x19,[sp, #0x10]
02c5aaa0  adrp x21,0x625c000
02c5aaa4  adrp x20,0x5e5e000
02c5aaa8  mov x19,x0
02c5aaac  ldrb w8,[x21, #0x1d7]
02c5aab0  ldr x20,[x20, #0x70]
02c5aab4  tbnz w8,#0x0,0x02c5aacc
02c5aab8  adrp x0,0x5e5e000
02c5aabc  ldr x0,[x0, #0x70]
02c5aac0  bl 0x029f5a50
02c5aac4  mov w8,#0x1
02c5aac8  strb w8,[x21, #0x1d7]
02c5aacc  ldr x0,[x20]
02c5aad0  ldr w8,[x0, #0xe4]
02c5aad4  cbnz w8,0x02c5aae0
02c5aad8  bl 0x029f5bd0
02c5aadc  ldr x0,[x20]
02c5aae0  ldr x8,[x0, #0xb8]
02c5aae4  ldr x0,[x8]
02c5aae8  cbz x0,0x02c5ab00
02c5aaec  ldr w1,[x19, #0x38]
02c5aaf0  ldp x20,x19,[sp, #0x10]
02c5aaf4  mov x2,xzr
02c5aaf8  ldp x30,x21,[sp], #0x20
02c5aafc  b 0x02c586b4
02c5ab00  bl 0x029f5cfc
