02ca28c8  stp x30,x21,[sp, #-0x20]!
02ca28cc  stp x20,x19,[sp, #0x10]
02ca28d0  adrp x20,0x625c000
02ca28d4  mov x19,x0
02ca28d8  ldrb w8,[x20, #0x497]
02ca28dc  tbnz w8,#0x0,0x02ca290c
02ca28e0  adrp x0,0x5e59000
02ca28e4  ldr x0,[x0, #0x7d0]
02ca28e8  bl 0x029f5a50
02ca28ec  adrp x0,0x5e5a000
02ca28f0  ldr x0,[x0, #0x180]
02ca28f4  bl 0x029f5a50
02ca28f8  adrp x0,0x5e5d000
02ca28fc  ldr x0,[x0, #0x3c0]
02ca2900  bl 0x029f5a50
02ca2904  mov w8,#0x1
02ca2908  strb w8,[x20, #0x497]
02ca290c  adrp x20,0x5e5a000
02ca2910  mov x0,x19
02ca2914  ldr x20,[x20, #0x180]
02ca2918  bl 0x02ca2784
02ca291c  tbz w0,#0x0,0x02ca29e0
02ca2920  adrp x8,0x5e59000
02ca2924  adrp x21,0x5e5d000
02ca2928  ldr x8,[x8, #0x7d0]
02ca292c  ldr x0,[x8]
02ca2930  ldr w8,[x0, #0xe4]
02ca2934  ldr x21,[x21, #0x3c0]
02ca2938  cbnz w8,0x02ca2940
02ca293c  bl 0x029f5bd0
02ca2940  fmov d0,0x401c000000000000
02ca2944  add x0,x19,#0x40
02ca2948  mov x1,xzr
02ca294c  bl 0x0482f924
02ca2950  ldr x8,[x21]
02ca2954  mov x19,x0
02ca2958  ldr w9,[x8, #0xe4]
02ca295c  cbnz w9,0x02ca2968
02ca2960  mov x0,x8
02ca2964  bl 0x029f5bd0
02ca2968  mov x0,xzr
02ca296c  bl 0x02c1a570
02ca2970  mov x1,x0
02ca2974  mov x0,x19
02ca2978  mov x2,xzr
02ca297c  bl 0x048330d0
02ca2980  ldr x8,[x20]
02ca2984  mov x19,x0
02ca2988  ldr w9,[x8, #0xe4]
02ca298c  cbnz w9,0x02ca299c
02ca2990  mov x0,x8
02ca2994  bl 0x029f5bd0
02ca2998  ldr x8,[x20]
02ca299c  ldr x8,[x8, #0xb8]
02ca29a0  mov x0,x19
02ca29a4  mov x2,xzr
02ca29a8  ldr x1,[x8]
02ca29ac  bl 0x04868dcc
02ca29b0  tbz w0,#0x0,0x02ca29d0
02ca29b4  ldr x0,[x20]
02ca29b8  ldr w8,[x0, #0xe4]
02ca29bc  cbnz w8,0x02ca29c8
02ca29c0  bl 0x029f5bd0
02ca29c4  ldr x0,[x20]
02ca29c8  ldr x8,[x0, #0xb8]
02ca29cc  ldr x19,[x8]
02ca29d0  mov x0,x19
02ca29d4  ldp x20,x19,[sp, #0x10]
02ca29d8  ldp x30,x21,[sp], #0x20
02ca29dc  ret
02ca29e0  ldr x0,[x20]
02ca29e4  ldr w8,[x0, #0xe4]
02ca29e8  cbnz w8,0x02ca29f0
02ca29ec  bl 0x029f5bd0
02ca29f0  ldp x20,x19,[sp, #0x10]
02ca29f4  fmov d0,0x401c000000000000
02ca29f8  mov x0,xzr
02ca29fc  ldp x30,x21,[sp], #0x20
02ca2a00  b 0x048683c8
