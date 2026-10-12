02c5ab14  stp x30,x19,[sp, #-0x10]!
02c5ab18  mov x1,xzr
02c5ab1c  mov x19,x0
02c5ab20  bl 0x057dc1c8
02c5ab24  cbz x0,0x02c5ab40
02c5ab28  mov w1,#0x1
02c5ab2c  mov x2,xzr
02c5ab30  bl 0x057dff3c
02c5ab34  mov x0,x19
02c5ab38  ldp x30,x19,[sp], #0x10
02c5ab3c  b 0x02c5ab44
02c5ab40  bl 0x029f5cfc
