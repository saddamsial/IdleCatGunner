02c0a358  str x30,[sp, #-0x20]!
02c0a35c  stp x20,x19,[sp, #0x10]
02c0a360  adrp x19,0x625b000
02c0a364  adrp x20,0x5e5d000
02c0a368  ldrb w8,[x19, #0xe92]
02c0a36c  ldr x20,[x20, #0xd38]
02c0a370  tbnz w8,#0x0,0x02c0a388
02c0a374  adrp x0,0x5e5d000
02c0a378  ldr x0,[x0, #0xd38]
02c0a37c  bl 0x029f5a50
02c0a380  mov w8,#0x1
02c0a384  strb w8,[x19, #0xe92]
02c0a388  ldr x8,[x20]
02c0a38c  ldr x8,[x8, #0xb8]
02c0a390  ldr x0,[x8]
02c0a394  cbz x0,0x02c0a3a8
02c0a398  ldp x20,x19,[sp, #0x10]
02c0a39c  mov x1,xzr
02c0a3a0  ldr x30,[sp], #0x20
02c0a3a4  b 0x02c5f2a4
02c0a3a8  bl 0x029f5cfc
