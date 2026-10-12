02c66180  str d10,[sp, #-0x40]!
02c66184  stp d9,d8,[sp, #0x10]
02c66188  stp x30,x21,[sp, #0x20]
02c6618c  stp x20,x19,[sp, #0x30]
02c66190  fmov s8,s2
02c66194  fmov s9,s1
02c66198  adrp x21,0x625c000
02c6619c  fmov s10,s0
02c661a0  adrp x20,0x5e63000
02c661a4  ldrb w8,[x21, #0x254]
02c661a8  ldr x20,[x20, #0x9f0]
02c661ac  mov x19,x0
02c661b0  tbnz w8,#0x0,0x02c66204
02c661b4  adrp x0,0x5e63000
02c661b8  ldr x0,[x0, #0x9f8]
02c661bc  bl 0x029f5a50
02c661c0  adrp x0,0x5e63000
02c661c4  ldr x0,[x0, #0xa00]
02c661c8  bl 0x029f5a50
02c661cc  adrp x0,0x5e63000
02c661d0  ldr x0,[x0, #0xa08]
02c661d4  bl 0x029f5a50
02c661d8  adrp x0,0x5e63000
02c661dc  ldr x0,[x0, #0x9f0]
02c661e0  bl 0x029f5a50
02c661e4  adrp x0,0x5e63000
02c661e8  ldr x0,[x0, #0xa10]
02c661ec  bl 0x029f5a50
02c661f0  adrp x0,0x5e62000
02c661f4  ldr x0,[x0, #0x768]
02c661f8  bl 0x029f5a50
02c661fc  mov w8,#0x1
02c66200  strb w8,[x21, #0x254]
02c66204  ldr x0,[x20]
02c66208  ldr w20,[x19, #0x20]
02c6620c  str xzr,[sp, #0x8]
02c66210  ldr w8,[x0, #0xe4]
02c66214  cbnz w8,0x02c6621c
02c66218  bl 0x029f5bd0
02c6621c  fmov s0,s10
02c66220  fmov s1,s9
02c66224  mov w0,w20
02c66228  fmov s2,s8
02c6622c  bl 0x02c66e60
02c66230  tbz w0,#0x0,0x02c66318
02c66234  adrp x8,0x5e62000
02c66238  ldr x8,[x8, #0x768]
02c6623c  ldr x8,[x8]
02c66240  ldr x8,[x8, #0xb8]
02c66244  ldr x0,[x8]
02c66248  cbz x0,0x02c6632c
02c6624c  mov w1,#0x1
02c66250  mov x2,xzr
02c66254  bl 0x02c17d84
02c66258  adrp x21,0x5e63000
02c6625c  mov x20,x0
02c66260  ldr x21,[x21, #0x9f8]
02c66264  ldr x8,[x21]
02c66268  ldr w9,[x8, #0xe4]
02c6626c  cbnz w9,0x02c6627c
02c66270  mov x0,x8
02c66274  bl 0x029f5bd0
02c66278  ldr x8,[x21]
02c6627c  ldr x8,[x8, #0xb8]
02c66280  ldr x0,[x8]
02c66284  cbz x0,0x02c6632c
02c66288  adrp x8,0x5e63000
02c6628c  add x2,sp,#0x8
02c66290  mov x1,x20
02c66294  ldr x8,[x8, #0xa00]
02c66298  ldr x3,[x8]
02c6629c  bl 0x03e4810c
02c662a0  tbnz w0,#0x0,0x02c662fc
02c662a4  cbz x20,0x02c6632c
02c662a8  adrp x8,0x5e63000
02c662ac  mov x0,x20
02c662b0  ldr x8,[x8, #0xa10]
02c662b4  ldr x1,[x8]
02c662b8  bl 0x030a02b4
02c662bc  ldr x8,[x21]
02c662c0  str x0,[sp, #0x8]
02c662c4  ldr w9,[x8, #0xe4]
02c662c8  cbnz w9,0x02c662d8
02c662cc  mov x0,x8
02c662d0  bl 0x029f5bd0
02c662d4  ldr x8,[x21]
02c662d8  ldr x8,[x8, #0xb8]
02c662dc  ldr x0,[x8]
02c662e0  cbz x0,0x02c6632c
02c662e4  adrp x8,0x5e63000
02c662e8  mov x1,x20
02c662ec  ldr x8,[x8, #0xa08]
02c662f0  ldr x2,[sp, #0x8]
02c662f4  ldr x3,[x8]
02c662f8  bl 0x03e46590
02c662fc  ldr x0,[sp, #0x8]
02c66300  cbz x0,0x02c6632c
02c66304  fmov s0,s10
02c66308  fmov s1,s9
02c6630c  ldr w1,[x19, #0x20]
02c66310  fmov s2,s8
02c66314  bl 0x02c6700c
02c66318  ldp x20,x19,[sp, #0x30]
02c6631c  ldp x30,x21,[sp, #0x20]
02c66320  ldp d9,d8,[sp, #0x10]
02c66324  ldr d10,[sp], #0x40
02c66328  ret
02c6632c  bl 0x029f5cfc
