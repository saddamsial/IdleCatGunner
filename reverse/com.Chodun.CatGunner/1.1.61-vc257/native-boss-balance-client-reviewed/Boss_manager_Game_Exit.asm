02c46450  stp x30,x21,[sp, #-0x20]!
02c46454  stp x20,x19,[sp, #0x10]
02c46458  adrp x21,0x625c000
02c4645c  adrp x20,0x5e5d000
02c46460  mov x19,x0
02c46464  ldrb w8,[x21, #0xe0]
02c46468  ldr x20,[x20, #0x910]
02c4646c  tbnz w8,#0x0,0x02c46484
02c46470  adrp x0,0x5e5d000
02c46474  ldr x0,[x0, #0x910]
02c46478  bl 0x029f5a50
02c4647c  mov w8,#0x1
02c46480  strb w8,[x21, #0xe0]
02c46484  mov x0,x19
02c46488  mov w1,#0x2
02c4648c  bl 0x02c45dc4
02c46490  ldr x8,[x20]
02c46494  ldr x8,[x8, #0xb8]
02c46498  ldr x0,[x8]
02c4649c  cbz x0,0x02c46580
02c464a0  mov x1,xzr
02c464a4  bl 0x02b8c604
02c464a8  ldr x0,[x19, #0x118]
02c464ac  cbz x0,0x02c46580
02c464b0  mov w1,wzr
02c464b4  mov x2,xzr
02c464b8  bl 0x057dff3c
02c464bc  ldr x0,[x19, #0x28]
02c464c0  cbz x0,0x02c46580
02c464c4  mov w1,wzr
02c464c8  mov x2,xzr
02c464cc  bl 0x057dff3c
02c464d0  ldr x0,[x19, #0x30]
02c464d4  cbz x0,0x02c46580
02c464d8  mov w1,wzr
02c464dc  mov x2,xzr
02c464e0  bl 0x057dff3c
02c464e4  ldr x0,[x19, #0x40]
02c464e8  cbz x0,0x02c46580
02c464ec  mov w1,#0x1
02c464f0  mov x2,xzr
02c464f4  bl 0x057dff3c
02c464f8  ldr x0,[x19, #0x48]
02c464fc  cbz x0,0x02c46580
02c46500  mov w1,wzr
02c46504  mov x2,xzr
02c46508  bl 0x057dff3c
02c4650c  adrp x20,0x625b000
02c46510  ldrb w8,[x20, #0xa57]
02c46514  cbnz w8,0x02c4652c
02c46518  adrp x0,0x5e5d000
02c4651c  ldr x0,[x0, #0xd70]
02c46520  bl 0x029f5a50
02c46524  mov w8,#0x1
02c46528  strb w8,[x20, #0xa57]
02c4652c  adrp x8,0x5e5d000
02c46530  ldr x8,[x8, #0xd70]
02c46534  ldr x8,[x8]
02c46538  ldr x8,[x8, #0xb8]
02c4653c  ldr x0,[x8]
02c46540  cbz x0,0x02c46580
02c46544  mov x1,xzr
02c46548  bl 0x02c22750
02c4654c  ldr x1,[x19, #0x88]
02c46550  cbz x1,0x02c46560
02c46554  mov x0,x19
02c46558  mov x2,xzr
02c4655c  bl 0x057e2250
02c46560  mov x0,x19
02c46564  bl 0x02c46584
02c46568  mov x1,x0
02c4656c  mov x0,x19
02c46570  mov x2,xzr
02c46574  ldp x20,x19,[sp, #0x10]
02c46578  ldp x30,x21,[sp], #0x20
02c4657c  b 0x057e2120
02c46580  bl 0x029f5cfc
