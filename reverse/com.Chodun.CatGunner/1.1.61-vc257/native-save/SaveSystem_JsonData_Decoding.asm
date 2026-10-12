02c174a8  stp x30,x21,[sp, #-0x20]!
02c174ac  stp x20,x19,[sp, #0x10]
02c174b0  adrp x20,0x625b000
02c174b4  adrp x21,0x5e59000
02c174b8  mov x19,x0
02c174bc  ldrb w8,[x20, #0xef8]
02c174c0  ldr x21,[x21, #0x8b8]
02c174c4  tbnz w8,#0x0,0x02c174e8
02c174c8  adrp x0,0x5e59000
02c174cc  ldr x0,[x0, #0x8b8]
02c174d0  bl 0x029f5a50
02c174d4  adrp x0,0x5e62000
02c174d8  ldr x0,[x0, #0x738]
02c174dc  bl 0x029f5a50
02c174e0  mov w8,#0x1
02c174e4  strb w8,[x20, #0xef8]
02c174e8  ldr x0,[x21]
02c174ec  ldr w8,[x0, #0xe4]
02c174f0  cbnz w8,0x02c174f8
02c174f4  bl 0x029f5bd0
02c174f8  mov x0,x19
02c174fc  mov x1,xzr
02c17500  bl 0x047c2a3c
02c17504  mov x19,x0
02c17508  mov x0,xzr
02c1750c  bl 0x046de110
02c17510  cbz x0,0x02c17540
02c17514  ldr x8,[x0]
02c17518  adrp x20,0x5e62000
02c1751c  mov x1,x19
02c17520  ldr x20,[x20, #0x738]
02c17524  ldr x9,[x8, #0x388]
02c17528  ldr x2,[x8, #0x390]
02c1752c  blr x9
02c17530  ldr x1,[x20]
02c17534  ldp x20,x19,[sp, #0x10]
02c17538  ldp x30,x21,[sp], #0x20
02c1753c  b 0x030f05d0
02c17540  bl 0x029f5cfc
