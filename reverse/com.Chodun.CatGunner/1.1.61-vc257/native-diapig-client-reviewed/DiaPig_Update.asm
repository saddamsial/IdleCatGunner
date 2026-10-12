02c8d44c  str x30,[sp, #-0x20]!
02c8d450  stp x20,x19,[sp, #0x10]
02c8d454  mov x19,x0
02c8d458  bl 0x02c8c7d0
02c8d45c  tbz w0,#0x0,0x02c8d480
02c8d460  ldp w20,w8,[x19, #0x20]
02c8d464  cmp w20,w8
02c8d468  b.ge 0x02c8d480
02c8d46c  mov x0,x19
02c8d470  bl 0x02c8cc74
02c8d474  ldr w8,[x19, #0x20]
02c8d478  cmp w8,w20
02c8d47c  b.ne 0x02c8d48c
02c8d480  ldp x20,x19,[sp, #0x10]
02c8d484  ldr x30,[sp], #0x20
02c8d488  ret
02c8d48c  ldr x0,[x19, #0x30]
02c8d490  cbz x0,0x02c8d4c0
02c8d494  ldr s0,[x19, #0x24]
02c8d498  scvtf s1,w8
02c8d49c  mov x1,xzr
02c8d4a0  scvtf s0,s0
02c8d4a4  fdiv s0,s1,s0
02c8d4a8  bl 0x02c28290
02c8d4ac  ldr x0,[x19, #0x28]
02c8d4b0  cbz x0,0x02c8d4c0
02c8d4b4  ldp x20,x19,[sp, #0x10]
02c8d4b8  ldr x30,[sp], #0x20
02c8d4bc  b 0x02c8cfd8
02c8d4c0  bl 0x029f5cfc
