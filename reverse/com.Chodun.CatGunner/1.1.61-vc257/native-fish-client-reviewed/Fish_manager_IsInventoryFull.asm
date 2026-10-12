02c5f310  str x30,[sp, #-0x20]!
02c5f314  stp x20,x19,[sp, #0x10]
02c5f318  adrp x20,0x625c000
02c5f31c  mov x19,x0
02c5f320  ldrb w8,[x20, #0x20c]
02c5f324  tbnz w8,#0x0,0x02c5f33c
02c5f328  adrp x0,0x5e62000
02c5f32c  ldr x0,[x0, #0xfe8]
02c5f330  bl 0x029f5a50
02c5f334  mov w8,#0x1
02c5f338  strb w8,[x20, #0x20c]
02c5f33c  ldr x8,[x19, #0x90]
02c5f340  cbz x8,0x02c5f35c
02c5f344  ldr w8,[x8, #0x18]
02c5f348  ldp x20,x19,[sp, #0x10]
02c5f34c  cmp w8,#0x13
02c5f350  cset w0,gt
02c5f354  ldr x30,[sp], #0x20
02c5f358  ret
02c5f35c  bl 0x029f5cfc
