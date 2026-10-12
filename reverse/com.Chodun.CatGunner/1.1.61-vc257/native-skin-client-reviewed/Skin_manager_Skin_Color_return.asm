02ca846c  str x30,[sp, #-0x10]!
02ca8470  ldr x8,[x0, #0x40]
02ca8474  cbz x8,0x02ca849c
02ca8478  ldrsw x9,[x0, #0x30]
02ca847c  ldr w10,[x8, #0x18]
02ca8480  cmp w9,w10
02ca8484  b.cs 0x02ca84a0
02ca8488  add x8,x8,x9, LSL #0x4
02ca848c  ldp s0,s1,[x8, #0x20]
02ca8490  ldp s2,s3,[x8, #0x28]
02ca8494  ldr x30,[sp], #0x10
02ca8498  ret
02ca849c  bl 0x029f5cfc
02ca84a0  bl 0x029f5d04
