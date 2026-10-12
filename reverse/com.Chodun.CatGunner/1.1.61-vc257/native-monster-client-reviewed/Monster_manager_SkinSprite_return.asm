02c4ff4c  str x30,[sp, #-0x10]!
02c4ff50  ldr x8,[x0, #0x50]
02c4ff54  cbz x8,0x02c4ff9c
02c4ff58  ldrsw x9,[x0, #0x20]
02c4ff5c  mov w10,#0x6667
02c4ff60  movk w10,#0x6666, LSL #16
02c4ff64  smull x10,w9,w10
02c4ff68  lsr x11,x10,#0x20
02c4ff6c  lsr x10,x10,#0x3f
02c4ff70  add w10,w10,w11, ASR #0x2
02c4ff74  mov w11,#0xa
02c4ff78  msub w9,w10,w11,w9
02c4ff7c  bfm w1,w9,#0x1f,#0x1e
02c4ff80  ldr w9,[x8, #0x18]
02c4ff84  cmp w1,w9
02c4ff88  b.cs 0x02c4ffa0
02c4ff8c  add x8,x8,w1, SXTW  #0x3
02c4ff90  ldr x0,[x8, #0x20]
02c4ff94  ldr x30,[sp], #0x10
02c4ff98  ret
02c4ff9c  bl 0x029f5cfc
02c4ffa0  bl 0x029f5d04
