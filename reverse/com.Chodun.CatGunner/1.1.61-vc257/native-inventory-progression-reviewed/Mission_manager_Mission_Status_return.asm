02ba5a7c  cbz x1,0x02ba5b00
02ba5a80  ldr w9,[x1, #0x18]
02ba5a84  mov w8,wzr
02ba5a88  cmp w9,#0x1
02ba5a8c  b.gt 0x02ba5aa4
02ba5a90  cbz w9,0x02ba5abc
02ba5a94  cmp w9,#0x1
02ba5a98  b.ne 0x02ba5ac8
02ba5a9c  ldr w8,[x0, #0x54]
02ba5aa0  b 0x02ba5ac8
02ba5aa4  cmp w9,#0x2
02ba5aa8  b.eq 0x02ba5ac4
02ba5aac  cmp w9,#0x3
02ba5ab0  b.ne 0x02ba5ac8
02ba5ab4  ldr w8,[x0, #0x5c]
02ba5ab8  b 0x02ba5ac8
02ba5abc  ldr w8,[x0, #0x50]
02ba5ac0  b 0x02ba5ac8
02ba5ac4  ldr w8,[x0, #0x58]
02ba5ac8  ldr w9,[x1, #0x1c]
02ba5acc  cmp w8,w9
02ba5ad0  b.ge 0x02ba5adc
02ba5ad4  mov w0,wzr
02ba5ad8  ret
02ba5adc  ldrb w8,[x1, #0x24]
02ba5ae0  cbz w8,0x02ba5af8
02ba5ae4  ldrb w8,[x1, #0x25]
02ba5ae8  cmp w8,#0x0
02ba5aec  mov w8,#0x2
02ba5af0  cinc w0,w8,eq
02ba5af4  ret
02ba5af8  mov w0,#0x1
02ba5afc  ret
02ba5b00  str x30,[sp, #-0x10]!
02ba5b04  bl 0x029f5cfc
