02c7ce14  str x30,[sp, #-0x10]!
02c7ce18  tbnz w1,#0x1f,0x02c7ce60
02c7ce1c  ldr x8,[x0, #0x48]
02c7ce20  cbz x8,0x02c7ce60
02c7ce24  ldr w9,[x8, #0x18]
02c7ce28  cmp w9,w1
02c7ce2c  b.le 0x02c7ce60
02c7ce30  ldr x9,[x0, #0x30]
02c7ce34  cbz x9,0x02c7ce68
02c7ce38  ldr w10,[x9, #0x18]
02c7ce3c  cmp w10,w1
02c7ce40  b.ls 0x02c7ce6c
02c7ce44  mov w10,w1
02c7ce48  add x9,x9,x10, LSL #0x2
02c7ce4c  ldr w9,[x9, #0x20]
02c7ce50  cmn w9,#0x1
02c7ce54  b.eq 0x02c7ce60
02c7ce58  add x8,x8,x10, LSL #0x2
02c7ce5c  str w2,[x8, #0x20]
02c7ce60  ldr x30,[sp], #0x10
02c7ce64  ret
02c7ce68  bl 0x029f5cfc
02c7ce6c  bl 0x029f5d04
