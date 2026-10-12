02ca11a4  str x30,[sp, #-0x20]!
02ca11a8  stp x20,x19,[sp, #0x10]
02ca11ac  ldr w20,[x0, #0x24]
02ca11b0  mov x19,x0
02ca11b4  bl 0x02ca0fa8
02ca11b8  cmp w20,w0
02ca11bc  b.ge 0x02ca11c8
02ca11c0  mov w0,wzr
02ca11c4  b 0x02ca11f0
02ca11c8  ldr w8,[x19, #0x20]
02ca11cc  cmp w8,#0x3
02ca11d0  b.ge 0x02ca11dc
02ca11d4  mov w0,#0x1
02ca11d8  b 0x02ca11f0
02ca11dc  ldr w20,[x19, #0x28]
02ca11e0  mov x0,x19
02ca11e4  bl 0x02ca1040
02ca11e8  cmp w20,w0
02ca11ec  cset w0,lt
02ca11f0  ldp x20,x19,[sp, #0x10]
02ca11f4  ldr x30,[sp], #0x20
02ca11f8  ret
