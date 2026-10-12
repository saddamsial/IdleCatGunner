02c58814  stp x30,x21,[sp, #-0x20]!
02c58818  stp x20,x19,[sp, #0x10]
02c5881c  ldr x8,[x0, #0x88]
02c58820  cbz x8,0x02c588bc
02c58824  ldr w9,[x8, #0x18]
02c58828  mov w20,w1
02c5882c  cmp w9,w1
02c58830  b.ls 0x02c588c0
02c58834  sxtw x21,w20
02c58838  add x8,x8,x21, LSL #0x2
02c5883c  ldr w8,[x8, #0x20]
02c58840  cmn w8,#0x1
02c58844  b.eq 0x02c588b0
02c58848  mov x19,x0
02c5884c  bl 0x02c587b8
02c58850  cmp w0,#0x2
02c58854  b.lt 0x02c588b0
02c58858  ldr x8,[x19, #0x88]
02c5885c  cbz x8,0x02c588bc
02c58860  ldr w9,[x8, #0x18]
02c58864  cmp w9,w20
02c58868  b.ls 0x02c588c0
02c5886c  add x9,x8,x21, LSL #0x2
02c58870  ldr x8,[x19, #0x90]
02c58874  mov w10,#0xffffffff
02c58878  str w10,[x9, #0x20]
02c5887c  cbz x8,0x02c588bc
02c58880  ldr w9,[x8, #0x18]
02c58884  cmp w9,w20
02c58888  b.ls 0x02c588c0
02c5888c  add x8,x8,x21, LSL #0x2
02c58890  ldr x0,[x19, #0x30]
02c58894  mov w9,#0xffffffff
02c58898  str w9,[x8, #0x20]
02c5889c  cbz x0,0x02c588bc
02c588a0  ldp x20,x19,[sp, #0x10]
02c588a4  mov x1,xzr
02c588a8  ldp x30,x21,[sp], #0x20
02c588ac  b 0x02c5b7a4
02c588b0  ldp x20,x19,[sp, #0x10]
02c588b4  ldp x30,x21,[sp], #0x20
02c588b8  ret
02c588bc  bl 0x029f5cfc
02c588c0  bl 0x029f5d04
