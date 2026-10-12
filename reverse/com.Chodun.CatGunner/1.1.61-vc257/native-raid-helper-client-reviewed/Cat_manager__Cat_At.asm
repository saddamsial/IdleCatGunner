02c43fcc  str x30,[sp, #-0x10]!
02c43fd0  ldr x8,[x0, #0x20]
02c43fd4  cbz x8,0x02c43ff4
02c43fd8  ldr w9,[x8, #0x18]
02c43fdc  cmp w9,w1
02c43fe0  b.le 0x02c43ff8
02c43fe4  b.ls 0x02c4400c
02c43fe8  add x8,x8,w1, SXTW  #0x3
02c43fec  add x8,x8,#0x20
02c43ff0  b 0x02c43ffc
02c43ff4  tbnz w1,#0x1f,0x02c44008
02c43ff8  add x8,x0,#0x28
02c43ffc  ldr x0,[x8]
02c44000  ldr x30,[sp], #0x10
02c44004  ret
02c44008  bl 0x029f5cfc
02c4400c  bl 0x029f5d04
