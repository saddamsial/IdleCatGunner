02b89e4c  stp x30,x21,[sp, #-0x20]!
02b89e50  stp x20,x19,[sp, #0x10]
02b89e54  adrp x20,0x625b000
02b89e58  adrp x21,0x5e5d000
02b89e5c  mov x19,x0
02b89e60  ldrb w8,[x20, #0x926]
02b89e64  ldr x21,[x21, #0x980]
02b89e68  tbnz w8,#0x0,0x02b89e80
02b89e6c  adrp x0,0x5e5d000
02b89e70  ldr x0,[x0, #0x980]
02b89e74  bl 0x029f5a50
02b89e78  mov w8,#0x1
02b89e7c  strb w8,[x20, #0x926]
02b89e80  ldr x0,[x21]
02b89e84  bl 0x029f5cec
02b89e88  mov w1,wzr
02b89e8c  mov x2,xzr
02b89e90  mov x20,x0
02b89e94  bl 0x02b8f9e4
02b89e98  cbz x20,0x02b89ebc
02b89e9c  mov x0,x20
02b89ea0  mov x1,x19
02b89ea4  str x19,[x0, #0x20]!
02b89ea8  bl 0x029f59f4
02b89eac  mov x0,x20
02b89eb0  ldp x20,x19,[sp, #0x10]
02b89eb4  ldp x30,x21,[sp], #0x20
02b89eb8  ret
02b89ebc  bl 0x029f5cfc
