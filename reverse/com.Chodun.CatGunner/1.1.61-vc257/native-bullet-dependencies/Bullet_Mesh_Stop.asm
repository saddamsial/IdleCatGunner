02c654c4  stp x30,x21,[sp, #-0x20]!
02c654c8  stp x20,x19,[sp, #0x10]
02c654cc  ldr x8,[x0, #0x20]
02c654d0  cbz x8,0x02c65538
02c654d4  mov x19,x0
02c654d8  mov w20,#0x4
02c654dc  ldr w9,[x8, #0x18]
02c654e0  sub x21,x20,#0x4
02c654e4  cmp w21,w9
02c654e8  b.ge 0x02c65538
02c654ec  cmp w21,w9
02c654f0  b.cs 0x02c65544
02c654f4  ldr x0,[x8, x20, LSL #0x3]
02c654f8  cbz x0,0x02c65534
02c654fc  mov x1,xzr
02c65500  bl 0x0586189c
02c65504  ldr x8,[x19, #0x20]
02c65508  cbz x8,0x02c65534
02c6550c  ldr w9,[x8, #0x18]
02c65510  cmp w21,w9
02c65514  b.cs 0x02c65544
02c65518  ldr x0,[x8, x20, LSL #0x3]
02c6551c  cbz x0,0x02c65534
02c65520  mov x1,xzr
02c65524  bl 0x0586196c
02c65528  ldr x8,[x19, #0x20]
02c6552c  add x20,x20,#0x1
02c65530  cbnz x8,0x02c654dc
02c65534  bl 0x029f5cfc
02c65538  ldp x20,x19,[sp, #0x10]
02c6553c  ldp x30,x21,[sp], #0x20
02c65540  ret
02c65544  bl 0x029f5d04
