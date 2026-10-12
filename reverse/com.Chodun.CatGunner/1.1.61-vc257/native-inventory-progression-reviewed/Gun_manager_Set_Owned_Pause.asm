02c683a0  stp x30,x19,[sp, #-0x10]!
02c683a4  tbnz w1,#0x1f,0x02c683e4
02c683a8  ldr x8,[x0, #0x40]
02c683ac  mov x19,x0
02c683b0  cbz x8,0x02c68404
02c683b4  ldr w9,[x8, #0x18]
02c683b8  cmp w9,w1
02c683bc  b.le 0x02c683e4
02c683c0  add x8,x8,w1, UXTW  #0x2
02c683c4  ldr w8,[x8, #0x20]
02c683c8  cmn w8,#0x1
02c683cc  b.eq 0x02c683e4
02c683d0  ldr w8,[x19, #0xc0]
02c683d4  cmn w8,#0x1
02c683d8  b.eq 0x02c683ec
02c683dc  cmp w8,w1
02c683e0  b.ne 0x02c683ec
02c683e4  ldp x30,x19,[sp], #0x10
02c683e8  ret
02c683ec  and w2,w2,#0x1
02c683f0  mov x0,x19
02c683f4  bl 0x02c6802c
02c683f8  mov x0,x19
02c683fc  ldp x30,x19,[sp], #0x10
02c68400  b 0x02c6841c
02c68404  bl 0x029f5cfc
