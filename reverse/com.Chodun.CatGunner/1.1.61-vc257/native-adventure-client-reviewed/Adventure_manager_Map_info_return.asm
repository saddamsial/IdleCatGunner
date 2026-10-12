02c2dbec  str x30,[sp, #-0x10]!
02c2dbf0  ldr x8,[x0, #0x20]
02c2dbf4  cbz x8,0x02c2dc34
02c2dbf8  ldr w9,[x8, #0x18]
02c2dbfc  cmp w9,w1
02c2dc00  b.ls 0x02c2dc38
02c2dc04  add x8,x8,w1, SXTW  #0x3
02c2dc08  ldr x8,[x8, #0x20]
02c2dc0c  cbz x8,0x02c2dc34
02c2dc10  ldr x8,[x8, #0x18]
02c2dc14  cbz x8,0x02c2dc34
02c2dc18  ldr w9,[x8, #0x18]
02c2dc1c  cmp w9,w2
02c2dc20  b.ls 0x02c2dc38
02c2dc24  add x8,x8,w2, SXTW  #0x3
02c2dc28  ldr x0,[x8, #0x20]
02c2dc2c  ldr x30,[sp], #0x10
02c2dc30  ret
02c2dc34  bl 0x029f5cfc
02c2dc38  bl 0x029f5d04
