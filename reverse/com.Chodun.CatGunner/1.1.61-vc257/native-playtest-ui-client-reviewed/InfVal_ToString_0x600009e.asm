04653178  sub sp,sp,#0xb0
0465317c  stp x30,x25,[sp, #0x70]
04653180  stp x24,x23,[sp, #0x80]
04653184  stp x22,x21,[sp, #0x90]
04653188  stp x20,x19,[sp, #0xa0]
0465318c  adrp x25,0x6260000
04653190  adrp x24,0x5e71000
04653194  mov x20,x4
04653198  ldrb w8,[x25, #0xa25]
0465319c  ldr x24,[x24, #0x8e8]
046531a0  mov w21,w3
046531a4  mov x22,x2
046531a8  mov w23,w1
046531ac  mov x19,x0
046531b0  tbnz w8,#0x0,0x046531c8
046531b4  adrp x0,0x5e71000
046531b8  ldr x0,[x0, #0x8e8]
046531bc  bl 0x029f5a50
046531c0  mov w8,#0x1
046531c4  strb w8,[x25, #0xa25]
046531c8  ldr x4,[x24]
046531cc  add x0,sp,#0x58
046531d0  mov w1,w23
046531d4  mov x2,x22
046531d8  mov w3,w21
046531dc  stp xzr,xzr,[sp, #0x58]
046531e0  str xzr,[sp, #0x68]
046531e4  bl 0x03ba509c
046531e8  add x8,sp,#0x40
046531ec  mov x0,x20
046531f0  bl 0x0465a75c
046531f4  ldur q0,[sp, #0x58]
046531f8  ldr x8,[sp, #0x68]
046531fc  add x1,sp,#0x20
04653200  ldr q1,[sp, #0x40]
04653204  ldr x9,[sp, #0x50]
04653208  mov x2,sp
0465320c  mov x0,x19
04653210  str q0,[sp, #0x20]
04653214  str x8,[sp, #0x30]
04653218  str q1,[sp]
0465321c  str x9,[sp, #0x10]
04653220  bl 0x0465a9a0
04653224  ldp x20,x19,[sp, #0xa0]
04653228  ldp x22,x21,[sp, #0x90]
0465322c  ldp x24,x23,[sp, #0x80]
04653230  ldp x30,x25,[sp, #0x70]
04653234  add sp,sp,#0xb0
04653238  ret
