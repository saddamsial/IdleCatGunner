02c562c8  str x30,[sp, #-0x30]!
02c562cc  stp x22,x21,[sp, #0x10]
02c562d0  stp x20,x19,[sp, #0x20]
02c562d4  adrp x21,0x625c000
02c562d8  adrp x22,0x5e61000
02c562dc  mov w20,w1
02c562e0  ldrb w8,[x21, #0x192]
02c562e4  ldr x22,[x22, #0xf18]
02c562e8  mov x19,x0
02c562ec  tbnz w8,#0x0,0x02c56304
02c562f0  adrp x0,0x5e61000
02c562f4  ldr x0,[x0, #0xf18]
02c562f8  bl 0x029f5a50
02c562fc  mov w8,#0x1
02c56300  strb w8,[x21, #0x192]
02c56304  adrp x8,0x5e58000
02c56308  add x1,sp,#0xc
02c5630c  ldr x8,[x8, #0xa10]
02c56310  ldr x21,[x19, #0x28]
02c56314  str w20,[sp, #0xc]
02c56318  ldr x0,[x8, #0x48]
02c5631c  bl 0x029f5bd8
02c56320  ldr x8,[x22]
02c56324  mov x1,x0
02c56328  mov x2,xzr
02c5632c  mov x0,x8
02c56330  bl 0x046b6c0c
02c56334  cbz x21,0x02c563e8
02c56338  ldr x8,[x21]
02c5633c  mov x1,x0
02c56340  mov x0,x21
02c56344  ldr x9,[x8, #0x558]
02c56348  ldr x2,[x8, #0x560]
02c5634c  blr x9
02c56350  ldr x8,[x19, #0x60]
02c56354  cbz x8,0x02c563d8
02c56358  ldr x21,[x8, #0x18]
02c5635c  cbz x21,0x02c563d8
02c56360  sub w9,w20,#0x1
02c56364  sdiv w10,w9,w21
02c56368  msub w9,w10,w21,w9
02c5636c  cmp w9,w21
02c56370  b.cs 0x02c563ec
02c56374  ldr x0,[x19, #0x50]
02c56378  cbz x0,0x02c563e8
02c5637c  add x8,x8,w9, SXTW  #0x4
02c56380  ldr x9,[x0]
02c56384  ldp s2,s3,[x8, #0x28]
02c56388  ldr x1,[x9, #0x2b0]
02c5638c  ldp s0,s1,[x8, #0x20]
02c56390  ldr x8,[x9, #0x2a8]
02c56394  blr x8
02c56398  ldr x8,[x19, #0x60]
02c5639c  cbz x8,0x02c563e8
02c563a0  sdiv w9,w20,w21
02c563a4  ldr w10,[x8, #0x18]
02c563a8  msub w9,w9,w21,w20
02c563ac  cmp w9,w10
02c563b0  b.cs 0x02c563ec
02c563b4  ldr x0,[x19, #0x58]
02c563b8  cbz x0,0x02c563e8
02c563bc  add x8,x8,w9, SXTW  #0x4
02c563c0  ldr x9,[x0]
02c563c4  ldp s2,s3,[x8, #0x28]
02c563c8  ldr x1,[x9, #0x2b0]
02c563cc  ldp s0,s1,[x8, #0x20]
02c563d0  ldr x8,[x9, #0x2a8]
02c563d4  blr x8
02c563d8  ldp x20,x19,[sp, #0x20]
02c563dc  ldp x22,x21,[sp, #0x10]
02c563e0  ldr x30,[sp], #0x30
02c563e4  ret
02c563e8  bl 0x029f5cfc
02c563ec  bl 0x029f5d04
