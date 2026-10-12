02ba3bb0  str x30,[sp, #-0x20]!
02ba3bb4  stp x20,x19,[sp, #0x10]
02ba3bb8  mov x20,x0
02ba3bbc  mov x19,x0
02ba3bc0  ldr x1,[x20, #0x80]!
02ba3bc4  cbz x1,0x02ba3bd4
02ba3bc8  mov x0,x19
02ba3bcc  mov x2,xzr
02ba3bd0  bl 0x057e237c
02ba3bd4  mov x0,x19
02ba3bd8  bl 0x02ba43b8
02ba3bdc  mov x1,x0
02ba3be0  mov x0,x19
02ba3be4  mov x2,xzr
02ba3be8  bl 0x057e2120
02ba3bec  mov x1,x0
02ba3bf0  mov x0,x20
02ba3bf4  str x1,[x19, #0x80]
02ba3bf8  ldp x20,x19,[sp, #0x10]
02ba3bfc  ldr x30,[sp], #0x20
02ba3c00  b 0x029f59f4
