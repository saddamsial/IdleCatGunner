02c32e3c  str x30,[sp, #-0x10]!
02c32e40  ldr x8,[x0, #0x20]
02c32e44  cbz x8,0x02c32e6c
02c32e48  add w9,w1,w1, LSL #0x2
02c32e4c  ldr w10,[x8, #0x18]
02c32e50  add w9,w9,w2
02c32e54  cmp w9,w10
02c32e58  b.cs 0x02c32e70
02c32e5c  add x8,x8,w9, SXTW  #0x3
02c32e60  ldr x0,[x8, #0x20]
02c32e64  ldr x30,[sp], #0x10
02c32e68  ret
02c32e6c  bl 0x029f5cfc
02c32e70  bl 0x029f5d04
