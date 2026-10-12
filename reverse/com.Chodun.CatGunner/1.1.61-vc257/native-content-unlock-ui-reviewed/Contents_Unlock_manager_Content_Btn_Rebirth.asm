02b9e650  str x30,[sp, #-0x20]!
02b9e654  stp x20,x19,[sp, #0x10]
02b9e658  adrp x19,0x625b000
02b9e65c  adrp x20,0x5e5e000
02b9e660  ldrb w8,[x19, #0x9ea]
02b9e664  ldr x20,[x20, #0x4d0]
02b9e668  tbnz w8,#0x0,0x02b9e68c
02b9e66c  adrp x0,0x5e5e000
02b9e670  ldr x0,[x0, #0x4d0]
02b9e674  bl 0x029f5a50
02b9e678  adrp x0,0x5e5d000
02b9e67c  ldr x0,[x0, #0xd60]
02b9e680  bl 0x029f5a50
02b9e684  mov w8,#0x1
02b9e688  strb w8,[x19, #0x9ea]
02b9e68c  ldr x0,[x20]
02b9e690  ldr w8,[x0, #0xe4]
02b9e694  cbnz w8,0x02b9e69c
02b9e698  bl 0x029f5bd0
02b9e69c  mov w0,wzr
02b9e6a0  bl 0x02b9e588
02b9e6a4  tbz w0,#0x0,0x02b9e6d8
02b9e6a8  adrp x8,0x5e5d000
02b9e6ac  ldr x8,[x8, #0xd60]
02b9e6b0  ldr x8,[x8]
02b9e6b4  ldr x8,[x8, #0xb8]
02b9e6b8  ldr x8,[x8]
02b9e6bc  cbz x8,0x02b9e6e4
02b9e6c0  ldr x0,[x8, #0x38]
02b9e6c4  cbz x0,0x02b9e6e4
02b9e6c8  ldp x20,x19,[sp, #0x10]
02b9e6cc  mov x1,xzr
02b9e6d0  ldr x30,[sp], #0x20
02b9e6d4  b 0x02c8785c
02b9e6d8  ldp x20,x19,[sp, #0x10]
02b9e6dc  ldr x30,[sp], #0x20
02b9e6e0  ret
02b9e6e4  bl 0x029f5cfc
