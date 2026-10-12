02c7cdb8  str x30,[sp, #-0x10]!
02c7cdbc  tbnz w1,#0x1f,0x02c7ce04
02c7cdc0  ldr x8,[x0, #0x40]
02c7cdc4  cbz x8,0x02c7ce04
02c7cdc8  ldr w9,[x8, #0x18]
02c7cdcc  cmp w9,w1
02c7cdd0  b.le 0x02c7ce04
02c7cdd4  ldr x9,[x0, #0x38]
02c7cdd8  cbz x9,0x02c7ce0c
02c7cddc  ldr w10,[x9, #0x18]
02c7cde0  cmp w10,w1
02c7cde4  b.ls 0x02c7ce10
02c7cde8  mov w10,w1
02c7cdec  add x9,x9,x10, LSL #0x2
02c7cdf0  ldr w9,[x9, #0x20]
02c7cdf4  cmn w9,#0x1
02c7cdf8  b.eq 0x02c7ce04
02c7cdfc  add x8,x8,x10, LSL #0x2
02c7ce00  str w2,[x8, #0x20]
02c7ce04  ldr x30,[sp], #0x10
02c7ce08  ret
02c7ce0c  bl 0x029f5cfc
02c7ce10  bl 0x029f5d04
