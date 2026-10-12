02c06ba4  ldr x8,[x0, #0x38]
02c06ba8  cbz x8,0x02c06bcc
02c06bac  stp x30,x19,[sp, #-0x10]!
02c06bb0  mov x19,x0
02c06bb4  bl 0x02c06bd0
02c06bb8  mov x1,x0
02c06bbc  mov x0,x19
02c06bc0  mov x2,xzr
02c06bc4  ldp x30,x19,[sp], #0x10
02c06bc8  b 0x057e2120
02c06bcc  ret
