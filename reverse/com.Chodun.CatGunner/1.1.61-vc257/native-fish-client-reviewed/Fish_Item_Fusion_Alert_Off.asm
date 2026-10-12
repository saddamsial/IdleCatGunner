02c613b8  str x30,[sp, #-0x10]!
02c613bc  ldr x0,[x0, #0x28]
02c613c0  cbz x0,0x02c613e0
02c613c4  mov x1,xzr
02c613c8  bl 0x057dc1c8
02c613cc  cbz x0,0x02c613e0
02c613d0  mov w1,wzr
02c613d4  mov x2,xzr
02c613d8  ldr x30,[sp], #0x10
02c613dc  b 0x057dff3c
02c613e0  bl 0x029f5cfc
