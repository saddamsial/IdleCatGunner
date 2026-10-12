02c43fa0  stp x30,x19,[sp, #-0x10]!
02c43fa4  ldr x8,[x0, #0x20]
02c43fa8  cbz x8,0x02c43fb4
02c43fac  ldr w19,[x8, #0x18]
02c43fb0  b 0x02c43fb8
02c43fb4  mov w19,wzr
02c43fb8  bl 0x02c43f0c
02c43fbc  and w8,w0,#0x1
02c43fc0  add w0,w19,w8
02c43fc4  ldp x30,x19,[sp], #0x10
02c43fc8  ret
