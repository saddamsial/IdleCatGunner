02c636c4  stp x30,x23,[sp, #-0x30]!
02c636c8  stp x22,x21,[sp, #0x10]
02c636cc  stp x20,x19,[sp, #0x20]
02c636d0  adrp x21,0x625c000
02c636d4  mov x19,x1
02c636d8  mov x20,x0
02c636dc  ldrb w8,[x21, #0x23a]
02c636e0  tbnz w8,#0x0,0x02c636f8
02c636e4  adrp x0,0x5e59000
02c636e8  ldr x0,[x0, #0x1c0]
02c636ec  bl 0x029f5a50
02c636f0  mov w8,#0x1
02c636f4  strb w8,[x21, #0x23a]
02c636f8  cbz x19,0x02c6379c
02c636fc  ldr w8,[x19, #0x40]
02c63700  cmp w8,#0xb
02c63704  b.gt 0x02c637a0
02c63708  ldr x8,[x20, #0x20]
02c6370c  cbz x8,0x02c6379c
02c63710  adrp x22,0x5e59000
02c63714  mov x23,xzr
02c63718  ldr x22,[x22, #0x1c0]
02c6371c  ldr w9,[x8, #0x18]
02c63720  cmp x23,w9, SXTW 
02c63724  b.ge 0x02c637a0
02c63728  cmp x23,x9
02c6372c  b.cs 0x02c637b8
02c63730  ldr x0,[x22]
02c63734  add x8,x8,x23, LSL #0x3
02c63738  ldr w9,[x0, #0xe4]
02c6373c  ldr x21,[x8, #0x20]
02c63740  cbnz w9,0x02c63748
02c63744  bl 0x029f5bd0
02c63748  mov x0,x21
02c6374c  mov x1,x19
02c63750  mov x2,xzr
02c63754  bl 0x057e14b4
02c63758  tbnz w0,#0x0,0x02c63790
02c6375c  cbz x21,0x02c6379c
02c63760  ldrb w8,[x21, #0x48]
02c63764  cbz w8,0x02c63790
02c63768  ldrb w8,[x21, #0x86]
02c6376c  cbnz w8,0x02c63790
02c63770  ldr w8,[x21, #0x40]
02c63774  ldr w9,[x19, #0x40]
02c63778  cmp w8,w9
02c6377c  b.ne 0x02c63790
02c63780  mov x0,x19
02c63784  mov x1,x21
02c63788  bl 0x02c62720
02c6378c  tbnz w0,#0x0,0x02c637a4
02c63790  ldr x8,[x20, #0x20]
02c63794  add x23,x23,#0x1
02c63798  cbnz x8,0x02c6371c
02c6379c  bl 0x029f5cfc
02c637a0  mov x21,xzr
02c637a4  mov x0,x21
02c637a8  ldp x20,x19,[sp, #0x20]
02c637ac  ldp x22,x21,[sp, #0x10]
02c637b0  ldp x30,x23,[sp], #0x30
02c637b4  ret
02c637b8  bl 0x029f5d04
