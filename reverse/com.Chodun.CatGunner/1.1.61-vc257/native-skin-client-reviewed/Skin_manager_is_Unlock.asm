02ca7ac4  str x30,[sp, #-0x10]!
02ca7ac8  cbz w1,0x02ca7af4
02ca7acc  ldr x8,[x0, #0x28]
02ca7ad0  cbz x8,0x02ca7b00
02ca7ad4  ldr w9,[x8, #0x18]
02ca7ad8  cmp w9,w1
02ca7adc  b.ls 0x02ca7b04
02ca7ae0  add x8,x8,w1, SXTW 
02ca7ae4  ldrb w8,[x8, #0x20]
02ca7ae8  cmp w8,#0x0
02ca7aec  cset w0,ne
02ca7af0  b 0x02ca7af8
02ca7af4  mov w0,#0x1
02ca7af8  ldr x30,[sp], #0x10
02ca7afc  ret
02ca7b00  bl 0x029f5cfc
02ca7b04  bl 0x029f5d04
