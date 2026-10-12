02c3040c  mov x8,x0
02c30410  ldr x0,[x0, #0x28]
02c30414  cbz x0,0x02c30424
02c30418  ldr w8,[x8, #0x20]
02c3041c  str w8,[x0, #0x60]
02c30420  b 0x02c2ffa8
02c30424  str x30,[sp, #-0x10]!
02c30428  bl 0x029f5cfc
