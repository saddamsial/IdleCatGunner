02c3a8d0  str d10,[sp, #-0x40]!
02c3a8d4  stp d9,d8,[sp, #0x8]
02c3a8d8  str x30,[sp, #0x18]
02c3a8dc  stp x22,x21,[sp, #0x20]
02c3a8e0  stp x20,x19,[sp, #0x30]
02c3a8e4  adrp x20,0x625c000
02c3a8e8  adrp x21,0x5e63000
02c3a8ec  mov x19,x0
02c3a8f0  ldrb w8,[x20, #0x9a]
02c3a8f4  ldr x21,[x21, #0x1d8]
02c3a8f8  tbnz w8,#0x0,0x02c3a940
02c3a8fc  adrp x0,0x5e63000
02c3a900  ldr x0,[x0, #0x1d8]
02c3a904  bl 0x029f5a50
02c3a908  adrp x0,0x5e63000
02c3a90c  ldr x0,[x0, #0x208]
02c3a910  bl 0x029f5a50
02c3a914  adrp x0,0x5e63000
02c3a918  ldr x0,[x0, #0x210]
02c3a91c  bl 0x029f5a50
02c3a920  adrp x0,0x5e63000
02c3a924  ldr x0,[x0, #0x218]
02c3a928  bl 0x029f5a50
02c3a92c  adrp x0,0x5e63000
02c3a930  ldr x0,[x0, #0x220]
02c3a934  bl 0x029f5a50
02c3a938  mov w8,#0x1
02c3a93c  strb w8,[x20, #0x9a]
02c3a940  ldr x0,[x21]
02c3a944  ldr w8,[x0, #0xe4]
02c3a948  cbnz w8,0x02c3a954
02c3a94c  bl 0x029f5bd0
02c3a950  ldr x0,[x21]
02c3a954  ldr x8,[x0, #0xb8]
02c3a958  mov x0,x19
02c3a95c  mov x1,xzr
02c3a960  ldr x20,[x8, #0x70]
02c3a964  bl 0x057dc0f8
02c3a968  cbz x0,0x02c3aa74
02c3a96c  mov x1,xzr
02c3a970  bl 0x057eed98
02c3a974  mov x0,xzr
02c3a978  fmov s8,s0
02c3a97c  fmov s9,s1
02c3a980  fmov s10,s2
02c3a984  bl 0x057eb9ec
02c3a988  cbz x20,0x02c3aa74
02c3a98c  adrp x8,0x5e63000
02c3a990  fmov s3,s0
02c3a994  fmov s0,s8
02c3a998  ldr x8,[x8, #0x210]
02c3a99c  fmov s1,s9
02c3a9a0  fmov s2,s10
02c3a9a4  adrp x19,0x5e63000
02c3a9a8  adrp x22,0x5e63000
02c3a9ac  mov x0,x20
02c3a9b0  ldr x19,[x19, #0x218]
02c3a9b4  ldr x22,[x22, #0x208]
02c3a9b8  ldr x1,[x8]
02c3a9bc  bl 0x03716c98
02c3a9c0  fmov s9,0x40000000
02c3a9c4  ldr x0,[x21]
02c3a9c8  ldr w8,[x0, #0xe4]
02c3a9cc  cbnz w8,0x02c3a9d8
02c3a9d0  bl 0x029f5bd0
02c3a9d4  ldr x0,[x21]
02c3a9d8  ldr x8,[x0, #0xb8]
02c3a9dc  ldr x8,[x8, #0x70]
02c3a9e0  cbz x8,0x02c3aa74
02c3a9e4  ldr w8,[x8, #0x20]
02c3a9e8  cmp w8,#0x1
02c3a9ec  b.lt 0x02c3aa5c
02c3a9f0  mov x0,xzr
02c3a9f4  bl 0x057eb9ec
02c3a9f8  ldr x0,[x21]
02c3a9fc  fmov s8,s0
02c3aa00  ldr w8,[x0, #0xe4]
02c3aa04  cbnz w8,0x02c3aa10
02c3aa08  bl 0x029f5bd0
02c3aa0c  ldr x0,[x21]
02c3aa10  ldr x8,[x0, #0xb8]
02c3aa14  ldr x0,[x8, #0x70]
02c3aa18  cbz x0,0x02c3aa74
02c3aa1c  ldr x1,[x19]
02c3aa20  bl 0x03716e98
02c3aa24  fsub s0,s8,s3
02c3aa28  fcmp s0,s9
02c3aa2c  b.le 0x02c3aa5c
02c3aa30  ldr x0,[x21]
02c3aa34  ldr w8,[x0, #0xe4]
02c3aa38  cbnz w8,0x02c3aa44
02c3aa3c  bl 0x029f5bd0
02c3aa40  ldr x0,[x21]
02c3aa44  ldr x8,[x0, #0xb8]
02c3aa48  ldr x0,[x8, #0x70]
02c3aa4c  cbz x0,0x02c3aa74
02c3aa50  ldr x1,[x22]
02c3aa54  bl 0x03716e28
02c3aa58  b 0x02c3a9c4
02c3aa5c  ldp x20,x19,[sp, #0x30]
02c3aa60  ldr x30,[sp, #0x18]
02c3aa64  ldp x22,x21,[sp, #0x20]
02c3aa68  ldp d9,d8,[sp, #0x8]
02c3aa6c  ldr d10,[sp], #0x40
02c3aa70  ret
02c3aa74  bl 0x029f5cfc
