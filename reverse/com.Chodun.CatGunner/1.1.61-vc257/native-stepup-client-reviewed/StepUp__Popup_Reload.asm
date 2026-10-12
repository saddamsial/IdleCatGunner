02ca3178  stp x30,x21,[sp, #-0x20]!
02ca317c  stp x20,x19,[sp, #0x10]
02ca3180  adrp x21,0x625c000
02ca3184  adrp x20,0x5e59000
02ca3188  mov x19,x0
02ca318c  ldrb w8,[x21, #0x49c]
02ca3190  ldr x20,[x20, #0x1c0]
02ca3194  tbnz w8,#0x0,0x02ca31ac
02ca3198  adrp x0,0x5e59000
02ca319c  ldr x0,[x0, #0x1c0]
02ca31a0  bl 0x029f5a50
02ca31a4  mov w8,#0x1
02ca31a8  strb w8,[x21, #0x49c]
02ca31ac  ldr x0,[x20]
02ca31b0  ldr x20,[x19, #0x28]
02ca31b4  ldr w8,[x0, #0xe4]
02ca31b8  cbnz w8,0x02ca31c0
02ca31bc  bl 0x029f5bd0
02ca31c0  mov x0,x20
02ca31c4  mov x1,xzr
02ca31c8  mov x2,xzr
02ca31cc  bl 0x057dfa70
02ca31d0  tbz w0,#0x0,0x02ca3208
02ca31d4  ldr x0,[x19, #0x28]
02ca31d8  cbz x0,0x02ca3214
02ca31dc  mov x1,xzr
02ca31e0  bl 0x057dc1c8
02ca31e4  cbz x0,0x02ca3214
02ca31e8  mov x1,xzr
02ca31ec  bl 0x057e00b4
02ca31f0  tbz w0,#0x0,0x02ca3208
02ca31f4  ldr x0,[x19, #0x28]
02ca31f8  cbz x0,0x02ca3214
02ca31fc  ldp x20,x19,[sp, #0x10]
02ca3200  ldp x30,x21,[sp], #0x20
02ca3204  b 0x02ca3218
02ca3208  ldp x20,x19,[sp, #0x10]
02ca320c  ldp x30,x21,[sp], #0x20
02ca3210  ret
02ca3214  bl 0x029f5cfc
