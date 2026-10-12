02c26e94  stp x30,x21,[sp, #-0x20]!
02c26e98  stp x20,x19,[sp, #0x10]
02c26e9c  adrp x20,0x625b000
02c26ea0  adrp x21,0x5e5e000
02c26ea4  mov x19,x0
02c26ea8  ldrb w8,[x20, #0xfb7]
02c26eac  ldr x21,[x21, #0x520]
02c26eb0  tbnz w8,#0x0,0x02c26ec8
02c26eb4  adrp x0,0x5e5e000
02c26eb8  ldr x0,[x0, #0x520]
02c26ebc  bl 0x029f5a50
02c26ec0  mov w8,#0x1
02c26ec4  strb w8,[x20, #0xfb7]
02c26ec8  ldr x8,[x21]
02c26ecc  ldr x8,[x8, #0xb8]
02c26ed0  ldr x0,[x8]
02c26ed4  cbz x0,0x02c26ee8
02c26ed8  mov x1,x19
02c26edc  ldp x20,x19,[sp, #0x10]
02c26ee0  ldp x30,x21,[sp], #0x20
02c26ee4  b 0x02c26cf0
02c26ee8  bl 0x029f5cfc
