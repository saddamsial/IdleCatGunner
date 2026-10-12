02c8c4f0  str x30,[sp, #-0x20]!
02c8c4f4  stp x20,x19,[sp, #0x10]
02c8c4f8  mov x20,x0
02c8c4fc  mov x19,x0
02c8c500  ldr x1,[x20, #0x30]!
02c8c504  cbz x1,0x02c8c524
02c8c508  mov x0,x19
02c8c50c  mov x2,xzr
02c8c510  bl 0x057e237c
02c8c514  mov x0,x20
02c8c518  mov x1,xzr
02c8c51c  str xzr,[x19, #0x30]
02c8c520  bl 0x029f59f4
02c8c524  mov x0,x19
02c8c528  mov x1,xzr
02c8c52c  bl 0x057dc1c8
02c8c530  cbz x0,0x02c8c548
02c8c534  ldp x20,x19,[sp, #0x10]
02c8c538  mov w1,wzr
02c8c53c  mov x2,xzr
02c8c540  ldr x30,[sp], #0x20
02c8c544  b 0x057dff3c
02c8c548  bl 0x029f5cfc
