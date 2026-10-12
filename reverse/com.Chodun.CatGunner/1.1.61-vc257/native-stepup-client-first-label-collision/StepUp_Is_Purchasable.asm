02ca2a94  str x30,[sp, #-0x10]!
02ca2a98  cmp w1,#0x4
02ca2a9c  b.hi 0x02ca2ac0
02ca2aa0  ldr x8,[x0, #0x38]
02ca2aa4  cbz x8,0x02ca2afc
02ca2aa8  ldr w9,[x8, #0x18]
02ca2aac  cmp w9,w1
02ca2ab0  b.ls 0x02ca2af8
02ca2ab4  add x10,x8,w1, UXTW 
02ca2ab8  ldrb w10,[x10, #0x20]
02ca2abc  cbz w10,0x02ca2acc
02ca2ac0  mov w0,wzr
02ca2ac4  ldr x30,[sp], #0x10
02ca2ac8  ret
02ca2acc  cbz w1,0x02ca2af0
02ca2ad0  sub w10,w1,#0x1
02ca2ad4  cmp w10,w9
02ca2ad8  b.cs 0x02ca2af8
02ca2adc  add x8,x8,w10, UXTW 
02ca2ae0  ldrb w8,[x8, #0x20]
02ca2ae4  cmp w8,#0x0
02ca2ae8  cset w0,ne
02ca2aec  b 0x02ca2ac4
02ca2af0  mov w0,#0x1
02ca2af4  b 0x02ca2ac4
02ca2af8  bl 0x029f5d04
02ca2afc  bl 0x029f5cfc
