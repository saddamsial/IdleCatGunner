02ca75b8  str x30,[sp, #-0x20]!
02ca75bc  stp x20,x19,[sp, #0x10]
02ca75c0  ldr x8,[x0, #0x60]
02ca75c4  cbz x8,0x02ca7604
02ca75c8  mov x19,x0
02ca75cc  mov x20,xzr
02ca75d0  ldr w9,[x8, #0x18]
02ca75d4  cmp w20,w9
02ca75d8  b.ge 0x02ca7608
02ca75dc  cmp w20,w9
02ca75e0  b.cs 0x02ca7614
02ca75e4  add x8,x8,x20, LSL #0x3
02ca75e8  ldr x0,[x8, #0x20]
02ca75ec  cbz x0,0x02ca7604
02ca75f0  mov w1,w20
02ca75f4  bl 0x02ca7e00
02ca75f8  ldr x8,[x19, #0x60]
02ca75fc  add x20,x20,#0x1
02ca7600  cbnz x8,0x02ca75d0
02ca7604  bl 0x029f5cfc
02ca7608  ldp x20,x19,[sp, #0x10]
02ca760c  ldr x30,[sp], #0x20
02ca7610  ret
02ca7614  bl 0x029f5d04
