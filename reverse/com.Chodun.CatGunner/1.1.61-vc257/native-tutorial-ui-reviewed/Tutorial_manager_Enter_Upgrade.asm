02caf810  str x30,[sp, #-0x20]!
02caf814  stp x20,x19,[sp, #0x10]
02caf818  mov x19,x0
02caf81c  ldr x0,[x0, #0x28]
02caf820  cbz x0,0x02caf878
02caf824  mov w1,wzr
02caf828  mov x2,xzr
02caf82c  bl 0x057dff3c
02caf830  mov x20,x19
02caf834  ldr x1,[x20, #0x68]!
02caf838  cbz x1,0x02caf848
02caf83c  mov x0,x19
02caf840  mov x2,xzr
02caf844  bl 0x057e237c
02caf848  mov x0,x19
02caf84c  bl 0x02caf9e0
02caf850  mov x1,x0
02caf854  mov x0,x19
02caf858  mov x2,xzr
02caf85c  bl 0x057e2120
02caf860  mov x1,x0
02caf864  mov x0,x20
02caf868  str x1,[x19, #0x68]
02caf86c  ldp x20,x19,[sp, #0x10]
02caf870  ldr x30,[sp], #0x20
02caf874  b 0x029f59f4
02caf878  bl 0x029f5cfc
