02c4dd20  str x30,[sp, #-0x10]!
02c4dd24  ldr x8,[x0, #0xa8]
02c4dd28  cbz x8,0x02c4dd70
02c4dd2c  ldrsw x9,[x0, #0x20]
02c4dd30  mov w10,#0x6667
02c4dd34  movk w10,#0x6666, LSL #16
02c4dd38  smull x10,w9,w10
02c4dd3c  lsr x11,x10,#0x20
02c4dd40  lsr x10,x10,#0x3f
02c4dd44  add w10,w10,w11, ASR #0x2
02c4dd48  mov w11,#0xa
02c4dd4c  msub w9,w10,w11,w9
02c4dd50  ldr w10,[x8, #0x18]
02c4dd54  cmp w9,w10
02c4dd58  b.cs 0x02c4dd74
02c4dd5c  add x8,x8,w9, SXTW  #0x4
02c4dd60  ldp s0,s1,[x8, #0x20]
02c4dd64  ldp s2,s3,[x8, #0x28]
02c4dd68  ldr x30,[sp], #0x10
02c4dd6c  ret
02c4dd70  bl 0x029f5cfc
02c4dd74  bl 0x029f5d04
