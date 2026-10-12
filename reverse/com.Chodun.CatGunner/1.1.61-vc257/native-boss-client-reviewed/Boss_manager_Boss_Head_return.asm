02c478a8  str x30,[sp, #-0x10]!
02c478ac  ldr x8,[x0, #0x58]
02c478b0  cbz x8,0x02c478d8
02c478b4  ldr w10,[x8, #0x18]
02c478b8  sdiv w9,w1,w10
02c478bc  msub w9,w9,w10,w1
02c478c0  cmp w9,w10
02c478c4  b.cs 0x02c478dc
02c478c8  add x8,x8,w9, SXTW  #0x3
02c478cc  ldr x0,[x8, #0x20]
02c478d0  ldr x30,[sp], #0x10
02c478d4  ret
02c478d8  bl 0x029f5cfc
02c478dc  bl 0x029f5d04
