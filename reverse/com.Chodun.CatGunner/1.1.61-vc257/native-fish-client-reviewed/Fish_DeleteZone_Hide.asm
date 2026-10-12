02c5ffcc  stp x30,x19,[sp, #-0x10]!
02c5ffd0  mov x19,x0
02c5ffd4  ldr x0,[x0, #0x58]
02c5ffd8  cbz x0,0x02c60020
02c5ffdc  movi d0,#0x0
02c5ffe0  mov x1,xzr
02c5ffe4  bl 0x05a9eedc
02c5ffe8  ldr x0,[x19, #0x58]
02c5ffec  cbz x0,0x02c60020
02c5fff0  mov w1,wzr
02c5fff4  mov x2,xzr
02c5fff8  bl 0x05a9f064
02c5fffc  ldr x0,[x19, #0x58]
02c60000  cbz x0,0x02c60020
02c60004  mov w1,wzr
02c60008  mov x2,xzr
02c6000c  bl 0x05a9f1dc
02c60010  mov x0,x19
02c60014  mov w1,wzr
02c60018  ldp x30,x19,[sp], #0x10
02c6001c  b 0x02c6007c
02c60020  bl 0x029f5cfc
