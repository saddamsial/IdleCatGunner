02c58694  mov x8,x0
02c58698  ldr x0,[x0, #0x38]
02c5869c  str w1,[x8, #0x98]
02c586a0  cbz x0,0x02c586ac
02c586a4  mov x1,xzr
02c586a8  b 0x02c5ab14
02c586ac  str x30,[sp, #-0x10]!
02c586b0  bl 0x029f5cfc
