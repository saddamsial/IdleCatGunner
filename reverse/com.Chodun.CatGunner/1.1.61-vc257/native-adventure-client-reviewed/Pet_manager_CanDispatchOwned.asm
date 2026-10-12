02c7cce0  tbnz w1,#0x1f,0x02c7cd34
02c7cce4  ldr x8,[x0, #0x38]
02c7cce8  cbz x8,0x02c7cd44
02c7ccec  ldr w9,[x8, #0x18]
02c7ccf0  cmp w9,w1
02c7ccf4  b.le 0x02c7cd34
02c7ccf8  add x8,x8,w1, UXTW  #0x2
02c7ccfc  ldr w8,[x8, #0x20]
02c7cd00  cmn w8,#0x1
02c7cd04  b.eq 0x02c7cd34
02c7cd08  ldr x8,[x0, #0x40]
02c7cd0c  cbz x8,0x02c7cd3c
02c7cd10  ldr w9,[x8, #0x18]
02c7cd14  cmp w9,w1
02c7cd18  b.le 0x02c7cd3c
02c7cd1c  mov w9,w1
02c7cd20  add x8,x8,x9, LSL #0x2
02c7cd24  ldr w8,[x8, #0x20]
02c7cd28  cmn w8,#0x1
02c7cd2c  cset w0,eq
02c7cd30  ret
02c7cd34  mov w0,wzr
02c7cd38  ret
02c7cd3c  mov w0,#0x1
02c7cd40  ret
02c7cd44  str x30,[sp, #-0x10]!
02c7cd48  bl 0x029f5cfc
