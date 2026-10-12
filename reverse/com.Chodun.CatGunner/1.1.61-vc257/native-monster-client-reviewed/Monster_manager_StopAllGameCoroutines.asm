02c4e0f0  str x30,[sp, #-0x20]!
02c4e0f4  stp x20,x19,[sp, #0x10]
02c4e0f8  mov x20,x0
02c4e0fc  mov x19,x0
02c4e100  ldr x1,[x20, #0xd8]!
02c4e104  cbz x1,0x02c4e124
02c4e108  mov x0,x19
02c4e10c  mov x2,xzr
02c4e110  bl 0x057e2250
02c4e114  mov x0,x20
02c4e118  mov x1,xzr
02c4e11c  str xzr,[x19, #0xd8]
02c4e120  bl 0x029f59f4
02c4e124  mov x20,x19
02c4e128  ldr x1,[x20, #0xe0]!
02c4e12c  cbz x1,0x02c4e14c
02c4e130  mov x0,x19
02c4e134  mov x2,xzr
02c4e138  bl 0x057e2250
02c4e13c  mov x0,x20
02c4e140  mov x1,xzr
02c4e144  str xzr,[x19, #0xe0]
02c4e148  bl 0x029f59f4
02c4e14c  ldr x0,[x19, #0x100]
02c4e150  cbz x0,0x02c4e168
02c4e154  ldp x20,x19,[sp, #0x10]
02c4e158  mov w1,wzr
02c4e15c  mov x2,xzr
02c4e160  ldr x30,[sp], #0x20
02c4e164  b 0x057dff3c
02c4e168  bl 0x029f5cfc
