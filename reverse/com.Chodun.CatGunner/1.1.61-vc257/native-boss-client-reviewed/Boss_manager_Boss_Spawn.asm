02c461d0  sub sp,sp,#0x60
02c461d4  str x30,[sp, #0x40]
02c461d8  stp x20,x19,[sp, #0x50]
02c461dc  ldr w1,[x0, #0x20]
02c461e0  ldr x19,[x0, #0x110]
02c461e4  add x8,sp,#0x20
02c461e8  mov x20,x0
02c461ec  bl 0x02c46e10
02c461f0  ldr x8,[x20, #0x58]
02c461f4  cbz x8,0x02c46230
02c461f8  cbz x19,0x02c46230
02c461fc  ldr w9,[x20, #0x20]
02c46200  ldr w8,[x8, #0x18]
02c46204  mov x1,sp
02c46208  ldp q0,q1,[sp, #0x20]
02c4620c  mov x0,x19
02c46210  sdiv w10,w9,w8
02c46214  stp q0,q1,[sp]
02c46218  msub w2,w10,w8,w9
02c4621c  bl 0x02c44b64
02c46220  ldp x20,x19,[sp, #0x50]
02c46224  ldr x30,[sp, #0x40]
02c46228  add sp,sp,#0x60
02c4622c  ret
02c46230  bl 0x029f5cfc
