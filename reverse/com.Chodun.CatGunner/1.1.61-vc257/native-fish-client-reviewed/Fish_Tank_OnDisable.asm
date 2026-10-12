02c631ec  str x30,[sp, #-0x20]!
02c631f0  stp x20,x19,[sp, #0x10]
02c631f4  mov x20,x0
02c631f8  ldr x1,[x20, #0x58]!
02c631fc  cbz x1,0x02c63224
02c63200  mov x2,xzr
02c63204  mov x19,x0
02c63208  bl 0x057e237c
02c6320c  mov x0,x20
02c63210  str xzr,[x19, #0x58]
02c63214  mov x1,xzr
02c63218  ldp x20,x19,[sp, #0x10]
02c6321c  ldr x30,[sp], #0x20
02c63220  b 0x029f59f4
02c63224  ldp x20,x19,[sp, #0x10]
02c63228  ldr x30,[sp], #0x20
02c6322c  ret
