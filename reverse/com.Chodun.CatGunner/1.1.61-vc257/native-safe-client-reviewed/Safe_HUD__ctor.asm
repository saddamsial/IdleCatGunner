02c6b984  str x30,[sp, #-0x20]!
02c6b988  stp x20,x19,[sp, #0x10]
02c6b98c  adrp x8,0x1170000
02c6b990  adrp x20,0x625b000
02c6b994  mov x19,x0
02c6b998  ldr d0,[x8, #0x318]
02c6b99c  ldrb w8,[x20, #0x279]
02c6b9a0  str d0,[x0, #0x30]
02c6b9a4  cbnz w8,0x02c6b9bc
02c6b9a8  adrp x0,0x5e58000
02c6b9ac  ldr x0,[x0, #0xbf8]
02c6b9b0  bl 0x029f5a50
02c6b9b4  mov w8,#0x1
02c6b9b8  strb w8,[x20, #0x279]
02c6b9bc  adrp x8,0x5e58000
02c6b9c0  mov x0,x19
02c6b9c4  mov x1,xzr
02c6b9c8  ldr x8,[x8, #0xbf8]
02c6b9cc  ldr x8,[x8]
02c6b9d0  ldr x8,[x8, #0xb8]
02c6b9d4  ldur d0,[x8, #0xc]
02c6b9d8  ldr s1,[x8, #0x14]
02c6b9dc  str d0,[x19, #0x38]
02c6b9e0  str s1,[x19, #0x40]
02c6b9e4  ldp x20,x19,[sp, #0x10]
02c6b9e8  ldr x30,[sp], #0x20
02c6b9ec  b 0x057e2ee0
