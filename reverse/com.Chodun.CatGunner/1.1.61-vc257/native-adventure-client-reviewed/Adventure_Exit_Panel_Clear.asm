02c34538  stp x30,x21,[sp, #-0x20]!
02c3453c  stp x20,x19,[sp, #0x10]
02c34540  adrp x21,0x625c000
02c34544  adrp x20,0x5e5d000
02c34548  mov x19,x0
02c3454c  ldrb w8,[x21, #0x55]
02c34550  ldr x20,[x20, #0xd28]
02c34554  tbnz w8,#0x0,0x02c3456c
02c34558  adrp x0,0x5e5d000
02c3455c  ldr x0,[x0, #0xd28]
02c34560  bl 0x029f5a50
02c34564  mov w8,#0x1
02c34568  strb w8,[x21, #0x55]
02c3456c  ldr x0,[x20]
02c34570  ldr w8,[x0, #0xe4]
02c34574  cbnz w8,0x02c34580
02c34578  bl 0x029f5bd0
02c3457c  ldr x0,[x20]
02c34580  ldr x8,[x0, #0xb8]
02c34584  ldr x0,[x8, #0x10]
02c34588  cbz x0,0x02c345bc
02c3458c  ldp w1,w2,[x19, #0x20]
02c34590  mov x3,xzr
02c34594  bl 0x02c2ec74
02c34598  mov x0,x19
02c3459c  mov x1,xzr
02c345a0  bl 0x057dc1c8
02c345a4  cbz x0,0x02c345bc
02c345a8  ldp x20,x19,[sp, #0x10]
02c345ac  mov w1,wzr
02c345b0  mov x2,xzr
02c345b4  ldp x30,x21,[sp], #0x20
02c345b8  b 0x057dff3c
02c345bc  bl 0x029f5cfc
