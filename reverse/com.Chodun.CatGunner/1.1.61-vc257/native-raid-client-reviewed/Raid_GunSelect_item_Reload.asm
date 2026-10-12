02c5a8bc  stp x30,x23,[sp, #-0x30]!
02c5a8c0  stp x22,x21,[sp, #0x10]
02c5a8c4  stp x20,x19,[sp, #0x20]
02c5a8c8  adrp x21,0x625c000
02c5a8cc  adrp x22,0x5e5e000
02c5a8d0  mov w20,w1
02c5a8d4  ldrb w8,[x21, #0x1d6]
02c5a8d8  ldr x22,[x22, #0x70]
02c5a8dc  mov x19,x0
02c5a8e0  tbnz w8,#0x0,0x02c5a904
02c5a8e4  adrp x0,0x5e59000
02c5a8e8  ldr x0,[x0, #0x1c0]
02c5a8ec  bl 0x029f5a50
02c5a8f0  adrp x0,0x5e5e000
02c5a8f4  ldr x0,[x0, #0x70]
02c5a8f8  bl 0x029f5a50
02c5a8fc  mov w8,#0x1
02c5a900  strb w8,[x21, #0x1d6]
02c5a904  ldr x0,[x22]
02c5a908  str w20,[x19, #0x38]
02c5a90c  ldr w8,[x0, #0xe4]
02c5a910  cbnz w8,0x02c5a918
02c5a914  bl 0x029f5bd0
02c5a918  adrp x23,0x5e59000
02c5a91c  mov w0,w20
02c5a920  mov x1,xzr
02c5a924  ldr x23,[x23, #0x1c0]
02c5a928  bl 0x02c5808c
02c5a92c  cmn w0,#0x1
02c5a930  b.eq 0x02c5aa08
02c5a934  mov w20,w0
02c5a938  ldr x0,[x19, #0x30]
02c5a93c  cbz x0,0x02c5aa94
02c5a940  mov x1,xzr
02c5a944  bl 0x057dc1c8
02c5a948  cbz x0,0x02c5aa94
02c5a94c  mov w1,#0x1
02c5a950  mov x2,xzr
02c5a954  bl 0x057dff3c
02c5a958  ldr x0,[x19, #0x30]
02c5a95c  cbz x0,0x02c5aa94
02c5a960  mov w1,w20
02c5a964  mov x2,xzr
02c5a968  bl 0x02c75ad0
02c5a96c  ldr x0,[x22]
02c5a970  ldr x21,[x19, #0x20]
02c5a974  ldr w8,[x0, #0xe4]
02c5a978  cbnz w8,0x02c5a984
02c5a97c  bl 0x029f5bd0
02c5a980  ldr x0,[x22]
02c5a984  ldr x8,[x0, #0xb8]
02c5a988  ldr x0,[x8]
02c5a98c  cbz x0,0x02c5aa94
02c5a990  ldr w1,[x19, #0x38]
02c5a994  mov x2,xzr
02c5a998  bl 0x02c58628
02c5a99c  cbz x21,0x02c5aa94
02c5a9a0  and w1,w0,#0x1
02c5a9a4  mov x0,x21
02c5a9a8  mov x2,xzr
02c5a9ac  bl 0x057dff3c
02c5a9b0  ldr x0,[x23]
02c5a9b4  ldr x21,[x19, #0x28]
02c5a9b8  ldr w8,[x0, #0xe4]
02c5a9bc  cbnz w8,0x02c5a9c4
02c5a9c0  bl 0x029f5bd0
02c5a9c4  mov x0,x21
02c5a9c8  mov x1,xzr
02c5a9cc  mov x2,xzr
02c5a9d0  bl 0x057dfa70
02c5a9d4  tbz w0,#0x0,0x02c5aa84
02c5a9d8  ldr x0,[x22]
02c5a9dc  ldr x19,[x19, #0x28]
02c5a9e0  ldr w8,[x0, #0xe4]
02c5a9e4  cbnz w8,0x02c5a9ec
02c5a9e8  bl 0x029f5bd0
02c5a9ec  mov w0,w20
02c5a9f0  mov x1,xzr
02c5a9f4  bl 0x02c51cc8
02c5a9f8  cbz x19,0x02c5aa94
02c5a9fc  and w1,w0,#0x1
02c5aa00  mov x0,x19
02c5aa04  b 0x02c5aa70
02c5aa08  ldr x0,[x19, #0x20]
02c5aa0c  cbz x0,0x02c5aa94
02c5aa10  mov w1,wzr
02c5aa14  mov x2,xzr
02c5aa18  bl 0x057dff3c
02c5aa1c  ldr x0,[x23]
02c5aa20  ldr x20,[x19, #0x28]
02c5aa24  ldr w8,[x0, #0xe4]
02c5aa28  cbnz w8,0x02c5aa30
02c5aa2c  bl 0x029f5bd0
02c5aa30  mov x0,x20
02c5aa34  mov x1,xzr
02c5aa38  mov x2,xzr
02c5aa3c  bl 0x057dfa70
02c5aa40  tbz w0,#0x0,0x02c5aa58
02c5aa44  ldr x0,[x19, #0x28]
02c5aa48  cbz x0,0x02c5aa94
02c5aa4c  mov w1,wzr
02c5aa50  mov x2,xzr
02c5aa54  bl 0x057dff3c
02c5aa58  ldr x0,[x19, #0x30]
02c5aa5c  cbz x0,0x02c5aa94
02c5aa60  mov x1,xzr
02c5aa64  bl 0x057dc1c8
02c5aa68  cbz x0,0x02c5aa94
02c5aa6c  mov w1,wzr
02c5aa70  ldp x20,x19,[sp, #0x20]
02c5aa74  mov x2,xzr
02c5aa78  ldp x22,x21,[sp, #0x10]
02c5aa7c  ldp x30,x23,[sp], #0x30
02c5aa80  b 0x057dff3c
02c5aa84  ldp x20,x19,[sp, #0x20]
02c5aa88  ldp x22,x21,[sp, #0x10]
02c5aa8c  ldp x30,x23,[sp], #0x30
02c5aa90  ret
02c5aa94  bl 0x029f5cfc
