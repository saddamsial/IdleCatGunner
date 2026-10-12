02ca8b2c  stp x30,x19,[sp, #-0x10]!
02ca8b30  mov x19,x0
02ca8b34  ldr x0,[x0, #0xb0]
02ca8b38  cbz x0,0x02ca8bc4
02ca8b3c  mov w1,wzr
02ca8b40  mov x2,xzr
02ca8b44  bl 0x057dff3c
02ca8b48  ldr x1,[x19, #0xc0]
02ca8b4c  cbz x1,0x02ca8b5c
02ca8b50  mov x0,x19
02ca8b54  mov x2,xzr
02ca8b58  bl 0x057e2250
02ca8b5c  ldr x1,[x19, #0xc8]
02ca8b60  cbz x1,0x02ca8b70
02ca8b64  mov x0,x19
02ca8b68  mov x2,xzr
02ca8b6c  bl 0x057e2250
02ca8b70  ldr x0,[x19, #0x58]
02ca8b74  cbz x0,0x02ca8bc4
02ca8b78  mov w1,wzr
02ca8b7c  mov x2,xzr
02ca8b80  bl 0x057dff3c
02ca8b84  ldr x0,[x19, #0x60]
02ca8b88  cbz x0,0x02ca8bc4
02ca8b8c  mov w1,wzr
02ca8b90  mov x2,xzr
02ca8b94  bl 0x057dff3c
02ca8b98  ldr x0,[x19, #0x68]
02ca8b9c  cbz x0,0x02ca8bc4
02ca8ba0  mov w1,wzr
02ca8ba4  mov x2,xzr
02ca8ba8  bl 0x057dff3c
02ca8bac  ldr x0,[x19, #0xa8]
02ca8bb0  cbz x0,0x02ca8bc4
02ca8bb4  mov w1,wzr
02ca8bb8  mov x2,xzr
02ca8bbc  ldp x30,x19,[sp], #0x10
02ca8bc0  b 0x057dff3c
02ca8bc4  bl 0x029f5cfc
