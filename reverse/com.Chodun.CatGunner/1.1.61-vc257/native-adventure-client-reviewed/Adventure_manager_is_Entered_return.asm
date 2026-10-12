02c2db00  str x30,[sp, #-0x10]!
02c2db04  ldr x8,[x0, #0x20]
02c2db08  cbz x8,0x02c2db50
02c2db0c  ldr w9,[x8, #0x18]
02c2db10  cmp w9,w1
02c2db14  b.ls 0x02c2db54
02c2db18  add x8,x8,w1, SXTW  #0x3
02c2db1c  ldr x8,[x8, #0x20]
02c2db20  cbz x8,0x02c2db50
02c2db24  ldr x8,[x8, #0x18]
02c2db28  cbz x8,0x02c2db50
02c2db2c  ldr w9,[x8, #0x18]
02c2db30  cmp w9,w2
02c2db34  b.ls 0x02c2db54
02c2db38  add x8,x8,w2, SXTW  #0x3
02c2db3c  ldr x8,[x8, #0x20]
02c2db40  cbz x8,0x02c2db50
02c2db44  ldrb w0,[x8, #0x10]
02c2db48  ldr x30,[sp], #0x10
02c2db4c  ret
02c2db50  bl 0x029f5cfc
02c2db54  bl 0x029f5d04
