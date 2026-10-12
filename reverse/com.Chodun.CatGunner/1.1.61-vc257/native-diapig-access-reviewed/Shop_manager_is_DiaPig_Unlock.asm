02c8c8f4  str x30,[sp, #-0x20]!
02c8c8f8  stp x20,x19,[sp, #0x10]
02c8c8fc  adrp x20,0x625c000
02c8c900  adrp x19,0x5e5d000
02c8c904  ldrb w8,[x20, #0x456]
02c8c908  ldr x19,[x19, #0x920]
02c8c90c  tbnz w8,#0x0,0x02c8c924
02c8c910  adrp x0,0x5e5d000
02c8c914  ldr x0,[x0, #0x920]
02c8c918  bl 0x029f5a50
02c8c91c  mov w8,#0x1
02c8c920  strb w8,[x20, #0x456]
02c8c924  ldr x0,[x19]
02c8c928  ldr w8,[x0, #0xe4]
02c8c92c  cbnz w8,0x02c8c938
02c8c930  bl 0x029f5bd0
02c8c934  ldr x0,[x19]
02c8c938  ldr x8,[x0, #0xb8]
02c8c93c  ldrb w9,[x8, #0x9]
02c8c940  cbz w9,0x02c8c94c
02c8c944  mov w0,#0x1
02c8c948  b 0x02c8c96c
02c8c94c  ldr w9,[x0, #0xe4]
02c8c950  cbnz w9,0x02c8c960
02c8c954  bl 0x029f5bd0
02c8c958  ldr x8,[x19]
02c8c95c  ldr x8,[x8, #0xb8]
02c8c960  ldrb w8,[x8, #0x8]
02c8c964  cmp w8,#0x0
02c8c968  cset w0,ne
02c8c96c  ldp x20,x19,[sp, #0x10]
02c8c970  ldr x30,[sp], #0x20
02c8c974  ret
