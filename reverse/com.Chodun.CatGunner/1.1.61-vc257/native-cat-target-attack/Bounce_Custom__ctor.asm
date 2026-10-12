02b9becc  str x30,[sp, #-0x20]!
02b9bed0  stp x20,x19,[sp, #0x10]
02b9bed4  adrp x20,0x625b000
02b9bed8  mov w9,#0xcccd
02b9bedc  mov x19,x0
02b9bee0  ldrb w8,[x20, #0x279]
02b9bee4  movk w9,#0x3e4c, LSL #16
02b9bee8  str xzr,[x0, #0x28]
02b9beec  str wzr,[x0, #0x24]
02b9bef0  str w9,[x0, #0x34]
02b9bef4  cbnz w8,0x02b9bf0c
02b9bef8  adrp x0,0x5e58000
02b9befc  ldr x0,[x0, #0xbf8]
02b9bf00  bl 0x029f5a50
02b9bf04  mov w8,#0x1
02b9bf08  strb w8,[x20, #0x279]
02b9bf0c  adrp x8,0x5e58000
02b9bf10  mov x0,x19
02b9bf14  mov x1,xzr
02b9bf18  ldr x8,[x8, #0xbf8]
02b9bf1c  ldr x8,[x8]
02b9bf20  ldr x8,[x8, #0xb8]
02b9bf24  ldur d0,[x8, #0xc]
02b9bf28  ldr s1,[x8, #0x14]
02b9bf2c  str d0,[x19, #0x40]
02b9bf30  str s1,[x19, #0x48]
02b9bf34  ldp x20,x19,[sp, #0x10]
02b9bf38  ldr x30,[sp], #0x20
02b9bf3c  b 0x057e2ee0
