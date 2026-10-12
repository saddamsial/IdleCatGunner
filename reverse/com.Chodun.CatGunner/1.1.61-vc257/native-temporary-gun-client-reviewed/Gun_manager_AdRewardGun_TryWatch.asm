02c6a910  str x30,[sp, #-0x20]!
02c6a914  stp x20,x19,[sp, #0x10]
02c6a918  adrp x20,0x625c000
02c6a91c  mov x19,x0
02c6a920  ldrb w8,[x20, #0x281]
02c6a924  tbnz w8,#0x0,0x02c6a93c
02c6a928  adrp x0,0x5e5d000
02c6a92c  ldr x0,[x0, #0x910]
02c6a930  bl 0x029f5a50
02c6a934  mov w8,#0x1
02c6a938  strb w8,[x20, #0x281]
02c6a93c  ldr w8,[x19, #0xc0]
02c6a940  cmn w8,#0x1
02c6a944  b.eq 0x02c6a984
02c6a948  mov x0,x19
02c6a94c  bl 0x02c6a6d8
02c6a950  fcmp d0,#0.0
02c6a954  b.ls 0x02c6a984
02c6a958  adrp x8,0x5e5d000
02c6a95c  ldr x8,[x8, #0x910]
02c6a960  ldr x8,[x8]
02c6a964  ldr x8,[x8, #0xb8]
02c6a968  ldr x0,[x8]
02c6a96c  cbz x0,0x02c6a990
02c6a970  ldp x20,x19,[sp, #0x10]
02c6a974  mov w1,#0x9
02c6a978  mov x2,xzr
02c6a97c  ldr x30,[sp], #0x20
02c6a980  b 0x02b89ab0
02c6a984  ldp x20,x19,[sp, #0x10]
02c6a988  ldr x30,[sp], #0x20
02c6a98c  ret
02c6a990  bl 0x029f5cfc
