02c7a91c  str d10,[sp, #-0x40]!
02c7a920  stp d9,d8,[sp, #0x10]
02c7a924  stp x30,x21,[sp, #0x20]
02c7a928  stp x20,x19,[sp, #0x30]
02c7a92c  mov x19,x0
02c7a930  ldr x0,[x0, #0x28]
02c7a934  cbz x0,0x02c7a9d4
02c7a938  mov x1,xzr
02c7a93c  fmov s8,s2
02c7a940  fmov s9,s1
02c7a944  fmov s10,s0
02c7a948  bl 0x0586ba64
02c7a94c  adrp x21,0x625b000
02c7a950  ldr x20,[x19, #0x28]
02c7a954  ldrb w8,[x21, #0x26f]
02c7a958  cbnz w8,0x02c7a970
02c7a95c  adrp x0,0x5e58000
02c7a960  ldr x0,[x0, #0xbf8]
02c7a964  bl 0x029f5a50
02c7a968  mov w8,#0x1
02c7a96c  strb w8,[x21, #0x26f]
02c7a970  cbz x20,0x02c7a9d4
02c7a974  adrp x8,0x5e58000
02c7a978  mov x0,x20
02c7a97c  mov x1,xzr
02c7a980  ldr x8,[x8, #0xbf8]
02c7a984  ldr x8,[x8]
02c7a988  ldr x8,[x8, #0xb8]
02c7a98c  ldp s1,s2,[x8, #0x4]
02c7a990  ldr s0,[x8]
02c7a994  bl 0x0586b344
02c7a998  mov x0,x19
02c7a99c  mov x1,xzr
02c7a9a0  bl 0x057dc0f8
02c7a9a4  cbz x0,0x02c7a9d4
02c7a9a8  fmov s0,s10
02c7a9ac  fmov s1,s9
02c7a9b0  mov x1,xzr
02c7a9b4  fmov s2,s8
02c7a9b8  bl 0x057eee74
02c7a9bc  strb wzr,[x19, #0x64]
02c7a9c0  ldp x20,x19,[sp, #0x30]
02c7a9c4  ldp x30,x21,[sp, #0x20]
02c7a9c8  ldp d9,d8,[sp, #0x10]
02c7a9cc  ldr d10,[sp], #0x40
02c7a9d0  ret
02c7a9d4  bl 0x029f5cfc
