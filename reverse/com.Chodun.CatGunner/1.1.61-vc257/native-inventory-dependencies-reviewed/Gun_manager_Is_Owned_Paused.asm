02c67eec  tbnz w1,#0x1f,0x02c67f40
02c67ef0  ldr x8,[x0, #0x40]
02c67ef4  cbz x8,0x02c67f48
02c67ef8  ldr w9,[x8, #0x18]
02c67efc  cmp w9,w1
02c67f00  b.le 0x02c67f40
02c67f04  add x8,x8,w1, UXTW  #0x2
02c67f08  ldr w8,[x8, #0x20]
02c67f0c  cmn w8,#0x1
02c67f10  b.eq 0x02c67f40
02c67f14  ldr x8,[x0, #0x60]
02c67f18  cbz x8,0x02c67f40
02c67f1c  ldr w9,[x8, #0x18]
02c67f20  cmp w9,w1
02c67f24  b.le 0x02c67f40
02c67f28  mov w9,w1
02c67f2c  add x8,x8,x9
02c67f30  ldrb w8,[x8, #0x20]
02c67f34  cmp w8,#0x0
02c67f38  cset w0,ne
02c67f3c  ret
02c67f40  mov w0,wzr
02c67f44  ret
02c67f48  str x30,[sp, #-0x10]!
02c67f4c  bl 0x029f5cfc
