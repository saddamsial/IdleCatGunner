02c17ae0  stp x30,x19,[sp, #-0x10]!
02c17ae4  mov x1,xzr
02c17ae8  mov x19,x0
02c17aec  bl 0x057dc0f8
02c17af0  ldr x8,[x19, #0x20]
02c17af4  cbz x8,0x02c17b1c
02c17af8  mov x19,x0
02c17afc  mov x0,x8
02c17b00  mov x1,xzr
02c17b04  bl 0x057eed98
02c17b08  cbz x19,0x02c17b1c
02c17b0c  mov x0,x19
02c17b10  mov x1,xzr
02c17b14  ldp x30,x19,[sp], #0x10
02c17b18  b 0x057eee74
02c17b1c  bl 0x029f5cfc
