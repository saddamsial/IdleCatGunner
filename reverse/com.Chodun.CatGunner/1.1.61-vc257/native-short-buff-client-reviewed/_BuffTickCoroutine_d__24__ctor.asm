02c37cbc  str x30,[sp, #-0x20]!
02c37cc0  stp x20,x19,[sp, #0x10]
02c37cc4  mov w19,w1
02c37cc8  mov x1,xzr
02c37ccc  mov x20,x0
02c37cd0  bl 0x04893238
02c37cd4  str w19,[x20, #0x10]
02c37cd8  ldp x20,x19,[sp, #0x10]
02c37cdc  ldr x30,[sp], #0x20
02c37ce0  ret
