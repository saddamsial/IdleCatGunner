02c4a944  str x30,[sp, #-0x20]!
02c4a948  stp x20,x19,[sp, #0x10]
02c4a94c  mov w8,#0x42700000
02c4a950  adrp x9,0x116f000
02c4a954  adrp x20,0x625b000
02c4a958  str w8,[x0, #0x78]
02c4a95c  mov w8,#0x64
02c4a960  ldr d0,[x9, #0xb78]
02c4a964  str w8,[x0, #0xa0]
02c4a968  ldrb w8,[x20, #0x26f]
02c4a96c  mov x10,#0x41a00000
02c4a970  mov x19,x0
02c4a974  add x9,x0,#0x10c
02c4a978  movk x10,#0x4100, LSL #48
02c4a97c  str wzr,[x0, #0x90]
02c4a980  str d0,[x0, #0x88]
02c4a984  str x10,[x9]
02c4a988  cbnz w8,0x02c4a9a0
02c4a98c  adrp x0,0x5e58000
02c4a990  ldr x0,[x0, #0xbf8]
02c4a994  bl 0x029f5a50
02c4a998  mov w8,#0x1
02c4a99c  strb w8,[x20, #0x26f]
02c4a9a0  adrp x8,0x5e58000
02c4a9a4  adrp x10,0x116f000
02c4a9a8  add x9,x19,#0x114
02c4a9ac  ldr x8,[x8, #0xbf8]
02c4a9b0  ldr d2,[x10, #0xc18]
02c4a9b4  mov x0,x19
02c4a9b8  mov x1,xzr
02c4a9bc  ldr x8,[x8]
02c4a9c0  ldr x8,[x8, #0xb8]
02c4a9c4  ldr s1,[x8, #0x8]
02c4a9c8  ldr d0,[x8]
02c4a9cc  str d2,[x19, #0x120]
02c4a9d0  str s1,[x19, #0x11c]
02c4a9d4  ldp x20,x19,[sp, #0x10]
02c4a9d8  str d0,[x9]
02c4a9dc  ldr x30,[sp], #0x20
02c4a9e0  b 0x057e2ee0
