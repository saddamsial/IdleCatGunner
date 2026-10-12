02ca724c  stp x30,x21,[sp, #-0x20]!
02ca7250  stp x20,x19,[sp, #0x10]
02ca7254  adrp x20,0x625c000
02ca7258  adrp x21,0x5e5d000
02ca725c  mov x19,x0
02ca7260  ldrb w8,[x20, #0x4dd]
02ca7264  ldr x21,[x21, #0x958]
02ca7268  tbnz w8,#0x0,0x02ca7280
02ca726c  adrp x0,0x5e5d000
02ca7270  ldr x0,[x0, #0x958]
02ca7274  bl 0x029f5a50
02ca7278  mov w8,#0x1
02ca727c  strb w8,[x20, #0x4dd]
02ca7280  ldr x1,[x21]
02ca7284  mov x20,x19
02ca7288  str x1,[x20, #0x20]!
02ca728c  mov x0,x20
02ca7290  bl 0x029f59f4
02ca7294  ldr x0,[x20, #0x10]
02ca7298  cbz x0,0x02ca72c4
02ca729c  mov w1,#0x1
02ca72a0  mov x2,xzr
02ca72a4  bl 0x057dff3c
02ca72a8  mov x0,x19
02ca72ac  bl 0x02ca72c8
02ca72b0  mov w1,w0
02ca72b4  mov x0,x19
02ca72b8  ldp x20,x19,[sp, #0x10]
02ca72bc  ldp x30,x21,[sp], #0x20
02ca72c0  b 0x02ca71a8
02ca72c4  bl 0x029f5cfc
