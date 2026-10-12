02cb2e70  str x30,[sp, #-0x20]!
02cb2e74  stp x20,x19,[sp, #0x10]
02cb2e78  adrp x20,0x625c000
02cb2e7c  adrp x19,0x5e5d000
02cb2e80  ldrb w8,[x20, #0x55e]
02cb2e84  ldr x19,[x19, #0x4e8]
02cb2e88  tbnz w8,#0x0,0x02cb2ea0
02cb2e8c  adrp x0,0x5e5d000
02cb2e90  ldr x0,[x0, #0x4e8]
02cb2e94  bl 0x029f5a50
02cb2e98  mov w8,#0x1
02cb2e9c  strb w8,[x20, #0x55e]
02cb2ea0  ldr x0,[x19]
02cb2ea4  ldr w8,[x0, #0xe4]
02cb2ea8  cbnz w8,0x02cb2eb4
02cb2eac  bl 0x029f5bd0
02cb2eb0  ldr x0,[x19]
02cb2eb4  ldr x8,[x0, #0xb8]
02cb2eb8  ldr x8,[x8]
02cb2ebc  cbz x8,0x02cb2ef0
02cb2ec0  ldr x19,[x8, #0x48]
02cb2ec4  mov w0,#0x1
02cb2ec8  bl 0x02caf208
02cb2ecc  cbz x19,0x02cb2ef0
02cb2ed0  ldr w8,[x19, #0x18]
02cb2ed4  cmp w0,w8
02cb2ed8  b.cs 0x02cb2ef4
02cb2edc  add x8,x19,w0, SXTW  #0x2
02cb2ee0  ldp x20,x19,[sp, #0x10]
02cb2ee4  ldr w0,[x8, #0x20]
02cb2ee8  ldr x30,[sp], #0x20
02cb2eec  ret
02cb2ef0  bl 0x029f5cfc
02cb2ef4  bl 0x029f5d04
