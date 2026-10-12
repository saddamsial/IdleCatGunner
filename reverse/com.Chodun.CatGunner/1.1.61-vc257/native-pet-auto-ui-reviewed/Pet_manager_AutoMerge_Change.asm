02c7d938  str x30,[sp, #-0x20]!
02c7d93c  stp x20,x19,[sp, #0x10]
02c7d940  adrp x20,0x625c000
02c7d944  mov x19,x0
02c7d948  ldrb w8,[x20, #0x32d]
02c7d94c  tbnz w8,#0x0,0x02c7d970
02c7d950  adrp x0,0x5e63000
02c7d954  ldr x0,[x0, #0x828]
02c7d958  bl 0x029f5a50
02c7d95c  adrp x0,0x5e63000
02c7d960  ldr x0,[x0, #0xd68]
02c7d964  bl 0x029f5a50
02c7d968  mov w8,#0x1
02c7d96c  strb w8,[x20, #0x32d]
02c7d970  bl 0x02c7d764
02c7d974  tbz w0,#0x0,0x02c7d994
02c7d978  ldrb w8,[x19, #0x60]
02c7d97c  mov x0,x19
02c7d980  ldp x20,x19,[sp, #0x10]
02c7d984  cmp w8,#0x0
02c7d988  cset w1,eq
02c7d98c  ldr x30,[sp], #0x20
02c7d990  b 0x02c7d860
02c7d994  adrp x20,0x5e63000
02c7d998  mov x0,x19
02c7d99c  ldr x20,[x20, #0x828]
02c7d9a0  strb wzr,[x19, #0x60]
02c7d9a4  bl 0x02c7c6e4
02c7d9a8  ldr x8,[x20]
02c7d9ac  ldr x8,[x8, #0xb8]
02c7d9b0  ldr x0,[x8]
02c7d9b4  cbz x0,0x02c7d9d4
02c7d9b8  adrp x8,0x5e63000
02c7d9bc  mov x2,xzr
02c7d9c0  ldr x8,[x8, #0xd68]
02c7d9c4  ldp x20,x19,[sp, #0x10]
02c7d9c8  ldr x1,[x8]
02c7d9cc  ldr x30,[sp], #0x20
02c7d9d0  b 0x02ca7100
02c7d9d4  bl 0x029f5cfc
