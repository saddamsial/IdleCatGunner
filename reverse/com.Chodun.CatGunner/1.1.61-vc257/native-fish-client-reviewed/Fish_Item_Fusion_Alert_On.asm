02c61ba8  str x30,[sp, #-0x10]!
02c61bac  ldr x0,[x0, #0x28]
02c61bb0  cbz x0,0x02c61bd0
02c61bb4  mov x1,xzr
02c61bb8  bl 0x057dc1c8
02c61bbc  cbz x0,0x02c61bd0
02c61bc0  mov w1,#0x1
02c61bc4  mov x2,xzr
02c61bc8  ldr x30,[sp], #0x10
02c61bcc  b 0x057dff3c
02c61bd0  bl 0x029f5cfc
