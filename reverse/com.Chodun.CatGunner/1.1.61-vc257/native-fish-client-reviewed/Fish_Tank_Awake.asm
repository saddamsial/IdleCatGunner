02c63064  str x30,[sp, #-0x30]!
02c63068  stp x22,x21,[sp, #0x10]
02c6306c  stp x20,x19,[sp, #0x20]
02c63070  adrp x20,0x625c000
02c63074  adrp x21,0x5e5b000
02c63078  mov x19,x0
02c6307c  ldrb w8,[x20, #0x232]
02c63080  ldr x21,[x21, #0xe98]
02c63084  tbnz w8,#0x0,0x02c6309c
02c63088  adrp x0,0x5e5b000
02c6308c  ldr x0,[x0, #0xe98]
02c63090  bl 0x029f5a50
02c63094  mov w8,#0x1
02c63098  strb w8,[x20, #0x232]
02c6309c  ldr x1,[x21]
02c630a0  mov x0,x19
02c630a4  bl 0x02fe5f2c
02c630a8  mov x20,x19
02c630ac  mov x1,x0
02c630b0  str x0,[x20, #0x60]!
02c630b4  mov x0,x20
02c630b8  bl 0x029f59f4
02c630bc  ldur x8,[x20, #-0x40]
02c630c0  cbz x8,0x02c6312c
02c630c4  mov w21,#0x4
02c630c8  ldr w9,[x8, #0x18]
02c630cc  sub x22,x21,#0x4
02c630d0  cmp w22,w9
02c630d4  b.ge 0x02c63130
02c630d8  cmp w22,w9
02c630dc  b.cs 0x02c63140
02c630e0  ldr x20,[x8, x21, LSL #0x3]
02c630e4  cbz x20,0x02c6312c
02c630e8  mov x0,x20
02c630ec  bl 0x02c60a20
02c630f0  str x19,[x20, #0x70]!
02c630f4  mov x0,x20
02c630f8  mov x1,x19
02c630fc  bl 0x029f59f4
02c63100  ldr x8,[x19, #0x20]
02c63104  cbz x8,0x02c6312c
02c63108  ldr w9,[x8, #0x18]
02c6310c  cmp w22,w9
02c63110  b.cs 0x02c63140
02c63114  ldr x0,[x8, x21, LSL #0x3]
02c63118  cbz x0,0x02c6312c
02c6311c  bl 0x02c5fb98
02c63120  ldr x8,[x19, #0x20]
02c63124  add x21,x21,#0x1
02c63128  cbnz x8,0x02c630c8
02c6312c  bl 0x029f5cfc
02c63130  ldp x20,x19,[sp, #0x20]
02c63134  ldp x22,x21,[sp, #0x10]
02c63138  ldr x30,[sp], #0x30
02c6313c  ret
02c63140  bl 0x029f5d04
