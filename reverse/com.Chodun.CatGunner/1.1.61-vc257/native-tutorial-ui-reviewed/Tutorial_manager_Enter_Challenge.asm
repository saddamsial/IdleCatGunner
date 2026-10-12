02caf87c  stp x30,x19,[sp, #-0x10]!
02caf880  mov x19,x0
02caf884  ldr x0,[x0, #0x48]
02caf888  cbz x0,0x02caf8b4
02caf88c  mov w1,wzr
02caf890  mov x2,xzr
02caf894  bl 0x057dff3c
02caf898  mov x0,x19
02caf89c  bl 0x02cafa74
02caf8a0  mov x1,x0
02caf8a4  mov x0,x19
02caf8a8  mov x2,xzr
02caf8ac  ldp x30,x19,[sp], #0x10
02caf8b0  b 0x057e2120
02caf8b4  bl 0x029f5cfc
